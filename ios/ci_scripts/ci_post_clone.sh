#!/bin/bash

# Xcode Cloud Flutter Setup Script
# This script sets up Flutter and builds the app for Xcode Cloud

# Fail this script if any subcommand fails.
set -e

# The default execution directory of this script is the ci_scripts directory.
cd $CI_PRIMARY_REPOSITORY_PATH # change working directory to the root of your cloned repo.

export FLUTTER_VERSION=${FLUTTER_VERSION:-"3.35.3"} # Set the Flutter version to 3.35.0 if not set.

# Install Flutter using git.
git clone https://github.com/flutter/flutter.git --depth 1 -b $FLUTTER_VERSION $HOME/flutter
export PATH="$PATH:$HOME/flutter/bin"

# Install Flutter artifacts for iOS (--ios), or macOS (--macos) platforms.
flutter precache --ios

# Get Flutter dependencies
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Install CocoaPods using Homebrew.
HOMEBREW_NO_AUTO_UPDATE=1 # disable homebrew's automatic updates.
brew install cocoapods

# Install CocoaPods dependencies.
cd ios
pod install --repo-update
cd ..

echo "--- Running Code Generation (build_runner) ---"
dart run build_runner build -d

echo "--- Preparing Xcode Project with 'flutter build' ---"
# This is the crucial step that was missing.
# It builds the Flutter part of the app and configures the Xcode workspace.
CURRENT_BRANCH=${CI_BRANCH:-$(git rev-parse --abbrev-ref HEAD)}

if [ "$CURRENT_BRANCH" = "main" ]; then
    echo "--- Building for production branch (main) ---"
    flutter build ios --flavor production -t lib/main_production.dart --dart-define-from-file=env/env.prod.json --no-codesign --no-tree-shake-icons
elif [ "$CURRENT_BRANCH" = "develop" ]; then
    echo "--- Building for development branch (develop) ---"
    flutter build ios --flavor development -t lib/main_development.dart --dart-define-from-file=env/env.local.json --no-codesign --no-tree-shake-icons
else
    echo "Current branch is $CURRENT_BRANCH. This is not the main or develop branch."
    echo "Defaulting to development build..."
    flutter build ios --flavor development -t lib/main_development.dart --dart-define-from-file=env/env.local.json --no-codesign --no-tree-shake-icons
fi

echo "✅ Flutter setup completed successfully!"

exit 0

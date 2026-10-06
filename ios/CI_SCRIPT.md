# Xcode Cloud CI/CD Setup for Duxbe KDS iOS

This document outlines the setup process for Xcode Cloud CI/CD, which is Apple's
native CI/CD solution for iOS apps.

## Prerequisites

1. **Apple Developer Account** with Xcode Cloud access
2. **App Store Connect** access
3. **Xcode 14+** installed locally
4. **Flutter 3.35.0+** installed

## Xcode Cloud Configuration

### 1. Connect Repository to Xcode Cloud

1. Open your project in Xcode
2. Go to **Product** → **Xcode Cloud** → **Create Workflow**
3. Connect your GitHub repository
4. Select the `ios` folder as the project root

### 2. Create Workflows

Create two separate workflows for different environments:

#### Development Workflow

- **Name**: `Development Build`
- **Trigger**: Push to `develop` branch
- **Environment**: Development
- **Scheme**: `development`
- **Configuration**: `Release-development`
- **Bundle ID**: `com.duxbe.kds.dev`

#### Production Workflow

- **Name**: `Production Build`
- **Trigger**: Push to `main` branch
- **Environment**: Production
- **Scheme**: `production`
- **Configuration**: `Release-production`
- **Bundle ID**: `com.duxbe.kds`

### 3. Build Settings

For each workflow, configure:

#### Build Phase Scripts

Add these build phases in Xcode:

1. **Flutter Dependencies** (before compilation):

```bash
#!/bin/sh
cd "$SRCROOT/.."
flutter pub get
dart run build_runner build -d
```

2. **Firebase Configuration** (before compilation):

```bash
#!/bin/sh
# Copy appropriate GoogleService-Info.plist based on build configuration
if [ "$CONFIGURATION" = "Release-development" ]; then
    cp "$SRCROOT/Runner/development/GoogleService-Info.plist" "$SRCROOT/Runner/GoogleService-Info.plist"
elif [ "$CONFIGURATION" = "Release-production" ]; then
    cp "$SRCROOT/Runner/production/GoogleService-Info.plist" "$SRCROOT/Runner/GoogleService-Info.plist"
fi
```

#### Environment Variables

Set these in Xcode Cloud:

**Required Variables:**

- `FLUTTER_VERSION`: `3.35.0`
- `FIREBASE_APP_ID_IOS`: Your Firebase iOS app ID
- `FIREBASE_SERVICE_ACCOUNT`: Firebase service account JSON (as string)

**Optional Variables:**

- `GOOGLESERVICE_INFO_PLIST`: Path to the appropriate plist file
- `CI_BUILD_NUMBER`: Build number (auto-generated)
- `CI_COMMIT`: Commit hash (auto-generated)
- `CI_BRANCH`: Branch name (auto-generated)

### How to Set Environment Variables in Xcode Cloud

#### Method 1: Through Xcode (Recommended)

1. **Open your project in Xcode**
2. **Go to Product → Xcode Cloud → Manage Workflows**
3. **Select your workflow** (Development or Production)
4. **Click on "Environment" tab**
5. **Add variables** by clicking the "+" button:
   - **Name**: Variable name (e.g., `FIREBASE_APP_ID_IOS`)
   - **Value**: Variable value (e.g., `1:123456789:ios:abcdef123456`)
   - **Sensitive**: Check this for secrets (passwords, API keys)

#### Method 2: Through App Store Connect

1. **Go to [App Store Connect](https://appstoreconnect.apple.com)**
2. **Navigate to your app**
3. **Go to Xcode Cloud → Workflows**
4. **Select your workflow**
5. **Click "Environment" tab**
6. **Add your variables**

#### Method 3: Using xcode-cloud.yml (Limited Support)

Create a `.xcode-cloud.yml` file in your project root:

```yaml
environment:
   variables:
      FLUTTER_VERSION: "3.35.0"
      FIREBASE_APP_ID_IOS: "1:123456789:ios:abcdef123456"
      # Note: Sensitive variables should be set through Xcode/App Store Connect
```

### Variable Types and Best Practices

#### Public Variables (Non-sensitive)

- `FLUTTER_VERSION`
- `FIREBASE_APP_ID_IOS`
- Build configuration flags

#### Sensitive Variables (Mark as Sensitive)

- `FIREBASE_SERVICE_ACCOUNT` (JSON string)
- API keys
- Passwords
- Private keys

#### Auto-Generated Variables (Available in scripts)

- `CI_BUILD_NUMBER`: Build number
- `CI_COMMIT`: Git commit hash
- `CI_BRANCH`: Git branch name
- `CI_WORKFLOW`: Workflow name
- `CI_PULL_REQUEST_NUMBER`: PR number (if applicable)
- `SRCROOT`: Source root directory
- `CONFIGURATION`: Build configuration (e.g., "Release-production")

### 4. TestFlight Distribution

#### Development Workflow

- **Distribution**: Internal Testing
- **Groups**: Internal Testers
- **Automatic Distribution**: Enabled

#### Production Workflow

- **Distribution**: TestFlight
- **Groups**: Internal Testers, Beta Testers
- **Automatic Distribution**: Enabled
- **App Store Submission**: Manual (for final release)

### 5. Required Secrets

Configure these in Xcode Cloud:

1. **Firebase Service Account** (JSON)
2. **App Store Connect API Key** (for TestFlight uploads)
3. **Firebase App ID** (iOS)

### 6. Build Configuration Files

Ensure these files exist in your `ios` directory:

- `ExportOptionsDev.plist` - Development export options
- `ExportOptionsProd.plist` - Production export options
- `Runner/development/GoogleService-Info.plist` - Development Firebase config
- `Runner/production/GoogleService-Info.plist` - Production Firebase config

### 7. Post-Build Actions

Configure these actions in Xcode Cloud:

#### Firebase App Distribution

- **Action**: Upload to Firebase App Distribution
- **File**: Generated IPA
- **Groups**: Based on environment
- **Release Notes**: Auto-generated from commit message

#### TestFlight Upload

- **Action**: Upload to TestFlight
- **File**: Generated IPA
- **Distribution**: Based on workflow

## Workflow Comparison

| Feature               | GitHub Actions        | Xcode Cloud                |
| --------------------- | --------------------- | -------------------------- |
| **Setup**             | YAML configuration    | Xcode GUI                  |
| **Build Environment** | macOS runners         | Apple's infrastructure     |
| **Code Signing**      | Manual setup          | Automatic                  |
| **TestFlight**        | Manual upload         | Integrated                 |
| **Cost**              | Free for public repos | Apple Developer Program    |
| **Customization**     | Full control          | Limited to Apple's options |

## Benefits of Xcode Cloud

1. **Native Integration**: Seamless integration with Apple's ecosystem
2. **Automatic Code Signing**: No need to manage certificates manually
3. **TestFlight Integration**: Direct upload to TestFlight
4. **Apple Infrastructure**: Reliable build environment
5. **App Store Connect**: Direct integration with app submission

## Migration from GitHub Actions

If you want to use Xcode Cloud instead of GitHub Actions:

1. Set up Xcode Cloud workflows as described above
2. Disable the GitHub Actions workflow for iOS
3. Update your team's workflow to use Xcode Cloud notifications
4. Configure webhooks if needed for external integrations

## Troubleshooting

### Common Issues

1. **Flutter Version Mismatch**: Ensure Xcode Cloud uses the same Flutter
   version
2. **Firebase Configuration**: Verify GoogleService-Info.plist files are
   correctly placed
3. **Code Signing**: Check that your Apple Developer account has proper
   certificates
4. **Build Failures**: Review build logs in Xcode Cloud dashboard

### Support

- **Xcode Cloud Documentation**: https://developer.apple.com/xcode-cloud/
- **App Store Connect**: https://appstoreconnect.apple.com/
- **Flutter iOS Deployment**: https://docs.flutter.dev/deployment/ios

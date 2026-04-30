import 'package:flutter/services.dart';
import 'package:native_device_orientation/native_device_orientation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// This will generate a file named 'rotation_notifier.g.dart'
part 'rotation_notifier.g.dart';

/// Define the state for our notifier
class RotationState {
  const RotationState({
    required this.shouldShowIcon,
    required this.lockedOrientation,
    this.targetOrientation,
    this.userHasRotated = false,
  });

  final bool shouldShowIcon;
  final DeviceOrientation lockedOrientation;
  final DeviceOrientation? targetOrientation;
  final bool userHasRotated; // Track if user has manually rotated

  RotationState copyWith({
    bool? shouldShowIcon,
    DeviceOrientation? lockedOrientation,
    DeviceOrientation? targetOrientation,
    bool? userHasRotated,
  }) {
    return RotationState(
      shouldShowIcon: shouldShowIcon ?? this.shouldShowIcon,
      lockedOrientation: lockedOrientation ?? this.lockedOrientation,
      targetOrientation: targetOrientation ?? this.targetOrientation,
      userHasRotated: userHasRotated ?? this.userHasRotated,
    );
  }
}

/// A provider that exposes the raw physical orientation stream
@riverpod
Stream<NativeDeviceOrientation> physicalOrientation(Ref ref) {
  return NativeDeviceOrientationCommunicator().onOrientationChanged(
    useSensor: true,
  );
}

/// A global state to track the current locked orientation and user rotation status
DeviceOrientation? _globalLockedOrientation;
bool _userHasRotated = false;

/// The main Notifier that manages the rotation logic
@riverpod
class RotationNotifier extends _$RotationNotifier {
  @override
  RotationState build(Size size) {
    // Use the current aspect ratio instead of a tablet-width heuristic.
    // iPad portrait widths are still > 600, which incorrectly forced landscape.
    final defaultOrientation = size.width > size.height
        ? DeviceOrientation.landscapeRight
        : DeviceOrientation.portraitUp;

    // 2. Use global locked orientation if available, otherwise use default
    final currentLockedOrientation =
        _globalLockedOrientation ?? defaultOrientation;

    // 3. Only set the system orientation if user hasn't manually rotated or if this is initial setup
    if (_globalLockedOrientation == null) {
      _globalLockedOrientation = defaultOrientation;
      SystemChrome.setPreferredOrientations([defaultOrientation]);
    }

    // 4. Listen to the physical orientation provider for changes
    ref.listen(physicalOrientationProvider, (previous, next) {
      _onPhysicalOrientationChanged(next.value);
    });

    // 5. Return the current state
    return RotationState(
      shouldShowIcon: false,
      lockedOrientation: currentLockedOrientation,
      userHasRotated: _userHasRotated,
    );
  }

  void _onPhysicalOrientationChanged(NativeDeviceOrientation? orientation) {
    if (orientation == null) return;

    final newPhysicalOrientation = _mapOrientation(orientation);
    final currentLockedOrientation =
        _globalLockedOrientation ?? state.lockedOrientation;

    if (newPhysicalOrientation != null &&
        newPhysicalOrientation != currentLockedOrientation) {
      // Physical orientation is different from locked, show the icon
      state = state.copyWith(
        shouldShowIcon: true,
        targetOrientation: newPhysicalOrientation,
      );
    } else {
      // Otherwise, hide it
      state = state.copyWith(shouldShowIcon: false);
    }
  }

  // Method to be called when the user confirms the rotation
  void rotate() {
    if (state.targetOrientation != null) {
      // Update global state to persist across provider recreations
      _globalLockedOrientation = state.targetOrientation;
      _userHasRotated = true;

      // Set the system orientation
      SystemChrome.setPreferredOrientations([state.targetOrientation!]);

      // Update the local state to reflect the new locked orientation and hide the icon
      state = state.copyWith(
        lockedOrientation: state.targetOrientation,
        shouldShowIcon: false,
        userHasRotated: true,
      );
    }
  }

  // Helper to map from the package's enum to Flutter's enum
  DeviceOrientation? _mapOrientation(NativeDeviceOrientation o) {
    switch (o) {
      case NativeDeviceOrientation.portraitUp:
        return DeviceOrientation.portraitUp;
      case NativeDeviceOrientation.landscapeLeft:
        return DeviceOrientation.landscapeLeft;
      case NativeDeviceOrientation.portraitDown:
        return DeviceOrientation.portraitDown;
      case NativeDeviceOrientation.landscapeRight:
        return DeviceOrientation.landscapeRight;
      case NativeDeviceOrientation.unknown:
        return null;
    }
  }
}

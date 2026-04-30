import 'dart:async';

import 'package:duxbe_kds/shared/providers/rotation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RotationOverlay extends ConsumerStatefulWidget {
  const RotationOverlay({
    required this.navigatorKey,
    required this.child,
    super.key,
  });

  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget child;

  @override
  ConsumerState<RotationOverlay> createState() => _RotationOverlayState();
}

class _RotationOverlayState extends ConsumerState<RotationOverlay> {
  Timer? _debounceTimer;
  bool _showIcon = false;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _handleRotationStateChange(bool shouldShowIcon) {
    if (shouldShowIcon) {
      // Start debounce timer to show icon after 2 seconds
      _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            _showIcon = true;
          });
        }
      });
    } else {
      // Hide icon immediately when rotation is no longer needed
      _debounceTimer?.cancel();
      if (_showIcon) {
        setState(() {
          _showIcon = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // `watch` rebuilds the widget when the rotation state changes.
        final rotationState = ref.watch(rotationProvider(constraints.biggest));

        // Handle rotation state changes with debounce
        // Deferred to post-frame to avoid calling setState during build/layout.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _handleRotationStateChange(rotationState.shouldShowIcon);
          }
        });

        return Stack(
          children: [
            // Your actual screen content
            widget.child,

            // The floating icon, positioned at the bottom right
            if (_showIcon)
              Positioned(
                bottom: 24,
                right: 24,
                child: Material(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(50),
                  child: IconButton(
                    icon: const Icon(
                      Icons.screen_rotation,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Show the confirmation dialog on tap
                      _showConfirmationDialog(
                        widget.navigatorKey!.currentContext!,
                        ref,
                      );
                    },
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context, WidgetRef ref) {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Confirm Rotation'),
          content: const Text('Do you want to rotate the screen?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: const Text('Confirm'),
              onPressed: () {
                // Use `read` in a callback to call a method on the notifier.
                ref.read(rotationProvider(context.size!).notifier).rotate();
                Navigator.of(dialogContext).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}

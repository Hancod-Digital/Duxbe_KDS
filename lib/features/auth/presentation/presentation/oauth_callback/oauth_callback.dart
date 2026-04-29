import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class OAuthCallbackScreen extends ConsumerStatefulWidget {
  const OAuthCallbackScreen({super.key});

  @override
  ConsumerState<OAuthCallbackScreen> createState() =>
      _OAuthCallbackScreenState();
}

class _OAuthCallbackScreenState extends ConsumerState<OAuthCallbackScreen> {
  @override
  void initState() {
    super.initState();
    _handleRedirect();
  }

  Future<void> _handleRedirect() async {
    // Small delay to ensure session is fully mounted if this was an immediate link
    await Future<void>.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;

    // Get current session and user
    final session = Supabase.instance.client.auth.currentSession;
    final user = Supabase.instance.client.auth.currentUser;

    if (session == null || user == null || session.isExpired) {
      // Not authenticated or expired, go to login
      if (mounted) {
        context.goNamed(AppRouter.login);
      }
      return;
    }

    // Determine the destination BEFORE triggering any state changes
    final orgId = user.appMetadata['org_id'] ?? user.userMetadata?['org_id'];
    final hasOrgId = orgId != null && orgId.toString().isNotEmpty;

    // Call setSession to register notifications, branch, analytics, etc.
    // This is needed even though Supabase already set the session via deep links.
    if (session.refreshToken != null) {
      await ref.read(authProvider.notifier).setSession(session.refreshToken!);
    }

    // Navigate based on the org_id we checked earlier
    if (mounted) {
      if (hasOrgId) {
        context.goNamed(AppRouter.dashboard);
      } else {
        // No org_id → redirect to business registration flow
        context.goNamed(
          AppRouter.login,
          queryParameters: {'step': 'businessRegister'},
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

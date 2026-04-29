import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'new_password_mobile.dart';
export 'new_password_web.dart';

class NewPasswordScreen extends ConsumerWidget {
  const NewPasswordScreen({
    super.key,
    this.inviteToken,
    this.orgId,
    this.refreshToken,
  });
  final String? inviteToken;
  final String? orgId;
  final String? refreshToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ResponsiveWidget(
        smallScreen: NewPasswordScreenMobile(
          inviteToken: inviteToken,
          orgId: orgId,
          refreshToken: refreshToken,
        ),
        largeScreen: NewPasswordScreenWeb(
          inviteToken: inviteToken,
          orgId: orgId,
          refreshToken: refreshToken,
        ),
      ),
    );
  }
}

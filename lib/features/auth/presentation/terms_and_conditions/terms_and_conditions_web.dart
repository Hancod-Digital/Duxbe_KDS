import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TermsAndConditionsScreenWeb extends ConsumerStatefulWidget {
  const TermsAndConditionsScreenWeb({super.key});

  @override
  ConsumerState<TermsAndConditionsScreenWeb> createState() =>
      _TermsAndConditionsScreenWebState();
}

class _TermsAndConditionsScreenWebState
    extends ConsumerState<TermsAndConditionsScreenWeb> {
  Future<String> get data =>
      rootBundle.loadString('assets/markdowns/terms_and_conditions.md');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text(context.l10n.termsAndConditions)),
      body: FutureBuilder<String>(
        future: data,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Markdown(data: snapshot.data!);
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

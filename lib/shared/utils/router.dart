import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/auth_flow.dart';
import 'package:duxbe_kds/features/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Exposes a [GoRouter] that uses a [Listenable] to refresh its internal state.
///
/// With Riverpod, we can't register a dependency via an Inherited Widget,
/// thus making this implementation the "leanest" possible
///
/// To sync our app state with this our router, we simply update our listenable
/// via `ref.listen`,
/// and pass it to GoRouter's `refreshListenable`.
/// In this example, this will trigger redirects on any authentication change.
///
/// Obviously, more logic could be implemented here, but again, this is meant
/// to be a simple example.
/// You can always build more listenables and even merge more than one
/// into a more complex `ChangeNotifier`,
/// but that's up to your case and out of this scope.

class AppRouter {
  AppRouter(this.ref) {
    ref
      ..onDispose(() {
        authState.dispose();
        router.dispose();
      })
      ..listen(authStateProvider.select((value) => value.asData), (_, next) {
        authState.value = next;
      });
  }
  final authState = ValueNotifier<AsyncValue<AuthState>?>(const AsyncLoading());

  final Ref ref;

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell',
  );

  static GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;
  static GlobalKey<NavigatorState> get shellKey => _shellKey;

  static BuildContext get rootContext => _rootNavigatorKey.currentContext!;
  static BuildContext get shellContext => _shellKey.currentContext!;

  static AppLocalizations get l10n => rootContext.l10n;

  static const String home = 'home';
  static const String splash = 'splash';
  static const String login = 'login';
  static const String sign = 'sign';
  static const String verifyOtp = 'verifyOtp';
  static const String createPassword = 'createPassword';
  static const String businessDetails = 'businessDetails';
  static const String signSucess = 'signSucess';
  static const String leads = 'leads';
  static const String followup = 'followup';
  static const String customers = 'customers';
  static const String reports = 'reports';

  static const String settings = 'settings';
  static const String profile = 'profile';
  static const String changePassword = 'changePassword';
  static const String userScreen = 'userScreen';
  static const String addUserScreen = 'addUserScreen';

  static const String addCustomers = 'addCustomers';
  static const String viewCustomer = 'viewCustomer';

  static const String addLeads = 'addLeads';
  static const String viewLeads = 'viewLeads';

  static const String addFollowup = 'addFollowup';
  static const String viewFollowup = 'viewFollowup';

  static const String notifications = 'notifications';
  static const String signup = 'sign_up';
  static const String oauthCallback = 'oauth_callback';
  static const String businessRegister = 'business_register';
  static const String forgotPassword = 'forgot_password';
  static const String enterOTP = 'enter_otp';
  static const String newPassword = 'new_password';
  static const String setNewUser = 'set_new_user';
  static const String chooseBusinessType = 'choose_business_type';
  static const String chooseModules = 'choose_modules';

  // Core Navigation Routes
  static const String orderHome = 'order_home';
  static const String dashboard = 'dashboard';
  static const String more = 'more';
  static const String aiChat = 'ai_chat';
  static const String quickLinks = 'quick_links';

  // Legal Routes
  static const String termsAndConditions = 'terms_and_conditions';
  static const String privacyPolicy = 'privacy_policy';

  // User Management Routes
  static const String userSettings = 'user_settings';
  static const String users = 'users';
  static const String userList = 'user_list';
  static const String userRole = 'user_role';
  static const String createUserRole = 'create_user_role';
  static const String userRoleDetails = 'user_role_details';

  // Inventory Management Routes
  static const String inventory = 'inventory';
  static const String itemList = 'item_list';
  static const String createItem = 'create_item';
  static const String importItem = 'import_item';
  static const String itemDetails = 'item_details';
  static const String itemView = 'item_view';
  static const String richText = 'rich_text';
  static const String units = 'units';
  static const String brands = 'brands';
  static const String category = 'category';
  static const String printBarcode = 'print_barcode';
  static const String printBarcodeList = 'print_barcode_list';

  // Stock Management Routes
  static const String manageStock = 'manage_stock';
  static const String singleStockAdjust = 'single_stock_adjust';
  static const String multiStockAdjust = 'multi_stock_adjust';
  static const String stockAdjusments = 'stock_adjustment';
  static const String stockAdjusmentView = 'stock_adjustment_view';

  // Purchase Management Routes
  static const String purchase = 'purchase';
  static const String purchaseMore = 'purchase_more';
  static const String purchasing = 'purchasing';
  static const String purchaseList = 'purchase_list';
  static const String purchaseDetails = 'purchase_details';
  static const String purchaseCheckout = 'purchase_checkout';
  static const String purchasePaymentKeypad = 'purchase_payment_keypad';
  static const String purchaseSuccess = 'purchase_success';
  static const String purchaseReturn = 'purchase_return';
  static const String createPurchaseReturn = 'create_purchase_return';
  static const String purchaseReturnDetails = 'purchase_return_details';

  // Sales Management Routes
  static const String sales = 'sales';
  static const String pos = 'pos';
  static const String posChooseTable = 'pos_choose_table';
  static const String posChooseItems = 'pos_choose_items';
  static const String posPyament = 'pos_payment';
  static const String posKeypad = 'pos_keypad';
  static const String posSuccess = 'pos_success';

  static const String saleList = 'sale_list';
  static const String saleDetails = 'sale_details';
  static const String salePayment = 'sale_payment';
  static const String salePaymentKeypad = 'sale_payment_keypad';
  static const String saleSuccess = 'sale_success';
  static const String salesReturn = 'sale_return';
  static const String createSaleReturn = 'create_sale_return';
  static const String orderList = 'order_list';
  static const String orderDetails = 'order_details';
  static const String settlementKeypad = 'settlement_keypad';
  static const String saleReturnDetails = 'sale_return_details';

  // Reservation Management Routes
  static const String chooseReservationTable = 'choose_reservation_table';
  static const String tableManagement = 'table';

  // Customer Management Routes
  static const String customer = 'customer';
  static const String createCustomer = 'create_customer';
  static const String customerDetails = 'customer_details';
  static const String customerView = 'customer_view';

  // Supplier Management Routes
  static const String supplier = 'supplier';
  static const String supplierDetails = 'supplier_details';
  static const String createSupplier = 'create_supplier';

  // Financial Management Routes
  static const String accounting = 'accounting';
  static const String discount = 'discount';
  static const String createDiscount = 'create_discount';
  static const String expense = 'expense';
  static const String createExpense = 'create_expense';
  static const String expenseDetails = 'expense_details';
  static const String expenseCategory = 'expense_category';
  static const String income = 'income';
  static const String incomeDetails = 'income_details';
  static const String createIncome = 'create_income';
  static const String incomeCategory = 'income_category';
  static const String ledger = 'ledger';
  static const String ledgerDetails = 'ledger_details';
  static const String chartOfAccounts = 'chart_of_accounts';
  static const String profitAndLoss = 'profit_and_loss';

  // Branch Management Routes
  static const String branch = 'branch';
  static const String createBranch = 'create_branch';
  static const String branchDetails = 'branch_details';
  static const String businessSettings = 'business_settings';
  static const String taxSettings = 'tax_settings';
  static const String printSettings = 'print_settings';
  static const String generalSettings = 'general_settings';
  static const String notificationSettings = 'notification_settings';
  static const String integrationSettings = 'integration_settings';

  // Reporting & Settings Routes
  static const String dailyTransactions = 'daily_transactions';
  static const String salesReport = 'sales_report';
  static const String purchaseReport = 'purchase_report';
  static const String dueReport = 'due_report';
  static const String currentStockReport = 'current_stock_report';
  static const String teamSalesReport = 'team_sales_report';
  static const String customFields = 'custom_fields';
  static const String customFieldsList = 'custom_fields_list';
  static const String createEditCustomField = 'create_edit_custom_field';
  static const String customizeModules = 'customize_modules';
  static const String supportSettings = 'support_settings';

  // Subscription Management Routes
  static const String subscription = 'subscription';
  static const String subscriptionPlans = 'subscription_plans';
  static const String subscriptionDetails = 'subscription_details';
  static const String subscriptionHistory = 'subscription_history';
  static const String subscriptionPayment = 'subscription_payment';
  static const String prepayment = 'prepayment';

  // Online Store Routes
  static const String onlineStore = 'online_store';
  static const String storeDetails = 'store_details';
  static const String domains = 'domains';
  static const String themes = 'themes';
  static const String onlineStorePayments = 'online_store_payments';
  static const String seo = 'seo';
  static const String support = 'support';
  static const String onlineStorePolicies = 'online_store_policies';

  // Invoice Routes
  static const String invoices = 'invoices';
  static const String invoice = 'invoice';
  static const String quote = 'quote';
  static const String paymentReceived = 'payment_received';
  static const String creditNotes = 'credit_notes';
  static const String createQuote = 'add_new_quote';
  static const String editQuote = 'edit_quote';
  static const String editInvoice = 'edit_invoice';
  static const String createInvoice = 'add_new_invoice';
  static const String createCreditNote = 'add_new_credit_note';
  static const String quoteDetails = 'quote_details';
  static const String invoiceDetails = 'invoice_details';
  static const String paymentReceivedDetails = 'payment_received_details';
  static const String creditNoteDetails = 'credit_note_details';
  static const String paymentRefund = 'payment_refund';
  static const String creditNoteRefund = 'credit_note_refund';
  static const String createPayment = 'add_new_payment';
  static const String createPaymentFromInvoice = 'create_payment_from_invoice';
  static const String editPayment = 'edit_payment';
  static const String editCreditNote = 'edit_creditNote';

  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: splash,
        path: '/',
        builder: (context, state) => const _SplashScreen(),
      ),
      GoRoute(
        name: dashboard,
        path: '/dashboard',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: login,
        path: '/login',
        builder: (context, state) {
          final initialStep =
              state.uri.queryParameters['step'] == 'businessRegister'
              ? AuthStep.businessRegister
              : AuthStep.login;

          return AuthFlowManager(initialStep: initialStep);
        },
      ),
    ],
    refreshListenable: Listenable.merge([authState]),
    redirect: (context, state) {
      debugPrint(
        '${kIsWeb ? "🔄 WEB ROUTER REDIRECT" : "🔄 MOBILE ROUTER REDIRECT"} - Path: ${state.matchedLocation}',
      );

      const splashLocation = '/';
      const loginLocation = '/login';
      const dashboardLocation = '/dashboard';

      final currentLocation = state.matchedLocation;
      final isSplash = currentLocation == splashLocation;
      final isLogin = currentLocation == loginLocation;
      final isDashboard = currentLocation == dashboardLocation;
      final authValue = authState.value;
      final session = ref.read(supabaseProvider).auth.currentSession;
      final hasSession = session != null && !session.isExpired;

      if (authValue == null) {
        return isSplash || isLogin ? null : splashLocation;
      }

      if (authValue.isLoading || !authValue.hasValue) {
        return isSplash ? null : splashLocation;
      }

      if (!hasSession) {
        return isLogin ? null : loginLocation;
      }

      return isDashboard ? null : dashboardLocation;
    },
  );

  CustomTransitionPage<void> fadeTransition(
    GoRouterState state,
    Widget screen,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
            opacity: animation.drive(
              Tween<double>(
                begin: 0,
                end: 1,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          ),
    );
  }

  CustomTransitionPage<void> slideTransition(
    GoRouterState state,
    Widget screen,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          ),
    );
  }

  static void goNamed(
    String route, {
    Object? extra,
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
  }) => _rootNavigatorKey.currentState?.context.goNamed(
    route,
    extra: extra,
    pathParameters: pathParameters,
    queryParameters: queryParameters,
  );

  static void go(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) => _rootNavigatorKey.currentState?.context.go(name, extra: extra);

  /// Navigate to a named route onto the page stack.
  static Future<T?>? pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) => _rootNavigatorKey.currentState?.context.pushNamed<T>(
    name,
    pathParameters: pathParameters,
    queryParameters: queryParameters,
    extra: extra,
  );

  static void pop<T extends Object?>([T? result]) =>
      _rootNavigatorKey.currentContext?.pop(result);

  static T read<T>(ProviderBase<T> provider) {
    return ProviderScope.containerOf(rootContext, listen: false).read(provider);
  }

  static T watch<T>(ProviderBase<T> provider) {
    return ProviderScope.containerOf(rootContext).read(provider);
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

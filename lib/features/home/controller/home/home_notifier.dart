import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_state.dart';

part 'home_notifier.g.dart';

@Riverpod(keepAlive: false)
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    return HomeState.initial();
  }

  void loadForBusiness({
    required String? businessId,
    required String businessName,
  }) {
    if (state.selectedBusinessId == businessId && state.orders.isNotEmpty) {
      return;
    }

    state = state.copyWith(
      status: HomeStatus.success,
      selectedBusinessId: businessId,
      orders: _seedOrders(businessName),
    );
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void moveOrder(String orderId, KitchenOrderStatus status) {
    state = state.copyWith(
      orders: state.orders.map((order) {
        if (order.id != orderId) return order;
        return order.copyWith(status: status);
      }).toList(),
    );
  }

  List<KitchenOrderItem> _seedOrders(String businessName) {
    final prefix = businessName.trim().isEmpty ? 'Kitchen' : businessName;
    final now = DateTime.now();

    return [
      KitchenOrderItem(
        id: 'ord-1001',
        orderNo: '#1234',
        customerName: '$prefix Guest',
        tableLabel: 'Ground Floor - T01',
        items: const [
          'Crispy Dory Sambal Matah',
          'Spicy Tuna Nachos',
          'Butterscotch',
        ],
        placedAt: now.subtract(const Duration(minutes: 18)),
        status: KitchenOrderStatus.newOrders,
      ),
      KitchenOrderItem(
        id: 'ord-1002',
        orderNo: '#1235',
        customerName: 'Alaa Hassan',
        tableLabel: 'Ground Floor - T15',
        items: const ['Chicken Shawarma Bowl', 'Mango Juice'],
        placedAt: now.subtract(const Duration(minutes: 14)),
        status: KitchenOrderStatus.newOrders,
      ),
      KitchenOrderItem(
        id: 'ord-1003',
        orderNo: '#1236',
        customerName: 'Abhishek',
        tableLabel: 'Ground Floor - T01',
        items: const [
          'Baked Pancake with Honey Sauce',
          'Bread Toast with Egg',
        ],
        placedAt: now.subtract(const Duration(minutes: 25)),
        status: KitchenOrderStatus.cooking,
      ),
      KitchenOrderItem(
        id: 'ord-1004',
        orderNo: '#1237',
        customerName: 'Jose Thomas',
        tableLabel: 'Ground Floor - T01',
        items: const ['Spicy Tuna Nachos', 'Butterscotch'],
        placedAt: now.subtract(const Duration(minutes: 12)),
        status: KitchenOrderStatus.readyToServe,
      ),
      KitchenOrderItem(
        id: 'ord-1005',
        orderNo: '#1238',
        customerName: 'Muhammed',
        tableLabel: 'Ground Floor - T01',
        items: const ['Noodles with Scallops'],
        placedAt: now.subtract(const Duration(minutes: 42)),
        status: KitchenOrderStatus.completed,
      ),
    ];
  }
}

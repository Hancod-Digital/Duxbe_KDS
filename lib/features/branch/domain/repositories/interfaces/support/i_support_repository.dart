import 'package:duxbe_kds/features/branch/branch.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';
import 'package:duxbe_kds/shared/shared.dart';

abstract class ISupportRepository {
  Future<CrmTicket> upsertCrmTicket({
    required String title,
    required String description,
    required String issueType,
    String? id,
    String priority = 'medium',
    String status = 'open',
    String? assignedTo,
    dynamic image,
    String? attachmentUrl,
  });

  Future<PaginatedResponse<CrmTicket>> getCrmTickets({
    String? status,
    String? priority,
    String? issueType,
    String? assignedTo,
    String? search,
    int page = 1,
    int pageSize = 20,
  });
}

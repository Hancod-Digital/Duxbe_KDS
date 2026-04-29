/// AppFilter is a type alias for filter maps used in paginated queries.
/// Format: Map<fieldName, List<Map<filterType, filterValue>>>
/// Example: {'name': [{'contains': 'test'}], 'created_at': [{'greaterthan': '2024-01-01'}]}
typedef AppFilter = Map<String, List<Map<String, String>>>;

import '../database.dart';

class PollsWithStatusTable extends SupabaseTable<PollsWithStatusRow> {
  @override
  String get tableName => 'polls_with_status';

  @override
  PollsWithStatusRow createRow(Map<String, dynamic> data) =>
      PollsWithStatusRow(data);
}

class PollsWithStatusRow extends SupabaseDataRow {
  PollsWithStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PollsWithStatusTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  bool? get isOpen => getField<bool>('is_open');
  set isOpen(bool? value) => setField<bool>('is_open', value);
}

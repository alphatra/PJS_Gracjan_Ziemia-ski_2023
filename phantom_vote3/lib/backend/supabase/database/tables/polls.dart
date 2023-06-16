import '../database.dart';

class PollsTable extends SupabaseTable<PollsRow> {
  @override
  String get tableName => 'polls';

  @override
  PollsRow createRow(Map<String, dynamic> data) => PollsRow(data);
}

class PollsRow extends SupabaseDataRow {
  PollsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PollsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}

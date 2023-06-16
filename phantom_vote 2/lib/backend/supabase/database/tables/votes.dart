import '../database.dart';

class VotesTable extends SupabaseTable<VotesRow> {
  @override
  String get tableName => 'votes';

  @override
  VotesRow createRow(Map<String, dynamic> data) => VotesRow(data);
}

class VotesRow extends SupabaseDataRow {
  VotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get optionId => getField<int>('option_id')!;
  set optionId(int value) => setField<int>('option_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}

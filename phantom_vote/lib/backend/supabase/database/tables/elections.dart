import '../database.dart';

class ElectionsTable extends SupabaseTable<ElectionsRow> {
  @override
  String get tableName => 'elections';

  @override
  ElectionsRow createRow(Map<String, dynamic> data) => ElectionsRow(data);
}

class ElectionsRow extends SupabaseDataRow {
  ElectionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ElectionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);
}

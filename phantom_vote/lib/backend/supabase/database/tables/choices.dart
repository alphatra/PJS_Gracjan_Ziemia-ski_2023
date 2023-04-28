import '../database.dart';

class ChoicesTable extends SupabaseTable<ChoicesRow> {
  @override
  String get tableName => 'choices';

  @override
  ChoicesRow createRow(Map<String, dynamic> data) => ChoicesRow(data);
}

class ChoicesRow extends SupabaseDataRow {
  ChoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChoicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get choiceText => getField<String>('choice_text');
  set choiceText(String? value) => setField<String>('choice_text', value);

  int? get questionId => getField<int>('question_id');
  set questionId(int? value) => setField<int>('question_id', value);
}

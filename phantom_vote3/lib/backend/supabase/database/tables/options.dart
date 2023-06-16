import '../database.dart';

class OptionsTable extends SupabaseTable<OptionsRow> {
  @override
  String get tableName => 'options';

  @override
  OptionsRow createRow(Map<String, dynamic> data) => OptionsRow(data);
}

class OptionsRow extends SupabaseDataRow {
  OptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get questionId => getField<int>('question_id')!;
  set questionId(int value) => setField<int>('question_id', value);

  String? get optionText => getField<String>('option_text');
  set optionText(String? value) => setField<String>('option_text', value);

  String? get descriptionShort => getField<String>('description_short');
  set descriptionShort(String? value) =>
      setField<String>('description_short', value);

  String? get descriptionLong => getField<String>('description_long');
  set descriptionLong(String? value) =>
      setField<String>('description_long', value);

  String? get imageCover => getField<String>('image_cover');
  set imageCover(String? value) => setField<String>('image_cover', value);
}

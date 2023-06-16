import '../database.dart';

class UserCustomizationTable extends SupabaseTable<UserCustomizationRow> {
  @override
  String get tableName => 'user_customization';

  @override
  UserCustomizationRow createRow(Map<String, dynamic> data) =>
      UserCustomizationRow(data);
}

class UserCustomizationRow extends SupabaseDataRow {
  UserCustomizationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserCustomizationTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);
}

import '../database.dart';

class VotingResultsTable extends SupabaseTable<VotingResultsRow> {
  @override
  String get tableName => 'voting_results';

  @override
  VotingResultsRow createRow(Map<String, dynamic> data) =>
      VotingResultsRow(data);
}

class VotingResultsRow extends SupabaseDataRow {
  VotingResultsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VotingResultsTable();

  int? get pollId => getField<int>('poll_id');
  set pollId(int? value) => setField<int>('poll_id', value);

  int? get questionId => getField<int>('question_id');
  set questionId(int? value) => setField<int>('question_id', value);

  int? get optionId => getField<int>('option_id');
  set optionId(int? value) => setField<int>('option_id', value);

  String? get optionText => getField<String>('option_text');
  set optionText(String? value) => setField<String>('option_text', value);

  int? get votesCount => getField<int>('votes_count');
  set votesCount(int? value) => setField<int>('votes_count', value);

  int? get totalVotes => getField<int>('total_votes');
  set totalVotes(int? value) => setField<int>('total_votes', value);

  double? get percentageVotes => getField<double>('percentage_votes');
  set percentageVotes(double? value) =>
      setField<double>('percentage_votes', value);
}

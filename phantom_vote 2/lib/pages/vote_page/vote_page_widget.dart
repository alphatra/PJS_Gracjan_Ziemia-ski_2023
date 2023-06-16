import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vote_page_model.dart';
export 'vote_page_model.dart';

class VotePageWidget extends StatefulWidget {
  const VotePageWidget({
    Key? key,
    required this.pollRef,
  }) : super(key: key);

  final PollsWithStatusRow? pollRef;

  @override
  _VotePageWidgetState createState() => _VotePageWidgetState();
}

class _VotePageWidgetState extends State<VotePageWidget> {
  late VotePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VotePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.217,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.99, -0.99),
                            child: FutureBuilder<List<PollsRow>>(
                              future: PollsTable().querySingleRow(
                                queryFn: (q) => q,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitPulse(
                                        color: Color(0xFFFA510D),
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<PollsRow> containerPollsRowList =
                                    snapshot.data!;
                                final containerPollsRow =
                                    containerPollsRowList.isNotEmpty
                                        ? containerPollsRowList.first
                                        : null;
                                return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height:
                                      MediaQuery.of(context).size.height * 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF171515),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.network(
                                        valueOrDefault<String>(
                                          containerPollsRow?.image,
                                          'https://cdn.shopify.com/s/files/1/0024/0408/9929/articles/shutterstock_1942906447.jpg?v=1635211494',
                                        ),
                                      ).image,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                            },
                            text: '',
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 73.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF1E1E1E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Satoshi Variable',
                                    color: Colors.white,
                                    useGoogleFonts: false,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.04, 0.69),
                            child: Text(
                              valueOrDefault<String>(
                                widget.pollRef?.title,
                                'Test',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi Variable',
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    fontSize: 30.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.22,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FutureBuilder<List<VotingResultsRow>>(
                                      future:
                                          VotingResultsTable().querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'poll_id',
                                          1,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitPulse(
                                                color: Color(0xFFFA510D),
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<VotingResultsRow>
                                            textVotingResultsRowList =
                                            snapshot.data!;
                                        final textVotingResultsRow =
                                            textVotingResultsRowList.isNotEmpty
                                                ? textVotingResultsRowList.first
                                                : null;
                                        return Text(
                                          valueOrDefault<String>(
                                            textVotingResultsRow?.totalVotes
                                                ?.toString(),
                                            'Total_Votes',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi Variable',
                                                fontSize: 50.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Total Vote Count',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            fontSize: 26.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 0.0),
                              child: FutureBuilder<List<VotingResultsRow>>(
                                future: VotingResultsTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'poll_id',
                                        widget.pollRef?.id,
                                      )
                                      .order('option_id', ascending: true),
                                  limit: 2,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitPulse(
                                          color: Color(0xFFFA510D),
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<VotingResultsRow>
                                      rowVotingResultsRowList = snapshot.data!;
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        rowVotingResultsRowList.length,
                                        (rowIndex) {
                                      final rowVotingResultsRow =
                                          rowVotingResultsRowList[rowIndex];
                                      return Container(
                                        width: 150.0,
                                        height: 55.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FA510D),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: custom_widgets
                                                    .NewCustomWidget(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  size: 50.0,
                                                  data_1: rowVotingResultsRow
                                                      .percentageVotes!,
                                                  data_2: rowVotingResultsRow
                                                      .percentageVotes!,
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  rowVotingResultsRow
                                                      .optionText!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Satoshi Variable',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VotePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).customColor4,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).customColor4,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget.pollRef?.title,
              'Poll page',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Satoshi Variable',
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<List<VotingResultsRow>>(
                future: VotingResultsTable().queryRows(
                  queryFn: (q) => q.eq(
                    'poll_id',
                    widget.pollRef?.id,
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                      ),
                    );
                  }
                  List<VotingResultsRow> containerVotingResultsRowList =
                      snapshot.data!;
                  return Container(
                    width: double.infinity,
                    height: 293.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150.0,
                              height: 150.0,
                              child: Stack(
                                children: [
                                  FutureBuilder<List<OptionsRow>>(
                                    future: OptionsTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'question_id',
                                        widget.pollRef?.id,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                          ),
                                        );
                                      }
                                      List<OptionsRow> imageOptionsRowList =
                                          snapshot.data!;
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          imageOptionsRowList.first.imageCover!,
                                          width: 150.0,
                                          height: 150.0,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Information'),
                                              content: Text('inf1'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      text: '',
                                      icon: FaIcon(
                                        FontAwesomeIcons.info,
                                        size: 10.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 30.0,
                                        height: 30.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Satoshi Variable',
                                              color: Colors.white,
                                              fontSize: 10.0,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 1.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        containerVotingResultsRowList
                                            .first.optionText,
                                        'Option A',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            color: FlutterFlowTheme.of(context)
                                                .background,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              child: Stack(
                                children: [
                                  FutureBuilder<List<OptionsRow>>(
                                    future: OptionsTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'question_id',
                                        widget.pollRef?.id,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                          ),
                                        );
                                      }
                                      List<OptionsRow> imageOptionsRowList =
                                          snapshot.data!;
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          imageOptionsRowList.last.imageCover!,
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Information'),
                                              content: Text('Inf2'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      text: '',
                                      icon: FaIcon(
                                        FontAwesomeIcons.info,
                                        size: 10.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 30.0,
                                        height: 30.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Satoshi Variable',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 1.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        containerVotingResultsRowList
                                            .last.optionText,
                                        'Option B',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            color: FlutterFlowTheme.of(context)
                                                .background,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 3.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          containerVotingResultsRowList
                                              .first.votesCount
                                              ?.toString(),
                                          'num',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Satoshi Variable',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 32.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        containerVotingResultsRowList
                                            .first.optionText,
                                        'Option A',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            fontSize: 15.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 3.0),
                                      child: Text(
                                        formatNumber(
                                          containerVotingResultsRowList
                                                  .first.votesCount! +
                                              containerVotingResultsRowList
                                                  .last.votesCount!,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.automatic,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Satoshi Variable',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 32.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Total Votes',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            fontSize: 15.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 3.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          containerVotingResultsRowList
                                              .last.votesCount
                                              ?.toString(),
                                          'num',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Satoshi Variable',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 32.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        containerVotingResultsRowList
                                            .last.optionText,
                                        'Option A',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            fontSize: 15.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 120.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomInteger(0, 10)),
                                  yData: List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomInteger(0, 10)),
                                  settings: LineChartBarData(
                                    color: Color(0xFF1F10E9),
                                    barWidth: 2.0,
                                    isCurved: true,
                                  ),
                                ),
                                FFLineChartData(
                                  xData: List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomInteger(0, 10)),
                                  yData: List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomInteger(0, 10)),
                                  settings: LineChartBarData(
                                    color: Color(0xFF45FF90),
                                    barWidth: 2.0,
                                    isCurved: true,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showGrid: true,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                          ),
                        ),
                      ),
                      FutureBuilder<List<OptionsRow>>(
                        future: OptionsTable().queryRows(
                          queryFn: (q) => q.eq(
                            'question_id',
                            widget.pollRef?.id,
                          ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                              ),
                            );
                          }
                          List<OptionsRow> listViewOptionsRowList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewOptionsRowList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewOptionsRow =
                                  listViewOptionsRowList[listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'OptionPage',
                                    queryParameters: {
                                      'optionRef': serializeParam(
                                        listViewOptionsRow,
                                        ParamType.SupabaseRow,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: ListTile(
                                  title: Text(
                                    listViewOptionsRow.optionText!,
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  subtitle: Text(
                                    listViewOptionsRow.descriptionShort!,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'End Date:',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.pollRef?.endDate?.toString(),
                        '2137',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

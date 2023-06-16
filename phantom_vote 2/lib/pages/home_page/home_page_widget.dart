import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional(-0.0, 0.0),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.85),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning,',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  FutureBuilder<List<UserCustomizationRow>>(
                                    future:
                                        UserCustomizationTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'user_id',
                                        currentUserUid,
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
                                      List<UserCustomizationRow>
                                          textUserCustomizationRowList =
                                          snapshot.data!;
                                      final textUserCustomizationRow =
                                          textUserCustomizationRowList
                                                  .isNotEmpty
                                              ? textUserCustomizationRowList
                                                  .first
                                              : null;
                                      return Text(
                                        '${textUserCustomizationRow?.displayName}',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.45, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child:
                                    FutureBuilder<List<UserCustomizationRow>>(
                                  future:
                                      UserCustomizationTable().querySingleRow(
                                    queryFn: (q) => q.eq(
                                      'user_id',
                                      currentUserUid,
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
                                    List<UserCustomizationRow>
                                        imageUserCustomizationRowList =
                                        snapshot.data!;
                                    final imageUserCustomizationRow =
                                        imageUserCustomizationRowList.isNotEmpty
                                            ? imageUserCustomizationRowList
                                                .first
                                            : null;
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        imageUserCustomizationRow!.avatarUrl!,
                                        width: 64.0,
                                        height: 64.0,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              color: Color(0x00FA510D),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: GradientText(
                                      dateTimeFormat(
                                          'MMMEd', getCurrentTimestamp),
                                      style: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .override(
                                            fontFamily: 'Satoshi Variable',
                                            fontSize: 52.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        Color(0xA4FFFFFF)
                                      ],
                                      gradientDirection: GradientDirection.ttb,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 40.0, 20.0, 0.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFFA510D),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        AutoSizeText(
                                          'Presidental\nelection',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Satoshi Variable',
                                                fontSize: 38.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                                lineHeight: 1.02,
                                              ),
                                        ),
                                        Container(
                                          width: 120.0,
                                          height: 120.0,
                                          child: FlutterFlowPieChart(
                                            data: FFPieChartData(
                                              values: [
                                                random_data.randomInteger(
                                                    0, 10),
                                                random_data.randomInteger(0, 10)
                                              ],
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                                Color(0xFF797DFE)
                                              ],
                                              radius: [50.0, 50.0],
                                            ),
                                            donutHoleRadius: 0.0,
                                            donutHoleColor: Colors.white,
                                            sectionLabelType:
                                                PieChartSectionLabelType
                                                    .percent,
                                            sectionLabelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Joe Biden',
                                              style: TextStyle(
                                                color: Color(0xFF797DFE),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '  vs  ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text: 'Donald J. Trump',
                                              style: TextStyle(
                                                color: Color(0xFF45FF90),
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi Variable',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FutureBuilder<List<PollsRow>>(
                            future: PollsTable().queryRows(
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
                              List<PollsRow> listViewPollsRowList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewPollsRowList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewPollsRow =
                                      listViewPollsRowList[listViewIndex];
                                  return ListTile(
                                    title: Text(
                                      listViewPollsRow.title,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                    subtitle: Text(
                                      listViewPollsRow.description!,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      size: 20.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.01),
                    child: wrapWithModel(
                      model: _model.navBar1Model,
                      updateCallback: () => setState(() {}),
                      child: NavBar1Widget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

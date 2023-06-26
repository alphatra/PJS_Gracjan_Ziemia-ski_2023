// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_circular_chart/awesome_circular_chart.dart';

class NewCustomWidget extends StatefulWidget {
  const NewCustomWidget({
    Key? key,
    this.width,
    this.height,
    this.data_1 = 66.60,
    this.data_2 = 33.30,
    this.size = 200,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double data_1;
  final double data_2;
  final double size;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<NewCustomWidget> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: new AnimatedCircularChart(
        key: _chartKey,
        size: Size(widget.size, widget.size),
        initialChartData: <CircularStackEntry>[
          new CircularStackEntry(
            <CircularSegmentEntry>[
              new CircularSegmentEntry(
                widget.data_1,
                Colors.blue[400],
                rankKey: 'completed',
              ),
              new CircularSegmentEntry(
                66.67,
                Colors.blueGrey[600],
                rankKey: 'remaining',
              ),
            ],
            rankKey: 'progress',
          ),
        ],
        chartType: CircularChartType.Radial,
        edgeStyle: SegmentEdgeStyle.round,
        percentageValues: true,
      ),
    );
  }
}

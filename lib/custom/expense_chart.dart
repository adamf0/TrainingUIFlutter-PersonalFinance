import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ExpenseChart extends StatelessWidget {
  List<charts.Series> seriesList;
  bool animate;

  ExpenseChart(this.seriesList, this.animate);

  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      animationDuration: Duration(seconds: 1),
      defaultRenderer: charts.ArcRendererConfig(
          arcWidth: 12,
          strokeWidthPx: 0,
          arcRendererDecorators: [
            charts.ArcLabelDecorator(
                labelPadding: 0,
                showLeaderLines: false,
                outsideLabelStyleSpec: charts.TextStyleSpec(
                    fontSize: 12,
                    fontFamily: 'Quicksand',
                    color: charts.MaterialPalette.white))
          ]),
      behaviors: [
        charts.DatumLegend(
            position: charts.BehaviorPosition.end,
            outsideJustification: charts.OutsideJustification.start,
            horizontalFirst: false,
            desiredMaxColumns: 1,
            cellPadding: const EdgeInsets.only(right: 4, bottom: 4),
            entryTextStyle: charts.TextStyleSpec(
                fontSize: 12,
                fontFamily: 'Quicksand',
                color: charts.MaterialPalette.white))
      ],
    );
  }
}

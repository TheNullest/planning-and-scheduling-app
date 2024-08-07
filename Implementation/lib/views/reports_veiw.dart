import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zamaan/utilities/constants/asset_urls/lottie_constants.dart';
import 'package:zamaan/views/abstracts/asbtract_base_view.dart';

class ReportsView extends StatelessWidget implements BaseView {
  const ReportsView({super.key});

  static String routeName = 'reports-view';

  @override
  String get viewTitle => 'گزارش ها';

  @override
  IconData get icon => Icons.bar_chart;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Lottie.asset(LottieConstants.lottieUnderConstruction),
    );
  }
}

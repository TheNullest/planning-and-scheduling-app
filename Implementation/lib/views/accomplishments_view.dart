import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zamaan/utilities/constants/asset_urls/lottie_constants.dart';
import 'package:zamaan/views/abstracts/asbtract_base_view.dart';

/// All completed tasks, projects, plans, etc. will be displayed on this page
class AccomplishmentsView extends StatefulWidget implements BaseView {
  const AccomplishmentsView({super.key});

  @override
  State<AccomplishmentsView> createState() => _AccomplishmentsViewState();

  @override
  String get viewTitle => 'بایگانی شده ها';

  @override
  IconData get icon => Icons.library_add_check_outlined;
}

class _AccomplishmentsViewState extends State<AccomplishmentsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset(LottieConstants.lottieDevelopment2),
    );
  }
}

import 'package:flutter/material.dart';

extension DoubleToSpaceExtension on num? {
  num validate({num value = 0}) => this ?? value;

  Widget get rectSizedBox => SizedBox(
        height: this!.toDouble(),
        width: this!.toDouble(),
      );
  Widget get sizedBoxHeight => SizedBox(
        height: this!.toDouble(),
      );
  Widget get sizedBoxWidth => SizedBox(
        width: this!.toDouble(),
      );

  Widget get sliverSizedBoxHeight => SliverToBoxAdapter(child: sizedBoxHeight);
  Widget get sliverSizedBoxWidth => SliverToBoxAdapter(child: sizedBoxWidth);

  int get asColorAlpha => (this! * 255).toInt();
}

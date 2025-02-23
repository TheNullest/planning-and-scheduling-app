import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/common/cubits/user/app_user_cubit.dart';
import 'package:zamaan/core/config/themes/app_dark_palette.dart';
import 'package:zamaan/core/constants/routes.dart';

class CustomSliverAppBarWidget extends StatefulWidget {
  const CustomSliverAppBarWidget({
    required this.viewTitle,
    required this.appBarDisplay,
    super.key,
  });
  final String viewTitle;
  final bool appBarDisplay;

  @override
  State<CustomSliverAppBarWidget> createState() =>
      _CustomSliverAppBarWidgetState();
}

class _CustomSliverAppBarWidgetState extends State<CustomSliverAppBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController headerAnimationController;
  late Animation<double> headerSizeAnimation;
  late bool appBarStateChanged = false;
  @override
  void initState() {
    headerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    );

    headerSizeAnimation =
        Tween<double>(begin: 0, end: 50).animate(headerAnimationController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (appBarStateChanged != widget.appBarDisplay) {
      widget.appBarDisplay
          ? headerAnimationController.forward()
          : headerAnimationController.reverse();
      appBarStateChanged = widget.appBarDisplay;
    }
    return SliverAppBar(
      // for removing the back button on the app bar
      automaticallyImplyLeading: false,
      backgroundColor: AppPallete.backgroundColor,
      scrolledUnderElevation: 15,
      leadingWidth: 100,

      elevation: 5,
      surfaceTintColor: AppPallete.enableBorderColor,
      shadowColor: AppPallete.grey,
      floating: true,
      toolbarHeight: headerSizeAnimation.value,
      centerTitle: true,
      snap: true,
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => Navigator.push(
                context,
                Routes.settingsMaterialRoute(context),
              ),
            ),
          ),
        ),
      ],
      title: Text(
        widget.viewTitle,
        style: const TextStyle(color: AppPallete.white),
      ),
    );
  }
}

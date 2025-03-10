import 'package:flutter/material.dart';
import 'package:zamaan/core/theme/app_dark_palette.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({
    required this.tabController,
    required this.icons,
    this.bottomBarDisplay = true,
    super.key,
    this.isBottomIndicator = false,
  });
  final bool bottomBarDisplay;
  final List<IconData> icons;
  final bool isBottomIndicator;
  final TabController tabController;

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = widget.tabController.index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: widget.bottomBarDisplay ? 60 : 0,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: AppPallete.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppPallete.gradient1,
            blurRadius: 15,
          ),
        ],
      ),
      child: TabBar(
        controller: widget.tabController,
        dividerHeight: widget.isBottomIndicator ? 1 : 0,
        padding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          border: widget.isBottomIndicator
              ? const Border(
                  bottom: BorderSide(
                    color: AppPallete.gradient2,
                    width: 3,
                  ),
                )
              : const Border(
                  top: BorderSide(
                    color: AppPallete.gradient3,
                    width: 3,
                  ),
                ),
        ),
        tabs: widget.icons
            .asMap()
            .map(
              (index, icon) => MapEntry(
                index,
                Tab(
                  icon: Icon(
                    shadows: index == selectedIndex
                        ? [
                            const Shadow(
                              color: AppPallete.grey,
                              offset: Offset(0, 1),
                              blurRadius: 3,
                            ),
                          ]
                        : null,
                    icon,
                    color: index == selectedIndex
                        ? AppPallete.gradient3
                        : AppPallete.grey,
                  ),
                ),
              ),
            )
            .values
            .toList(),
        onTap: (index) => widget.tabController.index = index,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zamaan/components/custom_components.dart';
import 'package:zamaan/utilities/responsive_helper.dart';
import 'package:zamaan/views/views.dart';

class MainView extends StatefulWidget {
  static String routeName = 'main-view';

  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  final List<Widget> _views = const [
    TodaysTasksView(),
    ActiveTasksView(),
    ReportsView(),
    ReminderView(),
    CalendarView(),
    AccomplishmentsView()
  ];

  final List<IconData> _icons = const [
    // TodaysTasksView
    Icons.timer_outlined,

    // ActiveTasksView
    Icons.workspaces,

    // ReportsView
    Icons.bar_chart,

    // ReminderView
    Icons.notifications_active_outlined,

    // CalendarView
    Icons.calendar_month_outlined,

    // AccomplishmentsView
    Icons.library_add_check_outlined
  ];

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  int _selecatedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
            body: IndexedStack(
              index: _selecatedIndex,

              /// Reversed for the Persian language
              /// It can be adjusted for English language later
              children: _views.reversed.toList(),
            ),
            bottomNavigationBar: !ResponsiveHelper.isDesktop(context)
                ? Container(
                    padding: const EdgeInsets.only(bottom: 12),
                    color: Theme.of(context).colorScheme.surface,
                    child: CustomTabBar(
                      /// Reversed for the Persian language
                      /// It can be adjusted for English language later
                      icons: _icons.reversed.toList(),
                      onTap: (index) => setState(() => _selecatedIndex = index),
                      selectedIndex: _selecatedIndex,
                    ),
                  )
                : const SizedBox.shrink()));
  }
}
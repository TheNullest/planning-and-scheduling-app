import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:zamaan/features/navigation/presentation/widgets/custom_sliver_app_bar_widget.dart';
import 'package:zamaan/features/navigation/presentation/widgets/custom_tab_bar_widget.dart';
import 'package:zamaan/presentation_shared/models/tab_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    required this.tabItems,
    super.key,
  });
  final List<TabItem> tabItems;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabItems.length, vsync: this)
      ..index = 0
      ..addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController
      ..removeListener(_handleTabChange)
      ..dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: _tabController.index,
        length: widget.tabItems.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              CustomSliverAppBarWidget(
                appBarDisplay: true,
                viewTitle: widget.tabItems
                    .elementAt(_tabController.index)
                    .tabDetail
                    .titleKey
                    .tr(),
              ),
            ];
          },
          body: NotificationListener<UserScrollNotification>(
            onNotification: (UserScrollNotification notification) {
              setState(() {});
              return true;
            },
            child: Scaffold(
              body: TabBarView(
                controller: _tabController,
                children: widget.tabItems.map((item) => item.view).toList(),
              ),
              bottomNavigationBar: SizedBox(
                height: 50,
                child: CustomTabBarWidget(
                  tabController: _tabController,
                  icons: widget.tabItems
                      .map((item) => item.tabDetail.icon)
                      .toList(),
                ),
              ),
              // BlocConsumer<AuthBloc, AuthState>(
              //   listener: (context, state) {
              //     if (state is AuthFailureState) {
              //       showSnackBar(context, state.message);
              //     }
              //     if (state is AuthUserAccountDeletedState) {
              //       showSnackBar(context, 'User Account Deleted');
              //       navigatorPushRemoveUntil(
              //         context,
              //         RouteConstants.signInStringRoute,
              //       );
              //     }
              //   },
              //   builder: (context, state) {
              //     if (state is AuthLoadingState) {
              //       return const LoaderWidget();
              //     }
              //     return const Center(
              //       child: Text('Shell'),
              //     );
              //   },
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

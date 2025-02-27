import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/presentation_shared/widgets/loader.dart';
import 'package:zamaan/core/constants/routes.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/core/utils/snackbars.dart';
import 'package:zamaan/features/auth/presentation/viewmodels/auth/auth_bloc.dart';
import 'package:zamaan/features/navigation/presentation/widgets/custom_sliver_app_bar_widget.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, isScrolled) {
        return [
          const CustomSliverAppBarWidget(
            appBarDisplay: true,
            viewTitle: 'main',
          ),
        ];
      },
      body: NotificationListener<UserScrollNotification>(
        onNotification: (UserScrollNotification notification) {
          setState(() {});
          return true;
        },
        child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthFailureState) {
                showSnackBar(context, state.message);
              }
              if (state is AuthUserAccountDeletedState) {
                showSnackBar(context, 'User Account Deleted');
                navigatorPushRemoveUntil(
                  context,
                  Routes.signInStringRoute,
                );
              }
            },
            builder: (context, state) {
              if (state is AuthLoadingState) {
                return const LoaderWidget();
              }
              return const Center(
                child: Text('Shell'),
              );
            },
          ),
        ),
      ),
    );
  }
}

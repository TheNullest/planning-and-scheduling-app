import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/common/cubits/user/app_user_cubit.dart';
import 'package:zamaan/common/providers/user_provider.dart';
import 'package:zamaan/core/routes/app_router.dart';
import 'package:zamaan/core/theme/app_dark_theme.dart';
import 'package:zamaan/features/auth/presentation/viewmodels/auth/auth_bloc.dart';
import 'package:zamaan/features/auth/presentation/views/sign_in_view.dart';
import 'package:zamaan/features/navigation/presentation/views/main_view.dart';
import 'package:zamaan/infrastructure/di/init_dependencies.dart';

void main() async {
  await intiDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator<AppUserCubit>()),
        BlocProvider(create: (_) => serviceLocator<AuthBloc>()),
      ],
      child: const Zamaan(),
    ),
  );
}

class Zamaan extends StatefulWidget {
  const Zamaan({super.key});

  @override
  State<Zamaan> createState() => _ZamaanState();
}

class _ZamaanState extends State<Zamaan> {
  @override
  void initState() {
    super.initState();

    context.read<AuthBloc>().add(AuthIsUserSignedInEvent());
  }

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(AuthIsUserSignedInEvent());
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MaterialApp(
        theme: AppTheme.darkThemeMode,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: serviceLocator<AppRouter>().generateRoute,
        home: BlocSelector<AppUserCubit, AppUserState, bool>(
          selector: (state) => state is AppUserSignedInState,
          builder: (context, userSignedIn) =>
              userSignedIn ? const MainView() : const SignInView(),
        ),
      ),
    );
  }
}



//TODO #2 Implement a versioning system within your models (e.g., an additional field) to track changes over time. 
//This allows you to differentiate between data stored under different model versions.



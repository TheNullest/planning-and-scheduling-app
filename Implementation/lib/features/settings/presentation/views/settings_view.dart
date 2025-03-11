import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/presentation/viewmodels/auth/auth_bloc.dart';
import 'package:zamaan/presentation_shared/cubits/user/app_user_cubit.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.currentUser!.userName,
              style: const TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () =>
                  context.read<AppUserCubit>().signOutUser(context),
              icon: const Icon(Icons.logout),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => context.read<AuthBloc>().add(
                    AuthDeleteAccountEvent(
                      UserSignInParams(
                        email: 'moien@gmail.com',
                        password: 'Aa123456',
                      ),
                    ),
                  ),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}

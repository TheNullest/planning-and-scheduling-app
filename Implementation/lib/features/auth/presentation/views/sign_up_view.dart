import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/routes/app_routes.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/int_to_space_extension.dart';
import 'package:zamaan/core/localization/app_locale_keys.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/core/utils/snackbars.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/presentation/viewmodels/auth/auth_bloc.dart';
import 'package:zamaan/features/auth/presentation/widgets/auth_field.dart';
import 'package:zamaan/presentation_shared/widgets/loader.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthFailureState) {
              showSnackBar(context, state.message);
            }
            if (state is AuthSuccessState) {
              showSnackBar(context, state.user.userName);
              context.userProvider
                  .initUser(UserHiveModel.fromEntity(state.user));
              navigatorPushRemoveUntil(context, AppRoutes.home);
            }
          },
          builder: (context, state) {
            if (state is AuthLoadingState) {
              return const LoaderWidget();
            }
            return Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocaleKeys.uiElements.titles.signUp,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  30.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.userName,
                    textController: userNameController,
                  ),
                  15.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.firstName,
                    textController: firstNameController,
                  ),
                  15.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.lastName,
                    textController: lastNameController,
                  ),
                  15.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.email,
                    textController: emailController,
                  ),
                  15.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.password,
                    isObsecured: true,
                    textController: passwordController,
                  ),
                  15.sizedBoxHeight,
                  AuthFieldWidget(
                    hintText: AppLocaleKeys.uiElements.hints.confirmPassword,
                    isObsecured: true,
                    textController: confirmPasswordController,
                  ),
                  30.sizedBoxHeight,
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthSignUpEvent(
                                user: UserEntity.forTest().copyWith(
                                  userName: userNameController.text,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  emailAddress: emailController.text,
                                  password: passwordController.text,
                                ),
                                confirmPassword: confirmPasswordController.text,
                              ),
                            );
                      }
                    },
                    child: Text(AppLocaleKeys.uiElements.buttons.signUp),
                  ),
                  15.sizedBoxHeight,
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => navigatorPushRemoveUntil(
                        context,
                        AppRoutes.signIn,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: AppLocaleKeys.auth.cta.haveAccount,
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: AppLocaleKeys.uiElements.titles.signIn,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

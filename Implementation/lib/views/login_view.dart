import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/themes/themes.dart';
import 'package:zamaan/widgets/custom_widgets.dart';
import 'package:zamaan/data/data.dart';
import 'package:zamaan/utilities/providers/theme_provider.dart';

import '../routes/views_route.dart';

class LoginView extends StatefulWidget {
  static String routeName = 'login-view';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      final CustomThemeExtension myTheme = themeProvider.myTheme(context);
      return PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: myTheme.backgroundColor,
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: myTheme.sectionBorderColor),
                    color: myTheme.sectionColor),
                child: Column(
                  children: [
                    // avatar or logo
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(users[0].profileImagePath),
                      ),
                    ),

                    // UserName input field
                    CustomTextFieldWidget(
                      controller: userNameController,
                      hintText: 'نام کاربری',
                    ),

                    // password input field
                    CustomTextFieldWidget(
                      controller: passwordController,
                      hintText: 'گذرواژه',
                      isObscureText: true,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                    ),

                    // log in and go to home view
                    CustomNormalButtonWidget(
                        onPressed: () =>
                            ViewsRoute.goToSelectedView(context, view: 'home'),
                        text: 'ورود'),

                    // got ot register view
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: size.width > 500
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _createAccoutnButton(context, myTheme),
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              verticalDirection: VerticalDirection.up,
                              children: _createAccoutnButton(context, myTheme,
                                  height: 10),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

List<Widget> _createAccoutnButton(
        BuildContext context, CustomThemeExtension myTheme,
        {double height = 0}) =>
    [
      CustomNoFieldTextButtonWidget(
          onTap: () => ViewsRoute.goToSelectedView(context, view: 'register'),
          name: 'ایجاد حساب کاربری جدید'),
      const SizedBox(
        width: 10,
      ),
      SizedBox(
        height: height,
      ),
      const Text(
        textDirection: TextDirection.rtl,
        'حســـاب کاربـــری ندارم؟',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    ];

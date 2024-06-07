import 'package:flutter/material.dart';
import 'package:sandoval0412/screens/signin_screen.dart';
import 'package:sandoval0412/screens/signup_screen.dart';
import 'package:sandoval0412/theme/theme.dart';
import 'package:sandoval0412/widgets/custom_scaffold.dart';
import 'package:sandoval0412/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Bienvenido de nuevo!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: '\nIngresa tus datos personales',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffffffff),
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Iniciar',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Registrar',
                      onTap: const SignUpScreen(),
                      color: Color(0xff840000),
                      textColor: Color(0xfffff3f3),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

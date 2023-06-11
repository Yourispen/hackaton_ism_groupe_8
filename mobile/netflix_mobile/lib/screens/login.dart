import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_mobile/configs/config.dart';
import 'package:netflix_mobile/screens/register.dart';
import 'package:netflix_mobile/widgets/bg.dart';
import 'package:netflix_mobile/widgets/button.dart';
import 'package:netflix_mobile/widgets/or.dart';
import 'package:netflix_mobile/widgets/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              const SizedBox(height: 150),
              /* Image.asset(
                Config.assets.logo,
                width: 250,
              ), */
              const SizedBox(height: 25),
              Text(
                "Se Connecter",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 25),
              const NTextField(
                label: "",
                hint: "Email ou numero de telephone",
              ),
              const SizedBox(height: 17),
              const NTextField(
                label: "",
                hint: "Mot de passe",
                isPassword: true,
              ),
              const SizedBox(height: 17),
              /*  Row(
                children: [
                   Expanded(
                    child: Row(children: [
                      CupertinoSwitch(
                        thumbColor: Colors.white,
                        trackColor: Config.colors.greyColor,
                        value: rememberMe,
                        onChanged: (value) {
                          rememberMe = value;
                          setState(() {});
                        },
                        activeColor: Config.colors.primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                     
                    ]),
                  ), 
                  Text(
                    "forgot password?",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(.46),
                      fontSize: 13,
                    ),
                  )
                ],
              ), */
              const SizedBox(height: 17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NButton(
                    title: "Se connecter",
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    color: Colors.red[900],
                  ),
                ],
              ),
              //const SizedBox(height: 40),
              //const Or(),
              //const SizedBox(height: 30),
              /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Config.assets.google,
                  ),
                  Image.asset(
                    Config.assets.apple,
                  ),
                  Image.asset(
                    Config.assets.facebook,
                  ),
                ],
              ), */
              const SizedBox(height: 40),
              Text(
                "Besoin d'aide ?",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nouveau sur Netflix ?",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "sign up",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: Config.colors.primaryColor,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

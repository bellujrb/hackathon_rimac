import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/core/extensions/build_context_utils.dart';
import 'package:frontend/core/style/colors.dart';
import 'package:frontend/core/style/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(context),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Menu",
                        style: context.appTextStyles.smallGray,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          buildNavigator(context, "Ranking", () {},
                              const Color(0xFFD946EF)),
                          const SizedBox(
                            width: 30,
                          ),
                          buildNavigator(context, "Desafios", () {},
                              const Color(0xFFD946EF)),
                          const SizedBox(
                            width: 30,
                          ),
                          buildNavigator(context, "Dispositivos", () {
                            Modular.to.navigate("device");
                          }, const Color(0xFFD946EF)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Score",
                        style: context.appTextStyles.smallGray,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Modular.to.navigate("bienestar");
                        },
                        child: SizedBox(
                          height: 422,
                          width: 322,
                          child: Image.asset("assets/data.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Análisis de salud predictivo",
                        style: context.appTextStyles.smallGray,
                      ),
                      InkWell(
                        onTap: () {
                          Modular.to.navigate("salud");
                        },
                        child: SizedBox(
                          height: 272,
                          width: 322,
                          child: Image.asset("assets/salud.png"),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildNavigator(
    BuildContext context, String title, Function()? onTap, Color? color) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 64,
          width: 64,
          decoration: BoxDecoration(color: color),
          child: Icon(
            Icons.adb,
            size: 24,
            color: AppColors.tertiary,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: context.appTextStyles.smallGray,
        )
      ],
    ),
  );
}

Widget buildAppBar(BuildContext context) {
  return Container(
    height: 104,
    width: context.mediaWidth * 1.0,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Image.asset("assets/profile.png"),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Hello, Kaori!",
            style: context.appTextStyles.title,
          )
        ],
      ),
    ),
  );
}

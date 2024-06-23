import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/core/extensions/build_context_utils.dart';
import 'package:frontend/core/style/colors.dart';
import 'package:frontend/core/style/text_style.dart';

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Modular.to.navigate("/");
              },
              child: const Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                width: context.mediaWidth * 1.0,
                child: Column(
                  children: [
                    Text(
                      "Dispositivo de enlace",
                      style: context.appTextStyles.mediumBlack,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Para mejorar nuestro análisis, por favor introduce tus dispositivos",
                      style: context.appTextStyles.smallGray,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 403,
                      width: 343,
                      child: Image.asset("assets/device.png"),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 56,
                      width: context.mediaWidth * 0.8,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8)),
                      child: InkWell(
                        onTap: () {
                          Modular.to.navigate("devicestatus");
                        },
                        child: Text(
                          "Emparejar Dispositivo",
                          style: context.appTextStyles.smallWhite,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

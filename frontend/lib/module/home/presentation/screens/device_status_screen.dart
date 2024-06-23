import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/core/extensions/build_context_utils.dart';
import 'package:frontend/core/style/text_style.dart';

class DeviceStatusScreen extends StatelessWidget {
  const DeviceStatusScreen({super.key});

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
                padding: EdgeInsets.all(24.0),
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
                    SizedBox(
                      height: 544,
                      width: 343,
                      child: Image.asset("assets/devicestatus.png"),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

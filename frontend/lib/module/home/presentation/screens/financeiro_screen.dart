import 'package:flutter/material.dart';
import 'package:frontend/core/extensions/build_context_utils.dart';
import 'package:frontend/core/style/colors.dart';
import 'package:frontend/core/style/text_style.dart';

class FinanceiroScreen extends StatelessWidget {
  const FinanceiroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
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
                      Container(
                          alignment: Alignment.center,
                          width: context.mediaWidth * 1.0,
                          height: 65,
                          decoration: BoxDecoration(color: AppColors.primary),
                          child: Text(
                            "Agregar facturas mensuales o agregar gastos",
                            style: context.appTextStyles.smallWhite,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Financiero Data",
                        style: context.appTextStyles.mediumBlack,
                      ),
                      SizedBox(
                        width: context.mediaWidth * 1.0,
                        height: 636,
                        child: Image.asset("assets/salud2.png"),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

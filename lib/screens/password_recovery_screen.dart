import 'package:dr_app/components/top_bar.dart';
import 'package:dr_app/configs/theme.dart';
import 'package:dr_app/utils/colors.dart';
import 'package:dr_app/utils/images.dart';
import 'package:flutter/material.dart';

/// The PasswordRecoveryScreen displays a [LUInputField]
/// which allows the users to retrieve their forgotten password.
class PasswordRecoveryScreen extends StatelessWidget {
  static const id = 'password_recovery_screen';
  static const headerHeightFactor = 0.28;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: LUTheme.of(context).backgroundColor,
      child: Stack(
        children: <Widget>[
          buildHeaderBackground(context),
          SafeArea(
            child: LUTopBar(
              title: 'Forgot Password',
              onNavigationButtonPressed: () => Navigator.of(context).pop(),
            ),
          )
        ],
      ),
    );
  }

  Widget buildHeaderBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          )
        ],
      ),
      child: ClipRRect(
        child: Container(
          height: MediaQuery.of(context).size.height * headerHeightFactor,
          color: LUColors.yellow,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                  child: Image.asset(Images.homeHeaderBackground,
                      fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}

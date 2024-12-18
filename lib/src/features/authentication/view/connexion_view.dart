import 'package:flutter/material.dart';
import '../../../widgets/title.dart';

class ConnexionView extends StatelessWidget {
  const ConnexionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CustomTitle(
            text: "Connexion",
          ),
        ),
      ),
    );
  }
}

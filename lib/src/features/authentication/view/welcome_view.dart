import 'package:flutter/material.dart';

import '../../../widgets/bouton-blanc.dart';
import '../../../widgets/btn-rouge.dart';
import '../../../widgets/logo-ekod.dart';
import '../../../widgets/text.dart';
import '../../../widgets/title.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              const SizedBox(height: 32),
              const CustomTitle(
                text: "Bienvenue sur l'application EKOD alumni",
              ),
              const SizedBox(height: 15),
              const CustomText(
                text:
                    "Vous pouvez vous connectez avec votre compte EKOD ou en créer un",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              RedButton(
                text: "Se connecter",
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              WhiteButton(
                text: "S'inscrire",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

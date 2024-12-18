import 'package:flutter/material.dart';

import '../../../widgets/bouton-blanc.dart';
import '../../../widgets/input.dart';
import '../../../widgets/title.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTitle(
                text: "Inscription",
              ),
              const SizedBox(height: 16),
              InscriptionInput(
                label: "Nom d'utilisateur",
                hintText: "Entrez votre nom d'utilisateur",
              ),
              const SizedBox(height: 32),
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

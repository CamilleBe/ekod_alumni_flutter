import 'package:flutter/material.dart';

import '../../../widgets/bouton-blanc.dart';
import '../../../widgets/input.dart';
import '../../../widgets/title.dart';
import 'connexion_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _emailController = TextEditingController();
  final _entrepriseController = TextEditingController();

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
                controller: _nomController,
                label: "Nom",
                hintText: "Entrez votre nom",
              ),
              InscriptionInput(
                controller: _prenomController,
                label: "Prénom",
                hintText: "Entrez votre prénom",
              ),
              InscriptionInput(
                controller: _emailController,
                label: "E-mail",
                hintText: "Entrez votre e-mail",
              ),
              InscriptionInput(
                controller: _entrepriseController,
                label: "Votre entreprise",
                hintText: "Entrez votre le nom de votre entreprise",
              ),
              const SizedBox(height: 32),
              WhiteButton(
                text: "S'inscrire",
                onPressed: () {
                  final nom = _nomController.text;
                  final prenom = _prenomController.text;
                  final email = _emailController.text;
                  final entreprise = _entrepriseController.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConnexionView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nomController.dispose();
    _prenomController.dispose();
    _emailController.dispose();
    _entrepriseController.dispose();
    super.dispose();
  }
}

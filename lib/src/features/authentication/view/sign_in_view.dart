import 'package:flutter/material.dart';

import '../../../widgets/bouton-blanc.dart';
import '../../../widgets/input-password.dart';
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
  final _passwordController = TextEditingController();
  final List<String> _statuts = ['Étudiant', 'Alumni'];
  String? _selectedStatut;

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
              PasswordInput(
                label: "Mot de passe",
                hintText: "Entrez votre mot de passe",
                controller: _passwordController,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 400),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Vous êtes...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                  ),
                  hint: const Text('Vous êtes...'),
                  value: _selectedStatut,
                  items: _statuts.map((String statut) {
                    return DropdownMenuItem<String>(
                      value: statut,
                      child: Text(statut),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedStatut = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 32),
              WhiteButton(
                text: "S'inscrire",
                onPressed: () {
                  final nom = _nomController.text;
                  final prenom = _prenomController.text;
                  final email = _emailController.text;
                  final entreprise = _entrepriseController.text;
                  final password = _passwordController.text;
                  final statut = _selectedStatut;

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
    _passwordController.dispose();
    super.dispose();
  }
}

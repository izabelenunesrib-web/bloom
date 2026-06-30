import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  final email = TextEditingController();

  final senha = TextEditingController();

  bool esconderSenha = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF8F6FC),

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.all(30),

          child: Column(

            children: [

              const SizedBox(height: 60),

              const Icon(

                Icons.spa,

                size: 90,

                color: Color(0xffB388FF),

              ),

              const SizedBox(height: 20),

              const Text(

                "Bem-vinda ao Bloom",

                style: TextStyle(

                  fontSize: 28,

                  fontWeight: FontWeight.bold,

                ),

              ),

              const SizedBox(height: 40),

              TextField(

                controller: email,

                decoration: InputDecoration(

                  hintText: "Email",

                  prefixIcon: const Icon(Icons.email),

                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(18),

                  ),

                ),

              ),

              const SizedBox(height: 20),

              TextField(

                controller: senha,

                obscureText: esconderSenha,

                decoration: InputDecoration(

                  hintText: "Senha",

                  prefixIcon: const Icon(Icons.lock),

                  suffixIcon: IconButton(

                    icon: Icon(

                      esconderSenha
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),

                    onPressed: () {

                      setState(() {

                        esconderSenha = !esconderSenha;

                      });

                    },

                  ),

                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(18),

                  ),

                ),

              ),

              const SizedBox(height: 30),

              SizedBox(

                width: double.infinity,

                height: 55,

                child: ElevatedButton(

                  onPressed: () {

                    Navigator.pushReplacement(

                      context,

                      MaterialPageRoute(

                        builder: (_) => const HomeScreen(),

                      ),

                    );

                  },

                  child: const Text("Entrar"),

                ),

              ),

              const SizedBox(height: 15),

              TextButton(

                onPressed: () {},

                child: const Text("Criar conta"),

              ),

              TextButton(

                onPressed: () {},

                child: const Text("Esqueci minha senha"),

              ),

            ],

          ),

        ),

      ),

    );

  }
}

import 'dart:async';

import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/page/forgot_pass.dart';
import 'package:shutis_nom/page/home_page.dart';
import 'package:shutis_nom/page/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _loading = false;
  bool obscure = true;
  bool _wrong = false;

  @override
  void initState() {
    super.initState();
    _wrong = false;
  }

  @override
  void dispose() {
    super.dispose();
    _gmailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  "Нэвтрэх",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Visibility(
                          visible: _wrong,
                          child: Text(
                            "Оюутан код эсвэл Нууц үг алдаатай байна!!! ",
                            style: TextStyle(color: Colors.red),
                          )),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _gmailController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "Оюутан код",
                          icon: Icon(Coolicons.mail),
                        ),
                        validator: (a) {
                          if (a!.isEmpty) {
                            return "Нэрээ оруулаа чээ";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        controller: _passController,
                        obscureText: obscure,
                        onFieldSubmitted: (_) => signIn,
                        decoration: InputDecoration(
                          hintText: "Нууц үг",
                          icon: const Icon(Icons.lock_outlined),
                          focusColor: Colors.green,
                          suffixIcon: IconButton(
                            icon: Icon(
                                !obscure ? Coolicons.show : Coolicons.hide),
                            onPressed: () {
                              obscure = !obscure;
                              setState(() {});
                            },
                          ),
                        ),
                        validator: (a) {
                          if (a!.isEmpty) {
                            return "Нууц үг ???";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 35),
                      _loading
                          ? const Center(child: CircularProgressIndicator())
                          : SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: signIn,
                                child: const Text(
                                  'Нэвтрэх',
                                  style: TextStyle(fontSize: 18),
                                ),
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(15), // <-- Radius
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topCenter,
                        child: TextButton(
                            onPressed: forgotPass,
                            child: const Text("Нууц үгээ мартсан уу?")),
                      ),
                      const SizedBox(height: 250),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Шинээр бүртгэл үүсгэх?"),
                            TextButton(
                                onPressed: register,
                                child: const Text("Бүртгүүлэх")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    setState(() {
      _loading = true;
    });
    if (_formKey.currentState!.validate()) {
      await Future.delayed(const Duration(seconds: 1)).then((value) {
        if (_gmailController.text == 'B200930037' &&
            _passController.text == 'Sict@037') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomePage(),
            ),
          );
        }
      });

      setState(() {
        _wrong = true;
      });
    }
    setState(() {
      _loading = false;
    });
  }

  void forgotPass() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPass(),
      ),
    );
    // Navigator.pushNamed(context, "/forgotpass");
  }

  void register() {
    // Navigator.pushNamed(context, "/register");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }
}

import 'dart:async';

import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController ntroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _loading = false;
  bool obscure = true;
  bool? _savePass;
  bool lanEnglish = true;

  @override
  void initState() {
    super.initState();
    ntroller.text = '+976 ';
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
                  "Шинээр бүртгэл үүсгэх",
                  style: TextStyle(
                    fontSize: 22,
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
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Овог нэр",
                          icon: Icon(Icons.person),
                        ),
                        validator: (a) {
                          if (a!.isEmpty) {
                            return "Овог нэр";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _gmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Оюутан код",
                          icon: Icon(Coolicons.mail),
                        ),
                        validator: (a) {
                          if (!a!.contains("@")) {
                            return "Оюутан код";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: ntroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Утас дугаар",
                          icon: Icon(Coolicons.mail),
                        ),
                        validator: (a) {
                          if (!a!.contains("@")) {
                            return "emptygmail";
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
                            return "emptypassword";
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
                                  'Бүртгүүлэх',
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
                      const SizedBox(height: 250),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Бүртгэлтэй хаягаар "),
                            TextButton(
                                onPressed: pop, child: const Text("Нэвтрэх")),
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
    if (_formKey.currentState!.validate()) {}
    setState(() {
      _loading = false;
    });
  }

  void forgotPass() {
    // Navigator.pushNamed(context, "/forgotpass");
  }

  void pop() {
    // Navigator.pushNamed(context, "/register");
    Navigator.pop(context);
  }
}

import 'dart:async';

import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/page/register.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _loading = false;
  bool obscure = true;
  bool lanEnglish = true;

  @override
  void initState() {
    super.initState();
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
                  "Нууц үг ээ мартсан уу?",
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
                      const Text(
                        "Нууц үгээ сэргээхийн тулд бүртгэлтэй утасны дугаараа оруулан уу",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _gmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Утас дугаар",
                          icon: Icon(Coolicons.mobile),
                        ),
                        validator: (a) {
                          if (a!.isEmpty) {
                            return "Утас дугаар ?? ";
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
                                  'Илгээх',
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
                      const SizedBox(height: 50),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Бүртгэлтэй хаягаар "),
                            TextButton(
                                onPressed: register,
                                child: const Text("Нэвтрэх")),
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

  void register() {
    // Navigator.pushNamed(context, "/register");
    Navigator.pop(context);
  }
}

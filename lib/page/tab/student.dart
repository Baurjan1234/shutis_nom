import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final TextEditingController ntroller = TextEditingController();

  final textStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  bool obscure = true;
  @override
  void initState() {
    super.initState();
    ntroller.text = "+976 ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Оюутан мэдээлэл",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(200),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/book.jpg"),
                    ),
                  ),
                ),
              ),
              TextFormField(
                initialValue: "Цэрэнжамц Шинэхүү",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Овог нэр",
                  icon: Icon(Icons.person),
                ),
                validator: (a) {
                  if (a!.isEmpty) {
                    return "Овог нэр";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                initialValue: "B200930037",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Оюутан код",
                  icon: Icon(Coolicons.mail),
                ),
                validator: (a) {
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: ntroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Утас дугаар',
                  icon: Icon(Coolicons.mobile),
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Шинчлэх ',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          )),
        ),
      ),
    );
  }
}

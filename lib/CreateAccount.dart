import 'package:chat_app/LoginScreen.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: size.height / 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width / 1.2,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: size.height / 50,
          ),
          Container(
              width: size.width / 1.3,
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              width: size.width / 1.3,
              child: Text(
                "Sign Up to continue!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )),
          SizedBox(
            height: size.height / 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(size, 'Name', Icons.account_box)),
          ),
          Container(
              width: size.width,
              alignment: Alignment.center,
              child: field(size, 'Email', Icons.account_box)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(size, 'Password', Icons.lock)),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          customButton(size),
          SizedBox(
            height: size.height / 20,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginScreen())),
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      )),
    );
  }

  Widget customButton(Size size) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      alignment: Alignment.center,
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget field(Size size, String hintText, IconData icon) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.2,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

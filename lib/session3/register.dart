import 'package:flutter/material.dart';

import 'login_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;
  bool _isObscureConfirmation = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){  Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => const MyLoginScreen(),
            ),
          );
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Last Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: _isObscure,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }, icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: _isObscureConfirmation,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _isObscureConfirmation = !_isObscureConfirmation;
                  });
                }, icon: Icon(
                  _isObscureConfirmation ? Icons.visibility : Icons.visibility_off,
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyLoginScreen(),),
                  );
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'register.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(
      //     Icons.add,color: Colors.white,
      //   ),
      //   backgroundColor: Colors.green,
      // ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.menu,color: Colors.white,),
        title: const Text('Login',
          style: TextStyle(color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(20,),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage("https://th.bing.com/th/id/R.0c3c3c030c1deddd36a0c621acfd4d08?rik=1U4F3wGtowVQXw&pid=ImgRaw&r=0"),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0,),
                  child: Text(
                    "Senior Steps",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email,),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock,),
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
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget Your Password?"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child:ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(shape: const StadiumBorder()), child: const Text("Login"),),),
                Expanded(
                  flex: 1,
                  child:OutlinedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Register() ));
                  }, style: ButtonStyle(shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0),
                      ),
                    ),
                  ), child: const Text("Register"),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
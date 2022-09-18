import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image(image: AssetImage('asset/Mobile login-rafiki.png')),
                    Row(
                      children: [
                        Text(
                          "Login",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusColor: Color(0xFF2196F3),
                        icon: Icon(Icons.person),
                        hintText: '',
                        labelText: 'Username',
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: '',
                        labelText: 'Password *',
                      ),
                    ),
                    // SizedBox(
                    //   height: 0,
                    // ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Forgot Password ?'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      child: Text('Sign In'),
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(350, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create new account ?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Sign Up'),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
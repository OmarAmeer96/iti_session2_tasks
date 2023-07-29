import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obscureText = true;
  final _form = GlobalKey<FormState>();

  void _togglePasswordText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEFAE0),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Welcome to our",
                          style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 33,
                            color: Color(0xff283618),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "DreamVista Realty",
                          style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 33,
                            color: Color(0xffBC6C25),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 580,
                      decoration: BoxDecoration(
                        color: const Color(0xffDDA15E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _form,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              _textFieldTitle("Name"),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your name",
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF283618),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              _textFieldTitle("Phone Number"),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  validator: (value) {
                                    if (_phoneController.text.length != 11) {
                                      return "Wrong number, should be 11 digits";
                                    }
                                    return null;
                                  },
                                  controller: _phoneController,
                                  decoration: InputDecoration(
                                    hintText: "Enter your phone number",
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF283618),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              _textFieldTitle("Password"),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  validator: (value) {
                                    if (_passwordController.text.length < 6) {
                                      return "Wrong password, should be more than 6 characters";
                                    }
                                    return null;
                                  },
                                  controller: _passwordController,
                                  obscureText: obscureText,
                                  decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                      onTap: _togglePasswordText,
                                      child: Icon(
                                        obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Color(0xFF283618),
                                      ),
                                    ),
                                    hintText: "Enter your password",
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF283618),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 28,
                                      color: Color(0xff283618),
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      _form.currentState!.validate();
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 60,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF283618),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_right_alt_outlined,
                                        size: 35,
                                        color: Color(0xffDDA15E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account? '),
                                  Text(
                                    ' SignIn',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff283618),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _textFieldTitle(String text) {
  return Row(
    children: [
      Text(
        text,
        style: const TextStyle(
          color: Color(0xFF283618),
          fontSize: 16,
        ),
      ),
    ],
  );
}

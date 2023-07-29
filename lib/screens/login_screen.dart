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
  final _nameController = TextEditingController();
  bool obscureText = true;
  final _form = GlobalKey<FormState>();
  double _containerHeight = 570; // Initial height of the container

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
        appBar: AppBar(
          backgroundColor: const Color(0xffFEFAE0),
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff283618),
              size: 26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AnimatedContainer(
                      width: double.infinity,
                      height: _containerHeight,
                      duration: const Duration(milliseconds: 0),
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
                                child: TextFormField(
                                  validator: (value) {
                                    if (_nameController.text.isEmpty) {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
                                  controller: _nameController,
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
                                child: TextFormField(
                                  validator: (value) {
                                    if (_phoneController.text.isEmpty) {
                                      return "This field is required";
                                    } else if (_phoneController.text.length !=
                                        11) {
                                      return "Wrong number, should be 11 digits";
                                    } else if (_phoneController.text[0] !=
                                        "0") {
                                      return "Wrong number, should begin with 0";
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
                                child: TextFormField(
                                  validator: (value) {
                                    if (_nameController.text.isEmpty) {
                                      return "This field is required";
                                    } else if (_passwordController.text.length <
                                        6) {
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
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: const Color(0xFF283618),
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
                                      if (_form.currentState!.validate()) {
                                        // No validation errors, reset container height
                                        setState(() {
                                          _containerHeight =
                                              570; // Original height
                                        });
                                      } else {
                                        // Validation errors, adjust container height
                                        setState(() {
                                          _containerHeight =
                                              630; // Adjust to accommodate error message
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 60,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF283618),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                                0.5), // Color of the shadow
                                            spreadRadius:
                                                1, // Spread radius of the shadow
                                            blurRadius:
                                                6, // Blur radius of the shadow
                                            offset: const Offset(
                                                0, 3), // Offset of the shadow
                                          ),
                                        ],
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

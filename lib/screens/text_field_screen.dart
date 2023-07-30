import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  static String id = 'TesxtFieldScreen';

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

const String fixedValue = "This is a read only text field";

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _textEditingController =
      TextEditingController(text: fixedValue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildValidationTextField(context),
              _buildDecorationTextField(),
              _buildKeyBoardTypeTextField(),
              _buildTextInputAction(),
              _buildStyle(),
              _buildTextAlign(),
              _buildMinMax(),
              _buildAutoFocus(),
              _buildReadOnly(),
              _buildObscureText(),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildObscureText() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Enter password'),
    );
  }

  TextField _buildReadOnly() {
    return TextField(
      controller: _textEditingController,
      readOnly: true,
      decoration: const InputDecoration(labelText: 'Read-only text'),
    );
  }

  TextField _buildAutoFocus() {
    return const TextField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'Enter text here'),
    );
  }

  TextField _buildMinMax() {
    return const TextField(
      minLines: 2,
      maxLines: 5,
      decoration: InputDecoration(labelText: 'Enter text here'),
    );
  }

  TextField _buildTextAlign() {
    return const TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(labelText: 'Enter text here'),
    );
  }

  TextField _buildStyle() {
    return const TextField(
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      decoration: InputDecoration(labelText: 'Enter text here'),
    );
  }

  TextField _buildTextInputAction() {
    return const TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(labelText: 'Search'),
    );
  }

  TextField _buildKeyBoardTypeTextField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: 'Enter your email'),
    );
  }

  TextField _buildDecorationTextField() {
    return TextField(
      enabled: true,
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxHeight: 50,
          minHeight: 20,
          maxWidth: double.infinity,
          minWidth: 100,
        ),
        labelText: 'Enter your name',
        hintText: 'Omar Ameer',
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.person),
        suffixIcon: const Icon(Icons.ac_unit_outlined),
      ),
    );
  }

  TextField _buildValidationTextField(BuildContext context) {
    return TextField(
      controller: _emailController,
      decoration: const InputDecoration(
        labelText: 'Email Address',
      ),
      onSubmitted: (text) {
        if (!_isValidEmail(text)) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid email address'),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Valid Email address'),
            ),
          );
        }
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepOrangeAccent,
      title: const Text(
        'TextField',
        style: TextStyle(
          fontFamily: "RoosterPersonalUse",
          fontSize: 35,
        ),
      ),
      centerTitle: true,
    );
  }

  bool _isValidEmail(String text) {
    RegExp regex = RegExp(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.]+\.[a-zA-Z]+$');
    return regex.hasMatch(text);
  }
}

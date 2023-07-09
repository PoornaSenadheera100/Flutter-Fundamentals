import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/form_user.dart';
import 'package:flutter_fundamentals/screens/flutter_forms_screen2.dart';

class FlutterFormsScreen extends StatefulWidget {
  const FlutterFormsScreen({super.key});

  @override
  State<FlutterFormsScreen> createState() => _FlutterFormsScreenState();
}

class _FlutterFormsScreenState extends State<FlutterFormsScreen> {
  String _name = '';
  String _address = '';
  String _phone = '';
  String _password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  String? _validateName(String text) {
    if (text == '') {
      return "Name is required!";
    }
    return null;
  }

  String? _validateEmail(String text) {
    if (text == '') {
      return "Email is required!";
    } else if (!text.contains("@")) {
      return "Email must have '@' sign";
    }
    return null;
  }

  String? _validateAddress(String text) {
    if (text == '') {
      return "Address is required!";
    }
    return null;
  }

  String? _validatePhone(String text) {
    if (text == '') {
      return "Phone is required!";
    } else if (!text.startsWith("0")) {
      return "Phone number should start with 0";
    } else if (text.length < 10) {
      return "Invalid phone number!";
    }
    return null;
  }

  String? _validatePassword(String text) {
    if (text == '') {
      return "Password is required!";
    } else if (text.length < 8) {
      return "Password should have at least 8 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Forms App"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  size: 200.0,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  autofocus: true,
                  cursorColor: Colors.red,
                  maxLength: 50,
                  onSaved: (text) {
                    _name = text!;
                  },
                  validator: (text) {
                    return _validateName(text!);
                  },
                  decoration: const InputDecoration(
                    hintText: "Name",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 7.0),
                      child: Icon(Icons.contact_mail_outlined),
                    ),
                  ),
                ),
                TextFormField(
                  maxLength: 50,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (text) {
                    return _validateEmail(text!);
                  },
                  decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 7.0),
                      child: Icon(Icons.alternate_email),
                    ),
                  ),
                ),
                TextField(
                  style: const TextStyle(color: Colors.green),
                  enabled: false,
                  maxLines: 2,
                  controller: _emailController,
                  decoration: const InputDecoration(
                      prefixText: "Your username will be ",
                      border: InputBorder.none),
                ),
                TextFormField(
                  maxLines: 3,
                  maxLength: 100,
                  onSaved: (text) {
                    _address = text!;
                  },
                  validator: (text) {
                    return _validateAddress(text!);
                  },
                  decoration: const InputDecoration(
                    hintText: "Address",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 38.0),
                      child: Icon(Icons.home),
                    ),
                  ),
                ),
                TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  onSaved: (text) {
                    _phone = text!;
                  },
                  validator: (text) {
                    return _validatePhone(text!);
                  },
                  decoration: const InputDecoration(
                    hintText: "Phone",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 7.0),
                      child: Icon(Icons.phone),
                    ),
                  ),
                ),
                TextFormField(
                  maxLength: 16,
                  obscureText: true,
                  onSaved: (text) {
                    _password = text!;
                  },
                  validator: (text) {
                    return _validatePassword(text!);
                  },
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 7.0),
                      child: Icon(Icons.password),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        FormUser user = FormUser(_name, _emailController.text,
                            _address, _phone, _password);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                FlutterFormsScreen2(user)));
                      }
                    },
                    child: const Text("Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

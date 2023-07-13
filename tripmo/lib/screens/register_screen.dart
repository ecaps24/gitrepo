import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();
  final phoneTextEditingController = TextEditingController();
  final addressTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();

  bool passwordVisible = false;

  //declare global key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //write code to detect whether screen is dark or light
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Column(
              children: [
                Image.asset(isDarkMode ? 'images/city.jpg' : 'images/city.jpg'),
              ],
            )
          ],
        )));
  }
}

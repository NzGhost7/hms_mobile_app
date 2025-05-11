import "package:flutter/material.dart";

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      resizeToAvoidBottomInset:
          true, // Ensures the layout adjusts when the keyboard appears
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(), // Prevent unnecessary scrolling
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Keeps the content centered
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(
                                0,
                                3,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        constraints: BoxConstraints(maxWidth: 500),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 30,
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 50,
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 30),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFF3F3E0),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 15,
                                  ),
                                  labelText: 'Username or Email',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your username or email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFF3F3E0),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 15,
                                  ),
                                  labelText: 'Password',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                                obscureText: true,
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorScheme.secondary,
                                    foregroundColor: colorScheme.onSecondary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        '/main',
                                      );
                                    }
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  print('Forgot Password pressed');
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: colorScheme.onPrimary,
                                    color: colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                              Divider(
                                color: colorScheme.onPrimary,
                                thickness: 1,
                                height: 30,
                              ),
                              Text(
                                'or login with',
                                style: TextStyle(color: colorScheme.onPrimary),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('Google icon pressed');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Image.asset(
                                        'assets/images/google.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      print('Facebook icon pressed');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      print('Twitter icon pressed');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Image.asset(
                                        'assets/images/x.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  print('Sign up pressed');
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: colorScheme.onPrimary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}

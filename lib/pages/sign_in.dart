import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final VoidCallback show;
  const SignIn({super.key, required this.show});

  @override
  State<SignIn> createState() => _signinstate(); // Associate it with the State
}

class _signinstate extends State<SignIn> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  final email = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

  bool visibil = false;

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    _focusNode2.addListener(() {
      setState(() {});
    });
    _focusNode3.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 120),
                child: Image.asset("assets/images/car_piclogin.png"),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                          controller: email,
                          focusNode: _focusNode1,
                          decoration: InputDecoration(
                              hintText: 'E-Mail',
                              // fillColor: const Color.fromARGB(255, 201, 10, 61),
                              prefixIcon: Icon(
                                Icons.email,
                                color: _focusNode1.hasFocus
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  )))))),
              SizedBox(height: 14),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                          controller: password,
                          focusNode: _focusNode2,
                          obscureText: visibil,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              hintText: 'Password',
                              // fillColor: const Color.fromARGB(255, 201, 10, 61),
                              prefixIcon: Icon(
                                Icons.key,
                                color: _focusNode2.hasFocus
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  )))))),
              SizedBox(
                height: 14,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                          controller: passwordConfirm,
                          focusNode: _focusNode3,
                          obscureText: visibil,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      visibil = !visibil;
                                    });
                                  },
                                  child: Icon(
                                    visibil
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: _focusNode2.hasFocus
                                        ? Colors.black
                                        : Colors.grey[600],
                                  )),
                              hintText: 'Password Confirm',
                              // fillColor: const Color.fromARGB(255, 201, 10, 61),
                              prefixIcon: Icon(
                                Icons.key,
                                color: _focusNode3.hasFocus
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  )))))),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey[800], fontSize: 14),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1.5,
                    endIndent: 4,
                    indent: 20,
                  )),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1.5,
                    endIndent: 4,
                    indent: 20,
                  ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 30,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:rimt/page/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  bool _obscureText = true;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      // Gradient Body
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 10],
            colors: [
              Colors.white,
              Colors.red,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/image/rimt_logo.png',
              scale: 3,
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(55, 112, 112, 112)),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: -5,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Color(0xffC73438),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(55, 112, 112, 112)),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: -5,
                                blurRadius: 5,
                              )
                            ]),

                        //1st text form starts here
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Enter Your Name',
                              hintStyle: TextStyle(
                                color: Color(0xff9B9B9B),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                              // filled: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 20)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(55, 112, 112, 112)),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: -5,
                                blurRadius: 5,
                              )
                            ]),

                        //1st text form starts here
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                color: Color(0xff9B9B9B),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                              // filled: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 20)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //2nd text form starts here
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(55, 112, 112, 112)),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: -5,
                                blurRadius: 5,
                              )
                            ]),
                        child: TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                color: Color(0xff9B9B9B),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                              // filled: true,
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 13, left: 20),
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    size: 20,
                                  ))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Color(0xff9B9B9B),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Recover',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Color(0xffC73532),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Color(0xff9B9B9B),
                            thickness: 1,
                            indent: 160,
                            // endIndent: 200,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                              color: Color(0xff9B9B9B),
                              fontFamily: 'Roboto',
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xff9B9B9B),
                            thickness: 1,
                            // indent:150,
                            endIndent: 160,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Sign in button starts here
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => const SignIn()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 30, right: 30),
                        child: Container(
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xffC73532),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  spreadRadius: -5,
                                  offset: Offset(4, 4),
                                ),
                              ]),
                          child: const Center(
                            child: Text(
                              'SIGH UP',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffffffff),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Color(0xff9B9B9B),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => const SignIn()));
                          },
                          child: Text(
                            'SIGNIN',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Color(0xffC73532),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

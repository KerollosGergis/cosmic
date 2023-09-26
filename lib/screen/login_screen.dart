import 'package:cosmic/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      // image home
                      Image.asset('assets/image 10.png'),

                      // image cosmic
                      Positioned(
                        top: 75,
                        left: 90,
                        child: Image.asset(
                          'assets/Vector.png',
                          width: 214,
                          height: 75,
                        ),
                      ),

                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 250),
                        child: Column(
                          children: [
                            // text sign in
                            Text(
                              'Sign in                  ',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),

                            SizedBox(height: 10),

                            // textformfield => email
                            Container(
                              color: Colors.white60,
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, top: 5, bottom: 10),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Inter your email',
                                      suffixStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (String? text) {
                                      if (text!.isEmpty) {
                                        return 'Your Email-ID cannot be empty!';
                                      } else if (!text.contains('@') &&
                                          !text.contains('.')) {
                                        return 'Your email is incorrect!';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),

                            // textformfield => password
                            Container(
                              color: Colors.white60,
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, top: 5, bottom: 10),
                              child: Column(
                                children: [
                                  TextFormField(
                                    obscureText: isPasswordObscure,
                                    decoration: InputDecoration(
                                      hintText: 'inter your password',
                                      suffixStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (String? text) {
                                      if (text!.isEmpty) {
                                        return 'Your Password Cannot Be Empty!';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),

                            // GestureDetector => forget password
                            GestureDetector(
                              onTap: () {
                                {
                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => SizedBox()),
                                  //     (route) => false);
                                }
                              },
                              child: Text(
                                'Forget Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                              ),
                            ),

                            SizedBox(height: 10),

                            // ElevatedButton => sign in
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(
                                  left: 133,
                                  right: 133,
                                  top: 15,
                                  bottom: 15,
                                ),
                                backgroundColor: Colors.blueAccent,
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()),
                                      (route) => false);
                                }
                              },
                              child: Text('Sign In',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),),
                            ),

                            SizedBox(height: 10),

                            // text => or sign in using
                            Row(
                              children: [
                                Container(
                                  color: Colors.grey,
                                  padding: EdgeInsets.only(left: 70,right: 70,top: 1.5,bottom: 1.5),
                                ),
                                Text('or sign in using',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),),
                                Container(
                                  color: Colors.grey,
                                  padding: EdgeInsets.only(left: 70,right: 70,top: 1.5,bottom: 1.5),
                                ),
                              ],
                            ),

                            SizedBox(height: 15),

                            // icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                //facebook
                                Container(
                                  child: Icon(
                                    Icons.facebook,
                                    size: 50,
                                  ),
                                ),

                                SizedBox(width: 50),

                                // google
                                Container(
                                  child: Icon(
                                    Icons.g_mobiledata,
                                    size: 80,
                                  ),
                                  ),
                              ],
                            ),
                            
                            SizedBox(height: 10),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                // text => dont have
                                Text('Dont have an account?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),),

                                SizedBox(width: 10),

                                // GestureDetector => sign up
                                GestureDetector(
                                  onTap: () {
                                    {
                                      // Navigator.pushAndRemoveUntil(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => SizedBox()),
                                      //     (route) => false);
                                    }
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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

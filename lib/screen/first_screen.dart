import 'package:cosmic/screen/login_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                 // clipBehavior: Clip.none,
                  children: [

                    // image home
                    Image.asset('assets/image 10.png',
                      //width: MediaQuery.of(context).size.height * .5,
                     // height: 781,
                    ),

                    // skip
                    // Container(
                    //   alignment: Alignment.topRight,
                    //   margin: EdgeInsets.only(
                    //     top: 56,
                    //     right: 40,
                    //   ),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       Navigator.of(context)
                    //           .push(MaterialPageRoute(builder: (context) {
                    //         return LoginScreen();
                    //       }));
                    //     },
                    //     child: Text(
                    //       'Skip',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.w400,
                    //           color: Colors.white),
                    //     ),
                    //   ),
                    // ),

                    // cosmic image
                    Image.asset('assets/loader.png',
                    // width: 296,
                    // height: 296,
                    ),

                    // flutter image
                    Positioned(
                      top: 600,
                      left: 120,
                      child: Image.asset('assets/flutter_logo1.png',
                      width: 120,
                      height: 60,
                      ),
                    ),

                    // button start
                    Positioned(
                      top: 700,
                      left: 43,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                            right: 126,
                            left: 126,
                          ),
                          backgroundColor: Colors.blue.shade900,
                        ),
                        onPressed: () {
                          {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                    (route) => false);
                          }
                        },
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

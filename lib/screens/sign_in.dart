//import 'package:fitegrate_project/rounded_button.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widget _buildSocialBtn(Function onTap, AssetImage logo) {
//   return GestureDetector(
//     child: Container(
     
//       height: 40.0,
//       width: 40.0,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(0, 2),
//             blurRadius: 4.0,
//           ),
//         ],
//         image: DecorationImage(
//           image: logo,
//         ),
//       ),
//     ),
//   );
// }

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 35, 16, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image(
                      image: AssetImage('assets/Fitegrate/black_part2.jpeg'),
                      height: 200,
                      width: 221)),
              // SizedBox(height: size.height*0.02,),

              Text(
                'FITEGRATE',
                style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),

              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        //TextInputFieldEmail.email=value;
                      });
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      // prefixIcon: Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                      //   // child: Icon(Icons.email, size: 28, ),
                      // ),
                      hintText: 'Email Id',

                      hintStyle: TextStyle(
                        color: Colors.orange[300],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        //TextInputFieldEmail.email=value;
                      });
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      // prefixIcon: Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                      //   //child: Icon(Icons.email, size: 28, ),
                      // ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.orange[300],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.035,
              ),

              Container(
                height: size.height * 0.065,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.orange[400],
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'BottomNavigation');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.06,
              ),

              Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),

              Text(
                'Or sign in with',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //     InkWell(
                  //   onTap: () {},
                  //   child: Ink(
                  //     color: Color(0xFF397AF3),
                  //     child: Padding(
                  //   padding: EdgeInsets.all(6),
                  //   child: Wrap(
                  //     crossAxisAlignment: WrapCrossAlignment.center,
                  //     children: [
                  //       Icon(Icons.android),
                  //       SizedBox(width: 12),
                  //       Text('Google'),
                  //     ],
                  //   ),
                  //     ),
                  //   ),
                  // ),

                  // SizedBox( width: size.width * 0.08,),

                  // InkWell(
                  //   onTap: () {},
                  //   child: Ink(
                  //     color: Color(0xFF397AF3),
                  //     child: Padding(
                  //   padding: EdgeInsets.all(6),
                  //   child: Wrap(
                  //     crossAxisAlignment: WrapCrossAlignment.center,
                  //     children: [
                  //       Icon(Icons.android),
                  //       SizedBox(width: 12),
                  //       Text('Facebook'),
                  //     ],
                  //   ),
                  //     ),
                  //   ),
                  // ),

                  // _buildSocialBtn(
                  //   () => print('Login with Facebook'),
                  //   AssetImage(
                  //     'assets/Logos/facebook.jpg',
                  //   ),
                  // ),
                  Container(
                height: size.height * 0.065,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.orange[400],
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, 'BottomNavigation');
                    final provider = 
                        Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin();
                  },
                  child: Text(
                    'Sign In with google',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

                  SizedBox(
                    width: size.width * 0.10,
                  ),

                  // _buildSocialBtn(
                  //   () {
                  //     final provider = 
                  //       Provider.of<GoogleSignInProvider>(context, listen: false);
                  //       provider.googleLogin();
                  //   },
                  //   AssetImage(
                  //     'assets/Logos/google.jpg',
                    
                  //   ),
                  // ),
                ],
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

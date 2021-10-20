//import 'package:fitegrate_project/rounded_button.dart';
import 'package:flutter/material.dart';

Widget _buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    child: Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.black87,
      ),
      child: TextButton(
        onPressed: () {
          // main();
          // UserCredential userCredential = await auth.signInAnonymously();
          // print(userCredential);
        },
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.orange[300], fontSize: 20),
          //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                      image: AssetImage('assets/Fitegrate/newest_logo.png'),
                      height: 166,
                      width: 147)),
              SizedBox(
                height: size.height * 0.02,
              ),

              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
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
                      //contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.person_outline, size: 28, color: Colors.black87, ),
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(color: Colors.black87,  fontSize: 18,
                          fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),
              //        Container(
              // height:size.height * 0.08,
              // width: size.width * 0.8,
              // decoration: BoxDecoration(
              //   color: Colors.orange,
              //   borderRadius: BorderRadius.circular(16),
              // ),
              //        ),

              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
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
                      //contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.email_outlined, size: 28, color: Colors.black87,),
                      ),
                      hintText: 'Email id',
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(color: Colors.black87,  fontSize: 18,
                          fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
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
                  color: Colors.orange[300],
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
                     // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.lock_outline, size: 28, color: Colors.black87,),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(color: Colors.black87,  fontSize: 18,
                          fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
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
                  color: Colors.orange[300],
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
                      //contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.lock_outline, size: 28, color: Colors.black87,),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(color: Colors.black87,  fontSize: 18,
                          fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.04,
              ),

              //RoundedButton(buttonName: 'Sign Up'),
              //RoundedButton(buttonName: 'Sign Up'),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black87,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'SignIn');
                    // main();
                    // UserCredential userCredential = await auth.signInAnonymously();
                    // print(userCredential);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.orange[300], fontSize: 20),
                    //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),

              Text(
                'Or sign up with',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildSocialBtn(
                  () => print('Login with Facebook'),
                  AssetImage(
                    'assets/Logos/facebook.jpg',
                  ),
                ),

                SizedBox(
                  width: size.width * 0.10,
                ),

                _buildSocialBtn(
                  () => print('Login with Google'),
                  AssetImage(
                    'assets/Logos/google.jpg',
                  ),
                ),

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
              ]),

              SizedBox(
                height: size.height * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.blue[800],
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

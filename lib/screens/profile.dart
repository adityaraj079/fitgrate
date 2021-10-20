import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
@override
  Widget build(BuildContext context){
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
       title: Text('Profile'),
       centerTitle: true,
       actions: [TextButton( 
         child: Text('Logout'),
       onPressed: (){
         final provider = Provider.of<GoogleSignInProvider>(context, listen:false);
         provider.logout();
       },
       )
       ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profile',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 32),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoURL!)
              ),
              SizedBox(height: 8),
              Text(
                'Name  '+ user.displayName!,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 8 ),
              Text(
                'email  '+ user.email!,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

            ],
          ),
        ),
    );
    
  }
}
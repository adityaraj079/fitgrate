import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

<<<<<<< HEAD
class Profile extends StatelessWidget{
  
=======
class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
>>>>>>> 14d9e4dc7caa6261d85481919e29271c1f5c868b
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
              // CircleAvatar(
              //   radius: 40,
              //   backgroundImage: NetworkImage(user.photoURL!)
              // ),
              SizedBox(height: 8),
              Text(
                'Name  '+ user.displayName!
                ,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 8 ),
              Text(
                'email  '+ user.email!,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
Stack(
  children: <Widget>[
    Container(
        decoration: new BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        height: 240,
        child: Image.asset('assets/Fitegrate/newest_logo.png'),
    ),
    Align(
      alignment: Alignment.bottomRight,
      child: Icon(Icons.edit_attributes_outlined, color: Colors.black87,),
    )
  ],
)
        

            ],
            
          ),
        ),
          
    );
    
  }
}
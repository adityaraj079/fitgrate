import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
     Size size  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('Hi, username'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.chat, ), tooltip: "Chat with us", ), 
                 ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height*0.04),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
                
                height: size.height* 0.10,
              width: size.width*0.95,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('AGE: ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                        Text('20 yrs',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(width: size.width*0.05,),
                        Text('GENDER: ',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                        Text('Female',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),  
                      ],
                    ),
                  ),
                  

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text('WEIGHT: ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                          Text('50 kgs',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(width: size.width*0.05,),
                          Text('Height: ',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                          Text('155 cms',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                        ],
                      ),
                  ),
                ],
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                 decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
          ),
                  
                height: size.height* 0.25,
                width: size.width*0.95,
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.02,),

                    Text('Dashboard', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20),),

                    SizedBox(height: size.height*0.015,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          child: Container(
                            decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                              ),
                  
                            height: size.height* 0.099,
                            width: size.width*0.4,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(onPressed: () {}, child: Text('Cardio', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20),))
                              ],
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          child: Container(
                            decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                              ),
                  
                            height: size.height* 0.099,
                            width: size.width*0.4,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(onPressed: () {}, child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Text('Strength and Conditioning', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20),),
                                ))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: size.height*0.02,),

                    Text('Finish the assessment to generate your report', style: TextStyle(color: Colors.black87, fontSize: 15),),

                    SizedBox(height: size.height*0.02,),
                  ],
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                height: size.height * 0.08,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black87,
                ),
                  
                  child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, 'SignIn');
          // main();
          // UserCredential userCredential = await auth.signInAnonymously();
          // print(userCredential);
                    },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Text('Health Assessment',//textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 15, ),
        //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
              ),
                  ),
              ),
              ),

              Container(
                height: size.height * 0.08,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black87,
                ),
                  
                  child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, 'SignIn');
          // main();
          // UserCredential userCredential = await auth.signInAnonymously();
          // print(userCredential);
                    },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Text('Base Line Fitness Assessment',//textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 15, ),
        //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
              ),
                  ),
              ),
              ),
                ],
              ),
            ),

             Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 30, 10),
               child: Container(
                  decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
                  
                  height: size.height* 0.10,
                width: size.width*0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, 'BottomNavigation');
                    }, child: Text('Upcoming Sessions', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87 ),),),
                    
                  ],
                ),
                ),
                
             ),
          ],
        ),
        ),
    );
  }
}
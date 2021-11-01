import 'dart:ui';

import 'package:flutter/material.dart';

bool isVisibleHeartCondition = false;

class HealthAssessment extends StatefulWidget {
  const HealthAssessment({Key? key}) : super(key: key);

  @override
  _HealthAssessmentState createState() => _HealthAssessmentState();
}

class _HealthAssessmentState extends State<HealthAssessment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Health Assessment',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
     
     body: SingleChildScrollView(
       child: Column(
         children: [

           Padding(
             padding: const EdgeInsets.fromLTRB(20, 10, 15, 5),
             child: Container(
               decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // height: size.height * 0.15,
                  // width: size.width * 0.95,
               child: Column(
                 
                 children: [
                    Padding(
                       padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                              '1)    Do you have any Heart condition?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                          SizedBox(
                            height: size.height * 0.009,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.orange[400],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isVisibleHeartCondition =
                                            !isVisibleHeartCondition;
                                      });
                                    },
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.black87,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        
                      
                 ],),
             ),
           ),
           //SizedBox(height:10),
          
           Padding(
             padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
             child: Visibility(
               visible: isVisibleHeartCondition,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                 ),
                 
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: size.width*0.5,
                             child: Text('Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                                     style: TextStyle(
                                         color: Colors.black87,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18),),
                           ),
                         ),
                          
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                            
                                children: [
                                     Container(
                                       height: size.height * 0.05,
                                       width: size.width * 0.3,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(22),
                                         color: Colors.orange[300],
                                       ),
                                       child: TextButton(
                                         onPressed: () {
                                           setState(() {
                                             
                                           });
                                         },
                                         child: Text(
                                           'Yes',
                                           style: TextStyle(
                                               color: Colors.black87, fontSize: 18),
                                         ),
                                       ),
                                     ),
                                     SizedBox(
                                       height: size.height * 0.02,
                                     ),
                                     Container(
                                       height: size.height * 0.05,
                                       width: size.width * 0.3,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(22),
                                         color: Colors.black87,
                                       ),
                                       child: TextButton(
                                         onPressed: () {},
                                         child: Text(
                                           'No',
                                           style: TextStyle(
                                               color: Colors.white, fontSize: 18),
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                         ),
                     
                           ],
                         ),
             
                         const Divider(
                     
                     color: Colors.black87,
                     height: 20,
                     thickness: 2,
                     indent: 20,
                     endIndent: 20,
                   ),
             
                    Container(
                     //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration( color: Colors.grey[300],
                         borderRadius: BorderRadius.circular(20),),
                       //   height: size.height * 0.15,
                       // width: size.width * 0.95,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   width: size.width*0.5,
                                   child: Text('Irregular heart beat that requires medical',
                                           style: TextStyle(
                                               color: Colors.black87,
                                               fontWeight: FontWeight.bold,
                                               fontSize: 18),),
                                 ),
                               ),
                                
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                  
                                      children: [
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.orange[300],
                                             ),
                                             child: TextButton(
                                               onPressed: () {
                                                 setState(() {
                                                   
                                                 });
                                               },
                                               child: Text(
                                                 'Yes',
                                                 style: TextStyle(
                                                     color: Colors.black87, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                           SizedBox(
                                             height: size.height * 0.02,
                                           ),
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.black87,
                                             ),
                                             child: TextButton(
                                               onPressed: () {},
                                               child: Text(
                                                 'No',
                                                 style: TextStyle(
                                                     color: Colors.white, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                               ),
                           
                                 ],
                               ),
             
                               const Divider(
                           
                           color: Colors.black87,
                           height: 20,
                           thickness: 2,
                           indent: 20,
                           endIndent: 20,
                         ),
             
                         Container(
                     //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration( color: Colors.grey[300],
                         borderRadius: BorderRadius.circular(20),),
                       //   height: size.height * 0.15,
                       // width: size.width * 0.95,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   width: size.width*0.5,
                                   child: Text('Do you have chronic heart failure',
                                           style: TextStyle(
                                               color: Colors.black87,
                                               fontWeight: FontWeight.bold,
                                               fontSize: 18),),
                                 ),
                               ),
                                
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                  
                                      children: [
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.orange[300],
                                             ),
                                             child: TextButton(
                                               onPressed: () {
                                                 setState(() {
                                                  
                                                 });
                                               },
                                               child: Text(
                                                 'Yes',
                                                 style: TextStyle(
                                                     color: Colors.black87, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                           SizedBox(
                                             height: size.height * 0.02,
                                           ),
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.black87,
                                             ),
                                             child: TextButton(
                                               onPressed: () {},
                                               child: Text(
                                                 'No',
                                                 style: TextStyle(
                                                     color: Colors.white, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                               ),
                           
                                 ],
                               ),
             
                               const Divider(
                           
                           color: Colors.black87,
                           height: 20,
                           thickness: 2,
                           indent: 20,
                           endIndent: 20,
                         ),
             
                          Container(
                     //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration( color: Colors.grey[300],
                         borderRadius: BorderRadius.circular(20),),
                       //   height: size.height * 0.15,
                       // width: size.width * 0.95,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   width: size.width*0.5,
                                   child: Text('Have you participated in regular physical activity for past 2 months because of heart condition?',
                                           style: TextStyle(
                                               color: Colors.black87,
                                               fontWeight: FontWeight.bold,
                                               fontSize: 18),),
                                 ),
                               ),
                                
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                  
                                      children: [
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.orange[300],
                                             ),
                                             child: TextButton(
                                               onPressed: () {
                                                 setState(() {
                                                   
                                                 });
                                               },
                                               child: Text(
                                                 'Yes',
                                                 style: TextStyle(
                                                     color: Colors.black87, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                           SizedBox(
                                             height: size.height * 0.02,
                                           ),
                                           Container(
                                             height: size.height * 0.05,
                                             width: size.width * 0.3,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(22),
                                               color: Colors.black87,
                                             ),
                                             child: TextButton(
                                               onPressed: () {},
                                               child: Text(
                                                 'No',
                                                 style: TextStyle(
                                                     color: Colors.white, fontSize: 18),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                               ),
                           
                                 ],
                               ),
             
                               const Divider(
                           
                           color: Colors.black87,
                           height: 20,
                           thickness: 2,
                           indent: 20,
                           endIndent: 20,
                         ),
                         ],
                       ),
                           
                         
                       ),
                   ],
                 ),
                     
                   
                 ),
                   
                   ],
                   
                 ),
             
             
             
                 
             
                         
                      
                 
                      
                    ),
                   ]
                  ),
               ),
             ),
           ),
                  ],
           

       ),
     )
     );
         
     
  }
}

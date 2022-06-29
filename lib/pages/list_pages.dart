import 'package:flutter/material.dart';
// import 'package:podcostmusicapp/contants/contant_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contants/contant_color.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int selectedindex=0;
  void onitemtapped(int index){
  print(index);
  setState(() {
    selectedindex=index;
  });}
  
final listtext=[
"All","News","Comedy","Technology","TV&flim","All","News","Comedy","Technology","TV&flim",
];
  @override
  Widget build(BuildContext context) {
    return
    ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: 50,
          color: color1,
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(listtext.length, (index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: IntrinsicWidth(
                child: InkWell(
                  onTap: (){
                    selectedindex=index;
                    setState(() {
                      selectedindex;
                    });
                  },
                  child: Column(
                    children: [
                      Text(listtext[index].toString(),
                      style: TextStyle(
                        color: color2
                      ),),
                      Container(
                       height: 2, 
                       color: selectedindex==index?Colors.red:Colors.transparent 
                      )
                    ],
                  ),
                ),
              ),
            )),
          )
        ),
         
        
          //  Container(  
          //     margin: EdgeInsets.all(15),
          //     height: 30,
          //     width: double.maxFinite,
          //     child:
          //        ListView(
          //         physics: BouncingScrollPhysics(),
          //         shrinkWrap: true,
          //         scrollDirection: Axis.horizontal,
                  
                  
          //         children: [
          //           InkWell(
          //             onTap:(){
                     
          //             },
                      
          //             child: IntrinsicWidth(
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text4,
          //                   Container(
          //                   height: 1,
                           
          //                    color: Colors.red,
          //                   )
                        
          //                 ],
          //               ),
          //             ),
          //           ),
                   
                    
          //           InkWell(
          //             onTap: (){ },
          //             child: IntrinsicWidth(
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.only(left: 24),
          //                     child: Text5,),
                            
          //                    Padding(
          //                      padding: const EdgeInsets.only(left: 23,),
          //                      child: Container(
          //                   height: 1,
          //                   color: selectedindex==1?Colors.red:Colors.transparent

                            
                                  
                           
          //                      ),
          //                    )
          //                 ],
          //               ),
          //             ),
          //           ),
                
          //           InkWell(
          //             onTap: (){},
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 24),
          //               child: IntrinsicWidth(
          //                 child: Column(
          //                   children: [
          //                     Text6,
          //                     Container(
          //                       height: 1,
                               
          //                       color: Colors.red,
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //            InkWell(
          //             onTap: () {
                        
          //             },
          //              child: Padding(
          //               padding: const EdgeInsets.only(left: 24),child:
          //                                IntrinsicWidth(
          //               child: Column(
          //                 children: [
          //                   Text7,
          //                   Container(
          //                     height: 1,
          //                     width: 90,
          //                     color: Colors.red,
          //                   )
          //                 ],
          //               ),
          //                                ),),
          //            ),
          //           InkWell(
          //             onTap: () {
                        
          //             },
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 24),child:
          //             IntrinsicWidth(
          //               child: Column(
          //                 children: [
          //                   Text8,
          //                   Container(
          //                     height: 1,
          //                     width: 70,
          //                     color: Colors.red,
          //                   )
          //                 ],
          //               ),
          //             ),),
          //           ),
          //         ],
                    
          //                 ),
          //     ),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Recentlty Played",style:GoogleFonts.poppins(
            textStyle:
             TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
             fontSize: 24,
             fontWeight: FontWeight.w500
             ),),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black
                     ),
                    child: Image.asset("images/ph1.png"),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text11,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text10,
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 12),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black
                       ),
                      child: Image.asset("images/ph3.png"),
                      ),
                       Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text12,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text13,
                   ),
                   ],
                 ),
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
                       ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/PH31.jpg",
                  fit: BoxFit.contain,)),
                ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text14,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text15,
                   ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10),
           child: Text16,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black
                     ),
                    child: Image.asset("images/ph4.png"),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text17,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text18,
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 12),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black
                       ),
                      child: Image.asset("images/ph5.png"),
    
    
                      ),
                       Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text19,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text20,
                   ), 
                   ],
                 ),
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
                       ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("images/PH32.jpg",
                fit: BoxFit.contain,)),
                ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text21,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text22,
                   ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 0,left: 16),
          child: Text23,
        ),
        Container(
          height: 280,
          width: double.maxFinite,
          child: ListView(
            physics: BouncingScrollPhysics(),
             shrinkWrap: true,
               scrollDirection:Axis.horizontal,
             children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 240,
                      width: 190,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("images/ph7.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2,top: 4,),
                      child: Text24,
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 16,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 240,
                      width: 190,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color1
                      ),
                      child: Image.asset("images/ph8.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top:4,),
                      child: Text25,
                    ),
                  ],
                ),
              )
             ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 10),
          child: Text26,
        ),
        Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black
                     ),
                    child: Image.asset("images/Ph19.png"),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text27,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text28,
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 12),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black
                       ),
                      child: Image.asset("images/ph20.png"),
                      ),
                       Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text29,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text30,
                   ), 
                   ],
                 ),
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
                       ),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(12),
                  child: Image.asset
                ("images/ph33.jpg",fit: BoxFit.contain,)),
                ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text31,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text32,
                   ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10),
           child: Text16,
         ),
          Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black
                     ),
                    child: ClipRRect(child: Image.asset
                    ("images/ph22.png")),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text27,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text28,
                   ),
    
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 12),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black
                       ),
                      child: Image.asset("images/ph23.png"),
    
    
                      ),
                       Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text29,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text30,
                   ),
                      
                   ],
                 ),
               ),
    
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
                       ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),child: Image.asset
                ("images/ph34.png",fit: BoxFit.contain,)),
    
    
                ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Text31,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 2),
                     child: Text32,
                   ),
    
                     ],
                   ),
                 ),
               ],
    
             ),
           ),
         ),
    
        
    
      ],
      
      
    );
    
    
   
     
  }
}

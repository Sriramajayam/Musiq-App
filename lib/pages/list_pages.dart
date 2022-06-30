import 'package:flutter/material.dart';
// import 'package:podcostmusicapp/contants/contant_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/consFile.dart';
import 'package:musiq/pages/conversation.dart';

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
               children:   List.generate(3, (index) =>  Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: InkWell(
                    onTap: () {

                       
                        String ph25=con1image[index].toString();
                           String ph24=con1Title[index].toString();
                        
                     
                        
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   conversation(text:ph25,headline: ph24,)));
                    },
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                       children: [
                         Image.asset(con1image[index].toString()),
                         Padding(
                           padding: const EdgeInsets.only(top: 4),
                           child: Text(con1Title[index].toString(),style:
                             GoogleFonts.poppins(
                            textStyle:TextStyle(
                              color:color2,
                              overflow: TextOverflow.ellipsis
                         ),
                             )
                           )
                             ),
                         Padding(
                           padding: const EdgeInsets.only(top: 2),
                           child: Text(con3Subtitle[index].toString(),
                             style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color:color3,
                        fontSize: 12,fontWeight: FontWeight.w400
                              )
                             ),
                             ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
               
               
               
               
               )
              
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
               children: List.generate(3, (index) =>  Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: InkWell(

                    onTap: () {
                      
                      String ph24=con2image[index].toString();
                       String ph25=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   conversation(text:ph24,headline: ph25,),));
                    },
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                       children: [
                         Image.asset(con2image[index].toString()),
                         Padding(
                           padding: const EdgeInsets.only(top: 4),
                           child: Text(con3Title[index].toString(),style:
                             GoogleFonts.poppins(
                            textStyle:TextStyle(
                              color:color2,
                         ),
                             )
                           )
                             ),
                         Padding(
                           padding: const EdgeInsets.only(top: 2),
                           child: Text(con3Subtitle[index].toString(),
                             style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color:color3,
                        fontSize: 12,fontWeight: FontWeight.w400
                              )
                             ),
                             ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
               
               
               
               
               )
              
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
                child: InkWell(
                  onTap: (() {
                    
                  }),
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
               children: List.generate(3, (index) =>
               
                InkWell(
                  onTap: (() {
                      String ph23=con3image[index].toString();
                       String ph24=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   conversation(text:ph23,headline: ph24,),));
                  }),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black
                         ),
                        child: Image.asset(con3image[index].toString()),
                        ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 4),
                       child: Text(con3Title[index].toString(),style:
                       GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color:color2,
                    fontSize: 12,fontWeight: FontWeight.w400)
                      )
                       )
                       ,),
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text(con3Subtitle[index].toString(),
                       style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color:color3,
                  fontSize: 12,fontWeight: FontWeight.w400
                        )
                       ),
                       )
                     ),
                   ],
                               ),
                ),
               
               
               )
              
               
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10),
           child: Text16,
         ),
          Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: List.generate(3,(index)=>
               InkWell(
                onTap: ((){
                  String ph23=con4image[index].toString();
                       String ph24=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   conversation(text:ph23,headline: ph24,),));
                }),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black
                         ),
                        child: Image.asset
                        (con4image[index].toString()),
                        ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(top: 4),
                       child: Text(con3Title[index].toString(),style:
                       GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color:color2,
                    fontSize: 12,fontWeight: FontWeight.w400)
                      )
                       )
                       ,),
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text(con3Subtitle[index].toString(),
                       style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color:color3,
                  fontSize: 12,fontWeight: FontWeight.w400
                        )
                       ),
                       )
                     ),
                   
                   ],
                 ),
               ),
              
                       
               
             ),
           ),
         ),
    
          )
    
      ],
      
      
    );
    
    
   
     
  }
}

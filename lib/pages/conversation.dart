import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
class conversation extends StatefulWidget {
  const conversation({Key? key}) : super(key: key);

  @override
  State<conversation> createState() => _conversationState();
}

class _conversationState extends State<conversation> {
  @override
  
  Widget build(BuildContext context) {
final punchtexts=[
  "A podcast description often also called",
  "podcast summary is a brief blurb of text that "
];
final punchimage=[
  "images/ph23.png","images/ph23.png","images/ph23.png",
  "images/ph23.png","images/ph23.png","images/ph23.png",
  "images/ph23.png",
  "images/ph23.png","images/ph23.png","images/ph23.png",
];
final punchtitle=[
  "Motivation","The furry man","Hard work","Power",
  "Hire power","You have it","New castle","Message for you",
  "MotivWe don’t talk"
];
final punchsubtitle=[
  "Episode 1 - Jay shetty","Episode 2 - Jay shetty",
  "Episode 3 - Jay shetty","Episode 4 - Jay shetty",
  "Episode 5 - Jay shetty",
  "Episode 6 - Jay shetty",
  "Episode 7 - Jay shetty","Episode 8 - Jay shetty",
  "Episode 9 - Jay shetty","Episode 10 - Jay shetty",
];

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        backgroundColor: color1,
        body:ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Column(
              
             
              children: [
               Stack(
                 children: [
                   Image.asset("images/punch.png",height: 300,),
                   Column(
                     children: [
                       Container(
                        height: 150,
                        decoration:BoxDecoration(
                          color: color1,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          color1,
                            Colors.transparent.withOpacity(0.01),
                              
            
                          ]),
                       
                        )
                       
                        ,
                       ),
                     
                   Container(
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: color1,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                       
                        Colors.transparent.withOpacity(0.01),
                         color1,
                         
                      ]
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.end ,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Stuff you should know",style: GoogleFonts.poppins(
                          textStyle:TextStyle(color: color2,fontSize: 25,fontWeight: FontWeight.w600)
                        ),),
                          Text("MusiQ Studios - Jay shetty",style: GoogleFonts.poppins(
                          textStyle:TextStyle(color: color6,fontSize: 15,fontWeight: FontWeight.w600)
                        ),)
                        ]
                        ),
                    ),
                    ),
                   
                   ],
                   ),
                 ],
               )
              ]
               ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(punchtexts.length, (index) =>
                        Text(punchtexts[index].toString(),style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: color6,fontSize: 15,fontWeight: FontWeight.w400
                          )
                        ),)
                        )
                       ),
                       Text("show more",style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: color2,
                          fontSize: 15,fontWeight: FontWeight.w500
                        )
                       ),)
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 16,left: 16),
                 child: Container(
                  height: 50,
                  width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                color: Colors.red
                 ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow_rounded,color:color2,),
                    Text("Play",style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: color2,fontSize: 15,fontWeight: FontWeight.w400
                      )
                    ),)
                  ],
                 ),
               )
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                  children: [
                    Text("36 episodes",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize:22,fontWeight: FontWeight.w600,color: color2
                      )
                    ),),
                    Spacer(),
                    Icon(Icons.swap_vert_rounded,color: color2,),
                    Text("Sort",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize:15,fontWeight: FontWeight.w400,color: color2
                      )
                    ),),
                    
                  ],
                 ),
               ),
               Column(
                children: List.generate(9, (index) => 
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    
                    children: [Image.asset
                  (punchimage[index].toString(),height: 60,width: 60,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text(punchtitle[index].toString(),style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,color: color2
                            )
                          ),),
                           Text(punchsubtitle[index].toString(),style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,color: color3
                            )
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert_rounded,color: color2,)
                  ]

                  ),
                ),

              
                ),
               )
          ],
        
        ),
      ),
    );
  }
}
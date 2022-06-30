import 'package:flutter/material.dart';
import 'package:musiq/contants/contant_color.dart';

import 'package:google_fonts/google_fonts.dart';

import 'List_view.dart';

class podcastt extends StatelessWidget {
  const podcastt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scafold(),
    );
  }
}

class Scafold extends StatefulWidget {
  const Scafold({Key? key}) : super(key: key);

  @override
  State<Scafold> createState() => _ScafoldState();
}

class _ScafoldState extends State<Scafold> {
    int selecteddindex=0;
    void tapcontroller (int index){
      setState(() {
        selecteddindex=index;
      });
    }
        PageController _pagecontroller=PageController(
          initialPage: 0,
          keepPage: true,
        );
    
  
 
  @override
  Widget build(BuildContext context) {
    
final listtexts=[
"All","News","Comedy","Technology","TV&flim","All","News","Comedy","Technology","TV&flim",
];
 final listimages=["images/review.jpg",
    "images/banana.jpg","images/MAN.webp",
    "images/job.webp","images/PH31.jpg",
    "images/much.jpg","images/mottai.jpg",
    "images/ph33.jpg","images/PH32.jpg",
  ];
    final TITLE=["Movies Review","Mr.Banana Live Show",
    "The Mindvalley","Blow your mind",
    "Holy Shift","Mucho Success",
    "Tehran Sens","That’s What She Said",
    "Business Matter",

    ];
    final SUBTITLE=[
      "James smith","The WeekEnd",
      "Vishen Lakhiani","Dua lipa",
      "Heather hubb","Jose Pinero",
      "Arash","Richard Scott",
      "Joseph Williams",
      
    ];

    return Scaffold(
       backgroundColor: color1,
        appBar: AppBar(
          backgroundColor:color1,
          elevation: 0,
          title: Text("Podcast",style:GoogleFonts.poppins(
          textStyle:
           TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),fontSize: 30,
           
           fontWeight: FontWeight.w600
           ),),),
           body:  Column(
             children: [
               Container(
          height: 50,
          width: double.maxFinite,

          color: color1,
          child: Container(
                height: 30,
                width: double.maxFinite,
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(listtexts.length, (index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IntrinsicWidth(
                      child: InkWell(
                        onTap: (){
                          print(index);
                          selecteddindex=index;
                          print(selecteddindex);
                          setState(() {
                            selecteddindex;
          
                          });
                        },
                        child: Column(
                          children: [
                            Text(listtexts[index].toString(),
                            style: TextStyle(
                              color: color2
                            ),),
                            Container(
                             height: 2, 
                             color: selecteddindex==index?Colors.red:Colors.transparent 
                            ),
                          
                          
                            
                          ],
                        ),
                      ),
                    ),
                  )
                  ),
                  
                ),
          ),
        
          

        ),
       
      
        Expanded(
        
          child: PageView(
            controller: _pagecontroller,
          
        onPageChanged: (index){
         
               selecteddindex=index;

          print(selecteddindex);
       
        },
        
             
            children: [
              selecteddindex==1?
              Container(
      color: color1,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28,left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text("Artists",style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  color: color2,fontSize: 17,fontWeight: FontWeight.w500
                )
              ),),
              Text("View ALL",style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  color: Colors.red,fontSize: 15,
                  fontWeight: FontWeight.w400
                )
              ),)
             ],
            ),
          ),
          containerWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Text("New In This Category",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 17,fontWeight: FontWeight.w500,color: color2
              )
            ),),
          ),

        
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children:List.generate(9, (index) =>  
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 16,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,
              children: [
              ClipRRect(child: Image.asset(listimages[index],height: 60,width: 60,
              ),
              borderRadius: BorderRadius.circular(12),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TITLE[index],style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: color2,fontSize: 15,fontWeight: FontWeight.w400
                        )
                      ),),
                       Text(SUBTITLE[index],style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: color3,fontSize: 15,fontWeight: FontWeight.w400
                    )
                  ),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 48),
                child: Icon(Icons.play_arrow_rounded,color: color2 ,size: 25,),
              ),
               Icon(Icons.more_vert_rounded,color: color2 ,size: 25,),
              ],
              ),
            ),
          )
          )
        ],

      ),
      
    ):Container(),

  selecteddindex==1?
    Container(color: color1,
    child: ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [Padding(
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
               ]
    ),
    
    )
          )
      ]
    )
    ):Container(),

    Container(),
    Container(),
     Container(),
      Container(),
       Container(),
        Container(),
         Container(),
          Container(),
           Container(),
    

           ]
          )
          )
             ]
          )
          
        );
            
        
             
           
    


  }
}
              
          class containerWidget extends StatelessWidget {
  const containerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      color: color1,
      
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,top: 16),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
               Column(
                 children: [
                   Image.asset("images/ph7.png"),
                   Text("Jay Shetty",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,
                      color: color2
                    )
                   ),)
                 ],
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Column(
                     children: [
                       Image.asset("images/ph7.png"),
                       Text("Jay Shetty",style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w400,
                        color: color2
                      )
                     ),)
                     ],
                   ),
                 ),
                
            ],
          ),
        ),
      
    );
  }
}
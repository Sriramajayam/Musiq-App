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
        
             
            children: [
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
      
    ),
    Container(color: Colors.amber,)
           ]
        )
        )
             ]
           )
    );


  }
}
              // Container(
              //   height: 700,
              //   color: Colors.amber,

              // ),
              // Container(
              //   color: Colors.red,
              // ),
              // Container(
              //   color: Colors.green,
              // ),
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
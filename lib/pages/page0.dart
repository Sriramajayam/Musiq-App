import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musiq/contants/contant_color.dart';

import 'package:google_fonts/google_fonts.dart';

class pages0 extends StatefulWidget {
  final huge;
const pages0({Key? key,required this.huge}) : super(key: key);

  @override
  State<pages0> createState() => _pages0State();
}

class _pages0State extends State<pages0> {

bool tapindex=false;
final pointtext=[
  "0.25x","0.5x","0.75x","1.00x","1.25x","1.5x","1.75x","2x"
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: color1,
      home: Scaffold(
        backgroundColor: color1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.asset(widget.huge,height: 420,width:
                     double.maxFinite,fit: BoxFit.fill,
                  ),
                  ),
                  Container(
                    height: 420,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Colors.transparent.withOpacity(0.20),
                        color1.withOpacity(1),
                      ])
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 350),
                   child: Center(
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
               
                      children:[
                      
                      Text("Yeah, I don’t know",style:
                      GoogleFonts.poppins(
                        textStyle: TextStyle(color: color2
                        )
                      ),
                      ),
                       Text("May be I should change myself",style:
                      GoogleFonts.poppins(
                        textStyle: TextStyle(color: color5
                        )
                      ),
                      ),
                       Text("You are tough to be around sometimes",style:
                      GoogleFonts.poppins(
                        textStyle: TextStyle(color: color3
                        )
                      ),
                      ),
                      
                      ]
                      ),
                   ),
                 )
            ],
          ),
          Text("Ted Talks Daily",style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color2,fontSize: 17,fontWeight: FontWeight.w500
            )
          ),),
           Text("Episode-215, Virdas",style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color5,fontSize: 13,fontWeight: FontWeight.w500
            )
          ),),
          Padding(
            padding: const EdgeInsets.only(right: 24,left: 24,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                 onTap: (() {
                   showModalBottomSheet(context: context, 
                  builder: (context)=>numbersheet(context),
                  backgroundColor: Colors.transparent);
                 }),
                  child: Text("1.0x",style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: color2,fontSize: 16,fontWeight: FontWeight.w500
                    )
                  ),),
                ),
              InkWell(
                onTap: (() {
                  showModalBottomSheet(context: context, 
                  builder: (context)=>bulidsheet(context),
                  backgroundColor: Colors.transparent);
                }),
                
                child: Icon(Icons.dark_mode_rounded
                 ,color: color2,),
              ) 
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100,left: 24,right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.skip_previous_rounded,color: color2,size: 40,),
                Icon(Icons.replay_10_rounded,color: color2,size: 40,),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red
                  ),
                  child: 
                InkWell
                (
                  onTap: (() {
                   
                    setState(() {
                      tapindex=!tapindex;
                    });
                  }),
                 child: tapindex==false?Icon(Icons.play_arrow_rounded,
                 color: color2,size: 40,):
                 Icon(Icons.pause,color: color2,size: 40,)
                )
                ),
                Icon(Icons.forward_10_rounded,color: color2,size: 40,),
                Icon(Icons.skip_next_rounded,color: color2,size: 40,),
              ],
            ),
          )
            ]
              ),
        ),
      )
    );
  }
}
Widget bulidsheet (context){
  var Sleeptext=[
  "None","10 minutes","20 minutes","30 minutes",
  "40 minutes","50 minutes","60 minutes","40 minutes","50 minutes",
  "60 minutes","40 minutes","50 minutes","60 minutes"];
int setstyle=0;



return Container(
  
  width: double.maxFinite,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
  topRight: Radius.circular(25)),
  color: color1
),
child:Column(

  children: [

    Padding(
      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: 
         MainAxisAlignment.spaceBetween,
        children: [
            Text("Sleep timer",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: color2,fontSize: 17,fontWeight: FontWeight.w500
              )
            ),),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: color2,))
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 1,
        width: double.maxFinite,
        color: Color.fromRGBO(255, 255, 255, 0.1),
      ),
    ),
    Expanded(
      child: Sleeptimerlist(Sleeptext: Sleeptext),
    )

  ],

) ,

);}

class Sleeptimerlist extends StatefulWidget {
  const Sleeptimerlist({
    Key? key,
    required this.Sleeptext,
  }) : super(key: key);

  final List<String> Sleeptext;

  @override
  State<Sleeptimerlist> createState() => _SleeptimerlistState();
}

class _SleeptimerlistState extends State<Sleeptimerlist> {
  int SleepText=0;
  void _Sleeptext (int index){
    setState(() {
      SleepText=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
     physics: BouncingScrollPhysics(),
   
      children:List.generate(widget.Sleeptext.length, (index) =>
      Material(
        
        child: ListTile(onTap: () {
        setState(() {
          SleepText=index;
        });
          print(index);
        },hoverColor: Colors.amber,
          title: Text(widget.Sleeptext[index],style: GoogleFonts.poppins(
            textStyle:TextStyle(
              color: SleepText==index?color2:color6,fontSize: 15,fontWeight: FontWeight.w400
              
            )
          ),),
          tileColor: color1,
          trailing:SleepText==index?Icon(Icons.done,color: color2,)
          :Container(
            height: 0,
            width: 0,
          ),
          
        
          
        ),
      )
     
   
     
    //  InkWell(
    //   splashColor: Colors.red,
    //    onTap: (() {
    //   setState(() {
    //     SleepText=index;
    //   });
    //   }),
    //    child: Container(
        
    //      width: double.maxFinite,
    //      child: Padding(
    //        padding: const EdgeInsets.all(15.0),
    //        child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //          children: [
    //            Text(widget.Sleeptext[index].toString(),style: GoogleFonts.poppins(
    //             textStyle: TextStyle(
    //               color: SleepText==index?color2:color6,
    //               fontSize: 15,fontWeight: FontWeight.w400
    //             )
    //            ),),
    //            SleepText==index?Icon(Icons.done_rounded,color: color2,):Container()
    //          ],
    //        ),
    //      ),
    //    ),
    //  )
     
    //  ),
      )
     
    );
  }
}


Widget numbersheet (context){
  final pointtext=[
  "0.25x","0.5x","0.75x","1.00x","1.25x","1.5x","1.75x","2x"
];
int setstyle=0;



return Container(
  
  width: double.maxFinite,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
  topRight: Radius.circular(25)),
  color: color1
),
child:Column(

  children: [

    Padding(
      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: 
         MainAxisAlignment.spaceBetween,
        children: [
            Text("Playback speed",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: color2,fontSize: 17,fontWeight: FontWeight.w500
              )
            ),),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: color2,))
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 1,
        width: double.maxFinite,
        color: Color.fromRGBO(255, 255, 255, 0.1),
      ),
    ),
    Expanded(
      child: Numtimerlist(pointtext: pointtext),
    )

  ],

) ,

);}

class Numtimerlist extends StatefulWidget {
  const Numtimerlist({
    Key? key,
    required this.pointtext,
  }) : super(key: key);

  final List<String> pointtext;

  @override
  State<Numtimerlist> createState() => _NumtimerlistState();
}

class _NumtimerlistState extends State<Numtimerlist> {
  int SleepText=0;
  void _Sleeptext (int index){
    setState(() {
      SleepText=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
     physics: BouncingScrollPhysics(),
   
      children:List.generate(widget.pointtext.length, (index) =>
      Material(
        
        child: ListTile(onTap: () {
        setState(() {
          SleepText=index;
        });
          print(index);
        },hoverColor: Colors.amber,
          title: Text(widget.pointtext[index],style: GoogleFonts.poppins(
            textStyle:TextStyle(
              color: SleepText==index?color2:color6,fontSize: 15,fontWeight: FontWeight.w400
              
            )
          ),),
          tileColor: color1,
          trailing:SleepText==index?Icon(Icons.done,color: color2,)
          :Container(
            height: 0,
            width: 0,
          ),
          
        
          
        ),
      )
     
   
     
    //  InkWell(
    //   splashColor: Colors.red,
    //    onTap: (() {
    //   setState(() {
    //     SleepText=index;
    //   });
    //   }),
    //    child: Container(
        
    //      width: double.maxFinite,
    //      child: Padding(
    //        padding: const EdgeInsets.all(15.0),
    //        child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //          children: [
    //            Text(widget.Sleeptext[index].toString(),style: GoogleFonts.poppins(
    //             textStyle: TextStyle(
    //               color: SleepText==index?color2:color6,
    //               fontSize: 15,fontWeight: FontWeight.w400
    //             )
    //            ),),
    //            SleepText==index?Icon(Icons.done_rounded,color: color2,):Container()
    //          ],
    //        ),
    //      ),
    //    ),
    //  )
     
    //  ),
      )
     
    );
  }
}
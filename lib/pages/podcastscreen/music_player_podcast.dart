import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/consFile.dart';
import 'package:musiq/pages/model/model.dart';
import 'package:musiq/pages/podcastscreen/episodes.dart';
import '../../contants/contant_color.dart';

class PodcastAll extends StatefulWidget {
  const PodcastAll({Key? key}) : super(key: key);

  @override
  State<PodcastAll> createState() => _PodcastAllState();
}

class _PodcastAllState extends State<PodcastAll> {
  int selectedindex=0;
  void onitemtapped(int index){
  print(index);
  setState(() {
    selectedindex=index;
  });}
 
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
               children:   List.generate(recentlyPlayed.length, (index) =>  Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: InkWell(
                  onTap: () {
                      String ph25=con1image[index].toString();
                         String ph24=con1Title[index].toString();
                   Navigator.push(context, MaterialPageRoute(builder: (context) => 
                 Episodes(text:ph25,headline: ph24,)));
                  },
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset(recentlyPlayed[index].podCastImage),
                       Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(recentlyPlayed[index].PodCastTitle,style:
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
                         child: Text(recentlyPlayed[index].PodCastSubTitle,
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
               children: List.generate(TopPodcast.length, (index) =>  Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: InkWell(
                  onTap: () {
                    String ph24=con2image[index].toString();
                     String ph25=con3Title[index].toString();
                   Navigator.push(context, MaterialPageRoute(builder: (context) => 
                 Episodes(text:ph24,headline: ph25,),));
                  },
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset(TopPodcast[index].podCastImage),
                       Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(TopPodcast[index].PodCastTitle,style:
                           GoogleFonts.poppins(
                          textStyle:TextStyle(
                            color:color2,
                       ),
                           )
                         )
                           ),
                       Padding(
                         padding: const EdgeInsets.only(top: 2),
                         child: Text(TopPodcast[index].PodCastSubTitle,
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
             children:List.generate(Artist.length, (index) => 
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Image.asset(Artist[index].ArtistImage,height: 240,width: 190,),
                   Text(Artist[index].ArtistTitle,style: TextStyle(color: color2),)
                 ],
               ),
             ),
             )
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
               children: List.generate(TopPodcast1.length, (index) =>
               
                InkWell(
                  onTap: (() {
                      String ph23=con3image[index].toString();
                       String ph24=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   Episodes(text:ph23,headline: ph24,),));
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
                        child: Image.asset(TopPodcast1[index].podCastImage),
                        ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 4),
                       child: Text(TopPodcast1[index].PodCastTitle,style:
                       GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color:color2,
                    fontSize: 12,fontWeight: FontWeight.w400)
                      )
                       )
                       ,),
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text(TopPodcast1[index].PodCastSubTitle,
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
                   Episodes(text:ph23,headline: ph24,),));
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
                        (TopPodcast2[index].podCastImage),
                        ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(top: 4),
                       child: Text(TopPodcast2[index].PodCastTitle,style:
                       GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color:color2,
                    fontSize: 12,fontWeight: FontWeight.w400)
                      )
                       )
                       ,),
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text(TopPodcast2[index].PodCastSubTitle,
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

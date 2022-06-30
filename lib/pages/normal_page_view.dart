import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/list_pages.dart';
import 'package:musiq/pages/page_view.dart';
class NormalPageView extends StatefulWidget {
  const NormalPageView({Key? key}) : super(key: key);

  @override
  State<NormalPageView> createState() => _NormalPageViewState();
}

class _NormalPageViewState extends State<NormalPageView> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scafold(),
    );
  }
}
class Scafold extends StatefulWidget {
   Scafold({Key? key}) : super(key: key);

  @override
  State<Scafold> createState() => _ScafoldState();
   
   
}

class _ScafoldState extends State<Scafold> {
  int selecteddindex=0;
  void intapped(int index){
    setState(() {
      
      selecteddindex=index;
    });
  }
   final listtextses=[
"All","News","Comedy","Technology","TV&flim","All","News","Comedy","Technology","TV&flim",
];
List<StatefulWidget> pages = [
       
        ListPage(),
         MyApps(),
      ];

  
  @override
  Widget build(BuildContext context) {
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
                 child: Container(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(listtextses.length, (index) => Padding(
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
                          Text(listtextses[index].toString(),
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
                  child: PageView.builder(
                    itemCount: listtextses.length,
                    onPageChanged: (pages){
                      setState(() {
                        selecteddindex;
                      });
                    },
                    itemBuilder: (context,index) {
                  // return Container(
                  
                  //   height: 150,
                  //   width: 150,
                  //   color: Colors.lightBlue,
                  //   child: Center(
                  //     child:Text(listtextses[selecteddindex])
                  //   ),
                  // );
                  //   },
                  return Expanded(
             
                child:  pages[selecteddindex]
                  
                    
                  );
                   
                    }
                   
                   )
  
                  ),
               
             ]
           )

        );
             
  }
}
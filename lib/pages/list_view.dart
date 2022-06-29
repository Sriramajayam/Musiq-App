import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/list_pages.dart';
import 'package:musiq/pages/profile_page.dart';



class List_view extends StatefulWidget {
  const List_view({Key? key}) : super(key: key);

  @override
  State<List_view> createState() => _List_viewState();

  
}

class _List_viewState extends State<List_view> {
int _selectedintex=0;
static const List<Widget>_widgetoptions=<Widget>[
  profilepage(),
];

  void _onitemtapped(int index){
  print(index);
  setState(() {
    _selectedintex=index;

  });
}



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: color1,
        appBar: AppBar(
          backgroundColor:color1,
          elevation: 0,
          title: Text("Podcast",style:GoogleFonts.poppins(
          textStyle:
           TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),fontSize: 30,
           
           fontWeight: FontWeight.w600
           ),),),
           body: ListPage(),
           
                 

      )
    );
  }
  
}
          
        
    
    


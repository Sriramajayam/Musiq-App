import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'next_page.dart';
class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
int _selectedintex=0;


void _onitemtapped(int index){
  print(index);
  setState(() {
    _selectedintex=index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
       backgroundColor: Color.fromRGBO(22, 21, 28, 1),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Row(
            children: [
        
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(onPressed: (){}, 
                icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,top: 20),
                child: Text("Profile",style: GoogleFonts.poppins( textStyle:
                TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 20,
                fontWeight: FontWeight.w600),
                ),
                
                ),
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              
              radius: 60,
             
             backgroundImage: NetworkImage("https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
        //  Padding(
        //    padding: const EdgeInsets.only(top: 20,left: 150),
        //    child: Container(
        //     height: 100,
        //     width: 100,
           
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(50),
        //        color: Colors.white,
               
        //     ),
        //     child:
        //    Image.network("https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
        //    , height: 100,
        //      width: 30,
        //     ),
        //    ),
        //  ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20,left: 128,right: 127),
          //   child: Image.network(
              
          //     'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
          //     ,height: 100,),
          // ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 24,left: 24,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                     Text("My Profile",style: 
                     GoogleFonts.poppins(textStyle:
                    TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,fontWeight: FontWeight.w500
                    ),
                    ),
                     ),
                  
                  
                     IconButton(onPressed: (){
                    Navigator.push(
                               context,
                     MaterialPageRoute(builder: (context) => nextpage()),
        );
                     },
               icon:Icon( Icons.arrow_forward_ios),
               color: Color.fromRGBO(255, 255, 255, 1),),
                ],
        
              ),
            ),
          ),
        
        
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 24,left: 24,top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                     Text("Preferences",style: 
                      GoogleFonts.poppins(textStyle:
        
                    TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,fontWeight: FontWeight.w500
                    ),
                    ),
                     ),
                  
                     IconButton(onPressed: (){},
               icon:Icon( Icons.arrow_forward_ios),
               color: Color.fromRGBO(255, 255, 255, 1),),
                ],
                
              ),
            ),
          ),
        
        
        
          
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 24,left: 24,top: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                     Text("Contact us",style: 
                      GoogleFonts.poppins(textStyle: 
        
                    TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,fontWeight: FontWeight.w500
                    ),
                    ),
                     ),
                  
                  
                     IconButton(onPressed: (){},
               icon:Icon( Icons.arrow_forward_ios),
               color: Color.fromRGBO(255, 255, 255, 1),),
                ],
                
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 0,left: 24),
           child: Text("About",style:
           GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 16,fontWeight: FontWeight.w500,
            color: Color.fromRGBO(255, 255, 255, 1)
            ),
            
            ),
         ),
         ),
        
        
          Padding(
           padding: const EdgeInsets.only(top: 16,left: 24),
           child: Text("Terms of use",style:
            TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
            color: Color.fromRGBO(255, 255, 255, 0.8)
            ),
            
            ),
         ),
        
          Padding(
           padding: const EdgeInsets.only(top: 16,left: 24),
           child: Text("Privacy Policy",style:
           GoogleFonts.poppins(textStyle: 
            TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
            color: Color.fromRGBO(255, 255, 255, 0.8)
            ),
            
            ),
         ),
          ),
         Padding(
           padding: const EdgeInsets.only(right: 24,left: 24,top: 14),
           child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Text("Version :",style: 
                GoogleFonts.poppins(textStyle:
        
                TextStyle(
                  fontSize: 14,fontWeight: 
                  FontWeight.w500,
                  color: Color.fromRGBO(255,255,255,0.8),),),),
                 Text("2.30.23",style:
                 GoogleFonts.poppins(textStyle:
                  TextStyle(
                  fontSize: 14,fontWeight: 
                  FontWeight.w500,
                  color: Color.fromRGBO(255,255,255,0.8),),),
                
                 ),
               ],
           
           ),
         ),
        Spacer(),
           InkWell(
            onTap: (){
              print(MediaQuery.of(context).size.height.toString());
            },
             child: Padding(
               padding: const EdgeInsets.only(right: 16,
               left: 16,bottom: 15),
               child: Container(
                height: 47,
                
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(254, 86, 49, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 11,
                  bottom: 11,left: 150,),
                  child: Text("Sign Out",style: 
           
                  GoogleFonts.poppins(textStyle: 
                   TextStyle(color:
                    Color.fromRGBO(255,255,255,1),
                    fontSize: 16,fontWeight: FontWeight.w500
                    ),),)
                ),
               ),
             ),
           ),
          
        
      
        ]
        
      ),
      ),
      // bottomNavigationBar: 
      
      //   BottomNavigationBar(
        
          
        
        
      //   type: BottomNavigationBarType.fixed,
      //     backgroundColor: Color.fromARGB(27, 100, 100, 100),
        
      //     items: <BottomNavigationBarItem>
      //   [
      //     BottomNavigationBarItem(
      //      icon: Column(
      //       children: [
             
      //        CircleAvatar(
      //         backgroundColor: _selectedintex==0?Colors.red:Colors.transparent,
             
      //         child: Icon(Icons.home,color: _selectedintex==0?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
      //        ),
    
             
      //         Text("Home",style: 
      //         GoogleFonts.poppins(textStyle:
              
      //         TextStyle(
      //           color: _selectedintex==0?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35) ),),
      //         )
      //       ],
           
      //      ),
      //      label: ""
          
            
          
      //     ),
    
      //    BottomNavigationBarItem(
      //      icon: Column(
      //       children: [
      //         CircleAvatar(
      //           backgroundColor: _selectedintex==1?Colors.red:Colors.transparent,
      //           child: Icon(Icons.music_note,color: _selectedintex==1?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
      //         ),
      //         Text("Library",style:
      //         GoogleFonts.poppins(textStyle:
      //          TextStyle(
      //            color: _selectedintex==1?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
      //         )
      //       ],
      //      ),
      //      label: ""
          
            
          
      //     ),
    
      //    BottomNavigationBarItem(
      //      icon: Column(
      //       children: [
      //        CircleAvatar(
      //         backgroundColor: _selectedintex==2?Colors.red:Colors.transparent,
      //         child: Icon(Icons.podcasts,color: _selectedintex==2?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
      //        ),
              
      //         Text("Podcost",style: 
      //         GoogleFonts.poppins(textStyle: 
      //         TextStyle(
      //          color: _selectedintex==2?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
      //         )
      //       ],
      //      ),
      //      label: ""
          
            
          
      //     ),
         
    
      //     BottomNavigationBarItem(
      //      icon: Column(
      //       children: [
      //         CircleAvatar(
      //           backgroundColor:_selectedintex==3? Colors.red:Colors.transparent,
      //           child: Icon(Icons.person,color: _selectedintex==3?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
      //         ),
             
      //         Text("Profile",style:
      //         GoogleFonts.poppins(textStyle: 
      //          TextStyle(color: _selectedintex==3?
      //       Colors.white:Color.fromRGBO(255, 255, 255, 0.35)
      //           ),),
      //         )
      //       ],
      //      ),
      //      label: ""
          
            
          
      //     ),
     
      //     ],
      //     currentIndex: _selectedintex,
      //     selectedItemColor: Colors.yellow,
      //     unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.35),
          
      //     onTap: _onitemtapped,
          
          
      //     ),
    );
  }
  
}
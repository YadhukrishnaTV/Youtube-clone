import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoplay extends StatelessWidget {
  const videoplay({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'h8-qemIbXbo',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      SingleChildScrollView(
        child: Column(
         children: [
          SizedBox(height: 15,),
            YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(radius: 25,
              foregroundImage: NetworkImage("https://th.bing.com/th/id/OIP.9eS4MTEnRP_eR7nDP8_TfwHaFj?w=281&h=211&c=7&r=0&o=5&dpr=1.3&pid=1.7"),),
              SizedBox(width: 15,),
              Column(
                children: [
                  Text("Google India",style: TextStyle(color: Colors.white),),
                  Text("Ad",style: TextStyle(color: Colors.white),)
                ],
              ),
              SizedBox(width: 80,),
              Container(
                      height: 46,
                      width: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 70, 148, 243),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         
                          Text(
                            "pay now",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                     Icon(Icons.more_vert,color: Colors.white,)
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("hp laptop review    ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),),
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 185),
            child: Text(" 4.5k views  1 hr ago ...more ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
               CircleAvatar(radius: 25,
              foregroundImage: NetworkImage("https://th.bing.com/th?id=OIP.GlXqxcR9EmviN5kuwaUsMQHaIB&w=240&h=260&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),),
              SizedBox(width: 15,),
              Row(
                children: [
                  Text("my youtube video    ",style: TextStyle(color: Colors.white,fontSize: 20)),
                  Text("1.04 lakh",style: TextStyle(color: Colors.white,fontSize: 15)),
                  SizedBox(width: 20,),
                  Icon(Icons.notifications_active,color: Colors.white,),
                  Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,)
                ],
              )
              
            ],
          ),
          SizedBox(height: 10,),
           SingleChildScrollView(scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                            Container(
                               height: 40,
                               width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 31, 31, 31),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined,color: Colors.white,),SizedBox(width: 15,),
                                    Text("1.8k",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    SizedBox(width: 15,),
                                        Icon(Icons.thumb_down_alt_outlined,color: Colors.white,),SizedBox(width: 15,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 25,),
                                Container(
                               height: 40,
                               width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 31, 31, 31),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.screen_share_rounded,color: Colors.white,),SizedBox(width: 15,),
                                    Text("Share",style: TextStyle(color: Colors.white,fontSize: 18),),
                                     ],
                                ),
                              ),
                              SizedBox(width: 25,),
                                Container(
                               height: 40,
                               width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 31, 31, 31),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.show_chart_sharp,color: Colors.white,),SizedBox(width: 15,),
                                    Text("Remix",style: TextStyle(color: Colors.white,fontSize: 18),),
                                     ],
                                ),
                              ),
                               SizedBox(width: 25,),
                                Container(
                               height: 40,
                               width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 31, 31, 31),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.download,color: Colors.white,),SizedBox(width: 15,),
                                    Text("Downloads",style: TextStyle(color: Colors.white,fontSize: 18),),
                                     ],
                                ),
                              ),

               ],
             ),
           ),
           SizedBox(height: 15,),
           Container(width: 400,
           height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 21, 21, 21),),
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text("Comments  122",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 15,width: 10,), 
              Row(
                children: [
                  CircleAvatar(radius: 15,backgroundColor: Colors.amber,
                  child: Text("A",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),),
                  SizedBox(width: 20,),
                  Text("superrrrrrrrrrrrrrrrr",style: TextStyle(color: Colors.white),),
                  
                ],
              ),
            ],
           ),),
           SizedBox(height: 10,),
           Container(height: 400,
           width: double.infinity,
           child:Image.network("https://th.bing.com/th/id/OIP.Kq0Jx87q5HLEzjQKYHmbyAHaLH?w=196&h=294&c=7&r=0&o=5&dpr=1.3&pid=1.7",fit: BoxFit.fill),)
         
        ],
      ),
      
      
    ),
    
    ]
    ),
    
          ),
         
        
         
        );
      
    
  }
}
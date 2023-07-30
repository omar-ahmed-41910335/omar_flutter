import 'package:flutter/material.dart';
class Massenger_Screen extends StatelessWidget {
   const Massenger_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0 ,
        titleSpacing: 18,
        title: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: Row(
            children: [
              CircleAvatar(
                radius:22,
                backgroundImage: NetworkImage('https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
              ),
              SizedBox(width: 15),
              Text('Chats',style: TextStyle(color:Colors.black87,fontSize: 22),),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,


                ),
              ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,

              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300],
                ),
                child: Row(

                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
               Container(
                 height: 100,// choose height based on pic and texe on contain
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection : Axis.horizontal,
                   itemBuilder:(context,index) => Buildstory(),
                   separatorBuilder: (context, index) => SizedBox(width: 20.0,),
                   itemCount: 6, // rever to index
                 ),
               ),
            SizedBox(height: 20,),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index) => Bulidchat(),
                separatorBuilder:(context,index) => SizedBox(height: 20,),
                itemCount: 10,
            )
              // SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
  // 1-build item
   // 2 -build list
   // 3- add item to list
// arrow function
   Widget Bulidchat() => Row(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius:30,
             backgroundImage: NetworkImage('https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
           ),
           CircleAvatar(
             radius:9,
             backgroundColor: Colors.white,
           ),
           Padding(
             padding: const EdgeInsetsDirectional.only(
               end: 2,
               bottom: 2,
             ),
             child: CircleAvatar(
               radius:7,
               backgroundColor: Colors.green,
             ),
           ),

         ],
       ),
       SizedBox(width: 10,),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               'Omar Ahmed Omar ',
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
             SizedBox(height: 5,),
             Row(
               children: [
                 Expanded(
                   child: Text(
                     'Hello my name is omar ',
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     softWrap: false,
                     style: TextStyle(fontSize: 19),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:11 ),
                   child: Container(
                     width: 7,
                     height: 7,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.blue,
                     ),
                   ),
                 ),
                 Text('03:45 PM'),
               ],
             ),
           ],
         ),
       ),
     ],
   );
  Widget Buildstory() => Container(
    width: 50, // احجم الصورة اخلي الاسم ينزل على تحت بدل ماينفرش بالعرض
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius:25,
              backgroundImage: NetworkImage('https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
            ),
            CircleAvatar(
              radius:9,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                end: 2,
                bottom: 2,
              ),
              child: CircleAvatar(
                radius:7,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(height: 5,),
        Text('Omar ahmed omar bahamil',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis ,
        ),

      ],
    ),
  );
}

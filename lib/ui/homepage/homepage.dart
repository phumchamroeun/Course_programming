import 'package:flutter/material.dart';

class Hompage extends StatelessWidget {

  //create statice data in lists
List catNames = [
  "Category",
  'Classes',
  'Free Course',
  'BookStore',
  'Live Course',
  'LeaderBord',
];

List<Color> catColors = [
 Color(0xFFFFCF2F),
 Color(0xFFFF6FE08D),
 Color(0xFFFC7C7F),
 Color(0xFF6180FD),
 Color(0xFFCB84F8),
 Color(0xFF78E667),
];

List<Icon> catIcons = [
  Icon(Icons.category, color: Colors.white, size: 30,),
  Icon(Icons.video_library, color: Colors.white, size: 30,),
  Icon(Icons.computer, color: Colors.white, size: 30,),
  Icon(Icons.store, color: Colors.white, size: 30,),
  Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
  Icon(Icons.emoji_events, color: Colors.white, size: 30,),
];

List imgList = [

];

List<Icon> Card = [
  Icon(Icons.javascript, color: Colors.white, size: 30,),
  Icon(Icons.flutter_dash, color: Colors.white, size: 30,),
  Icon(Icons.engineering, color: Colors.white, size: 30,),

  Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
  Icon(Icons.emoji_events, color: Colors.white, size: 30,),
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15,bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.dashboard,size: 30,color: Colors.white,),
                        Icon(Icons.notifications,size: 30,color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 3,bottom: 15,),
                      child: Text("Progrming",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,wordSpacing: 2),),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here ...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,size: 25,
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //=======//======
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15,right: 15),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: catNames.length,//
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                             children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: catColors[index],
                                  shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: catIcons[index],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(catNames[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                             ],
                        );
                      },
                    ),
                    //============//==============
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Course",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        Text("All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    GridView.builder(
                      itemCount: imgList.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 *240),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                             // color: Color(0xFFF5F3FF)
                              color: Colors.red
                            ),
                            child: Column(
                              children: [],
                            ),
                          ),
                        );
                      },
                    )
                  ]
                  ),
              )
            ],
      ),
    );
  }
}
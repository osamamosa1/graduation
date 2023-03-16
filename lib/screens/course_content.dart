import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CourseContent extends StatefulWidget {
  @override
  _CourseContentState createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  @override
  Widget build(BuildContext c) {
    double _w = MediaQuery.of(context).size.width;
    double _h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff5F40D1),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: _h*0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/scratch.png'),fit: BoxFit.fill)
                ),
                child: Text('course name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: _h*0.28,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: ListView.builder(itemBuilder: (context,index)=>
                      Column(
                        children: [
                          Container(
                            height: _w / 4,
                            decoration: BoxDecoration(
                              color: Color(0xff5F40D1),
                              borderRadius:(index==0)? BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)):BorderRadius.zero,

                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 15,),
                                CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white.withOpacity(0.3),
                                    child: Icon(Icons.play_circle_fill_outlined,size: 38,)),
                                SizedBox(width: 15,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('video ${index+1}',style: TextStyle(color: Colors.white)),
                                    Text('video name',style: TextStyle(color: Colors.white,fontSize: 18)),
                                    Text('video time',style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(height: 1,thickness: 1,color: Colors.black,indent: 20,endIndent: 20,)
                        ],
                      )),
                ),
              )

            ],
          )
        ],
      ),

    );
  }
}

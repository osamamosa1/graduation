import 'package:flutter/material.dart';
class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: SizedBox()),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffA7AEF9),
                borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*0.8,
            padding: EdgeInsets.all(8),
          ),
          Expanded(
            flex: 2,
              child: SizedBox()),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffA7AEF9),
              borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.8,
            padding: EdgeInsets.all(5),
          ),
          Expanded(child: SizedBox()),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffA7AEF9),
                borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.8,
            padding: EdgeInsets.all(5),
          ),
          Expanded(child: SizedBox()),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffA7AEF9),
                borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.8,
            padding: EdgeInsets.all(5),

          ),
          Expanded(
            flex: 2,
              child: SizedBox()),
          InkWell(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffA7AEF9),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.5,
              padding: EdgeInsets.all(5),
              child: Text('next'),
            ) ,
          )
        ],
      ),
    );
  }
}

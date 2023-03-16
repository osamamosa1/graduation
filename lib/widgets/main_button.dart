import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainButton extends StatefulWidget {

  String? title;
  VoidCallback? onPressed;
  Color? color;


  MainButton
      ({
    super.key,
    this.title,
    this.onPressed,
    this.color
  });
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      color: widget.color,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      height: 35.sp,
      minWidth:double.infinity,
      onPressed: widget.onPressed,
      child: Text("${widget.title}",style: TextStyle(color: Colors.white),),

    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
class list_info_container extends StatelessWidget {
  final String info;
  final double space;
  list_info_container({this.info,this.space});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0,left: 25.0),
      height: 25.0,
      child: Row(
        children: [
          Text(info,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: space),
            padding: EdgeInsets.only(top: 4.0,left: 8.0,right: 8.0,bottom: 4.0),
            decoration: BoxDecoration(
              color: Color(0xff00A267),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Text('More',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

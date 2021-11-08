import 'package:flutter/material.dart';
class Featured_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 210,
          width: 250,
          margin: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.grey.withOpacity(.3),
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/bottom_img_1.png',fit: BoxFit.fill,),
                height: 170.0,
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,top: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      child: Text('Tap Here',
                        style: TextStyle(
                            color: Color(0xff00A267),
                            fontWeight: FontWeight.w600,
                          fontSize: 20.0,

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 210,
          width: 250,
          margin: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.grey.withOpacity(.3),
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/bottom_img_2.png',fit: BoxFit.fill,),
                height: 170.0,
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,top: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      child: Text('Tap Here',
                        style: TextStyle(
                          color: Color(0xff00A267),
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

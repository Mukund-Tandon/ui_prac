import 'dart:math';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Recomended_list extends StatefulWidget {
  @override
  _Recomended_listState createState() => _Recomended_listState();
}

class _Recomended_listState extends State<Recomended_list>  with TickerProviderStateMixin{
  int index = 1;
  Animation animation;
  Animation animation2;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =AnimationController(vsync: this ,duration: Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );
    animation2 = Tween(begin: pi, end: 2*pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );

    controller.addListener(() {
      setState(() {
        if(animation.value >pi/2)
          {
           index =0;
          }
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        IndexedStack(
          index: index,
          children:[
            Transform(
              transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(animation2.value),
              alignment: FractionalOffset.center,
              child: Container(
                margin: EdgeInsets.only(top: 20.0,bottom: 20.0,right: 15.0,left: 15.0),
                height: 210.0,
                width: 160.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Colors.grey.withOpacity(.3),
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Text('Some Information'),
                    Container(
                        height: 60.0,
                        width: 80.0,

                        margin: EdgeInsets.only(top: 5.0,left: 30.0),
                        child: IndexedStack(
                          index: 1,
                          children: [
                            Container(
                            child: Lottie.network(
                              'https://assets3.lottiefiles.com/temp/lf20_UwZjuI.json',
                              animate: true,
                              repeat: false,
                              reverse: false,
                            ),
                          ),]
                        )
                    ),
                  ],
                ),
              ),
            ),
            Transform(
            transform:  Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(animation.value),
            alignment: FractionalOffset.center,
            child: Container(
              margin: EdgeInsets.only(top: 20.0,bottom: 20.0,right: 15.0,left: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Colors.grey.withOpacity(.3),
                    )
                  ]
              ),
              height: 210.0,
              width: 160.0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        controller.forward();
                        print("hello");
                      });

                    },
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      child: Image.asset('assets/images/image_1.png', fit: BoxFit.fill,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,top: 5.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text('Flower 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 50.0,),
                              Text('₹400',
                                style: TextStyle(
                                  color: Color(0xff00A267),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),]
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0,bottom: 20.0,right: 15.0,left: 15.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.grey.withOpacity(.3),
              ),
            ],

            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          height: 210.0,
          width: 160.0,
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: double.infinity,
                child: Image.asset('assets/images/image_2.png', fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,top: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text('Flower 2',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 50.0,),
                          Text('₹500',
                            style: TextStyle(
                              color: Color(0xff00A267),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 30.0),
                      child: Text('Tap Here',
                        style: TextStyle(
                            color: Color(0xff00A267),
                            fontWeight: FontWeight.w600
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
          margin: EdgeInsets.only(top: 20.0,bottom: 20.0,right: 15.0,left: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.grey.withOpacity(.3),
              ),
            ],
          ),
          height: 210.0,
          width: 160.0,
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: double.infinity,
                child: Image.asset('assets/images/image_3.png', fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,top: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text('Flower 3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 50.0,),
                          Text('₹600',
                            style: TextStyle(
                              color: Color(0xff00A267),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 30.0),
                      child: Text('Tap Here',
                        style: TextStyle(
                            color: Color(0xff00A267),
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),

      ],
    );
  }
}

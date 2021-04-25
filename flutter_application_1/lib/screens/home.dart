import 'package:flutter/material.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Text("Margherita", 
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              decoration:  TextDecoration.none,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.normal,

            ),
            )),
            Expanded(child: Text("Tometo, Mozzaralla, Basil", 
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 10.0,
              decoration:  TextDecoration.none,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.normal,
            ),
            )),
          ]
        ),
        Row(children: <Widget>[
          Expanded(child: Text("Marinara", 
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              decoration:  TextDecoration.none,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.normal,

            ),
            )),
            Expanded(child: Text("Tomato, Garlic", 
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 10.0,
              decoration:  TextDecoration.none,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.normal,

            ),
            )),
          ]
        ),
      PizzaImageWidget(),
      OrderButton(),
      ],
      )
      // child: Text("Pizza", 
      // textDirection: TextDirection.ltr,
      // style: TextStyle(
      //   fontSize: 30.0,
      //   decoration:  TextDecoration.none,
      //   fontFamily: "OpenSans",
      //   fontWeight: FontWeight.normal,

      // ),
      // )
    );
    // return Material(
    //       color: Colors.deepPurple,
    //       child: Center(
    //         child: Text(
    //           sayHello(),
    //           textDirection: TextDirection.ltr,
    //           style: TextStyle(color: Colors.white, fontSize: 36.0),
    //         ),
    //       ),
    //     );
  }

String sayHello(){
  String hello;
  DateTime now = new DateTime.now();
  int hour = now.hour;
  int minute = now.minute;
  if (hour < 12){
    hello = "Good Morning";
  }
  else if (hour < 18){
    hello = "Good Afernoon";
  }
  else{
    hello = "Good Evening";
  }
  String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();
  return "It's now " + hour.toString() + ":" + minutes + ". \n" + hello;

}
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 200, height: 200);
    return Container(child: image);
  }
  
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: (){
          order(context);
        },
      ),
    );
    return button;
  }
  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Thank you for your order"),
      content: Text("Thank you for your order")
    );
    showDialog(
      context: context, 
      builder: (BuildContext context) => alert
    );
  }
}
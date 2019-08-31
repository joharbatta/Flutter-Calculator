import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{

  @override
  State createState()=>new HomePageState();
}

class HomePageState extends State<HomePage>
{
  var num1=0,num2=0,sum=0;

  final TextEditingController t1=new TextEditingController(text: "0");
  final TextEditingController t2=new TextEditingController(text: "0");

  void add()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void min()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void mul()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void div()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  void clear()
  {
    setState(() {
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text("Output : $sum",
        style: new TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),),
           new TextField(
              keyboardType: TextInputType.number,
             decoration: new InputDecoration(
               hintText: "Enter Number 1",
             ),
             controller: t1 ,
           ),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
                 hintText: "Enter Number 2"
             ),
             controller: t2,
           ),
           new Padding(
               padding:const EdgeInsets.only(top: 20),
           ),

           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: <Widget>[
               new MaterialButton(
                 child: new Text("+"),
                 color: Colors.greenAccent,
                 onPressed: add,
               ),
               new MaterialButton(
                 child: new Text("-"),
                 color: Colors.greenAccent,
                 onPressed: min,
               ),

             ],
           ),
           new Padding(padding: const EdgeInsets.only(top:20)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("*"),
                 color: Colors.greenAccent,
                 onPressed: mul,
               ),
               new MaterialButton(
                 child: new Text("/"),
                 color: Colors.greenAccent,
                 onPressed: div,
               ),

             ],
           ),
           new Padding(padding: const EdgeInsets.only(top:20)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("C"),
                 color: Colors.greenAccent,
                 onPressed: clear,
               ),

             ],
           )

         ],
        ),
      ),
      

    );
  }

}
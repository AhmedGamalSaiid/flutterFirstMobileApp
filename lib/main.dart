


import 'package:firstapp/view/Pages/Todolist.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

//import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        //scaffoldBackgroundColor: HexColor("#1d4354"),
        //backgroundColor: Colors.red,
      ),
      home: MyHomePage(title: 'Ahmed Gamal First Mobile App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _bgupwork="#6fda44";
  // int _counter = 0;
  // String _hello = 'hello';

  // void _incrementCounter() {
  //   setState(() {
  //     _hello += '.';
  //     _counter++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
  
        return Scaffold(
        //  appBar: PreferredSize(
        //       preferredSize: Size.fromHeight(10.0), // here the desired height
        //       child: AppBar(
        //          elevation: 0,
        //          flexibleSpace: Image(
        //         image: AssetImage('img/upwork.png'),
               
        //         fit: BoxFit.cover,
        //     ),
        //     backgroundColor: Colors.white,
        //       )
        //     ),
        // 
          body: Center(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
           margin: const EdgeInsets.symmetric(vertical : 50.0,  horizontal :70),
                  child: Image.asset('img/upwork.png'),
                ),
                Text(
                  "Log In To Upwork",
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                 
                ),
               Container(
          // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
           margin: const EdgeInsets.symmetric(vertical : 20.0,  horizontal :10),
         
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color:  HexColor("#6fda44"),// set border color
                width: 1.3),   // set border width
            borderRadius: BorderRadius.all(
                Radius.circular(7.0)), // set rounded corner radius
          ),
          child: TextField(
            decoration: InputDecoration(
               prefixIcon: Icon(Icons.person),
              hintText: 'User Name or Email',
              border: InputBorder.none,
            ),
          ),
          
        ),
         Container(
           margin: const EdgeInsets.symmetric(vertical : 20.0,  horizontal :10),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color:HexColor("#6fda44"),// set border color
            width: 1.3,
            ),   // set border width
        borderRadius: BorderRadius.all(
            Radius.circular(7.0)), // set rounded corner radius
      ),
      child: TextField(
           decoration: InputDecoration(
           prefixIcon: Icon(Icons.lock),
            hintText: 'Password',
          border: InputBorder.none,
          //focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color:Colors.black ,width: 1.5 ),)
        ),
      ),
      
    ), 
      ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 13.0),
          child: Text(
            "Containue With Email",
            style: TextStyle(fontSize: 20)
          ),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(HexColor("#37a000")),
          //padding: MaterialStateProperty.all<SiEdgeInsetsze>(4),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              side: BorderSide(color:HexColor("#37a000"))
            )
          )
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                 TodoList(),
            ))}
      ),
    
     Container(
      margin: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 5.0),
      child: new RaisedButton(
        padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 10.0),
        color: const Color(0xFF4285F4),
        onPressed: () {},
        child: new Row(
          mainAxisSize: MainAxisSize.min,
        
          children: <Widget>[
             Image.network(
              'https://cancateura.com/wp-content/uploads/2018/08/icono-google.jpg',
              height: 48.0,
              
            ),
            // SvgPicture.asset(
            //   'img/google.svg',
            //   height: 48.0,
              
            // ),
            new Container(
              padding: EdgeInsets.only(left: 60.0,right: 60.0),
              child: new Text("Sign in with Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17.5),)
            ),
          ],
        )
      ),
    ),
   
      
  ],
),
      ),
     
        );
  }
}

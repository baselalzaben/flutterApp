import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
backgroundColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List <String> spinnerItems = [
  'One',
  'Two',
  'Three',
  'Four',
  'Five'
  ] ;
  TextEditingController NameController = new TextEditingController();

  get dropdownValue => null;
  void login() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
     // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

       return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.0),
          width: 0,
        ),
      ),
      child: Container(
        color: Colors.white,
        width: 0,
          height: 200,

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(
          width: 160,
          height: 160,
          child: Image.network('https://img.freepik.com/free-vector/sign-concept-illustration_114360-125.jpg?size=338&ext=jpg'),
        ),


        Container(

        margin: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ادخل الاسم',
              hintText: 'الاسم',
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(15),  // Added this
            ),
          )

      ),



    Container(

    margin: EdgeInsets.all(10.0),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'ادخل بريدك الالكتروني',
      hintText: 'البريد الالكتروني',
      isDense: true,                      // Added this
    contentPadding: EdgeInsets.all(15),  // Added this
    ),
    )

    ),


    Container(

    margin: EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.all(10.0),

        child: Row(
            children: const <Widget>[

              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'رمز الدولة',
                    hintText: 'رمز الدولة',

                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(11),  // Added this
                  ),
                ),

            ),
        Expanded(
        child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
        labelText: 'ادخل رقم هاتفك',
        hintText: 'رقم الهاتف',

        isDense: true,                      // Added this
        contentPadding: EdgeInsets.all(11),  // Added this
      ),
    ),
      ),
        ],),),)


    ,

    Container(

    margin: EdgeInsets.all(10.0),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'ادخل الرمز السري',
      hintText: 'الرمز السري',

      isDense: true,                      // Added this
    contentPadding: EdgeInsets.all(11),  // Added this
    ),
    )

    ),


Container(

    margin: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ادخل الرمز السري',
              hintText: 'تاكيد الرمز السري',
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(11),  // Added this
            ),
    )

),
          Container(

            width: 320,
            height: 40,
              margin: EdgeInsets.all(10.0),

              child: RaisedButton(
            onPressed: () => {
              //do something

            },
            color: Colors.redAccent,
            child: new Text('تسجيل', style: TextStyle(color: Colors.white),),
                    )),

        /*  DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.red, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
        
            items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),*/

        ],
           )),


       );



  }}

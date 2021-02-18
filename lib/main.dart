import 'package:flutter/material.dart';

void main() { 
  runApp(MaterialApp( 
    initialRoute: '/', 
    routes: { 
      '/': (context) => HomeRoute(), 
      '/second': (context) => SecondRoute(), 
      // '/third': (context) => ThirdRoute(), 
    }, 
  )); 
} 
  
class HomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();

}

class _State extends State<HomeRoute> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sign In'),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("Sign in"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                    color: Color(0xff0091EA),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text('Need an account? Register'),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text('Forget password?'),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}

  
class SecondRoute extends StatefulWidget{
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<SecondRoute> {
  List cards = new List.generate(3, (i)=>new CustomCard()).toList();

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
            appBar: new AppBar(
              title: new Text('card'),
              backgroundColor:new Color(0xFF673AB7),
            ),
            body: new Container(
              child: new ListView(
                children: cards,
              )

            )

        );

    }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
              return  new Card(
                    child: new Column(
                      children: <Widget>[
                        new Image.network('https://picsum.photos/200/300'),
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.thumb_up),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.comment),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('Comments',style: new TextStyle(fontSize: 18.0)),
                             )

                            ],
                          )
                        )
                      ],
                    ),
                  );
  }
}
  
// class ThirdRoute extends StatelessWidget { 
//   @override 
//   Widget build(BuildContext context) { 
//     return Scaffold( 
//       appBar: AppBar( 
//         title: Text("View"), 
//         backgroundColor: Colors.green, 
//       ), 
//     ); 
//   } 
// }
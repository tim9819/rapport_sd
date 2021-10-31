import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 't',
      home: MyClass(),
    );
  }
}

class MyClass extends StatelessWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('제목'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopptin cart button is cliked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is cliked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/pjh.jpg'),
                  backgroundColor: Colors.white,
                ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/tt.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('dddsdfsdffsdfsdfsdfsdfsdfsdfsdfsdfsdf'),
              accountEmail: Text('aaaa@dfdfdf.com'),
              onDetailsPressed: (){
                  print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[850],),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),

          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset('assets/banner01.jpg',
                  width: 300,
                  height: 140,
                  fit: BoxFit.fill),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('Course Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Smart Device',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Student Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('BAK SU HWAN',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height:30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('Attendance : 10%',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text("Exam: 60%",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('Homework: 30%',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            SizedBox(
              height:20.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/smartdevice.jpg'),
                backgroundColor: Colors.white,
                radius: 60.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Clickde to see the Message'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            'Snack Bar ----',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
            backgroundColor: Colors.blue,
            duration: Duration(milliseconds: 300),
          ));
        },
      ),
    );
  }
}












import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyFirstButtons(),
        ),
      ),
    );
  }
}

class MyFirstButtons extends StatefulWidget {
  @override
  _MyFirstButtonsState createState() => _MyFirstButtonsState();
}

class _MyFirstButtonsState extends State<MyFirstButtons> {
  Icon starIcon = Icon(Icons.star);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("ElevatedButton"),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: Text("ElevatedButton.icon"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("TextButton"),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: Text("TextButton.icon"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("OutlinedButton"),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: Text("OutlinedButton.icon"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: starIcon,
                iconSize: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: starIcon,
                iconSize: 40,
              ),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: starIcon,
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {},
                child: Text("TextButton"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("ElevatedButton"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "This is a Card widget to show how to use ButtonBar",
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("TextButton"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("ElevatedButton"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


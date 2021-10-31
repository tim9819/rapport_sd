import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '태초라포르',
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
              accountName: Text('박수환'),
              accountEmail: Text('tim9819@naver.com'),
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

import 'package:fa17_bse_044/HardLevel.dart';
import 'package:flutter/material.dart';
import 'SimpleLevel.dart';
import 'HardLevel.dart';




class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[210],
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.black,
                      color: Colors.grey,
                      child: Text(
                        'Simple Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        debugPrint('simple');
                      },

                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.black,
                      color: Colors.pinkAccent,
                      child: Text(
                        'Hard Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        debugPrint('hard');
                      },

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Sidra Riaz'),
                accountEmail: Text('sidrariaz044@gmail.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/abc.jpg')
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
              subtitle: Text('03088115349'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('sidrariaz044@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

    );
  }
  void simpleDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  SimpleLevel()));
    });
  }

  void hardDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HardLevel()));
    });
  }
}
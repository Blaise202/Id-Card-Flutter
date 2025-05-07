import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'My Id Card',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb2.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.amberAccent   ,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Blaise-Izerimana',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Text(
                  'blaise@ex.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
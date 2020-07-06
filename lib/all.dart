import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sale_your_food/screens/home.dart';

class DetailScreen extends StatelessWidget {
  // TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Your Tasks',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: TaskList(),
    );
  }

  // class Food extends State<DetailScreen> with SingleTickerProviderStateMixin{

  // }

}

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final TextStyle _textStyle =
      TextStyle(fontFamily: 'Rubik', fontSize: 16.0, color: Colors.grey[800]);

  IconData callMax = Icons.crop_square;
  IconData piano = Icons.crop_square;
  IconData spain = Icons.crop_square;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: SingleChildScrollView(
        child: Column(
          // padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.event_note,
                      size: 35.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 30.0, top: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('All',
                            style: _textStyle.copyWith(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 10.0),
                        Text('23 tasks',
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange[100].withOpacity(0.3),
                          offset: Offset(0.0, -10.0),
                          blurRadius: 8.0)
                    ]),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Late',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Call Max',
                            style: _textStyle.copyWith(
                                fontSize: 23.0, fontWeight: FontWeight.bold),
                          )),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: IconButton(
                              icon: Icon(
                                callMax,
                                color: Color(0xFF545D68),
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  callMax = Icons.done;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text('20:15 - 19 April',
                                  style: TextStyle(
                                      color: Colors.red[300], fontSize: 20))),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Practice Piano',
                            style: _textStyle.copyWith(
                                fontSize: 23.0, fontWeight: FontWeight.bold),
                          )),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: IconButton(
                              icon: Icon(
                                piano,
                                color: Color(0xFF545D68),
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  piano = Icons.done;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text('16:00',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 20))),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Learn Spanish',
                            style: _textStyle.copyWith(
                                fontSize: 23.0, fontWeight: FontWeight.bold),
                          )),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: IconButton(
                              icon: Icon(
                                spain,
                                color: Color(0xFF545D68),
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  spain = Icons.done;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text('17:00',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 20))),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Done',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Finalize presentation',
                            style: _textStyle.copyWith(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[200],
                                decoration: TextDecoration.lineThrough),
                          )),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: IconButton(
                              icon: Icon(
                                Icons.done,
                                color: Colors.blue[300],
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Text('12:00 - 13:00',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 20))),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  List<String> image = [
    "assets/images/bread.jpg",
    "assets/images/drink.png",
    "assets/images/stuff.jpg"
  ];

  List<String> title = ["food", "drink", "stuff"];
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Container(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MenuOption(
                    title: title[0],
                    image: image[0],
                  ),
                  MenuOption(
                    title: title[1],
                    image: image[1],
                  ),
                  MenuOption(
                    title: title[2],
                    image: image[2],
                  )
                ],
              ),
            )));
  }
}

class MenuOption extends StatefulWidget {
  final String title, image;
  MenuOption({this.title, this.image});
  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  final TextStyle _textStyle =
      TextStyle(fontFamily: 'Rubik', fontSize: 16.0, color: Colors.grey[800]);

  void doSomething() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: Stack(
          children: <Widget>[
            Container(
              width: 160.0,
              height: 180.0,
              child: Image.asset(widget.image, fit: BoxFit.cover),
            ),
            Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                  child: Text(widget.title,
                      style: _textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      )),
                )))
          ],
        ),
      ),
    );
  }
}

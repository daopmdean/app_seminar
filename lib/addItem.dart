import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AddItemScreen extends StatefulWidget {
  @override
  _AddItemScreenState createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  // This widget is the root of your application.
  final _formKey = GlobalKey<FormState>();
  String _dateTime = "Date Time";
  String _time = "Time";
  final List<String> items = <String>['Study', 'Game', 'Work'];
  String _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'New task',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 20),
                child: Text(
                  'What are you planning?',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 250.0,
                minHeight: 250.0,
              ),
              padding: EdgeInsets.only(left: 30, right: 30),
              child: new TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 26),
              ),
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  DatePicker.showDateTimePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _dateTime =
                        '${date.year}/${date.month}/${date.day} - ${date.hour} : ${date.minute}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.date_range,
                              size: 18.0,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                " $_dateTime",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text("Add your note"),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Enter a your note'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        child: Text("Submit"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.note,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Add note",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, bottom: 5),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.dehaze,
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Category",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      DropdownButton<String>(
                        hint: Text('Choose'),
                        value: _selectedItem,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        onChanged: (String newValue) {
                          setState(() {
                            _selectedItem = newValue;
                          });
                        },
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            child: Text('$item'),
                            value: item,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) => Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.width / 7,
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => _showToast(context),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddItemScreen(),
    );
  }
}

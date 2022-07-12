import 'dart:ffi';

import 'package:flutter/material.dart';
import 'content_detail.dart';
import 'content_data_model.dart';
import 'package:provider/provider.dart';

//TODO: Sort out the layout of the list menu with title and subtitle on LHS ...which is in a card. I want to have something in a simple list without the cards!!!
//TODO: Put in progress icons which toggle red, amber and red based on understanding
//TODO: Add in firebase back end - storing the information and data? How best to do it??
//TODO: Summarise the aggregate of these toggles in the drawer

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
          theme: ThemeData (
        primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(),
    debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super (key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<ContentDataModel> contentData = [
    ContentDataModel('title 1', 'subtitle 1', 'description 1'),
    ContentDataModel('title 2', 'subtitle 2', 'description 2'),
    ContentDataModel('title 3', 'subtitle 3', 'description 3'),
    ContentDataModel('title 4', 'subtitle 4', 'description 4'),
    ContentDataModel('title 5', 'subtitle 5', 'description 5'),
    ContentDataModel('title 6', 'subtitle 6', 'description 6'),
    ContentDataModel('title 7', 'subtitle 7', 'description 7'),
    ContentDataModel('title 8', 'subtitle 8', 'description 8'),
    ContentDataModel('title 9', 'subtitle 9', 'description 9'),
    ContentDataModel('title 10', 'subtitle 10', 'description 10'),
    ContentDataModel('title 11', 'subtitle 11', 'description 11'),
    ContentDataModel('title 12', 'subtitle 12', 'description 12'),
    ContentDataModel('title 13', 'subtitle 13', 'description 13'),
    ContentDataModel('title 14', 'subtitle 14', 'description 14'),
    ContentDataModel('title 15', 'subtitle 15', 'description 15'),
    ContentDataModel('title 16', 'subtitle 16', 'description 16'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder (
          builder: (BuildContext context) {
               return IconButton(
               icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                     );} //need to specify a drawer!!
          ),
          title: const Text('overall title for the content')),
      drawer: const Drawer (
        child: Text('Header'),
      ),

      body: ListView.builder(
          itemCount: contentData.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
            child:ListTile(
            title: Text(contentData[index].title,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                   )
            ),
            subtitle: Text(contentData[index].subtitle),
            trailing: Wrap(
              children: const <Widget>[
                MyStatefulWidget(),
              ],
            ),
                onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContentDetail(contentDataModel: contentData[index],)));
    }
    ));
    }
    ),
    );
  }
}




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Color> colors = <Color>[Colors.red,Colors.amber, Colors.green];

  Color _iconColor = Colors.red;
  int colorIndex= 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.check),
          color: _iconColor,
          tooltip: 'set learning rating',
          onPressed: () {
            setState(() {
              switch(colorIndex) {
                case 0: {_iconColor = colors.elementAt(1); }
                colorIndex = 1;
                break;

                case 1: {_iconColor = colors.elementAt(2); }
                colorIndex = 2;
                break;

                case 2: {_iconColor = colors.elementAt(0); }
                colorIndex = 0;
                break;
              }

            });
          },
        ),
      ],
    );
  }
}


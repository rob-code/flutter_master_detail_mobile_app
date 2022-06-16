import 'package:flutter/material.dart';
import 'Content_Detail.dart';
import 'Content_Data_Model.dart';

void main() {
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {

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
          itemBuilder: (context, index) {
            return Card(
            child:ListTile(
            title: Text(contentData[index].subtitle),
    leading: SizedBox(
    width: 100,
    height: 50,
    child: Text(contentData[index].title),
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


/*



class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Long list';

   for (var i = 0; i < menuitems.length; i++) {
      MenuItem value = menuitems[i];
      print(value.title + " " + value.subtitle);
      }

      return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              }
          ),
        ),
      );
    }
  }




/*  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Lets learn some physics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
*/
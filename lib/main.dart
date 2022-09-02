import 'package:flutter/material.dart';
import 'info.dart';

//TODO: Sort out the layout of the list menu with title and subtitle on LHS ...which is in a card. I want to have something in a simple list without the cards!!!
//TODO: Put in progress icons which toggle red, amber and red based on understanding
//TODO: store state of the icon buttons
//TODO: Add in firebase back end - store the information and data? How best to do it??
//TODO: Summarise the aggregate of these toggles in the drawer
//TODO: rename the project

//read the colorIndex values from default array if local storage does not exist
//if local storage does exist, get local storage array and then read values from that.

void main() {
  runApp(const MyApp()); //some comment
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instructional App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Instructional App Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          title: Text(widget.title)),
      drawer: const Drawer(child: DrawerContent()),
      body: ListView.builder(
          itemCount: samples.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                child: ListTile(
                    title: Text(samples[index].title,
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(samples[index].subtitle),
                    trailing: Wrap(
                      children: const <Widget>[ListIconWidget()],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ContentDetail(
                                sample: samples[index],
                              )));
                    }));
          }),
    );
  }
}

class ListIconWidget extends StatefulWidget {
  const ListIconWidget({Key? key}) : super(key: key);

  @override
  State<ListIconWidget> createState() => _ListIconWidgetState();
}

class _ListIconWidgetState extends State<ListIconWidget> {
  Icon _iconType = const Icon(Icons.circle_outlined);
  Color _iconColor = Colors.grey;
  int iconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: _iconType,
          color: _iconColor,
          tooltip: 'set learning rating',
          onPressed: () {
            setState(() {
              switch (iconIndex) {
                case 0:
                  {
                    _iconColor = ListIconColor.colors.elementAt(0);
                    _iconType = ListIcon.icons.elementAt(0);
                    iconIndex = 1;
                  }
                  break;

                case 1:
                  {
                    _iconColor = ListIconColor.colors.elementAt(1);
                    _iconType = ListIcon.icons.elementAt(1);
                    iconIndex = 2;
                  }
                  break;

                case 2:
                  {
                    _iconColor = ListIconColor.colors.elementAt(2);
                    _iconType = ListIcon.icons.elementAt(2);
                    iconIndex = 3;
                  }
                  break;

                case 3:
                  {
                    _iconColor = ListIconColor.colors.elementAt(3);
                    _iconType = ListIcon.icons.elementAt(3);
                    iconIndex = 0;
                  }
                  break;
              }

              var currentIconColor = _iconColor;
              var currentIconType = _iconType;

              debugPrint(currentIconColor.toString());
              debugPrint(currentIconType.toString());
            });
          },
        ),
      ],
    );
  }
}

class ContentDetail extends StatelessWidget {
  const ContentDetail({Key? key, required this.sample}) : super(key: key);

  final AppContent sample;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sample.title),
      ),
      body: Column(
        children: [Text(sample.description)],
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("the title of the drawer"),
          Text("some of the body description of the drawer")
        ],
      ),
    );
  }
}

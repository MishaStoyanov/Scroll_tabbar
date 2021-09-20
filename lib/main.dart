import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S M T H',
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('S M T H'),
            bottom: createTabBar(),
          ),
          body: TabBarView(children: <Widget>[
            SingleChildScrollView(
              child: Text(
                you,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.blue[800]),
              ),
            ),
            Center(
              child: Text(friends),
            ),
            Center(
              child: Text(groups),
            ),
            SingleChildScrollView(
                child: Column(children: <Widget>[
              Text(
                pokemon,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.red[800]),
              ),
              Image.asset('assets/images/pokemon.jpg'),
            ])),
            Center(
              child: Text(devs),
            )
          ]),
        ));
  }

  TabBar createTabBar() {
    return TabBar(
      tabs: [
        Row(children: [Icon(Icons.person), SizedBox(width: 5), Text('You')]),
        Row(children: [
          Icon(Icons.people),
          SizedBox(width: 5),
          Text('Friends')
        ]),
        Row(children: [Icon(Icons.groups), SizedBox(width: 5), Text('Groups')]),
        Row(children: [
          Icon(Icons.catching_pokemon),
          SizedBox(width: 5),
          Text('Pokemons')
        ]),
        Row(children: [
          Icon(Icons.developer_board),
          SizedBox(width: 5),
          Text('Devs')
        ]),
      ],
      isScrollable: true,
    );
  }
}

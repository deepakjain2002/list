import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Online City Hypermarket',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Online City Hyper Market'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            indicatorWeight: 5.0,
            tabs: <Widget>[
          Tab(text: 'Current Orders', icon: Icon(Icons.shopping_cart)),
            Tab(text: 'Completed Orders', icon: Icon(Icons.check_circle),),
          ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[

         _buildListViewWithName(),
            _buildListViewWithNames(),
          ],
        )
      ),
    );
  }

 ListView  _buildListViewWithName() {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index) => ListTile(
          title: Card(elevation: 5.0,
            child: new Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  Text('Order No. 228',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(' Cheese      Qty-2     Price-100'),
                  Text('Olive          Qty-4     Price-50', ),
                  Text('             Total Amount-400', style: TextStyle(fontStyle: FontStyle.italic),),
                ],
              ),
            ),
          ),
    ),
    );
 }
  ListView  _buildListViewWithNames() {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index) => ListTile(
          title: Card(elevation: 5.0,
            child: new Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  Text('Order No. 440',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(' Maggi      Qty-2     Price-100'),
                  Text('Biscuits          Qty-4     Price-50', ),
                  Text('             Total Amount-400', style: TextStyle(fontStyle: FontStyle.italic),),
                ],
              ),
            ),
          ),
    ));
  }

}

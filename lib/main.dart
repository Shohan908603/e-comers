import "package:flutter/material.dart";
import "package:carousel_pro/carousel_pro.dart";
import "package:ecommerce/Components/HorizontalListView.dart";

void main()=> runApp(HomePage());
class HomePage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  Widget image_carousel = Container(
    height:200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images:[
        AssetImage("images/p1.jpg"),
        AssetImage("images/p2.jpg"),
        AssetImage("images/p4.jpg"),
        AssetImage("images/p3.jpg"),
        AssetImage("images/p4.jpg"),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      dotSpacing: 55.0,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.yellow,
    )
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text("AmarShop"),
            actions:<Widget> [
              new IconButton(onPressed: null, icon: Icon(Icons.search, color: Colors.white,))
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                    accountName: Text("Emon"),
                    accountEmail: Text("murad@chakor.com"),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.cyan,
                      child: Icon(Icons.person, color: Colors.white,),
                    ),
                  ),
                ),
                InkWell(
                  onTap:() {},
                  child: ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                  ),
                ),
                InkWell(
                  onTap:() {},
                  child: ListTile(
                    title: Text("My Account"),
                    leading: Icon(Icons.person),
                  ),
                ),
                InkWell(
                  onTap:() {},
                  child: ListTile(
                    title: Text("Help"),
                    leading: Icon(Icons.help),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap:() {},
                  child: ListTile(
                    title: Text("Setting"),
                    leading: Icon(Icons.settings),
                  ),
                ),
                InkWell(
                  onTap:() {},
                  child: ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.dashboard),
                  ),
                )
              ],
            ),
          ),

          body: new ListView(
            children: <Widget>[
              image_carousel,

              new Padding(
                  padding: EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Categories")
                ),
              ),


            HorizontalListView()

            ],
          ),
        )
    );
  }
}


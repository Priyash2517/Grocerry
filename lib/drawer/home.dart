import 'package:flutter/material.dart';
import 'package:neemuch_mandi/drawer/support.dart';
import 'package:neemuch_mandi/drawer/latestorder.dart';
import 'package:neemuch_mandi/drawer/myorder.dart';
import 'package:neemuch_mandi/drawer/profile.dart';
import 'package:neemuch_mandi/category/EnglishVegetables.dart';
void main() {
  runApp(MaterialApp(
    title: 'Neemuch sabji mandi',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    routes: <String,WidgetBuilder>{
      '/a': (BuildContext context) => support("Support"),
      "/d": (BuildContext context)=> new latestoffer("Latest Offer"),
      myorder.tag: (context) => myorder(),
      "/f": (BuildContext context)=> new profile("Profile"),
      "/c": (BuildContext context)=> new EnglishVegetables(),
    },
    ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NSM'),
        backgroundColor: Colors.green,

        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              color:Colors.green,
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Image.asset('images/sabji.jpeg',width: 270.0,height: 135.0),
                    ),
                  ],
                ),
              )),
            CustomListTitle(Icons.home,'Home',()=>Navigator.of(context).pushNamed("/b")),
            CustomListTitle(Icons.local_offer,'Latest Offer',()=>Navigator.of(context).pushNamed("/d")),
            CustomListTitle(Icons.add_shopping_cart,'My Order',()=>Navigator.pushNamed(context, myorder.tag)),
            CustomListTitle(Icons.person,'Profile',()=>Navigator.of(context).pushNamed("/f")),
            CustomListTitle(Icons.supervisor_account,'Support',()=>Navigator.pushNamed(context, '/a')),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Welcome To Neemuch Sabji Mandi',style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.4),),
            subtitle: Text('fresh vegetables and fruits to your door at your convenience',style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.2),),
          ),
          CustomListView('English Vegetables',()=>Navigator.of(context).pushNamed("/c")),
          CustomListView('Fruits',()=>{}),
          CustomListView('Vegetables',()=>{}),
          CustomListView('Combo Offer',()=>{}),
          CustomListView('Gift Hampers',()=>{}),
          CustomListView('Organic Vegetables',()=>{}),
        ],
      ),
    );
  }
}




class CustomListTitle extends StatelessWidget {
  
  IconData icon;
  String text;
  Function onTap;
  
  CustomListTitle(this.icon,this.text,this.onTap);
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap:onTap,          
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(
                        fontSize: 16.0
                      ),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomListView extends StatelessWidget {
  
  ////ImageIcon imageIcon;
  String text;
  Function onTap;
  
  CustomListView(this.text,this.onTap);
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400),top: BorderSide(color: Colors.grey.shade400),left: BorderSide(color: Colors.grey.shade600),right: BorderSide(color: Colors.grey.shade600))
        ),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: onTap,
          child: Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset('images/english.jpeg', width:100,height:170),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(
                        fontSize: 20.0
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
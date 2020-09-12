import 'package:events_flutter_app/Model/eventCard.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>  with SingleTickerProviderStateMixin {
  var control;
  void initState() {
    // TODO: implement initState
    super.initState();
    control = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    control.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Events',style: TextStyle(color: Colors.black54),),
        actions: [
          IconButton(
            icon: const Icon(Icons.search,color: Colors.black54,),
            tooltip: 'Search',
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.add_alert,color: Colors.black54,),
            tooltip: 'Search',
            onPressed: (){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TabBar(
                  controller: control,
                  indicatorColor: Colors.red,
                  isScrollable:true,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Music',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Sport',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'It',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Eduction',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Other',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 260,
                //color: Colors.red[200],
                child: TabBarView(
                  controller: control,
                  children: <Widget>[
                    Container(
                      height: 260,
                      child: ListEventsCard('all'),
                    ),
                    Container(
                      height: 260,
                      child: ListEventsCard('music'),
                    ),
                    Container(
                      height: 260,
                      child: ListEventsCard('it'),
                    ),
                    Container(
                      height: 260,
                      child: ListEventsCard('sport'),
                    ),
                    Container(
                      height: 260,
                      child: ListEventsCard('education'),
                    ),
                    Container(
                      height: 260,
                      child: ListEventsCard('other'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today Events',style: TextStyle(color: Colors.black54,fontSize: 20),),
                  IconButton(
                    icon: Icon(Icons.arrow_forward,color: Colors.black54),
                    onPressed: (){},
                  ),
                ],
              ),
              Container(
                height: 260,
                child: ListEventsCardFill('today'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('This Month Events',style: TextStyle(color: Colors.black54,fontSize: 20),),
                  IconButton(
                    icon: Icon(Icons.arrow_forward,color: Colors.black54),
                    onPressed: (){
                      setState(() {

                      });
                    },
                  ),
                ],
              ),
              Container(
                height: 260,
                child: ListEventsCardFill('month'),
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}

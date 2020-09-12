import 'package:events_flutter_app/Model/eventCategory.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailEvent extends StatefulWidget {
  Events event;
  DetailEvent(this.event);
  @override
  _DetailEventState createState() => _DetailEventState();
}

class _DetailEventState extends State<DetailEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event',style: TextStyle(color: Colors.black54),),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back),
            color: Colors.black54
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.event.image),
                    fit: BoxFit.cover,
                  ),
                ),
             ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text(widget.event.title,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                      ),
                      Divider(),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.calendarDay,color: Colors.black54,),
                          SizedBox(width: 5,),
                          Text(widget.event.dateEvent,style: TextStyle(color: Colors.black54,),),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.mapMarkerAlt,color: Colors.black54,),
                          SizedBox(width: 5,),
                          Text(widget.event.location,style: TextStyle(color: Colors.black54,),),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.hourglassStart,color: Colors.black54,),
                          SizedBox(width: 5,),
                          Text(widget.event.duration,style: TextStyle(color: Colors.black54,),),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About',style: TextStyle(fontSize: 20),),
                          Text(widget.event.description,style: TextStyle(color: Colors.black87,),),
                        ],
                      ),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.deepOrange,
                        child: Icon(
                          FontAwesomeIcons.rocketchat,
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.deepOrange,
                        child: Icon(
                          FontAwesomeIcons.shareAlt,
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      ),
                      // IconButton(
                      //   onPressed: (){},
                      //   icon: Icon(FontAwesomeIcons.comment),
                      // ),
                      // IconButton(
                      //   onPressed: (){},
                      //   icon: Icon(FontAwesomeIcons.shareAlt),
                      // ),
                    ],
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('Join', style: TextStyle(
                        color: Colors.deepOrange,)
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.deepOrange,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

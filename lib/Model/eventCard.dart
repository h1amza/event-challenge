import 'package:events_flutter_app/Screen/detailEvent.dart';
import 'package:flutter/material.dart';
import 'eventCategory.dart';

class EventsCard extends StatefulWidget {
  Events events;
  EventsCard(this.events);
  @override
  _EventsCardState createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:360,
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailEvent(widget.events),
            ),
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 8,bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 160,
                    child:Center(
                      child:  Image.asset(widget.events.image)
                    )
                ),
                Text(widget.events.dateEvent,style: TextStyle(color: Colors.amber,fontSize: 18),),
                Text(widget.events.title,style: TextStyle(fontSize: 18),),
                Text(widget.events.location,style: TextStyle(color: Colors.black54,fontSize: 16),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListEventsCard extends StatefulWidget {
  String category ;
  ListEventsCard(this.category);
  @override
  _ListEventsCardState createState() => _ListEventsCardState();
}

class _ListEventsCardState extends State<ListEventsCard> {
  @override
  Widget build(BuildContext context) {
    List<Events> listEvent = List<Events>();
    if(widget.category=='it'){
      listEvent.add(itEvent);
    }
    else if(widget.category=='music'){
      listEvent.add(musicEvent1);
      listEvent.add(musicEvent2);
    }
    else if(widget.category=='sport'){
      listEvent.add(sportEvent1);
      listEvent.add(sportEvent2);
    }
    else if(widget.category=='education'){
      listEvent.add(educationEvent);
    }
    else if(widget.category=='other'){
      listEvent.add(otherEvent);
    }
    else{
      listEvent.add(musicEvent1);
      listEvent.add(musicEvent2);
      listEvent.add(sportEvent1);
      listEvent.add(sportEvent2);
      listEvent.add(itEvent);
      listEvent.add(educationEvent);
      listEvent.add(otherEvent);
    }
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listEvent.length,
        itemBuilder:(context,index){
          return EventsCard(listEvent[index]);
        },
      )
    );
  }
}
class ListEventsCardFill extends StatefulWidget {
  String date;
  ListEventsCardFill(this.date);
  @override
  _ListEventsCardFillState createState() => _ListEventsCardFillState();
}

class _ListEventsCardFillState extends State<ListEventsCardFill> {
  @override
  Widget build(BuildContext context) {
    List<Events> listEvent = List<Events>();
    listEvent.add(musicEvent1);
    listEvent.add(musicEvent2);
    listEvent.add(sportEvent1);
    listEvent.add(sportEvent2);
    listEvent.add(itEvent);
    listEvent.add(educationEvent);
    listEvent.add(otherEvent);

    List<Events> listEventFill = List<Events>();
    if(widget.date=='today'){
      for(int i=0;i<=listEvent.length-1;i++){
        DateTime d = DateTime.parse('${listEvent[i].dateEvent}');
        if(d.day==DateTime.now().day&&d.year==DateTime.now().year&&d.month==DateTime.now().month){
          listEventFill.add(listEvent[i]);
        }
      }
    }
    else if(widget.date=='month'){
      for(int i=0;i<=listEvent.length-1;i++){
        DateTime d = DateTime.parse('${listEvent[i].dateEvent}');
        if(d.year==DateTime.now().year&&d.month==DateTime.now().month){
          listEventFill.add(listEvent[i]);
        }
      }
    }
    return Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listEventFill.length,
          itemBuilder:(context,index){
            return EventsCard(listEventFill[index]);
          },
        )
    );
  }
}


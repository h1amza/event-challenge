class Events{
  final String idEvent, image, title, location, description, dateEvent, duration,category;

  Events({
    this.idEvent,
    this.image,
    this.title,
    this.description,
    this.location,
    this.dateEvent,
    this.duration,
    this.category
  });

}

//---------------------------------------------------------------------------------------
final itEvent = Events(
  idEvent: '1',
  image: 'assets/images/2.jpg',
  title: 'IT Event',
  description: 'xxxxxxxxxxxxxxxxxxxx',
  location: 'CasaBlanca',
  dateEvent: '2020-09-10',
  duration: '3h',
  category: 'it',
);

final educationEvent = Events(
  idEvent: '2',
  image: 'assets/images/3.jpg',
  title: 'Eduction Event',
  description: 'xxxxxxxxxxxxxxxxxxxxx',
  location: 'fes',
  dateEvent: '2020-09-10',
  duration: '3h',
  category: 'education',
);

final musicEvent1 = Events(
  idEvent: '3',
  image: 'assets/images/4.png',
  title: 'Music Event 1',
  description: 'xxxxxxxxxxxxxxxxxxxxxxxx',
  location: 'Rabat',
  dateEvent: '2020-09-15',
  duration: '2h',
  category: 'music',
);

final musicEvent2 = Events(
  idEvent: '4',
  image: 'assets/images/5.jpg',
  title: 'Music Event 2',
  description: 'xxxxxxxxxxxxxxxxxxxxxxxx',
  location: 'Sale',
  dateEvent: '2020-09-11',
  duration: '1h',
  category: 'music',
);

final sportEvent1 = Events(
  idEvent: '5',
  image: 'assets/images/6.png',
  title: 'Sport Event 1',
  description: 'xxxxxxxxxxxxxxxxxxx',
  location: 'kenitra',
  dateEvent: '2020-09-13',
  duration: '2h',
  category: 'sport',
);

final sportEvent2 = Events(
  idEvent: '6',
  image: 'assets/images/7.png',
  title: 'Sport Event 2',
  description: 'xxxxxxxxxxxxxxxx',
  location: 'fes',
  dateEvent: '2020-09-12',
  duration: '3h',
  category: 'sport',
);

final otherEvent = Events(
  idEvent: '7',
  image: 'assets/images/8.jpg',
  title: 'X Event',
  description: 'xxxxxxxxxxxxxxxxxxxxxxxxxx',
  location: 'fes',
  dateEvent: '2020-10-10',
  duration: '3h',
  category: 'other',
);







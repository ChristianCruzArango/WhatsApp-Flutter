class ChatContact{
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatContact({this.name,this.message,this.time,this.imageUrl});
}

List<ChatContact> messageData=[

  new ChatContact(
      name: "Spiderman",
      message: "Spiderman Hola",
      time: "18:30",
      imageUrl: "https://cdn.morphsuits.co.uk/media/catalog/product/cache/9/image/930x/9df78eab33525d08d6e5fb8d27136e95/m/l/mlsph-1.1503501853.jpg"
  ),
  new ChatContact(
      name: "Iron Man",
      message: "Iroman Hola",
      time: "10:50",
      imageUrl: "https://vignette.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20180410032118&path-prefix=es"
  ),
  new ChatContact(
      name: "Capitan America",
      message: "Capitan America Hola",
      time: "11:40",
      imageUrl: "https://www.eldesvandejabba.com/2324-large_default/figura-capitan-america-civil-war-movie-masterpiece-16-captain-america-31-cm.jpg"
  )
];
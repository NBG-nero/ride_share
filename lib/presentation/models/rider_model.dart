class Rider {
  String? imgUrl;
  String? name;
  String? time;
  String? destination;
  Rider({
    this.imgUrl,
    this.name,
    this.time,
    this.destination,
  });
}
//ui model
List<Rider> riders = [
  Rider(
    imgUrl: "assets/images/Avatar.png",
    name: "Sara Jacob",
    time: "8:12PM",
    destination: "Logan Avenue",
  ),
  Rider(
    imgUrl: "assets/images/Avatar.png",
    name: "Adama Grease",
    time: "8:12PM",
    destination: "Logan Avenue",
  ),
];

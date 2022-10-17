class CatalogModel {
   static final items = [
  Item(
    id: 1,
    name: "Iphone 12 pro max",
    desc: "Apple Iphone 12th generation",
    price: 999,
    color: "#33505a",
    image:
        "https://th.bing.com/th/id/OIP._Vh8pz9VGdSl8kp0Hi_HYQHaHa?pid=ImgDet&rs=1",
  )
];
}



class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}



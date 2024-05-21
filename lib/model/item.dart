class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item(
      {required this.imgPath,
      required this.name,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(name: "product3", price: 250, imgPath: "assets/img/m2.webp"),
  Item(name: "product4", price: 560, imgPath: "assets/img/m3.webp"),
  Item(name: "product6", price: 189, imgPath: "assets/img/m5.webp"),
  Item(name: "product7", price: 200, imgPath: "assets/img/m6.webp"),
  Item(name: "product8", price: 750, imgPath: "assets/img/m7.webp"),
  Item(name: "product4", price: 1550, imgPath: "assets/img/m9.webp"),
  Item(name: "product5", price: 840, imgPath: "assets/img/m10.jpg"),
];

class Brand {
  String picPath;

  Brand({required this.picPath});
}

final List<Brand> brands = [
  Brand(picPath: "assets/brand/apple.jpg"),
  Brand(picPath: "assets/brand/huawei.jpg"),
  Brand(picPath: "assets/brand/oppo.jpg"),
  Brand(picPath: "assets/brand/samsung.jpg"),
  Brand(picPath: "assets/brand/sony.jpg"),
  Brand(picPath: "assets/brand/vivo.jpg"),
];

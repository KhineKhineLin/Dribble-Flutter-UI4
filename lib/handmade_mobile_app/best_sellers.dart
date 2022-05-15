class Item {
  final String? img;
  final String? title;
  final int? price;
  final bool freeDelivery;
  Item({this.img, this.title, this.price,required this.freeDelivery});
}

List<Item> bestSellers = [
  Item(img: 'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg', title: 'Leaves Tiara', price: 49, freeDelivery: false),
  Item(img: 'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg', title: 'Cat Ears Headband', price: 34, freeDelivery: true),
  Item(img: 'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664_960_720.jpg', title: 'Colibri Headpeace', price: 34, freeDelivery: false),
  Item(img: 'https://cdn.pixabay.com/photo/2016/05/10/02/09/blue-1382940_960_720.jpg', title: 'Bird Brooch', price: 999, freeDelivery: false),
  Item(img: 'https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569_960_720.jpg', title: 'Chaplet Headband', price: 48, freeDelivery: true),
  Item(img: 'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg', title: 'Circle Headband', price: 47, freeDelivery: false),
  Item(img: 'https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg', title: 'Crown Headband', price: 50, freeDelivery: true),
  Item(img: 'https://cdn.pixabay.com/photo/2016/06/11/12/13/pink-hair-1450045_960_720.jpg', title: 'Diadem Headband', price: 51, freeDelivery: false)
];

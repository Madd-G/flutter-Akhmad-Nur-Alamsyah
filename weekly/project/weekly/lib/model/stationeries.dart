class Stationary {
  String imageUrl;
  String name;
  int price;

  Stationary({required this.imageUrl, required this.name, required this.price});
}

List<Stationary> stationeries = [
  Stationary(imageUrl: 'assets/images/pencil.png', name: 'Pencil', price: 2500),
  Stationary(
      imageUrl: 'assets/images/eraser.jpeg', name: 'Eraser', price: 3000),
  Stationary(imageUrl: 'assets/images/pen.png', name: 'Pen', price: 3500),
  Stationary(
      imageUrl: 'assets/images/stapler.jpeg', name: 'Stapler', price: 5500),
  Stationary(
      imageUrl: 'assets/images/pencil_sharpener.jpeg',
      name: 'Pencil Sharpener',
      price: 4500),
  Stationary(
      imageUrl: 'assets/images/highlighter_pen.jpeg',
      name: 'Highlighter Pen',
      price: 5500),
];

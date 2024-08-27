class FoodModel {
  String image;
  String title;
  String description;
  String price;

  FoodModel(this.image, this.title, this.description, this.price);
}

List<FoodModel> dataFood = [
  FoodModel("assets/image/burger_detail.png", "Beef Burger", "Beef with cheese",
      "19.00"),
  FoodModel("assets/image/1.png", "Beef Burger", "Beef with cheese", "19.00"),
  FoodModel("assets/image/2.png", "Beef Burger", "Beef with cheese", "19.00"),
  FoodModel("assets/image/3.png", "Beef Burger", "Beef with cheese", "19.00")
];

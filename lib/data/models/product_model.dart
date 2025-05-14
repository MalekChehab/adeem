class Product {
  final String name;
  final String price;
  final String description;
  final String imagePath;
  final List<String> ingredients;
  final Map<String, String> nutritionFactsPerPiece;
  final Map<String, String> nutritionFactsTotal;
  final String servingName;
  final double servingWeight;
  final double totalWeight;


  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.ingredients,
    required this.nutritionFactsPerPiece,
    required this.nutritionFactsTotal,
    required this.servingName,
    required this.servingWeight,
    required this.totalWeight,
  });
}

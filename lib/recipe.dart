class Recipe {
  String name;
  String imageUrl;
  String ingredientsUrl;
  String instructionsUrl;
  // add servings and ingredient

  Recipe(
    this.name,
    this.imageUrl,
    this.ingredientsUrl,
    this.instructionsUrl,
  );
  static List<Recipe> turkey_options = [
    Recipe(
      'Turkey Sheperd\'s Pie',
      'shep.jpg',
      'shepIg.jpg',
      'shepIn.jpg',
    ),
    Recipe(
      'Turkey Meatloaf',
      'loaf.jpg',
      'loafIg.jpg',
      'loafIn.jpg',
    ),
    Recipe('Turkey Burger', 'burg.jpg', 'burgIg.jpg', 'burgIn.jpg'),
  ];
  static List<Recipe> dessert_options = [
    Recipe(
      'Mini Pumpkin Cheesecakes',
      'cake.jpg',
      'cakeIg.jpg',
      'cakeIn.jpg',
    ),
    Recipe(
      'Apple Pie Cookies',
      'cook.jpg',
      'cookIg.jpg',
      'cookIn.jpg',
    ),
    Recipe('Pumpkin Pie', 'pie.jpg', 'pieIg.jpg', 'pieIn.jpg'),
  ];

  static List<Recipe> drink_options = [
    Recipe(
      'Apple Cider Punch',
      'apple.jpg',
      'appleIg.jpg',
      'appleIn.jpg',
    ),
    Recipe(
      'Cranberry-Pineapple Cooler',
      'cpc.jpg',
      'cpcIg.jpg',
      'cpcIn.jpg',
    ),
    Recipe(
      'Mulled Cranberry Punch',
      'mcp.jpg',
      'mcpIg.jpg',
      'mcpIn.jpg',
    ),
  ];
}

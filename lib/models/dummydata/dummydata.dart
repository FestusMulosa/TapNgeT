import 'package:tapnget/models/categoryModel.dart';
import 'package:tapnget/models/storeModel.dart';
import 'package:tapnget/models/subCategoryModel.dart';

final dummyCategoryData = [
  CategoryModel(categoryName: 'Men', imageUrl: 'assets/images/man.jpg'),
  CategoryModel(categoryName: 'Women', imageUrl: 'assets/images/woman.jpg'),
  CategoryModel(categoryName: 'Kids', imageUrl: 'assets/images/man.jpg'),
  CategoryModel(
      categoryName: 'Electronics', imageUrl: 'assets/images/computer.jpg'),
  CategoryModel(
      categoryName: 'Home & Furniture',
      imageUrl: 'assets/images/furniture.png'),
  CategoryModel(categoryName: 'Books', imageUrl: 'assets/images/books.jpg'),
  CategoryModel(
      categoryName: 'Beauty & Personal', imageUrl: 'assets/images/makeup.jpg'),
  CategoryModel(
      categoryName: 'Sports & Outdoors',
      imageUrl: 'assets/images/electronics.png'),
  CategoryModel(
      categoryName: 'Health & Wellness', imageUrl: 'assets/images/fitness.jpg'),
  CategoryModel(
      categoryName: 'Toys & Games', imageUrl: 'assets/images/toys.jpg'),
];

final dummySubCategoryDataForMenAndWomen = [
  SubCategoryModel(name: 'Clothing', image: 'men_clothing_url'),
  SubCategoryModel(name: 'Shoes', image: 'men_shoes_url'),
  SubCategoryModel(name: 'Accessories', image: 'men_accessories_url'),
  SubCategoryModel(name: 'Watches', image: 'men_watches_url'),
  SubCategoryModel(name: 'Bags', image: 'men_bags_url'),
];

final dummyElectronicsSubcategories = [
  SubCategoryModel(name: 'Smartphones', image: 'electronics_smartphones_url'),
  SubCategoryModel(name: 'Laptops', image: 'electronics_laptops_url'),
  SubCategoryModel(name: 'Tablets', image: 'electronics_tablets_url'),
  SubCategoryModel(name: 'Headphones', image: 'electronics_headphones_url'),
  SubCategoryModel(name: 'Cameras', image: 'electronics_cameras_url'),
  SubCategoryModel(name: 'Wearables', image: 'electronics_wearables_url'),
  SubCategoryModel(name: 'Speakers', image: 'electronics_speakers_url'),
  SubCategoryModel(name: 'Gaming', image: 'electronics_gaming_url'),
  SubCategoryModel(name: 'Accessories', image: 'electronics_accessories_url'),
  // Add more subcategories as needed
];

final furnitureSubcategories = [
  SubCategoryModel(name: 'Living Room', image: 'furniture_living_room_url'),
  SubCategoryModel(name: 'Bedroom', image: 'furniture_bedroom_url'),
  SubCategoryModel(name: 'Dining Room', image: 'furniture_dining_room_url'),
  SubCategoryModel(name: 'Office', image: 'furniture_office_url'),
  SubCategoryModel(name: 'Outdoor', image: 'furniture_outdoor_url'),
  SubCategoryModel(name: 'Kitchen', image: 'furniture_kitchen_url'),
  SubCategoryModel(name: 'Bathroom', image: 'furniture_bathroom_url'),
  SubCategoryModel(name: 'Kids', image: 'furniture_kids_url'),
  SubCategoryModel(name: 'Storage', image: 'furniture_storage_url'),
  SubCategoryModel(name: 'Decor', image: 'furniture_decor_url'),
  // Add more subcategories as needed
];

final booksSubcategories = [
  SubCategoryModel(name: 'Fiction', image: 'books_fiction_url'),
  SubCategoryModel(name: 'Non-Fiction', image: 'books_nonfiction_url'),
  SubCategoryModel(name: 'Mystery & Thriller', image: 'books_mystery_url'),
  SubCategoryModel(name: 'Science Fiction', image: 'books_scifi_url'),
  SubCategoryModel(name: 'Romance', image: 'books_romance_url'),
  SubCategoryModel(name: 'Biography', image: 'books_biography_url'),
  // Add more subcategories as needed
];

final personalCareSubcategories = [
  SubCategoryModel(name: 'Skincare', image: 'personal_care_skincare_url'),
  SubCategoryModel(name: 'Haircare', image: 'personal_care_haircare_url'),
  SubCategoryModel(name: 'Makeup', image: 'personal_care_makeup_url'),
  SubCategoryModel(name: 'Fragrances', image: 'personal_care_fragrances_url'),
  SubCategoryModel(
      name: 'Men\'s Grooming', image: 'personal_care_mens_grooming_url'),
  SubCategoryModel(name: 'Wellness', image: 'personal_care_wellness_url'),
  // Add more subcategories as needed
];

final sportsOutdoorsSubcategories = [
  SubCategoryModel(
      name: 'Fitness Equipment', image: 'sports_fitness_equipment_url'),
  SubCategoryModel(name: 'Apparel', image: 'sports_apparel_url'),
  SubCategoryModel(name: 'Outdoor Gear', image: 'sports_outdoor_gear_url'),
  SubCategoryModel(name: 'Team Sports', image: 'sports_team_sports_url'),
  SubCategoryModel(
      name: 'Camping & Hiking', image: 'sports_camping_hiking_url'),
  SubCategoryModel(name: 'Water Sports', image: 'sports_water_sports_url'),
  // Add more subcategories as needed
];

final healthWellnessSubcategories = [
  SubCategoryModel(
      name: 'Vitamins & Supplements', image: 'health_vitamins_supplements_url'),
  SubCategoryModel(
      name: 'Fitness & Exercise', image: 'health_fitness_exercise_url'),
  SubCategoryModel(name: 'Mental Health', image: 'health_mental_health_url'),
  SubCategoryModel(
      name: 'Diet & Nutrition', image: 'health_diet_nutrition_url'),
  SubCategoryModel(
      name: 'Alternative Medicine', image: 'health_alternative_medicine_url'),
  SubCategoryModel(name: 'Self-Care', image: 'health_self_care_url'),
  // Add more subcategories as needed
];

final toysGamesSubcategories = [
  SubCategoryModel(name: 'Action Figures', image: 'toys_action_figures_url'),
  SubCategoryModel(name: 'Board Games', image: 'toys_board_games_url'),
  SubCategoryModel(name: 'Puzzles', image: 'toys_puzzles_url'),
  SubCategoryModel(
      name: 'Educational Toys', image: 'toys_educational_toys_url'),
  SubCategoryModel(name: 'Outdoor Toys', image: 'toys_outdoor_toys_url'),
  SubCategoryModel(
      name: 'Dolls & Accessories', image: 'toys_dolls_accessories_url'),
  // Add more subcategories as needed
];

final dummyStores = [
  StoreModel(
      name: 'Brian Inovations',
      imageUrl: 'assets/images/light.jpg',
      location: 'location',
      rating: 4.5),
  StoreModel(
    name: 'Tech Hub',
    imageUrl: 'assets/images/computer.jpg',
    location: 'Location 2',
    rating: 4.2,
  ),
  StoreModel(
    name: 'Gadget World',
    imageUrl: 'assets/images/technology.jpg',
    location: 'Location 3',
    rating: 4.8,
  ),
  StoreModel(
    name: 'ElectroMart',
    imageUrl: 'assets/images/europe.jpg',
    location: 'Location 4',
    rating: 4.0,
  ),
  // Add more stores as needed
];

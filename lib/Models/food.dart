class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;

  List<Map<String, String>> ingredients;
  String about;
  bool highlight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.about, this.ingredients,
      {this.highlight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
        "assets/images/dish1.png",
        "No.1 in Sales",
        "Soup",
        "50 minutes",
        50,
        "325 Kcal",
        45,
        3,
        "Soup is a primarily liquid food",
        [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        highlight: true,
      ),
      Food(
        "assets/images/dish3.png",
        "Highly Recommended",
        "Soup",
        "50 minutes",
        50,
        "325 Kcal",
        45,
        3,
        "Soup is a primarily liquid food",
        [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
      )
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        "assets/images/dish2.png",
        "No.1 in Sales",
        "Soup",
        "50 minutes",
        50,
        "325 Kcal",
        45,
        3,
        "Soup is a primarily liquid food",
        [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        highlight: true,
      ),
      Food(
        "assets/images/dish4.png",
        "Highly Recommended",
        "Soup",
        "50 minutes",
        50,
        "325 Kcal",
        45,
        3,
        "Soup is a primarily liquid food",
        [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
      )
    ];
  }
}

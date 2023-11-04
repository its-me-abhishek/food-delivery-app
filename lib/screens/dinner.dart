import 'package:flutter/material.dart';
import 'package:food_app/screens/product.dart';

class Dinner extends StatelessWidget {
  const Dinner({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dinner"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/09/14/08/53/food-2745964_1280.jpg",
            "Butter Chicken",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/07/16/10/43/recipe-2507027_1280.jpg",
            "Tandoori Chicken",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/01/13/21/20/food-1979136_1280.jpg",
            "Paneer Tikka",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg",
            "Pizza",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/09/30/15/10/pasta-2804819_1280.jpg",
            "Pasta",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/08/08/08/51/pepper-2613023_1280.jpg",
            "Stuffed Bell Peppers",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2016/11/18/22/26/beef-1836698_1280.jpg",
            "Beef Stir-Fry",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2014/04/22/02/56/paella-329599_1280.jpg",
            "Seafood Paella",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2018/09/10/18/44/harvest-3660419_1280.jpg",
            "Grilled Fish",
          ),
          buildDinner(
            context,
            "https://cdn.pixabay.com/photo/2017/12/10/14/47/salad-3010844_1280.jpg",
            "Caesar Salad",
          ),
        ],
      ),
    );
  }
}

Widget buildDinner(BuildContext context, String imageUrl, String name) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Product(title: name, imageUrl: imageUrl),
        ),
      );
    },
    child: Card(
      elevation: 5,
      borderOnForeground: true,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
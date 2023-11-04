import 'package:flutter/material.dart';
import 'package:food_app/screens/product.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lunch"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2017/09/23/18/15/tandoori-egg-2771314_1280.jpg",
            "Tandoori Roti",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2017/10/29/00/25/chicken-tikka-2890166_1280.jpg",
            "Chicken Tikka Masala",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2017/08/27/18/59/vegetables-2682304_1280.jpg",
            "Vegetable Biryani",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2014/09/25/21/24/rice-462499_1280.jpg",
            "Dal Khichdi",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2015/07/14/18/00/nan-845334_1280.jpg",
            "Naan Bread",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2017/06/01/14/17/food-2363222_1280.jpg",
            "Palak Paneer",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2016/03/05/19/02/bread-1238279_1280.jpg",
            "Aloo Paratha",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2015/11/02/14/25/lunch-1011239_1280.jpg",
            "Matar Pulao",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2018/08/25/20/51/sandwich-3638388_1280.jpg",
            "Veg Grilled Sandwich",
          ),
          buildLunch(
            context,
            "https://cdn.pixabay.com/photo/2016/11/18/22/21/biryani-1836131_1280.jpg",
            "Hyderabadi Biryani",
          ),
        ],
      ),
    );
  }
}

Widget buildLunch(BuildContext context, String imageUrl, String name) {
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

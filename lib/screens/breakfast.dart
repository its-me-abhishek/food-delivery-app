import 'package:flutter/material.dart';
import 'package:food_app/screens/product.dart';

class Breakfast extends StatelessWidget {
  const Breakfast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breakfast"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2019/07/09/13/05/breakfast-4325789_1280.jpg",
            "Idli",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2016/11/23/18/26/breakfast-1852196_1280.jpg",
            "Dosa",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg",
            "Poha",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2016/11/22/18/52/breakfast-1850408_1280.jpg",
            "Upma",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg",
            "Paratha",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/09/30/10/29/pumpkin-2802364_1280.jpg",
            "Aloo Puri",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2015/05/31/10/53/cheese-sandwich-791819_1280.jpg",
            "Sandwich",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg",
            "Medu Vada",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/07/05/15/41/breakfast-2478915_1280.jpg",
            "Uttapam",
          ),
          buildBreakfast(
            context,
            "https://cdn.pixabay.com/photo/2017/05/02/16/51/breakfast-2276488_1280.jpg",
            "Puri Bhaji",
          ),
        ],
      ),
    );
  }
}

Widget buildBreakfast(BuildContext context, String imageUrl, String name) {
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

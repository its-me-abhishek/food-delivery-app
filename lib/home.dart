import 'package:flutter/material.dart';
import 'package:food_app/screens/breakfast.dart';
import 'package:food_app/screens/product.dart';
import 'package:food_app/screens/cart_page.dart';
import 'package:food_app/screens/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          "Food Delivery",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserPage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "WHAT'S ON YOUR MIND?",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildWOYM(context, "Pizza",
                    "https://img.freepik.com/free-photo/pizza-pizza-filled-with-tomatoes-salami-olives_140725-1200.jpg?w=740&t=st=1698649198~exp=1698649798~hmac=45922c6c760c2999e2cc480a733fe7ff458964e1efd4080bb61eab7b7089462a"),
                buildWOYM(context, "French Fries",
                    "https://img.freepik.com/free-photo/fresh-potatoes-fri-with-souce_144627-5503.jpg?w=996&t=st=1698649832~exp=1698650432~hmac=43d2ef1f587b1a677cc5ca479047e5253d7f647e1e09b38223bb4ccc745cd8ec"),
                buildWOYM(context, "Burger",
                    "https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?t=st=1698642855~exp=1698646455~hmac=d2ff8b0d0cd38e382c9bc164498747ed2ede0a6623730c5a4ace3924caceba53&w=360"),
                buildWOYM(context, "Spring Roll",
                    "https://img.freepik.com/free-photo/fresh-spring-rolls-with-pork-vegetables-served-with-sauce-generated-by-ai_188544-55919.jpg?t=st=1698649954~exp=1698653554~hmac=467f38faa31e8d6b421097deec7b32b2922100d444eb960cb77b4d6f8f9553de&w=1060"),
                buildWOYM(context, "Salad",
                    "https://img.freepik.com/free-photo/bowl-salad-with-spoon-table_1340-35184.jpg?t=st=1698650011~exp=1698653611~hmac=7bc6108a85090aea33cc4a8109e1889c5d7959a6df5ae88512f84d32a368b336&w=996"),
                buildWOYM(context, "Thali",
                    "https://img.freepik.com/free-photo/gourmet-bowl-with-healthy-rice-meat-vegetables-generated-by-ai_188544-14076.jpg?t=st=1698649453~exp=1698653053~hmac=6a0b58ad93d60a4afc97db7bc08181b64c5f6cdc642a72726432787d60896596&w=1060"),
                buildWOYM(context, "Biryani",
                    "https://img.freepik.com/free-photo/gourmet-chicken-biryani-with-steamed-basmati-rice-generated-by-ai_188544-13480.jpg?t=st=1698647428~exp=1698651028~hmac=305c5eb428cd656d759968c582b5dda014588274c2dc6eec22434f78010d2ac6&w=1060"),
                buildWOYM(context, "Pasta",
                    "https://img.freepik.com/free-photo/delicious-pasta-plate_23-2150690565.jpg?t=st=1698650363~exp=1698653963~hmac=d8cc1412043aa182d98e6fbc77f05dd5957dfdab7d21374954439a343e4578af&w=996"),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "CATEGORIES",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard(context, 'Breakfast',
                    'https://img.freepik.com/free-photo/aloo-paratha-gobi-paratha-also-known-as-potato-cauliflower-stuffed-flatbread-dish-originating-from-indian-subcontinent_466689-76172.jpg?w=996&t=st=1698584552~exp=1698585152~hmac=83685daabb5d213036b9fa97d1e622c5ca7cf124eceedd7de76c13eaaa2f449e'),
                SizedBox(width: 5),
                buildCard(context, 'Lunch',
                    'https://img.freepik.com/free-photo/fresh-gourmet-meal-beef-taco-salad-plate-generated-by-ai_188544-13382.jpg?w=1060&t=st=1698584662~exp=1698585262~hmac=c3ac0124d28cc35e38b1e6cdf9832994ade279dedb7aed3c5b6ae14073c79e0e'),
                SizedBox(width: 5),
                buildCard(context, 'Dinner',
                    'https://img.freepik.com/free-photo/banquet-table-with-snacks_144627-18361.jpg?w=996&t=st=1698584703~exp=1698585303~hmac=5af00820fdf91a77449973a0a2a289c309d13ef40be55e09ccf530d9d2f61b1f'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "POPULAR",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildPopularItem(
                    context,
                    'Hakka Noodles',
                    'Found in 20+ restaurants',
                    'https://img.freepik.com/free-photo/top-view-tasty-composition-noodles-table_23-2148803862.jpg?w=740&t=st=1699109886~exp=1699110486~hmac=fc93c2c52eb76d3839e6e805724feaea74560939f65a4742500c6461d48f1c2f'),
                buildPopularItem(
                    context,
                    'Cheese Chilli',
                    'Found in 15+ restaurants',
                    'https://img.freepik.com/free-photo/vertical-shot-traditional-indian-paneer-butter-masala-cheese-cottage-curry-black-surface_181624-32001.jpg?w=740&t=st=1699109986~exp=1699110586~hmac=0393e86fdca716ec0912735ef3456c7f44ccd8bcff8026be74e945515295c1b8'),
                buildPopularItem(context, 'Pasta', 'Found in 15+ restaurants',
                    'https://img.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19739.jpg?w=996&t=st=1699110017~exp=1699110617~hmac=d177a947ba5cc6c27ca0b696680f601237bd5bb9dcef5a4a3a7fab5a7fc6b15e'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "User",
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserPage()),
            );
          }
        },
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, String imageUrl) {
    return Card(
      elevation: 5,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Breakfast()));
        },
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 150,
                height: 159,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPopularItem(
    BuildContext context,
    String title,
    String subTitle,
    String imgUrl,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Product(title: title, imageUrl: imgUrl),
          ),
        );
      },
      child: Container(
        height: 250,
        width: 250,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgUrl,
                  width: 250,
                  height: 134,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   $title',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '    $subTitle',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWOYM(BuildContext context, String title, String imgUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Product(title: title, imageUrl: imgUrl)),
        );
      },
      child: Column(
        children: [
          ClipOval(
            child: Container(
              width: 70,
              height: 70,
              color: Colors.grey,
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

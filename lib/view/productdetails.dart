import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(),
        actions:  [
          Container( decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
            child: Icon(Icons.search)),
          SizedBox(width: 16),
          Container(
             decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
            child: Icon(Icons.share)),
          SizedBox(width: 16),
          Container(
             decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
            child: Icon(Icons.shopping_cart_outlined)),
          SizedBox(width: 16),
        ],
        backgroundColor: const Color(0xFFF3F9F0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Center(
              child: Image.asset(
                'assets/sugar_free.png',
                height: 180,
              ),
            ),
            const SizedBox(height: 16),

            // Title
            const Text(
              "Sugar Free Gold Low Calories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("Brand Name",style: TextStyle(),),

            const SizedBox(height: 8),

            // Price Row
            Row(
              children: [
                const Text(
                  "Rs. 99",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough, color: Colors.grey),
                ),
                const SizedBox(width: 8),
                const Text(
                  "₹156",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
              SizedBox(width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("ADD",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              ],
            ),
            const Text("Expiry Date : 11 Jan25",style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 12),

            // Subscription Button
           Container(
  padding: const EdgeInsets.all(10),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey), // Border for all 4 sides
    borderRadius: BorderRadius.circular(5),
  ),
  child: Row(
    children: [
      const Expanded(child: Text("Need to get it frequently?",style: TextStyle(),)),
      OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.green), // Green border
          foregroundColor: Colors.green, // Green text
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        child: const Text("Subscribe & Save"),
      ),
    ],
  ),
),

            const SizedBox(height: 8),
            Row(
              children: const [
                Text("Expected Delivery Date :"),
                SizedBox(width: 4),
                Text("Saturday, October02",
                    style: TextStyle(color: Colors.orange)),
                Spacer(),
                Text("Change Address",
                    style: TextStyle(color: Colors.green,
                        decoration: TextDecoration.underline, fontSize: 12)),
              ],
            ),

            const Divider(height: 32),

            // Package Size
            const Text("Package size", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Row(
              children: [
                _packageSizeCard("Rs.106", "500 pellets", selected: true),
                _packageSizeCard("Rs.166", "110 pellets"),
                _packageSizeCard("Rs.252", "300 pellets"),
              ],
            ),

            const SizedBox(height: 24),

            // Product Details
            const Text("Product Details", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text(
              "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
              style: TextStyle(color: Colors.black87),
            ),

            const SizedBox(height: 16),
            const Text("Ingredients", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text(
              "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
         
              style: TextStyle(color: Colors.black87),
            ),

            const SizedBox(height: 24),

            // Reviews
            const Text("Reviews", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Column(
                  children: [
                    Text("4.4", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                    Text("923 Ratings\nand 257 Reviews"),

                  ],
                ),

            
                Icon(Icons.star, color: Colors.amber, size: 24),
              
                    Container(
      height: 100, // Adjust height as needed
      width: 1,
      color: Colors.grey, // Line color
    ),
      SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      _ratingBar(4, 67),

                      _ratingBar(4, 20),
                      _ratingBar(3, 7),
                      _ratingBar(2, 0),
                      _ratingBar(1, 2),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.star,color: Colors.orange,),
              ),
              Text('4.2',style: TextStyle(color: Colors.grey)),
              Spacer(),
                 Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Text("05- oct 2020",style: TextStyle(color: Colors.grey)),
                 ),
            ],),
            const ListTile(
          
              title: Text("Eric Hoffman"),
              subtitle: Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas",style: TextStyle(color: Colors.grey),),
        
            ),
          ],
        ),
      ),

      // Bottom Price + Add
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Text(
                "₹156",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              SizedBox(width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("ADD",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget _packageSizeCard(String price, String size, {bool selected = false}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: selected ? Color(0xffFFA41B0D).withOpacity(0.05) : Color(0xffF5F5F5),
      borderRadius: BorderRadius.circular(8),
      border: selected
          ? Border.all(color: Color(0xffFFA41B), width: 1)
          : Border.all(color: Colors.transparent),
    ),
    child: IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(size, style: const TextStyle(fontSize: 12)),
        ],
      ),
    ),
  );
}


  static Widget _ratingBar(int stars, int percent) {
    return Row(
      children: [
        Text("$stars", style: TextStyle(fontSize: 12)),
         Icon(Icons.star, color: Colors.amber, size: 12),
         SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: percent / 100,
            color: Colors.green,
            backgroundColor: Colors.grey.shade300,
            minHeight: 6,
          ),
        ),
        const SizedBox(width: 8),
        Text("$percent%", style: TextStyle(fontSize: 12,color:Colors.grey.shade400 )),
      ],
    );
  }
}

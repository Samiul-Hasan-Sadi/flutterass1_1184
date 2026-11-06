
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar
      appBar: AppBar(
        title: const Text("MY HOME"),
        backgroundColor: const Color.fromARGB(255, 63, 81, 181),

        leading: const Icon(Icons.menu),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(18.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search something...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.clear),

                filled: true,
                fillColor: Colors.grey.shade100,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 22),

            // Greeting Text
            Text(
              "Hello Everyone!",
              style: GoogleFonts.lobster(
                textStyle: const TextStyle(
                  fontSize: 26,
                  color: Color.fromARGB(255, 63, 81, 181),
                ),
              ),
            ),

            const SizedBox(height: 18),

            // Welcome Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Row(
                  children: [

                    const Icon(
                      Icons.waving_hand,
                      size: 42,
                      color: Colors.amber,
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      "Nice to see you here!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Options Section
            const Text(
              "Explore Options",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Column(
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 42,
                      color: Colors.indigo,
                    ),
                    const SizedBox(height: 5),
                    const Text("Account"),
                  ],
                ),

                Column(
                  children: [
                    const Icon(
                      Icons.chat,
                      size: 42,
                      color: Colors.teal,
                    ),
                    const SizedBox(height: 5),
                    const Text("Chat"),
                  ],
                ),

                Column(
                  children: [
                    const Icon(
                      Icons.image,
                      size: 42,
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(height: 5),
                    const Text("Gallery"),
                  ],
                ),

                Column(
                  children: [
                    const Icon(
                      Icons.help_outline,
                      size: 42,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(height: 5),
                    const Text("Help"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


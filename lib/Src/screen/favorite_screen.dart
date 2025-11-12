import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpjRkfdV2CW7Sg2sT7e3zRmUyUUIOh5IW0bw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2DmBzej5hr1rPhZEOAPIOSHZm838lzprhkA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR01iIIKHc5FLioR2D8Voo5YM6Bpdxqqa4cZQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxTVW7qIPLFJ_alveDA1xU-P0mGXH0CF98Fw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZSS0Iv5z_vlEtxEbVcc2M5pijthz-FZPl9g&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpjRkfdV2CW7Sg2sT7e3zRmUyUUIOh5IW0bw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2DmBzej5hr1rPhZEOAPIOSHZm838lzprhkA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR01iIIKHc5FLioR2D8Voo5YM6Bpdxqqa4cZQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxTVW7qIPLFJ_alveDA1xU-P0mGXH0CF98Fw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZSS0Iv5z_vlEtxEbVcc2M5pijthz-FZPl9g&s",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Samantha",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Find the service you want, and treat yourself",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.search, color: Colors.black54),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔹 Offer banner
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/images.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Look more beautiful and\nsave more discount",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Get offer now!"),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 25,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            "Up to\n50%",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // 🔹 Category Title
              const Text(
                "What do you want to do?",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              // 🔹 Categories
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const _CategoryItem(icon: Icons.cut, label: "Haircut"),
                  const _CategoryItem(icon: Icons.brush, label: "Nails"),
                  const _CategoryItem(icon: Icons.face, label: "Facial"),
                  const _CategoryItem(
                    icon: Icons.color_lens,
                    label: "Coloring",
                  ),
                  const _CategoryItem(icon: Icons.spa, label: "Spa"),
                  const _CategoryItem(icon: Icons.wash, label: "Waxing"),
                  const _CategoryItem(icon: Icons.brush, label: "Nails"),
                  const _CategoryItem(icon: Icons.messenger, label: "Message"),
                ],
              ),

              const SizedBox(height: 20),

              // 🔹 Salon you follow
              const Text(
                "Salon you follow",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {

                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 28,
                              backgroundImage:
                              //AssetImage('assets/obaidul.jpg${index + 1}.jpg'),
                              NetworkImage(images[index])
                          ),
                          const SizedBox(height: 6),
                          const Text("Salon", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Category item widget
class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.teal.shade100, width: 2),
          ),
          child: Icon(icon, color: Colors.teal, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
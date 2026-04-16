import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Daftar produk dengan detail lengkap
  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Asus TUF', 
      'price': 1500, 
      'imageUrl': 'data:image/jpeg;base64,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',
      'rating': 4.5,
      'reviews': 128,
      'specs': 'Intel i7, RTX 3060, 16GB RAM',
    },
    {
      'name': 'Macbook Air', 
      'price': 1000, 
      'imageUrl': 'data:image/jpeg;base64,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',
      'rating': 4.8,
      'reviews': 256,
      'specs': 'M1 Chip, 8GB RAM, 256GB SSD',
    },
    {
      'name': 'Macbook Pro', 
      'price': 2000, 
      'imageUrl': 'data:image/jpeg;base64,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',
      'rating': 4.9,
      'reviews': 512,
      'specs': 'M2 Pro, 16GB RAM, 512GB SSD',
    },
    {
      'name': 'Asus ROG', 
      'price': 4500, 
      'imageUrl': 'data:image/jpeg;base64,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',
      'rating': 4.7,
      'reviews': 89,
      'specs': 'Intel i9, RTX 4090, 32GB RAM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'DigiTechIndo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.blue.shade700,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _showSearchDialog(context);
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  _showCartDialog(context);
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Banner Promo
          _buildPromoBanner(context),
          const SizedBox(height: 16),
          // Header Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '🔥 Hot Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Grid Produk
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75, // Rasio untuk card tidak terlalu memanjang
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _ProductCard(
                    name: product['name'],
                    price: product['price'],
                    imageUrl: product['imageUrl'],
                    rating: product['rating'],
                    reviews: product['reviews'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildPromoBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade700, Colors.purple.shade700],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -20,
            top: -20,
            child: Icon(
              Icons.discount,
              size: 100,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Special Offer!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Up to 20% OFF',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.95),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Code: DIGI20',
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shopping_bag,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Search'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCartDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shopping Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.laptop),
                      ),
                      title: const Text('Product Name'),
                      subtitle: const Text('\$999'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final double rating;
  final int reviews;

  const _ProductCard({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
  });

  void _showBuyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_circle,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Added to Cart!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$name has been added to your cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Continue Shopping'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('View Cart'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar produk - dipotong rapi dengan ClipRRect
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: Image.network(
              imageUrl,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover, // Gambar dipotong rapi sesuai ukuran
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 140,
                  color: Colors.grey.shade200,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 140,
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.broken_image, size: 40),
                );
              },
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama produk
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Rating
                Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        if (index < rating.floor()) {
                          return const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          );
                        } else if (index < rating) {
                          return const Icon(
                            Icons.star_half,
                            size: 12,
                            color: Colors.amber,
                          );
                        } else {
                          return Icon(
                            Icons.star_border,
                            size: 12,
                            color: Colors.grey.shade400,
                          );
                        }
                      }),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '($reviews)',
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Harga
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$$price',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          '\$${(price * 1.1).toInt()}',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade500,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    // Tombol BELI SEKARANG
                    ElevatedButton(
                      onPressed: () => _showBuyDialog(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                        minimumSize: const Size(70, 32),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.shopping_bag, size: 14),
                          SizedBox(width: 4),
                          Text(
                            'Beli',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
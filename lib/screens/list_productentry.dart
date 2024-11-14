import 'package:flutter/material.dart';
import 'package:mojo_dojo_casa_house/models/product_entry.dart';
import 'package:mojo_dojo_casa_house/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get("http://127.0.0.1:8000/json/");

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object ProductEntry
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Product Entry List',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text(
                'Belum ada data produk pada Mojo Dojo Casa House.',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 216, 89, 186)),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) => Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data[index].fields.name,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Rp ${snapshot.data[index].fields.price}",
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Quantity: ${snapshot.data[index].fields.quantity}",
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        snapshot.data[index].fields.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
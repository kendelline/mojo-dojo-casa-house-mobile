import 'package:flutter/material.dart';
import 'package:mojo_dojo_casa_house/models/product_entry.dart';

class ViewProductEntry extends StatelessWidget {
  final ProductEntry item;  // Receiving the item

  ViewProductEntry({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Accessing the fields from ProductEntry
    final fields = item.fields;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Item",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),  // `const` for Icon
          onPressed: () {
            Navigator.pop(context);  // Back to the list of items
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("${fields.name}", style: TextStyle(fontSize: 18)),  // Display only the name
            const SizedBox(height: 10),
            Text("${fields.description}", style: TextStyle(fontSize: 16)),  // Display only the description
            const SizedBox(height: 10),
            Text("Quantity: ${fields.quantity}", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Price: \$${fields.price}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/product_service.dart';
import '../../models/product_model.dart';
import '../../services/auth_service.dart';

class AddProductScreen extends StatefulWidget {
  final VoidCallback onProductAdded;

  const AddProductScreen({Key? key, required this.onProductAdded})
      : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
  final _tagsController = TextEditingController();
  final _productService = ProductService();
  final _authService = AuthService();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    _tagsController.dispose();
    super.dispose();
  }

  void _handleAddProduct() async {
    if (_nameController.text.isEmpty ||
        _descriptionController.text.isEmpty ||
        _priceController.text.isEmpty ||
        _quantityController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all required fields')),
      );
      return;
    }

    setState(() => _isLoading = true);

    final tags = _tagsController.text
        .split(',')
        .map((tag) => tag.trim())
        .where((tag) => tag.isNotEmpty)
        .toList();

    final product = Product(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: _nameController.text,
      description: _descriptionController.text,
      price: double.parse(_priceController.text),
      sellerId: _authService.currentUser?.id ?? '',
      sellerName: _authService.currentUser?.name ?? 'Seller',
      imageUrl: 'https://via.placeholder.com/300',
      quantity: int.parse(_quantityController.text),
      tags: tags.isEmpty ? ['handmade'] : tags,
      createdAt: DateTime.now(),
    );

    final success = await _productService.addProduct(product);
    setState(() => _isLoading = false);

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Product added successfully')),
      );
      _nameController.clear();
      _descriptionController.clear();
      _priceController.clear();
      _quantityController.clear();
      _tagsController.clear();
      widget.onProductAdded();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to add product')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppTheme.butterYellow,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text('📝', style: TextStyle(fontSize: 40)),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Product Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Product Name',
                prefixIcon: const Icon(Icons.shopping_bag),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: 'Product Description',
                prefixIcon: const Icon(Icons.description),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _priceController,
                    decoration: InputDecoration(
                      hintText: 'Price (\$)',
                      prefixIcon: const Icon(Icons.attach_money),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _quantityController,
                    decoration: InputDecoration(
                      hintText: 'Quantity',
                      prefixIcon: const Icon(Icons.numbers),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _tagsController,
              decoration: InputDecoration(
                hintText: 'Tags (comma separated)',
                prefixIcon: const Icon(Icons.label),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Example: handmade, crochet, gift',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading ? null : _handleAddProduct,
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    )
                  : const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenge_day_1/days/components/my_buttom_nav.dart';
import 'package:ui_challenge_day_1/days/components/product_tile.dart';
import 'package:ui_challenge_day_1/days/models/shop.dart';
import 'package:ui_challenge_day_1/days/models/product.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = 0;

  void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        bottomNavigationBar: MyButtomNav(
          selectedIndex: _selectedIndex,
          onTap: _onNavTap,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 24),
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 32,
                      ),
                    ),
                    title: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Text(
                        'C!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_rounded,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SearchBar(
                    backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.only(left: 16, right: 16)),
                    elevation: const WidgetStatePropertyAll(0),
                    hintText: 'Search',
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    leading: const Icon(
                      Icons.search_rounded,
                      size: 24,
                    ),
                    trailing: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.photo_camera_outlined,
                          size: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 4,
                  left: 16
                ),
              child: MasonryGridView.builder(
                
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: value.productList.length,
                itemBuilder: (context, index) {
                  Product product = value.productList[index];
                  return ProductTile(
                    product: product,
                  );
                },
              ),
              )
            ),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

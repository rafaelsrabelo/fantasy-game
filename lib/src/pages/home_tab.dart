import 'package:fantasygame/src/widgets/categpry_title.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Gourmet',
    'Frutas',
    'Promo do dia'
  ];

  String selectedCategory = 'Gourmet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar( 
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                print('Clicaram no carrinho viu ');
              },
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.blue, 
                ),
                badgeContent: const Text('2', style: TextStyle(color: Colors.white)),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                  ),
              ),
            ),
          )
        ],
        title: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30
            ),
            children: [
              TextSpan(text: '@dindin.daleia', style: TextStyle(color: Colors.red, fontSize: 24)),
            ]
          )
        ),
      ),

      // Campo de pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.black, size: 21,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  ) 
                  )
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTitle(
                  onPresed: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  category: categories[index],
                  isSelected: categories[index] == selectedCategory,
                );
              }, 
              separatorBuilder: (_, index) => const SizedBox(width: 10), 
              itemCount: categories.length),
          )
        ],
      ),
    );
  }
}
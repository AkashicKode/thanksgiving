import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

class turkey extends StatefulWidget {
  const turkey({super.key, required this.title});

  final String title;

  @override
  State<turkey> createState() => turkeyState();
}

class turkeyState extends State<turkey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: Recipe.turkey_options.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecipeDetail(recipe: Recipe.turkey_options[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.turkey_options[index]),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.5 / 1,
            crossAxisCount: 1,
          ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 50.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(recipe.imageUrl),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.recipe.name),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Ink.image(
                  image: AssetImage(widget.recipe.imageUrl),
                  width: 500,
                  height: 500),
              Ink.image(
                  image: AssetImage(widget.recipe.ingredientsUrl),
                  width: 500,
                  height: 500),
              Ink.image(
                  image: AssetImage(widget.recipe.instructionsUrl),
                  width: 500,
                  height: 500),
            ],
          ),
        )));
  }
}

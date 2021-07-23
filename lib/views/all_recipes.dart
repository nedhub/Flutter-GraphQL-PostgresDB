import 'package:flutter/cupertino.dart';
import 'package:frontend/controllers/no_recipes.dart';
import 'package:frontend/controllers/recipe_list_tile.dart';

class AllRecipesScreen extends StatelessWidget {
  const AllRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('All Recipes'),
            trailing: CupertinoButton(
              padding: const EdgeInsets.all(5),
              child: Icon(
                CupertinoIcons.plus_circle_fill,
                size: 35,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/new');
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              RecipeListTile(),
              NoRecipes(),
            ]),
          )
        ],
      ),
    );
  }
}

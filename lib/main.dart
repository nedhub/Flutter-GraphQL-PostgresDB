import 'package:flutter/cupertino.dart';
import 'package:frontend/views/all_recipes.dart';
import 'package:frontend/views/new_recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => AllRecipesScreen(),
        '/new': (_) => NewRecipeScreen(),
      },
    );
  }
}

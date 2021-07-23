import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) =>
                Container(color: Colors.white12, child: Text("Recipe detail")));
      },
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 26,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recipe 1',
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                  "Lorem fiuueh reuthuerf teugurb guerguerg rguekbrgu rfgerigubr geruguerb rgebugerf uerigrug etbguebug",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ))
            ],
          ))
        ],
      ),
    );
  }
}

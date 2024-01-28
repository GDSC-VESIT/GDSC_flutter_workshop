import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5.0, crossAxisSpacing: 3.0),
        itemBuilder: (_, index) => GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Grid'),
            trailing: Icon(
              Icons.menu,
            ),
          ),
          // footer: const GridTileBar(
          //   backgroundColor: Colors.black45,
          //   leading: Icon(Icons.favorite_rounded),
          // ),
          child: Image.network(
            'https://cdn.iconscout.com/icon/free/png-256/free-flutter-3629369-3032362.png',
            fit: BoxFit.cover,
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}

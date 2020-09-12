import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String description;

  const CardWidget({
    @required this.title,
    @required this.description,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = 16;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(radius),
            ),
            child: Image.network(
              'https://images.unsplash.com/photo-1598900438157-e28f3f4c09b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

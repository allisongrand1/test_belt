import 'package:flutter/material.dart';

class GridViewHotel extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final poster;
  final String? name;
  final String? uuid;
  final List? photos;
  final String? description;
  final String? website;
  const GridViewHotel(
      {super.key,
      this.poster,
      this.name,
      this.uuid,
      this.photos,
      this.description,
      this.website});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/country/$uuid', arguments: {
          'country.name': name,
          'country.poster': poster,
          'country.uuid': uuid,
          'country.photos': photos,
          'country.website': website,
          'country.description': description,
        });
      },
      child: Card(
        elevation: 5,
        child: Image.network(poster, fit: BoxFit.cover),
      ),
    );
  }
}

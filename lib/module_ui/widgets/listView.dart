// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:test_belt/module_ui/widgets/carousel.dart';

class ListViewHotel extends StatelessWidget {
  final poster;
  final name;
  final String? uuid;
  final List? photos;
  final String? description;
  final String? website;
  const ListViewHotel(
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
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Carousel(
                cardList: photos,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(20)),
                      ),
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          name,
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}

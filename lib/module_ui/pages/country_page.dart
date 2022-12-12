import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:test_belt/theme/theme.dart';

class CountryPage extends StatelessWidget {
  final String? name;
  final String? uuid;
  final String? poster;
  final String? description;
  final List? photos;
  final String? website;
  static const routeName = '/country';
  const CountryPage(
      {super.key,
      this.uuid,
      this.name,
      this.poster,
      this.description,
      this.photos,
      this.website});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
              itemCount: photos!.length,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  child: Image.network(
                    "${photos![index]}",
                    fit: BoxFit.cover,
                  ),
                );
              }),
          GestureDetector(
            onVerticalDragDown: (details) {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ListView(
                      children: [
                        ListTile(
                          title: Center(
                            child: Text(
                              '$name',
                              style: createTextTheme().headline1,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('$description',
                              style: createTextTheme().bodyText1,
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              maxLines: 20,
                              textWidthBasis: TextWidthBasis.longestLine),
                        ),
                        ListTile(
                          title: Text(
                            '$website',
                            style: createTextTheme().bodyText1,
                          ),
                        )
                      ],
                    );
                  });
            },
            child:
                Lottie.asset('assets/animation/arrow_down.json', height: 100),
          ),
        ],
      ),
    );
  }
}

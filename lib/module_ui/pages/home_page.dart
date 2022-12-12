import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:test_belt/module_bloc/country_bloc/country_bloc.dart';
import 'package:test_belt/module_ui/widgets/gridView.dart';
import 'package:test_belt/module_ui/widgets/listView.dart';
import 'package:test_belt/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Center(
            child: Text(
              '-20°C',
              style: createTextTheme().bodyText1,
            ),
          ),
        ),
        centerTitle: true,
        title: Lottie.asset(
          'assets/animation/arrow_down.json',
          width: 100,
          reverse: false,
        ),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.wb_sunny_rounded),
            onPressed: () => currentTheme.toggleTheme(),
          ),
        ],
      ),
      body: BlocConsumer<CountryBloc, CountryState>(
          listener: ((context, state) {}),
          builder: (context, state) {
            return state.when(
                empty: () => const Center(
                      child: Text(
                        'Данные не получены',
                        textAlign: TextAlign.center,
                      ),
                    ),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (country, isGrids) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ElevatedButton(
                              child: const Icon(Icons.format_list_bulleted),
                              onPressed: () {
                                BlocProvider.of<CountryBloc>(context).add(
                                    const CountryListLoadEvent()); //при нажатии отправляется событие, которое отображает список в виде list
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ElevatedButton(
                              child: const Icon(Icons.view_comfy),
                              onPressed: () {
                                BlocProvider.of<CountryBloc>(context).add(
                                    const CountryGridLoadEvent()); //при нажатии отправляется событие, которое отображает список в виде grid
                              },
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 1.2,
                                child: isGrids ==
                                        false // вид списка зависит от ответа блока
                                    ? ListView.builder(
                                        itemCount: country.model.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ListViewHotel(
                                            poster: country.model[index].poster,
                                            name: country.model[index].name,
                                            uuid: country.model[index].uuid,
                                            photos: country.model[index].photos,
                                            description: country
                                                .model[index].description,
                                            website: country.model[index].url,
                                          );
                                        })
                                    : GridView.builder(
                                        itemCount: country.model.length,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return GridViewHotel(
                                            poster: country.model[index].poster,
                                            name: country.model[index].name,
                                            uuid: country.model[index].uuid,
                                            photos: country.model[index].photos,
                                            description: country
                                                .model[index].description,
                                            website: country.model[index].url,
                                          );
                                        })),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                error: () => const Center(
                      child: Text(
                        'Error fetching countries',
                      ),
                    ));
          }),
    );
  }
}

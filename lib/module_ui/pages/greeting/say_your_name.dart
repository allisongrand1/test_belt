import 'package:flutter/material.dart';
import 'package:test_belt/theme/theme.dart';

class YourName extends StatefulWidget {
  const YourName({super.key});

  static const routeName = '/';

  @override
  State<YourName> createState() => _YourNameState();
}

class _YourNameState extends State<YourName> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Как вас зовут?',
                          style: createTextTheme().headline2,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          onEditingComplete: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.of(context)
                                  .pushNamed('/greeting', arguments: {
                                'greeting.name': textController.text,
                              });
                            }
                          },
                          textAlign: TextAlign.center,
                          controller: textController,
                          key: const Key('fieldName'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Пожалуйста, введите ваше имя';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:key_value_storage/example_widget_model.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => ExampleWidgetModel().setName(),
                child: const Text('Create Name'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => ExampleWidgetModel().readName(),
                child: const Text('Show Name'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => ExampleWidgetModel().setToken(),
                child: const Text('Create Token'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => ExampleWidgetModel().readToken(),
                child: const Text('Show Token'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

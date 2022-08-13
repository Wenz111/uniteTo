import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uniteto/models/locale/locale.dart';
import 'package:uniteto/models/locale/locale_key.dart';

class Test extends HookConsumerWidget {
  const Test({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testObjects = [
      const LocaleKey(key: 'en', name: 'English'),
      const LocaleKey(key: 'bm', name: 'Bahasa Melayu')
    ];

    final testState = useState('en');
    debugPrint('testState: ${testState.value}');

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: testObjects
            .map((testObject) => TestListTile(testObject, testState))
            .toList(),
      ),
    );
  }
}

class TestListTile extends HookConsumerWidget {
  final LocaleKey testObject;
  final ValueNotifier<String> testState;

  const TestListTile(
    this.testObject,
    this.testState, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RadioListTile(
      title: Text(testObject.name),
      value: testObject.key,
      groupValue: testState.value,
      onChanged: (String? _selectedValue) {
        debugPrint('_selectedValue: $_selectedValue');
        testState.value = _selectedValue.toString();
      },
    );
  }
}

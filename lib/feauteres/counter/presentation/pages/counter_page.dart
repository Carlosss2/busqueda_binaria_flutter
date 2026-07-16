import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpod/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => ref.read(counterProvider.notifier).state++,
              icon: const Icon(Icons.add),
              label: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}

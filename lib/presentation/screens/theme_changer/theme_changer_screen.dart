import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = 'theme_changer';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkModeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
          actions: [
            IconButton(
                onPressed: () {
                  ref
                      .read(isDarkModeProvider.notifier)
                      .update((state) => !state);
                },
                icon: isDarkmode
                    ? const Icon(Icons.dark_mode_outlined)
                    : const Icon(Icons.light_mode_outlined))
          ],
        ),
        body: const _ThemeChangerView());
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final theme = ref.watch(themeNotifierProvider);
    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];
          return RadioListTile(
              title: Text('Este color', style: TextStyle(color: color)),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: theme.selectedColor,
              onChanged: (value) {
                ref
                    .read(themeNotifierProvider.notifier)
                    .changeColorIndex(value ?? 0);
              });
        });
  }
}

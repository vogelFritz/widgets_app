import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_rounded)),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated Disabled')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('Elevated Icon')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  label: const Text('Filled Icon'),
                  icon: const Icon(Icons.ac_unit_sharp)),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.terminal_outlined),
                  label: const Text('Outlined Icon')),
              TextButton(onPressed: () {}, child: const Text('Text')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_outlined),
                  label: const Text('Text Icon')),
              IconButton(
                  icon: const Icon(Icons.app_registration_outlined),
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.app_registration_rounded),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(colors.primary),
                      iconColor: const MaterialStatePropertyAll(Colors.white))),
              CustomButton()
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

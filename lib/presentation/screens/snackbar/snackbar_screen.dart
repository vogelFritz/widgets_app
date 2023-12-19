import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackBar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(
          label: 'Ok!',
          onPressed: () {},
        ),
        duration: const Duration(seconds: 2));
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
                title: const Text('Estas seguro?'),
                content: const Text('Ich bin ein freier wildbretschutz'),
                actions: [
                  TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancelar')),
                  FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Aceptar'))
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y Diálogos')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                    context: context, children: [const Text('Hallo Welt!')]);
              },
              child: const Text('Licencias usadas')),
          const SizedBox(
            height: 10,
          ),
          FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar diálogo de pantalla'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {
            showCustomSnackbar(context);
          },
          label: const Text('Mostrar Snackbar')),
    );
  }
}

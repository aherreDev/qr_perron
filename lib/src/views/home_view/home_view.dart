import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 250,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Que haremos hoy?'),
              ),
              NavigationButton(
                text: 'Crear codigo QR',
                callback: () => context.router.pushNamed('/generator'),
              ),
              NavigationButton(
                text: 'Escanear codigo QR',
                callback: () => context.router.pushNamed('/scanner'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key,
    required this.callback,
    this.text = 'Navegar',
  }) : super(key: key);

  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(text),
    );
  }
}

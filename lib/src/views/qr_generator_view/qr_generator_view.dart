import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorView extends StatefulWidget {
  const QrGeneratorView({Key? key}) : super(key: key);

  @override
  State<QrGeneratorView> createState() => _QrGeneratorViewState();
}

class _QrGeneratorViewState extends State<QrGeneratorView> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Generator'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  autocorrect: false,
                  onChanged: (newText) {
                    setState(() {
                      text = newText;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Ingresa el texto (120max)',
                  ),
                ),
                ElevatedButton(
                  child: const Text('Generar'),
                  onPressed: () {
                    text.isEmpty
                        ? _showErrorDialog(context)
                        : _showDialog(context, text);
                  },
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }

  _showDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Tu codigo QR'),
          content: SizedBox(
            height: 230,
            width: 230,
            child: QrImage(
              data: text,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                _dismissDialog(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void _dismissDialog(BuildContext context) {
    context.router.pop();
  }

  _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('Agrega un texto antes de continuar'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                _dismissDialog(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}

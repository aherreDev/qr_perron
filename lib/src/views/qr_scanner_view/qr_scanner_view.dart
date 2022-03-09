import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:barcode_scan_fix/barcode_scan.dart';

class QrScannerView extends StatefulWidget {
  const QrScannerView({Key? key}) : super(key: key);

  @override
  State<QrScannerView> createState() => _QrScannerViewState();
}

class _QrScannerViewState extends State<QrScannerView> {
  String scanText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('Escanear QR'),
                onPressed: () async {
                  String codeSanner =
                      await BarcodeScanner.scan(); //barcode scanner
                  setState(() {
                    scanText = codeSanner;
                  });
                }),
            ScanResults(results: scanText),
          ],
        ),
      ),
    );
  }
}

class ScanResults extends StatelessWidget {
  const ScanResults({Key? key, this.results}) : super(key: key);

  final String? results;

  @override
  Widget build(BuildContext context) {
    if (results == null || results == '') null;
    return Column(
      children: [
        const Text('Resultados:'),
        Text(results!),
      ],
    );
  }
}

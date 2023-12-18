import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatelessWidget {
  Future<void> scanBarcode(BuildContext context) async {
    try {
      String barcode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", // background color
        "Cancel", // cancel button text
        true, // show flash icon
        ScanMode.BARCODE, // barcode mode
      );

      // Handle the scanned barcode data here.
      print("Scanned barcode: $barcode");
    } catch (e) {
      // Handle exceptions
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            scanBarcode(context);
          },
          child: Text('Scan Barcode'),
        ),
      ),
    );
  }
}

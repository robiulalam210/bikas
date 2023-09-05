import 'package:flutter/material.dart';
import 'package:flutter_bkash/flutter_bkash.dart';

class BikasData extends StatefulWidget {
  const BikasData({super.key});

  @override
  State<BikasData> createState() => _BikasDataState();
}

class _BikasDataState extends State<BikasData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(child: Column(
        children: [

          ElevatedButton(onPressed: ()async{
            final flutterBkash = FlutterBkash();
            // final result = await flutterBkash.pay(
            //   context: context, // BuildContext context
            //   amount: 100.0, // amount as double
            //   merchantInvoiceNumber: "invoice123",
            //
            // );
            final flutterBkasha = FlutterBkash(
              bkashCredentials: BkashCredentials(
                username: "app_username",
                password: "app_password",
                appKey: "app_key",
                appSecret: "app_secret",
                isSandbox: false,
              ),
            );
          }, child: Text("Daata"))
        ],
      ),),
    );
  }
}

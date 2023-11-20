import 'package:flutter/material.dart';

class CurrencyConvetorMaterialPage extends StatefulWidget {
  const CurrencyConvetorMaterialPage({super.key});

  @override
  State<CurrencyConvetorMaterialPage> createState() {
    return _CurrencyConvetorMaterialPageState();
    } 
}

class _CurrencyConvetorMaterialPageState extends State<CurrencyConvetorMaterialPage> {
    double result = 0;
    TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Convetor"),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
             'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', 
              style:const TextStyle(
                fontSize: 55,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Please Enter The Amount In USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  setState(() { 
                  result = double.parse(textEditingController.text) * 80;
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


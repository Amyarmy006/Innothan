import 'package:flutter/material.dart';

void main() {
  runApp(insta());
}

class insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Instagram'),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  final int Usd = 84;
  final double result = 0;
  final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(25));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Money Converter'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 238, 34, 102),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/batman.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 8, bottom: 20),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.lightBlue,
                    hintText: 'Enter USD amount to be converted',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: ElevatedButton(
                  onPressed: () {
                    print(textEditingController.text);
                    print(textEditingController.text * Usd);
                  },
                  child: const Text('Convert'),
                  style: TextButton.styleFrom(
                    shadowColor: Colors.black,
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

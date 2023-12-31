import 'package:flutter/material.dart';

class popUpWarning extends StatefulWidget {
  const popUpWarning({Key? key}) : super(key: key);

  @override
  _popUpWarningState createState() => _popUpWarningState();
}

class _popUpWarningState extends State<popUpWarning> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: Center(
          child: InkWell(
            onTap: () {
              _showDialog(context); // Show the dialog
            },
            child: Text(
              'Masuk',
              style: TextStyle(
                color: Color(0xff6750a4),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to show the AlertDialog
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogExample();
      },
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      backgroundColor: Color(0xFF313142),
      contentPadding: EdgeInsets.all(5),
      content: Container(
        height: 337,
        width: 337,
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.close, color: Color(0xFFD2AFFF)),
                  onPressed: () {
                    Navigator.pop(context, 'Close');
                  },
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.error_outline_rounded,
                      size: 100,
                      color: Color(0xFFD2AFFF),
                    ),
                    Text(
                      'Email sudah terdaftar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFD2AFFF),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class registrasi extends StatefulWidget {
  const registrasi({Key? key}) : super(key: key);

  @override
  State<registrasi> createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  TextEditingController ctrusername = TextEditingController();
  TextEditingController ctrpassword = TextEditingController();
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Registrasi"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrusername,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: ctrpassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 1;
                    });
                  },
                ),
                const Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 2;
                    });
                  },
                ),
                const Text("Female")
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding:EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10
              ),
              children: [
                RaisedButton(
                  child: const Text("Login"),
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text("Register"),
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  onPressed: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

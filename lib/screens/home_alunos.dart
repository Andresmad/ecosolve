// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './login_alunos.dart';
import './index.dart';

class HomeAlunos extends StatefulWidget {
  HomeAlunos({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomeAlunos> {
  final dropValue = ValueNotifier('');
  final droplist = ["Bloco", "A", "B", "C", "D"];
  final allChecked = CheckBoxModal(title: 'WC');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(380, 50, 10, 10),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.logout,
                      color: Color.fromRGBO(49, 70, 87, 1),
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 195, 10),
                  child: Text(
                    'Reporte aqui o problema',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                    child: Row(
                      children: [
                        SizedBox(
                          child: ElevatedButton.icon(
                            icon: Icon(
                              Icons.water_drop,
                              size: 24.0,
                            ),
                            label: Text(
                              "Água",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        backgroundColor:
                                            Color.fromRGBO(49, 70, 87, 1),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'ok',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 18,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                        title: const Text(
                                          'Selecione os problemas',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 18,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.all(20),
                                        content: const Text(
                                          '- Fuga de água',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 15,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ));
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              backgroundColor: Color.fromRGBO(49, 70, 87, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              minimumSize: Size(220, 60),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          child: Container(
                            child: ElevatedButton.icon(
                              label: Text(
                                'Luz',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              icon: Icon(
                                Icons.bolt,
                                size: 24,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          backgroundColor:
                                              Color.fromRGBO(227, 166, 53, 1),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'ok',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontSize: 18,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            )
                                          ],
                                          title: const Text(
                                            'Selecione os problemas',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 18,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          contentPadding:
                                              const EdgeInsets.all(20),
                                          content: const Text(
                                            '- Luz ligada',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 15,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                backgroundColor:
                                    Color.fromRGBO(227, 166, 53, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                minimumSize: Size(220, 60),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  // ignore: sort_child_properties_last
                  child: ValueListenableBuilder(
                      valueListenable: dropValue,
                      builder: (BuildContext context, String value, _) {
                        return SizedBox(
                          width: 300,
                          height: 55,
                          child: DropdownButtonFormField<String>(
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down),
                            hint: const Text('Bloco'),
                            decoration: InputDecoration(
                              label: const Text('Bloco'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            value: (value.isEmpty) ? null : value,
                            onChanged: (escolha) =>
                                dropValue.value = escolha.toString(),
                            items: droplist
                                .map((op) => DropdownMenuItem(
                                      value: op,
                                      child: Text(op),
                                    ))
                                .toList(),
                          ),
                        );
                      }),
                  padding: const EdgeInsets.fromLTRB(0, 0, 140, 0),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 10, 140, 10),
                  child: Container(
                    width: 300,
                    height: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
                  child: Container(
                    child: ListTile(
                      leading: Checkbox(
                        value: allChecked.value,
                        onChanged: (value) {
                          setState(() {
                            allChecked.value = !allChecked.value;
                          });
                        },
                      ),
                      title: Text(
                        allChecked.title,
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 72, 72),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),

                // ignore: unnecessary_new
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 150, 10, 10),
                    child: Row(children: [
                      SizedBox(
                        child: Container(
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey,
                            child: const Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SizedBox(
                              child: ElevatedButton(
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Reportar problema",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor:
                                      Color.fromARGB(255, 149, 15, 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  minimumSize: Size(350, 60),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class MultipleNotifier extends ChangeNotifier {
  List<String> _selecteItems;
  MultipleNotifier(this._selecteItems);

  bool isHaveItem(String value) => _selecteItems.contains(value);

  addItem(String value) {
    if (!isHaveItem(value)) {
      _selecteItems.add(value);
      notifyListeners();
    }
  }

  removeItem(String value) {
    if (isHaveItem(value)) {
      _selecteItems.remove(value);
      notifyListeners();
    }
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title, this.value = false});
}

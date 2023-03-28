// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(MaterialApp(home: Main()));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  //textFormField
  String nama = '';
  String nim = '';
  String prodi = '';
  TextEditingController objTextNama = TextEditingController();
  TextEditingController objTextNIM = TextEditingController();
  TextEditingController objTextProdi = TextEditingController();

  //checkBox
  String? cbox;
  String? cbox1;

  //dropDownbutton
  String? dropdownValue;

  //radioButton
  String? jenisKelamin;

  //switch
  bool _darkMode = false;
  String a = 'Dark';
  String b = 'Light';
  //switchtext

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _darkMode ? Colors.grey[800] : Colors.grey[100],
        appBar: AppBar(
          title: new Text('My App'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          width: 560,
                          color:
                              _darkMode ? Colors.yellow[700] : Colors.blue[800],
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Column(
                              children: [
                                Text(
                                  'Pendaftaran Mahasiswa Baru',
                                  style: TextStyle(
                                      fontSize: 29,
                                      letterSpacing: 1.3,
                                      color: _darkMode
                                          ? Colors.grey[800]
                                          : Colors.white),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${_darkMode ? b : a} Mode ?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: _darkMode
                                              ? Colors.grey[800]
                                              : Colors.grey[300]),
                                    ),
                                    Switch(
                                        activeColor: Colors.yellow,
                                        value: _darkMode,
                                        onChanged: (value) {
                                          setState(() {
                                            _darkMode = value;
                                          });
                                        }),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  TextFormField(
                    controller: objTextNIM,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: _darkMode ? Colors.white : Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                        fillColor: _darkMode ? Colors.grey[500] : Colors.white,
                        filled: true,
                        hintText: 'Masukan NIM',
                        labelText: 'NIM',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 4)),
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _darkMode ? Colors.white : Colors.grey[800],
                        ),
                        prefixIcon: Icon(Icons.format_list_numbered,
                            color:
                                _darkMode ? Colors.white : Colors.grey[500])),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  TextFormField(
                    controller: objTextNama,
                    style: TextStyle(
                      color: _darkMode ? Colors.white : Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                        fillColor: _darkMode ? Colors.grey[500] : Colors.white,
                        filled: true,
                        hintText: 'Masukan nama',
                        labelText: 'Nama',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 4)),
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _darkMode ? Colors.white : Colors.grey[800],
                        ),
                        prefixIcon: Icon(
                          Icons.people,
                          color: _darkMode ? Colors.white : Colors.grey[500],
                        )),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  TextFormField(
                    controller: objTextProdi,
                    style: TextStyle(
                      color: _darkMode ? Colors.white : Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                        fillColor: _darkMode ? Colors.grey[500] : Colors.white,
                        filled: true,
                        hintText: 'Masukan Prodi',
                        labelText: 'Prodi',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 4)),
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _darkMode ? Colors.white : Colors.grey[800],
                        ),
                        prefixIcon: Icon(Icons.check_circle_outline,
                            color:
                                _darkMode ? Colors.white : Colors.grey[500])),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    height: 74,
                    decoration: BoxDecoration(
                        color: _darkMode ? Colors.grey[500] : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(width: 1.5, color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jenis Kelamin',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:
                                    _darkMode ? Colors.white : Colors.grey[800],
                              )),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                //rb Laki laki
                                children: [
                                  Radio(
                                      activeColor: Colors.yellow[700],
                                      visualDensity: const VisualDensity(
                                          horizontal:
                                              VisualDensity.minimumDensity,
                                          vertical:
                                              VisualDensity.minimumDensity),
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: "Laki-laki",
                                      groupValue: jenisKelamin,
                                      onChanged: (value) {
                                        setState(() {
                                          jenisKelamin = value.toString();
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Laki-Laki',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        color: _darkMode
                                            ? Colors.white
                                            : Colors.grey[800]),
                                  )
                                ],
                              ),
                              Row(
                                //rb Perempuan
                                children: [
                                  Radio(
                                      activeColor: Colors.yellow[700],
                                      visualDensity: const VisualDensity(
                                          horizontal:
                                              VisualDensity.minimumDensity,
                                          vertical:
                                              VisualDensity.minimumDensity),
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: "Perempuan",
                                      groupValue: jenisKelamin,
                                      onChanged: (value) {
                                        setState(() {
                                          jenisKelamin = value.toString();
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Perempuan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        color: _darkMode
                                            ? Colors.white
                                            : Colors.grey[800]),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 143,
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(

                            fillColor:
                                _darkMode ? Colors.grey[500] : Colors.white,
                            filled: true,
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          value: dropdownValue,
                          hint: const Text(
                            'Pilih Kota',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          items: <String>[
                            'Mataram',
                            'Dompu',
                            'Bima',
                            'Denpasar'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            );
                          }).toList(),
                          // validator: (value) {
                          //   if (value == null) {
                          //     return 'Please select gender.';
                          //   }
                          //   return null;
                          // },
                          onChanged: (String? newVal) {
                            setState(() {
                              dropdownValue = newVal!;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            height: 50,
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            iconSize: 30,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.blue[200]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 167,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 10,
                                  width: 40,
                                  child: Checkbox(
                                    side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (states.contains(
                                            MaterialState.selected)) {}
                                        return BorderSide(
                                            width: 2,
                                            color: (_darkMode
                                                ? Colors.grey[100]
                                                : Colors.grey[700])!);
                                      },
                                    ),
                                    activeColor: _darkMode
                                        ? Colors.yellow[700]
                                        : Colors.blue,
                                    checkColor:
                                        _darkMode ? Colors.black : Colors.white,
                                    splashRadius: 0,
                                    value: cbox == 'Menggunakan Beasiswa',
                                    onChanged: (bool? value) {
                                      setState(() {
                                        cbox = value!
                                            ? 'Menggunakan Beasiswa'
                                            : 'Tidak Menggunakan Beasiswa';
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Beasiswa',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color : _darkMode ? Colors.white : Colors.grey[800],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 10,
                                  width: 40,
                                  child: Checkbox(
                                    side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (states.contains(
                                            MaterialState.selected)) {}
                                        return BorderSide(
                                            width: 2,
                                            color: (_darkMode
                                                ? Colors.grey[100]
                                                : Colors.grey[700])!);
                                      },
                                    ),
                                    activeColor: _darkMode
                                        ? Colors.yellow[700]
                                        : Colors.blue,
                                    checkColor:
                                        _darkMode ? Colors.black : Colors.white,
                                    value: cbox1 ==
                                        'Menggunakan Surat Rekomendasi',
                                    onChanged: (bool? value1) {
                                      setState(() {
                                        cbox1 = value1!
                                            ? 'Menggunakan Surat Rekomendasi'
                                            : 'Tidak Menggunakan Surat Rekomendasi';
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'S.Rekomendasi',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color : _darkMode ? Colors.white : Colors.grey[800],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      nama = objTextNama.text;
                      nim = objTextNIM.text;
                      prodi = objTextProdi.text;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('NIM Anda :',
                                  style: TextStyle(fontSize: 17)),
                              Text('Nama Anda :',
                                  style: TextStyle(fontSize: 17)),
                              Text('Prodi Anda :',
                                  style: TextStyle(fontSize: 17)),
                              Text('Jenis Kelamin Anda :',
                                  style: TextStyle(fontSize: 17)),
                              Text('Tinggal di Kota :',
                                  style: TextStyle(fontSize: 17)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' ${nim.toUpperCase()}',
                                  style: TextStyle(fontSize: 17)),
                              Text(' ${nama.toUpperCase()}',
                                  style: TextStyle(fontSize: 17)),
                              Text(' ${prodi.toUpperCase()}',
                                  style: TextStyle(fontSize: 17)),
                              Text(' $jenisKelamin',
                                  style: TextStyle(fontSize: 17)),
                              Text(' $dropdownValue',
                                  style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ],
                      )));
                      // Text(
                      // 'NIM Anda : $nim\nNama Anda : ${nama.toUpperCase()} \nProdi Anda : ${prodi.toUpperCase()}\nJenis Kelamin Anda : $jenisKelamin\nTinggal di Kota : $dropdownValue\n\nAnda $cbox & $cbox1 ')));
                    },
                    icon: Icon(Icons.save_sharp),
                    label: Text('Submit'),
                    style: ElevatedButton.styleFrom(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

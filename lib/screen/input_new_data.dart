import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kependudukan/main.dart';

enum JenisKelamin { Lakilaki, Perempuan }
enum Alamat { AlamatAsli, AlamatDomisili }

class InputNewData extends StatefulWidget {
  const InputNewData({Key? key}) : super(key: key);

  @override
  _InputNewDataState createState() => _InputNewDataState();
}

class _InputNewDataState extends State<InputNewData> {
  JenisKelamin? jenisKelamin = JenisKelamin.Lakilaki;
  Alamat? alamat = Alamat.AlamatAsli;

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        width: 1,
        color: Theme.of(context).primaryColor,
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFF227471),
        automaticallyImplyLeading: true,
        title: const Text(
          'Tambah Data Baru',
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        children: [
          Row(
            children: [
              const Text(
                'Personal',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF38A4A8),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: Color(0xFF227471),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
            adaicon: false,
            border: border,
            hintText: 'Nama Lengkap',
            label: 'Nama Lengkap',
          ),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
            border: border,
            label: 'Nik',
            hintText: 'Nik',
            adaicon: false,
          ),
          SizedBox(
            height: 8.0,
          ),
          DropDownMenu(dropdowntitle: 'Kewarganegaraan', items: ['WNA', 'WNI']),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              adaicon: true,
              border: border,
              label: 'Suku Bangsa',
              hintText: 'Suku bangsa'),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
            border: border,
            label: 'Agama',
            hintText: 'Agama',
            adaicon: true,
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              const Text(
                'Kelahiran',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF227471),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: Color(0xFF227471),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          MainLabel(
              border: border,
              label: 'Tempat Lahir',
              hintText: 'Tempat Lahir',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Tanggal Lahir',
              hintText: 'Tanggal Lahir',
              adaicon: false),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: const [
              Text(
                'Jenis Kelamin',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF227471),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: const Text('Laki - Laki'),
                leading: Radio<JenisKelamin>(
                  value: JenisKelamin.Lakilaki,
                  groupValue: jenisKelamin,
                  onChanged: (JenisKelamin? value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Perempuan'),
                leading: Radio<JenisKelamin>(
                  value: JenisKelamin.Perempuan,
                  groupValue: jenisKelamin,
                  onChanged: (JenisKelamin? value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: const [
              Text(
                'Alamat',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF227471),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: const Text('Alamat Asli [Sesuai KTP]'),
                leading: Radio<Alamat>(
                  value: Alamat.AlamatAsli,
                  groupValue: alamat,
                  onChanged: (Alamat? value) {
                    setState(() {
                      alamat = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Alamat Domisili'),
                leading: Radio<Alamat>(
                  value: Alamat.AlamatDomisili,
                  groupValue: alamat,
                  onChanged: (Alamat? value) {
                    setState(() {
                      alamat = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Text(
            'Jalan / Dusun / Blok',
            style: TextStyle(fontSize: 15.0, color: Color(0xFF227471)),
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Jalan / Dusun / Blok',
              border: border,
              focusedBorder: border.copyWith(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              enabledBorder: border,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text('Nomer'),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Nomer',
                            border: border,
                            focusedBorder: border.copyWith(
                                borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ))),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text('RT'),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'RT',
                            border: border,
                            focusedBorder: border.copyWith(
                                borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ))),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text('RW'),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'RW',
                            border: border,
                            focusedBorder: border.copyWith(
                                borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Kelurahan / Desa',
              hintText: 'Kelurahan / Desa',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Kecamatan',
              hintText: 'Kecamatan',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Kabupaten',
              hintText: 'Kabupaten',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Provinsi',
              hintText: 'Provinsi',
              adaicon: false),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Text('Lama Tinggal'),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove),
                            prefixIcon: Icon(Icons.add),
                            hintText: 'Lama Tinggal',
                            border: border,
                            focusedBorder: border.copyWith(
                                borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ))),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const Text('Tahun'),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Tahun',
                            border: border,
                            focusedBorder: border.copyWith(
                                borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              const Text(
                'Status',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF227471),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: Color(0xFF227471),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          MainLabel(
              border: border,
              label: 'Status Perkawinan',
              hintText: 'Status Perkawinan',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Status Hubungan Keluarga',
              hintText: 'Status Hubungan Keluarga',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Pendidikan Terakhir',
              hintText: 'Pendidikan Terakhir',
              adaicon: false),
          SizedBox(
            height: 10.0,
          ),
          MainLabel(
              border: border,
              label: 'Pekerjaan',
              hintText: 'Pekerjaan',
              adaicon: false),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Simpan"),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Color(0xFF227471))),
          ),
        ],
      ),
    );
  }
}

class MainLabel extends StatelessWidget {
  const MainLabel({
    Key? key,
    required this.border,
    required this.label,
    required this.hintText,
    required this.adaicon,
  }) : super(key: key);

  final InputBorder border;
  final String label;
  final String hintText;
  final bool adaicon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 15.0, color: Color(0xFF227471)),
        ),
        const SizedBox(height: 4.0),
        TextField(
          decoration: InputDecoration(
            suffixIcon: adaicon ? Icon(Icons.expand_more) : SizedBox(),
            hintText: hintText,
            enabledBorder: border.copyWith(
                borderSide: BorderSide(color: Color(0xFF227471))),
            focusedBorder: border.copyWith(
              borderSide: BorderSide(
                width: 2,
                color: Color(0xFF227471),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 13.0,
        )
      ],
    );
  }
}

class DropDownMenu extends StatefulWidget {
  const DropDownMenu(
      {Key? key, required this.items, required this.dropdowntitle})
      : super(key: key);
  final List<String> items;
  final String dropdowntitle;

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  int dropdownValue = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.dropdowntitle}',
          style: TextStyle(color: Color(0xFF227471)),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          constraints: BoxConstraints(),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF227471)),
              borderRadius: BorderRadius.circular(8)),
          child: DropdownButton<int>(
              underline: SizedBox(),
              isExpanded: true,
              value: dropdownValue,
              icon: const Icon(Icons.expand_more),
              elevation: 16,
              style: const TextStyle(color: Color(0xFF227471)),
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  print(dropdownValue);
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text('WNA'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('WNI'),
                  value: 2,
                )
              ]),
        ),
      ],
    );
  }
}

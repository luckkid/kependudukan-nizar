import 'package:flutter/material.dart';

class DataKependudukan extends StatefulWidget {
  const DataKependudukan({Key? key}) : super(key: key);

  @override
  _DataKependudukanState createState() => _DataKependudukanState();
}

class _DataKependudukanState extends State<DataKependudukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri'),
        centerTitle: true,
        backgroundColor: Color(0xFF227471),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            DataForm(form: 'Nama Lengkap', form2: 'Dion'),
            DataForm(form: 'Nik', form2: '1234533221'),
            DataForm(form: 'Alamat', form2: 'Bugisan RT27/RW05'),
            DataForm(form: 'Lama Tinggal', form2: '8 Tahun'),
            DataForm(form: 'Jenis Kelamin', form2: 'Laki - Laki'),
            DataForm(form: 'Tempat Lahir', form2: 'Yogyakarta - DIY'),
            DataForm(form: 'Tanggal Lahir', form2: 'Senin, 5 September 2013'),
            DataForm(form: 'Kewarganegaraan', form2: 'Indonesia'),
            DataForm(form: 'Suku Bangsa', form2: 'Jawa'),
            DataForm(form: 'Agama', form2: 'Islam'),
            DataForm(form: 'Bahasa Yang Digunakan', form2: 'Jawa/Indonesia'),
            DataForm(form: 'Status Perkawinan', form2: '-'),
          ]),
    );
  }
}

class DataForm extends StatelessWidget {
  const DataForm({Key? key, required this.form, required this.form2})
      : super(key: key);

  final String form;
  final String form2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          form,
          style: TextStyle(
            color: Color(0xFF636363),
            fontSize: 14.0,
          ),
        ),
        SizedBox(height: 2),
        Text(
          form2,
          style: TextStyle(
            color: Color(0xFF217777),
            fontSize: 14.0,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 2,
          color: const Color(0xFF636363),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}

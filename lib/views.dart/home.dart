import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:biodata1/models/msiswa.dart';
import 'package:biodata1/models/api.dart';

import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key, required String title});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late Future<List<SiswaModel>> sw;
  final formkey = GlobalKey<HomeState>();
  @override
  void iniState() {
    super.initState();
    sw =getSwList();
  }
  Future<List<SiswaModel>> getSwList() async{
    final response = await http.get(Uri.parse(BaseUrl.data));
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<SiswaModel> sw = items.map<SiswaModel>((json) {
      return SiswaModel.fromJson(json);
    }).toList();
    return sw;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data Siswa"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: FutureBuilder<List<SiswaModel>>(
          future: sw,
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if (!snapshot.hasData) return const CircularProgressIndicator();
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = snapshot.data[index];
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      trailing: const Icon(Icons.view_list),
                      title: Text(
                        data.nis + " " + data.nama,
                        style: const TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(data.tplahir + "," + data.tglahir),
                      onTap: () {
                      },
                    ),
                  );
                });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        hoverColor: Colors.pinkAccent,
        backgroundColor: Colors.pink,
        onPressed: () {
        },
      ),
    );
  }
}


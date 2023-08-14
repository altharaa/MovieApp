import 'package:first_project/lama/Siswa.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Siswa>? siswa11PPLG2 = [];

  //logika yang pertamakali dipanggil ketika di run
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Siswa cia = new Siswa("Zaskia", "sscia@gmail.com");
    Siswa u = new Siswa("Rafi'u", "piu@gmail.com");
    Siswa lv = new Siswa("Asyella", "asyellaveratia@gmail.com");
    Siswa nares = new Siswa("Nareswara", "naresalhaq@gmail.com");
    siswa11PPLG2?.add(cia);
    siswa11PPLG2?.add(u);
    siswa11PPLG2?.add(lv);
    siswa11PPLG2?.add(nares);
  }

  @override
  //widget yang dieksekusi
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: siswa11PPLG2?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(siswa11PPLG2![index].name),
                      Text(siswa11PPLG2![index].email),
                    ],
                  ),
                );
          }
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: rumah(),
    );
  }
}

class rumah extends StatelessWidget {
  const rumah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dialog GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /* INI ADALAH DIALOG DEFAULT DARI MATERIALAPP*/
            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20)
            //     ),
            //     title: Text("Ini Dialog"),
            //     content: Text("Ini adalah isi konten dialog"),
            //   ),
            // );

            /*INI ADALAH DIALOG DARI GETMATERIAL DENGAN DIALOG DEFAULT BAWAAN GETX*/
            // Get.defaultDialog(
            //   title: "Ini Judul",
            //   middleText: "Ini adalah isi konten dialog",
            //   actions: [
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Cancel"),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Done"),
            //     ),
            //   ],
            // );

            /*INI ADALAH DIALOG DENGAN MENGGUNAKAN GETMATERIAL DENGAN DIALOG DARI MATERIALAPP DARI GETX*/
            
            Get.dialog(
              AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text("Ini Dialog"),
                content: Text("Ini adalah isi konten dialog"),
              ),
            );
          },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}

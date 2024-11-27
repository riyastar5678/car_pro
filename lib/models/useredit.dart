import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Useredit extends StatefulWidget {
  const Useredit({super.key});

  @override
  State<Useredit> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Useredit> {
  File? _image;
  final picker = ImagePicker();

Future getImageGallery() async{
  final PickedFile=await picker.pickImage(
    source: ImageSource.gallery,
    imageQuality: 80);

    setState(() {
      if (PickedFile!=null){
        _image = File(PickedFile.path);
      }else {
        print("No Image Picked");
      }
      
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 30, 29, 29),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Car Details",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Car Name",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Car Name",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    prefixIcon: Icon(Icons.directions_car)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Description",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Car Description",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    prefixIcon: Icon(Icons.edit)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Price",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Car Price",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    prefixIcon: Icon(Icons.edit)),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                getImageGallery();
              },
              child: Container(
                height: 200 ,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey
                  ),
                ),
                child: _image != null ? Image.file(_image!.absolute, fit: BoxFit.cover)
                : Center(
                  child: Icon(Icons.add_a_photo_outlined,
                  size: 30,),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}

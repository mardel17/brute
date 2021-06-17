import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:brute/utils/const.dart';
import 'package:brute/utils/globals.dart' as Globals;

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  File? _imageFile;
  final picker = ImagePicker();

  Future showImagePicker() async {
    try {
      final pickedFile = await picker.getImage(
          source: ImageSource.gallery, maxWidth: 600, maxHeight: 600);

      setState(() {
        if (pickedFile != null) {
          _imageFile = File(pickedFile.path);
        } else {
          print('No image selected.');
        }
      });
    } catch (e) {}
    retrieveLostData(context);
  }

  Future<void> retrieveLostData(BuildContext context) async {
    final LostData response = await picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null && response.type == RetrieveType.image) {
      setState(() {
        _imageFile = File(response.file!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          'Account & Login',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            InkWell(
              onTap: () async {
                await showImagePicker();
              },
              child: Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 36,
                      child: (_imageFile != null)
                          ? ClipOval(
                              child: Image.file(
                                _imageFile!,
                                fit: BoxFit.cover,
                                width: 72,
                                height: 72,
                              ),
                            )
                          : Icon(Icons.add_a_photo),
                    ),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.edit,
                          size: 12,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "Account Details",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              tileColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full name",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text("user name"),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "Friends can see your name and photo, while any others can see your mood and username."),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "Login Info",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              tileColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text("ivanpetrov@gmail.com"),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone number",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text("123456789"),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text("•••••••••••••"),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "Connected Accounts",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              child: ListTile(
                tileColor: Colors.transparent,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Facebook",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text("facebook email"),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

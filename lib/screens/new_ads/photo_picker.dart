// ignore_for_file: unused_local_variable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:img_picker_platform_interface/img_picker_platform_interface.dart';

class PhotoPicker extends StatefulWidget {
  const PhotoPicker({super.key, this.title});

  final String? title;

  @override
  State<PhotoPicker> createState() => _PhotoPickerState();
}

class _PhotoPickerState extends State<PhotoPicker> {
  Future<void> uploadPhotos() async {
    final List<XFile> photoList = await ImagePickerPlatform.instance
        .getMultiImageWithOptions(
            options: const MultiImagePickerOptions(limit: 2));
    var s = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            'تصاویر',
            style: TextStyle(
              fontFamily: 'vazir',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xffe5050e),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'لطفن تصاویر خود را بارگزاری کنید',
            style: TextStyle(
              fontFamily: 'vazir',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xffc1c1c1),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          FilledButton(
            onPressed: () {
              uploadPhotos();
            },
            child: const Text('Upload Photo'),
          ),
        ],
      ),
    );
  }
}

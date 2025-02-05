import 'package:flutter/material.dart';

class PhotoAdsWidget extends StatefulWidget {
  const PhotoAdsWidget({super.key});

  @override
  State<PhotoAdsWidget> createState() => _PhotoAdsWidgetState();
}

class _PhotoAdsWidgetState extends State<PhotoAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 18),
          child: const Image(
            width: 350,
            image: AssetImage('assets/images/villa.jpg'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              icon: const Row(
                children: [
                  Text(
                    'حذف آگهی',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              icon: const Row(
                children: [
                  Text(
                    'کابل',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

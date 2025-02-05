import 'package:flutter/material.dart';

class ButtonAdsWidget extends StatefulWidget {
  const ButtonAdsWidget({super.key});

  @override
  State<ButtonAdsWidget> createState() => _ButtonAdsWidgetState();
}

class _ButtonAdsWidgetState extends State<ButtonAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          icon: const Row(
            children: [
              Text(
                'ویرایش آگهی',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ],
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          icon: const Row(
            children: [
              Text(
                'نمایش آگهی',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.visibility,
                color: Colors.white,
              ),
            ],
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          icon: const Row(
            children: [
              Text(
                'ارتقا آگهی',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.ads_click_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

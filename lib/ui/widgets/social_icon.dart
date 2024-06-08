
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset("assets/images/google_icon.png", height: 40,),
            ),
            Text("Continue with another Gmail",
              style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w700
              ),)
          ],
        ),
      ),
    );
  }
}


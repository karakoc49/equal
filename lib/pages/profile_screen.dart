import 'package:flutter/material.dart';
import 'package:equal/context_extension.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(249, 249, 255, 1),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.1),
              horizontal: context.dynamicWidth(0.1)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26), color: Colors.white),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.03)),
                  child: ClipRRect(
                    child: Image.network(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQGJ-vprj8yPJg/profile-displayphoto-shrink_200_200/0/1639850989557?e=1654128000&v=beta&t=yGWOZigbwnVNYyY2e5_ULCCAuFpYCjXtys07WNMXeZQ',
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: context.dynamicHeight(0.01)),
                  child: Text('Haluk Muhsin Karakoç',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Text('(+90)531 210 4770')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

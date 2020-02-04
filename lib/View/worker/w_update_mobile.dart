import 'package:flutter/material.dart';

import '../../main.dart';
import 'w_profile.dart';

class WorkerMobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<WorkerMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            //title: Text('Update Your Name'),
            backgroundColor: Colors.lightGreen,
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return WorkerProfile();
                  }));
                }),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Update your mobile number',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                     // fontFamily: 'Raleway',
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  'We will send a code to your new mobile numebr to verify your account',
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.none,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  maxLength: 11,
                  keyboardType:TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '+92 301 2345678',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                    width: 330,

                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightGreen)),
                      color: Colors.lightGreen,
                      child: Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                          return MyApp();
                        }));
                      },

                      //  padding: EdgeInsets.only(top: 20),
                    )),
              ],
            ),
          )
    );
  }
}

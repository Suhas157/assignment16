import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:http/http.dart';
import 'models/screen_model.dart';
import 'dart:async';



class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Screen? screen;

  Future<void> downloadData() async {
//    final response = await http.get(Uri.encodeFull(link), headers: {"Accept": "application/json"});
    //  return response.body;
    //  final response = await http.get("https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80");
    //   final Response response = await http.get(dogApiUrl);
    //   final Map<String, dynamic> jsonResponse = json.decode(response.body);
    //   jsonResponse['message'].forEach((dogImageUrl) => dogs.add(dogImageUrl));
    // await http.get('');
    Future.delayed(const Duration(seconds: 2));
    // return rootBundle.load("https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80");
    // return Future.value("Data download successfully");
  }

  @override
  void initState() {
    loadScreen();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<String> _loadScreenAsset() async {
    return await rootBundle.loadString("assets/screen.json");
  }

  Future loadScreen() async {
    String jsonString = await _loadScreenAsset();
    final jsonResponse = json.decode(jsonString);
    setState(() {
      screen = Screen.fromJson(jsonResponse);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,


          //   builder:(BuildContext context,AsyncSnapshot<ByteData> snapshot){
          //     if(!snapshot.hasData){
          //       return const CircularProgressIndicator();
          //       else if(snapshot.hasError){
          //         return const Text('eror');
          //     }
          //       else{
          //         return Image.memory(snapshot.data!buffer.asUnit8List());
          //     }
          //     }
          //   }
          // ),
          children: [
            // FutureBuilder<String>(
            //   future: downloadData(),
            //   builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            //     List<Widget> children;
            //
            //
            //     if (snapshot.hasData) {
            //       children = <Widget>[
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(10.0),
            //           child: Image.network(
            //             "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80",
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 16),
            //           child: Text('Result: ${snapshot.data}'),
            //         )
            //       ];
            //     } else if (snapshot.hasError) {
            //       children = <Widget>[
            //         const Icon(
            //           Icons.error_outline,
            //           color: Colors.red,
            //           size: 60,
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 16),
            //           child: Text('Error: ${snapshot.error}'),
            //         )
            //       ];
            //     } else {
            //       children = const <Widget>[
            //         SizedBox(
            //           child: CircularProgressIndicator(),
            //           width: 60,
            //           height: 60,
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(top: 16),
            //           child: Text('Awaiting result...'),
            //         )
            //       ];
            //     }
            //     return Center(
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: children,
            //       ),
            //     );
            //   },
            // ),


            //     if(!snapshot.hasData){
            //       return const CircularProgressIndicator();
            //     }else{
            //       if (snapshot.hasError) {
            //         return Center(child: Text('Error: ${snapshot.error}'));
            //       } else {
            //         return ClipRRect(
            //           borderRadius: BorderRadius.circular(10.0),
            //           child: Image.network(
            //             "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80",
            //             fit: BoxFit.cover,
            //           ),
            //         );
            //       }  // snapshot.data  :- get your object which is pass from your downloadData() function
            //     }
            //   },
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),

              child: Image.network(
                "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80",
                fit: BoxFit.cover,
              ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  Row(
                    children: <Widget>[

                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(

                              '${screen?.first_name} ${screen?.last_name}'
                                  .toUpperCase(),
                              style: const TextStyle(
                                fontFamily: 'family_name',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${screen?.region} ,${screen?.country}",
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0xffFDB643),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                // Respond to button press
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "${screen?.bio} ",
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xff808080),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          const Text('Posts',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff808080),
                            ),
                          ),
                          Text(
                            ' ${screen?.post}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          const Text('Followers',
                            style: const TextStyle(
                              fontSize: 10,
                              color: Color(0xff808080),
                            ),),
                          Text(
                            ' ${screen?.followers}',

                            style: const TextStyle(
                              fontSize: 18,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Following',
                            style: const TextStyle(
                              fontSize: 10,
                              color: Color(0xff808080),
                            ),),
                          Text(
                            ' ${screen?.following}',

                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),);
  }
}

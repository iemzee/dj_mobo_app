

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobo_app/Config/images.dart';
import 'package:mobo_app/Utils/common_widgets.dart';

class DejureRulesScreen extends StatefulWidget {
  const DejureRulesScreen({Key? key}) : super(key: key);

  @override
  State<DejureRulesScreen> createState() => _DejureRulesScreenState();
}

class _DejureRulesScreenState extends State<DejureRulesScreen> {
   List<Rules> _rulesList = [];
   late Future _future;
   bool screenLoader = true;
    Future getProjectDetails() async {
      print('insidenhere');
    await FirebaseFirestore.instance
        .collection('first')
        .get()  
        .then((QuerySnapshot snapshot) {
          print('got dsyan');
      snapshot.docs.forEach((f) {
        print(f.get('id'));
        _rulesList.add(
          Rules(
              id: f.get('id'),
              title: f.get('title'),
              subtitle: f.get('subtitle'),
              ),
        );
      });
    });
    

    return _rulesList;
  }
  @override
  void initState() {
    super.initState();
        _future = getProjectDetails().then((value) => {screenLoader = false});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100]!.withOpacity(0.2),
        
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
              size: 20,
            ),
          ),
          title: Container(
           
          )),
          body:FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
            return 
             screenLoader == true
                  ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueAccent[100]!.withOpacity(0.2),
                    child: Center(
                        child: CommonWidgets.progressIndicator,
                      ),
                  ):Container(
              color: Colors.blueAccent[100]!.withOpacity(0.2),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset(
                      Images.inspector,
                      height: 80,
                      // color: Colors.blueAccent[100],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Let's go over some rules",style:  Theme.of(context)
                                .textTheme
                                .titleMedium!.copyWith(
                                  fontWeight: FontWeight.w800
                                ),),
                          SizedBox(height: 7,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text("We're creating an all-inclusive,safe and private space for Muslims to meet each other",
                          style:Theme.of(context)
                                .textTheme
                                .bodySmall!.copyWith(
                                  fontWeight: FontWeight.w500
                                )
                          
                          )),
                      ],
                  )
                        ],
                      ),
                    ),

                 
                  Expanded(
                    child: ListView.builder(
                    itemCount: _rulesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal:15.0,vertical: 20),
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            
                            child: const Icon(Icons.lock,color: Colors.white,size: 17,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(_rulesList[index].title,style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13
                                ),),
                                SizedBox(height: 3,),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Text(_rulesList[index].subtitle, style:  TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12
                                  ),),
                                ),
                            ],
                          )
                        ],
                         
                         
                          );
                          
                    }),
                  ),
                   Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        height: 40,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.6), borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
            onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DejureRulesScreen()));
            },
            child: Text(
              "I Agree",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      ),
                   ],
                ),
              ),
            );
            }
          ),
    

    );
    
  }
}




class Rules {
  String id;
  String title;
  String subtitle;

  Rules({required this.id, required this.title, required this.subtitle});
}
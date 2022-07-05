import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobo_app/Interfaces/DejureAssessment/rules_screen.dart';

import '../../Config/images.dart';

class DejureGridScreen extends StatefulWidget {
  const DejureGridScreen({Key? key}) : super(key: key);

  @override
  State<DejureGridScreen> createState() => _DejureGridScreenState();
}

class _DejureGridScreenState extends State<DejureGridScreen> {
  List<GridItem> _itemsList = [];
   late Future _future;
   bool screenLoader = true;

    Future getProjectDetails() async {
      print('insidenhere');
    await FirebaseFirestore.instance
        .collection('second')
        .get()  
        .then((QuerySnapshot snapshot) {
          print('got dsyan');
      snapshot.docs.forEach((f) {
        print(f.get('id'));
        _itemsList.add(
          GridItem(
              id: f.get('id'),
              image: f.get('image'),
             
              ),
        );
      });
    });
    

    return _itemsList;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getProjectDetails().then((value) => {screenLoader = false});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            margin: EdgeInsets.only(right: 35),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent.withOpacity(0.6),
                      ),
                    )),
                Flexible(flex: 1, child: Container()),
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add Media",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Add your best photos to get higher ammount of daily matches ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: FutureBuilder(
                  future: _future,
                  builder: (context, snapshot) {
                  return GridView.builder(
                    itemCount: _itemsList.length,
                    itemBuilder: (context, index) => itemTile(context, index, _itemsList[index]),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4),
                  );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        height: 60,
        width: MediaQuery.of(context).size.width * 0.8,
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
              "Next",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  Widget itemTile(BuildContext context, int index, GridItem item) {
    return Center(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent[100]!.withOpacity(0.2),
            ),
            child: item.image != "N/A"
                ? Image.network(
                    item.image,
                    height: 140,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )))
                    ],
                  )),
      ),
    );
  }
}

class GridItem {
  String id;
  String image;
  GridItem({required this.id, required this.image});
}

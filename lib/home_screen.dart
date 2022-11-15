import 'package:flutter/material.dart';
import 'package:practice_api/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String homeTitle = 'Home';
  String demoTitle = 'Demo Title';
  String demoSubTitle = 'Demo Subtitle';

  List<String> names = <String>["Sanjesh","Nisha", "Prabhu", "Raju","Bipin","Baba", "Prahalad","Prity","Chhotu","Abhik","Simran","Ravi"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeTitle),
      ),

      body: ListView(
        children: List.generate(names.length, (index) {
          return InkWell(
            onTap: (){
              print("Line30: $index");
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(name: names[index])));
            },
            child: ListTile(
              title: Text(names[index]),
              subtitle: Text("$demoSubTitle ${index + 1}"),
              leading: const Icon(Icons.person),
              trailing: InkWell(
                  onTap: () {
                    setState(() {
                      names.removeAt(index);
                    });
                  },
                  child: Icon(Icons.delete)),
            ),
          );
        }),
      ),
    );
  }

}

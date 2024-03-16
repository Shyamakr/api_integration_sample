import 'package:api_integration_sample/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<HomeScreenController>(context, listen: false).generateModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<HomeScreenController>(
      builder: (context, value, child) => ListView.builder(
          itemCount: value.PersonModelList.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text(value.PersonModelList[index].name),
                      Text(value.PersonModelList[index].age.toString()),
                      Text(value.PersonModelList[index].gender),
                      Text(value.PersonModelList[index].occupation ?? ""),
                      Text(value.PersonModelList[index].city),
                      Text(value.PersonModelList[index].maritialStatus),
                    ],
                  ),
                ),
              )),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:mygateapp/navigation_utils/size_utils.dart';

class DailyHelpPage extends StatefulWidget {
  const DailyHelpPage({Key? key}) : super(key: key);

  @override
  State<DailyHelpPage> createState() => _DailyHelpPageState();
}

class _DailyHelpPageState extends State<DailyHelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("hi vandu"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeUtils.verticalBlockSize * 3,
              horizontal: SizeUtils.horizontalBlockSize * 1),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: ListTile.divideTiles(context: context, tiles: [
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Row(
                          children: [
                            Text('Abc'),
                            Spacer(),
                            Column(
                              children: [
                                Text('maid'),
                              ],
                            )
                          ],
                        ),
                        subtitle: Text('9876543210'),
                        trailing: IconButton(
                            icon: Icon(Icons.phone), onPressed: () {}),
                      ),
                    ),
                  ]).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

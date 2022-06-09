import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(tb());
}
class tb extends StatelessWidget {
  const tb({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text("name",))
      ],
      rows: [],
      
    );
  }
}
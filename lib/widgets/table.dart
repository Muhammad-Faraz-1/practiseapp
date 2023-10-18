import 'package:flutter/material.dart';
import 'package:sign_up_page_2/widgets/table_text.dart';

class Table1 extends StatelessWidget {
  const Table1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              
              border: TableBorder.all(
                style: BorderStyle.solid,
                width: 1,
                color: Colors.black,
        
              ),
                // Datatable widget that have the property columns and rows.
                columns:  [
                  
                 
                  // Set the name of the column
                  DataColumn(
                    label: Expanded(
                      flex: 1,
                      child: TableText(text: 'Ser')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'Auth')),
                  ),
                 
                  DataColumn(
                    
                    label: Expanded(
                      flex: 4,
                      child: TableText(text: 'Work description')),
                  ),
                    DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'Status')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'Action Taken')),
                  ),
                   DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'Tech')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'QCI')),
                  ),
                ],
                rows:  [
                  
                  // Set the values to the columns
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: 'ali')),
                    DataCell(TableText(text: "sajghjfa djhsfhd jsajsa jnsajd")),
                     DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: ' hamza')),
                    DataCell(TableText(text: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: ' kasif')),
                    DataCell(TableText(text: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: ' atif')),
                    DataCell(TableText(text: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: ' hannan')),
                    DataCell(TableText(text: "sajghjfa djhsfhd jsajsa jnsajd")),
                   DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: 'ali ahmed')),
                    DataCell(TableText(text: "sajghjfa djhsfhd")),
                    DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                  ]),
                   DataRow(cells: [
                     DataCell(TableText(text: '1')),
                    DataCell(TableText(text: 'sajid khan')),
                    DataCell(TableText(text: "sajghjfa djhsfhd basb basdb absdn")),
                   DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                  ]),
                   DataRow(cells: [
                     DataCell(TableText(text: '1')),
                   DataCell(TableText(text: 'lorem epsum')),
                    DataCell(TableText(text: "sajghjfa djhsfhd")),
                   DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                  ]),
                   DataRow(cells: [
                    DataCell(TableText(text: '1')),
                    DataCell(TableText(text: 'lorem epsum')),
                    DataCell(TableText(text: "sajghjfa djhsfhd")),
                    DataCell(TableText(text: "GOOD")),
                     DataCell(TableText(text: "YES")),
                     DataCell(TableText(text: "HELI")),
                     DataCell(TableText(text: "SIGN")),
                  ]),
                ]),
          ),
        ),
      ),
    );
  }
}

class Tablelandsacpe extends StatelessWidget {
  const Tablelandsacpe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              
              border: TableBorder.all(
                style: BorderStyle.solid,
                width: 1,
                color: Colors.black,
        
              ),
                // Datatable widget that have the property columns and rows.
                columns:  [
                  
                 
                  // Set the name of the column
                  DataColumn(
                    label: Expanded(
                      flex: 1,
                      child: TableTextLandscape(text1: 'Ser')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableTextLandscape(text1: 'Auth')),
                  ),
                 
                  DataColumn(
                    
                    label: Expanded(
                      flex: 4,
                      child: TableTextLandscape(text1: 'Work description')),
                  ),
                    DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableTextLandscape(text1: 'Status')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableTextLandscape(text1: 'Action Taken')),
                  ),
                   DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableTextLandscape(text1:'Tech')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableTextLandscape(text1: 'QCI')),
                  ),
                ],
                rows:  [
                  
                  // Set the values to the columns
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: 'ali')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                     DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                 DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(TableTextLandscape(text1: '1')),
                    DataCell(TableTextLandscape(text1: ' hamza')),
                    DataCell(TableTextLandscape(text1: "sajghjfa djhsfhd jsajsa jnsajd")),
                    DataCell(TableTextLandscape(text1: "GOOD")),
                     DataCell(TableTextLandscape(text1: "YES")),
                     DataCell(TableTextLandscape(text1: "HELI")),
                     DataCell(TableTextLandscape(text1: "SIGN")),
                    
                  ]),
                ]),
          ),
        ),
      ),
    );
  }
}

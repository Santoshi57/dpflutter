import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle:true,
      ),
    body: Padding(
      padding:const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Task Title"),
          TextFormField(
            decoration: InputDecoration(
              fillColor:Color(0XFFF5F2F9),
              filled: true,
              hintText: "Task Item",
              focusedBorder: formBorder(true),
              enabledBorder: formBorder(false),

            ),

          ),
          const SizedBox(
            height:8,
          ),
          formTitle("Category Name"),
          const Row(
            children: [
              Chip(
                label: Text("Education",
                style: TextStyle(
                  color: Colors.white,
                ),),
                backgroundColor: Colors.purple,
              ),
              SizedBox(
                width: 8,
              ),
              Chip(label: Text("Shop")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  formTitle("Date"),
                  SizedBox(
                    width: 100,
                    child: TextFormField(),
                  )
                ],
              )
            ],
          )

          
        ],
      ),
    ),
    );
  }

  formBorder(bool bool) {}

  formTitle(String s) {}
}


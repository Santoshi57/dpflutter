
import 'package:flutter/material.dart';

import 'components/text_title.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New List Iem"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTitle("Task Title"),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0XFFF5F2F9),
                  filled: true,
                  hintText: "Task Item",
                  focusedBorder: formBorder(true),
                  enabledBorder: formBorder(false),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextTitle("Category Name"),
              Row(
                children: [
                  Chip(
                    label: Text(
                      "Education",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Chip(label: Text("Shop")),
                ],
              ),
              // infinite width + infinite width
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextTitle("Date"),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 2) - 12,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0XFFF5F2F9),
                            filled: true,
                            hintText: "Task Item",
                            focusedBorder: formBorder(true),
                            enabledBorder: formBorder(false),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextTitle("Time"),
                      // 300 px width
                      // 150 for each
                      // 150+150 = 300
                      // 300 -8 -8 = 300-16
                      // 150 -8 foe each
                      // 300 - 16 -8
                      // 300 - 24
                      // 150-12

                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 2) - 12,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0XFFF5F2F9),
                            filled: true,
                            hintText: "Task Item",
                            focusedBorder: formBorder(true),
                            enabledBorder: formBorder(false),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              TextTitle("Note"),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  fillColor: Color(0XFFF5F2F9),
                  filled: true,
                  hintText: "Note",
                  focusedBorder: formBorder(true),
                  enabledBorder: formBorder(false),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    // foregroundColor: Colors.pinkAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder formBorder(bool isForFocus) {
    if (isForFocus) {
      return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      );
    }
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0,
      ),
    );
  }
}
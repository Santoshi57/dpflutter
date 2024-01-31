import 'package:flutter/material.dart';
import 'package:newproject/components/text_title.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  late final TextEditingController taskTitle;
  late final TextEditingController date;
  late final TextEditingController time;
  late final TextEditingController note;

  String categoryName = 'school';

  @override
  void initState() {
    taskTitle = TextEditingController();
    date = TextEditingController();
    time = TextEditingController();
    note = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    taskTitle.dispose();
    date.dispose();
    time.dispose();
    note.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New List Iem"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTitle("Task Title"),
                TextFormField(
                  controller: taskTitle,
                  validator: (value) {
                    if (value == null) return "Invalid value";
                    if (value.trim().isEmpty) return "Value cannot be empty";
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: const Color(0XFFF5F2F9),
                    filled: true,
                    hintText: "Task Item",
                    focusedBorder: formBorder(true),
                    enabledBorder: formBorder(false),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextTitle("Category Name"),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          categoryName = "school";
                        });
                        print(categoryName);
                      },
                      child: Chip(
                        label: Text(
                          "Education",
                          style: TextStyle(
                            color: categoryName == "school"
                                ? Colors.white
                                : null,
                          ),
                        ),
                        backgroundColor: categoryName == "school"
                            ? Colors.purple
                            : null,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          categoryName = "market";
                        });
                        print(categoryName);
                      },
                      child: Chip(
                        label: Text(
                          "Shop",
                          style: TextStyle(
                            color: categoryName == "market"
                                ? Colors.white
                                : null,
                          ),
                        ),
                        backgroundColor: categoryName == "market"
                            ? Colors.purple
                            : null,
                      ),
                    ),
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
                            validator: (value) {
                              if (value == null) return "Invalid value";
                              if (value.trim().isEmpty)
                                return "Value cannot be empty";
                              return null;
                            },
                            controller: date,
                            decoration: InputDecoration(
                              fillColor: const Color(0XFFF5F2F9),
                              filled: true,
                              hintText: "Date",
                              focusedBorder: formBorder(true),
                              enabledBorder: formBorder(false),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
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
                            validator: (value) {
                              if (value == null) return "Invalid value";
                              if (value.trim().isEmpty)
                                return "Value cannot be empty";
                              return null;
                            },
                            controller: time,
                            decoration: InputDecoration(
                              fillColor: const Color(0XFFF5F2F9),
                              filled: true,
                              hintText: "Time",
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
                  controller: note,
                  maxLines: 3,
                  decoration: InputDecoration(
                    fillColor: const Color(0XFFF5F2F9),
                    filled: true,
                    hintText: "Note",
                    focusedBorder: formBorder(true),
                    enabledBorder: formBorder(false),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      /**
                          {
                          "category_name": "school",
                          "description": "This is the description of completed task",
                          "title": "This is the title",
                          }, */
                      bool formValidated = formKey.currentState!.validate();
                      if (formValidated) {
                        var taskTitle = this.taskTitle.text.trim();
                        var date = this.date.text.trim();
                        var time = this.time.text.trim();
                        var note = this.note.text.trim();
                        Map<String, dynamic> data = {
                          "description": note,
                          "title": taskTitle,
                          "category_name": categoryName,
                        };
                        Navigator.pop(context, data);
                      } else {
                        print("form not valid");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      // foregroundColor: Colors.pinkAccent,
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder formBorder(bool isForFocus) {
    if (isForFocus) {
      return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      );
    }
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0,
      ),
    );
  }
}
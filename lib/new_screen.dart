import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New List"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formTitle("Task Title"),
            TextFormField(
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
            formTitle("Category Name"),
            const Row(
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
                    formTitle("Date"),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 12,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0XFFF5F2F9),
                          filled: true,
                          hintText: "Task Item",
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
                    formTitle("Time"),
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
                          fillColor: const Color(0XFFF5F2F9),
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
            formTitle("Note"),
            TextFormField(
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
                onPressed: () {},
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
    );
  }

  Padding formTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Text(title),
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

import 'package:flutter/material.dart';

import 'blog.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  TextEditingController imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Blog Content",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: contentController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Content",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: imageUrlController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Image URL",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: (){
                    addBlog();
                  },
                  child: const Text("Add")),
            )
          ],
        ),
      ),
    );
  }

  void addBlog(){
    String title = titleController.text ;

    String content = contentController.text;

    String imageUrl = imageUrlController.text;

    final blog =  Blog(title: title, content: content, imageUrl: imageUrl);

    Navigator.pop(context, blog);

  }
}

import 'package:flutter/material.dart';

import 'blog.dart';

class EditBlog extends StatefulWidget {
  EditBlog({super.key, required this.title, required this.content, required this.imageUrl,});

  String title;
  String content;
  String imageUrl;

  @override
  State<EditBlog> createState() => _EditBlogState();
}

class _EditBlogState extends State<EditBlog> {
  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  TextEditingController imageUrlController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.title;
    contentController.text = widget.content;
    imageUrlController.text = widget.imageUrl;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Blog Content",
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
                  child: const Text("Save")),
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

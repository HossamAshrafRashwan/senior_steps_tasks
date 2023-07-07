import 'package:flutter/material.dart';
import 'add_blog.dart';
import 'blog.dart';
import 'edit_blog.dart';
// import 'package:story_view/story_view.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {

  List<Blog> blogs = [
    Blog(title: 'Test1', content: 'Test1 content data', imageUrl: 'https://wallpaperaccess.com/full/4609573.jpg'),
    Blog(title: 'Test1', content: 'Test1 content data', imageUrl: 'https://wallpaperaccess.com/full/4609573.jpg'),
    Blog(title: 'Test1', content: 'Test1 content data', imageUrl: 'https://wallpaperaccess.com/full/4609573.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: blogs.length< 2 ? Colors.blueGrey : Colors.white,
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => const AddBlog(),
            ),
          ).then((value) {
            blogs.add(value);
            setState(() {});
          }
          );
        },
        child: Icon(
          Icons.add,
          color: blogs.length < 2 ? Colors.white : Colors.blueGrey,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Blog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: InkWell(
              // onTap: () => navigateToStoryViewScreen(),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://wallpaperaccess.com/full/4609573.jpg"),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: blogs.length,
                itemBuilder: (context, index){
                  return blogContent(index);
                }),
          ),
        ],
      ),
    );
  }
  Widget blogContent(int index){
    final blog = blogs[index];
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: Image.network(
              blog.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text(
                  blog.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditBlog(
                          title: blogs[index].title,
                          content: blogs[index].content,
                          imageUrl: blogs[index].imageUrl,
                        ),
                      ),
                    ).then((value) {
                      blogs.removeAt(index);
                      blogs.insert(index, value);
                      setState(() {});
                    });
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    blogs.removeAt(index);
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              blog.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }

//   navigateToStoryViewScreen() {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => StoryView()));
//
//   }
}


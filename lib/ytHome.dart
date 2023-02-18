import 'package:flutter/material.dart';
import 'package:youtubeclone/videofeed.dart';

class YoutubeHome extends StatefulWidget {
  YoutubeHome({Key? key}) : super(key: key);

  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=3R6KnQLvZNI',
      'thumbnail': "https://i.ytimg.com/vi/3R6KnQLvZNI/maxresdefault.jpg",
      'title': 'Complete flutter course with 14+ apps',
      'date': 'May 15, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=sPW7nDBqt8w',
      'thumbnail': 'https://i.ytimg.com/vi/sPW7nDBqt8w/maxresdefault.jpg',
      'title': 'The Flutter YouTube Channel is Here!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=vqPG1tU6-c0',
      'thumbnail': 'https://i.ytimg.com/vi/vqPG1tU6-c0/maxresdefault.jpg',
      'title': 'Introducing The Boring Show!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=frEG8f0Aa1c',
      'thumbnail': 'https://i.ytimg.com/vi/frEG8f0Aa1c/maxresdefault.jpg',
      'title': 'Flutter vs React native',
      'date': 'Apr 10, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://youtu.be/GE0oeBj9Cr0',
      'thumbnail': 'https://i.ytimg.com/vi/GE0oeBj9Cr0/maxresdefault.jpg',
      'title': 'How to create first flutter for web project   step by step',
      'date': 'May 11, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // VideoFeed()
          CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            title: Container(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage(
                    'assets/logoblack.png',
                  ),
                  fit: BoxFit.contain,
                )),
            actions: [
              IconButton(
                color: Colors.black,
                icon: Icon(Icons.cast),
                tooltip: 'search',
                onPressed: () {},
              ),
              IconButton(
                color: Colors.black,
                icon: Icon(Icons.notifications),
                tooltip: 'search',
                onPressed: () {},
              ),
              IconButton(
                color: Colors.black,
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                    'https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg',
                  ),
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        child: Image(
                          image: NetworkImage(data[index]['thumbnail']),
                          centerSlice: Rect.largest,
                        ),
                        aspectRatio: 16 / 9,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data[index]['profile_url']),
                        ),
                        title: Text(
                          data[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            data[index]['creator'] +
                                " . " +
                                data[index]['date'],
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                );
              },
              childCount: data.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          currentIndex: 0,
          showUnselectedLabels: true,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: "Subscriptions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library), label: "Library"),
          ]),
    );
  }
}

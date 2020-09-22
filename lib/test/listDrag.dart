import 'package:flutter/material.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final scaffoldState = GlobalKey<ScaffoldState>();
  final listMusics = <ItemMusic>[
    ItemMusic('key1', 'Biarlah', 'Killing Me Inside', 'REBIRTH'),
    ItemMusic('key2', 'Come As You Are', 'Nirvana', 'Nevermind (Remastered)'),
    ItemMusic('key3', 'Just A Girl', 'No Doubt', 'Tragic Kingdom'),
    ItemMusic('key4', 'Celebrity Skin', 'Hole', 'Celebrity Skin'),
    ItemMusic('key5', 'I\'m So Free', 'Beck', 'Colors'),
    ItemMusic(
        'key6', 'Only Happy When It Rains', 'Garbage', 'Absolute Garbage'),
    ItemMusic('key7', 'bad idea', 'Ariana Grande', 'thank u, next'),
    ItemMusic('key8', 'So Am I', 'Ava Max', 'Som Am I'),
    ItemMusic('key9', 'breathin', 'Ariana Grande', 'breathin'),
    ItemMusic('key10', 'Homesick', 'Dua Lipa', 'Dua Lipa (Deluxe)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text('Liked Songs'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
              var result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPlaylist(listMusics),
                ),
              );
              if (result != null) {
                scaffoldState.currentState.showSnackBar(
                  SnackBar(
                    content: Text('Playlist updated successfully'),
                  ),
                );
                setState(() {
                  listMusics.clear();
                  listMusics.addAll(result);
                });
              }
            },
            tooltip: 'Edit Playlist',
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: listMusics.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          var itemMusic = listMusics[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemMusic.title),
              Text(
                '${itemMusic.artist} • ${itemMusic.album} ${itemMusic.key}',
                style: Theme.of(context).textTheme.caption,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}

class EditPlaylist extends StatefulWidget {
  final List<ItemMusic> listMusics;

  EditPlaylist(this.listMusics);

  @override
  _EditPlaylistState createState() => _EditPlaylistState();
}

class _EditPlaylistState extends State<EditPlaylist> {
  final listMusicsTemp = <ItemMusic>[];
  bool reorderstatus = false;

  @override
  void initState() {
    listMusicsTemp.addAll(widget.listMusics);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Playlist'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              Navigator.pop(context, listMusicsTemp);
            },
          )
        ],
      ),
      body: ReorderableListView(
        children: listMusicsTemp.map((element) {
          return Padding(
            key: Key(element.key),
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(element.title),
                    Text(
                      '${element.artist} • ${element.album}',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Icon(Icons.drag_handle),
              ],
            ),
          );
        }).toList(),
        onReorder: (int oldIndex, int newIndex) {
          debugPrint('oldIndex: $oldIndex & newIndex: $newIndex');
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          setState(() {
            var itemMusicTemp = listMusicsTemp[oldIndex];
            listMusicsTemp.removeAt(oldIndex);
            listMusicsTemp.insert(newIndex, itemMusicTemp);
            reorderstatus = true;
          });
        },
      ),
    );
  }
}

class ItemMusic {
  String key;
  String title;
  String artist;
  String album;

  ItemMusic(this.key, this.title, this.artist, this.album);

  @override
  String toString() {
    return 'ItemMusic{key: $key, title: $title, artist: $artist, album: $album}';
  }
}

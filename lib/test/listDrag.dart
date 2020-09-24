// import 'package:flutter/material.dart';
// import 'package:skripsi/ui/constant/constantcolor.dart';

// class HomeApp extends StatefulWidget {
//   @override
//   _HomeAppState createState() => _HomeAppState();
// }

// class _HomeAppState extends State<HomeApp> {
//   final scaffoldState = GlobalKey<ScaffoldState>();
//   final listMusics = <ItemMusic>[
//     ItemMusic('key1', 'Biarlah', 'Killing Me Inside', 'REBIRTH'),
//     ItemMusic('key2', 'Come As You Are', 'Nirvana', 'Nevermind (Remastered)'),
//     ItemMusic('key3', 'Just A Girl', 'No Doubt', 'Tragic Kingdom'),
//     ItemMusic('key4', 'Celebrity Skin', 'Hole', 'Celebrity Skin'),
//     ItemMusic('key5', 'I\'m So Free', 'Beck', 'Colors'),
//     ItemMusic(
//         'key6', 'Only Happy When It Rains', 'Garbage', 'Absolute Garbage'),
//     ItemMusic('key7', 'bad idea', 'Ariana Grande', 'thank u, next'),
//     ItemMusic('key8', 'So Am I', 'Ava Max', 'Som Am I'),
//     ItemMusic('key9', 'breathin', 'Ariana Grande', 'breathin'),
//     ItemMusic('key10', 'Homesick', 'Dua Lipa', 'Dua Lipa (Deluxe)'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldState,
//       appBar: AppBar(
//         title: Text('Liked Songs'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.edit),
//             onPressed: () async {
//               var result = await Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => EditPlaylist(listMusics),
//                 ),
//               );
//               if (result != null) {
//                 scaffoldState.currentState.showSnackBar(
//                   SnackBar(
//                     content: Text('Playlist updated successfully'),
//                   ),
//                 );
//                 setState(() {
//                   listMusics.clear();
//                   listMusics.addAll(result);
//                 });
//               }
//             },
//             tooltip: 'Edit Playlist',
//           ),
//         ],
//       ),
//       body: ListView.separated(
//         padding: EdgeInsets.all(16),
//         itemCount: listMusics.length,
//         separatorBuilder: (context, index) => Divider(),
//         itemBuilder: (context, index) {
//           var itemMusic = listMusics[index];
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(itemMusic.title),
//               Text(
//                 '${itemMusic.artist} • ${itemMusic.album} ${itemMusic.key}',
//                 style: Theme.of(context).textTheme.caption,
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class EditPlaylist extends StatefulWidget {
//   final List<ItemMusic> listMusics;

//   EditPlaylist(this.listMusics);

//   @override
//   _EditPlaylistState createState() => _EditPlaylistState();
// }

// class _EditPlaylistState extends State<EditPlaylist> {
//   final listMusicsTemp = <ItemMusic>[];
//   bool reorderstatus = false;

//   @override
//   void initState() {
//     listMusicsTemp.addAll(widget.listMusics);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Playlist'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.save),
//             onPressed: () {
//               Navigator.pop(context, listMusicsTemp);
//             },
//           )
//         ],
//       ),
//       body: ReorderableListView(
//         children: listMusicsTemp.map((element) {
//           return Padding(
//             key: Key(element.key),
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(element.title),
//                     Text(
//                       '${element.artist} • ${element.album}',
//                       style: Theme.of(context).textTheme.caption,
//                     ),
//                   ],
//                 ),
//                 Icon(Icons.drag_handle),
//               ],
//             ),
//           );
//         }).toList(),
//         onReorder: (int oldIndex, int newIndex) {
//           debugPrint('oldIndex: $oldIndex & newIndex: $newIndex');
//           if (oldIndex < newIndex) {
//             newIndex -= 1;
//           }
//           setState(() {
//             var itemMusicTemp = listMusicsTemp[oldIndex];
//             listMusicsTemp.removeAt(oldIndex);
//             listMusicsTemp.insert(newIndex, itemMusicTemp);
//             reorderstatus = true;
//           });
//         },
//       ),
//     );
//   }
// }

// class ItemMusic {
//   String key;
//   String title;
//   String artist;
//   String album;

//   ItemMusic(this.key, this.title, this.artist, this.album);

//   @override
//   String toString() {
//     return 'ItemMusic{key: $key, title: $title, artist: $artist, album: $album}';
//   }
// }

//staggeredlist
// class OnBoardScreenPage extends StatefulWidget {
//   Color color;

//   OnBoardScreenPage({this.color});
//   @override
//   _OnBoardScreenPageState createState() => _OnBoardScreenPageState();
// }

// List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(2, 1),
//   const StaggeredTile.count(1, 2),
//   const StaggeredTile.count(1, 1),
//   const StaggeredTile.count(2, 2),
//   const StaggeredTile.count(1, 2),
//   const StaggeredTile.count(1, 1),
//   const StaggeredTile.count(3, 1),
//   const StaggeredTile.count(1, 1),
//   const StaggeredTile.count(4, 1),
// ];

// List<_Example01Tile> _tiles = <_Example01Tile>[
//   _Example01Tile(Colors.green, Icons.widgets),
//   _Example01Tile(Colors.lightBlue, Icons.wifi),
//   _Example01Tile(Colors.amber, Icons.panorama_wide_angle),
//   _Example01Tile(Colors.brown, Icons.map),
//   _Example01Tile(Colors.deepOrange, Icons.send),
//   _Example01Tile(Colors.indigo, Icons.airline_seat_flat),
//   _Example01Tile(Colors.red, Icons.bluetooth),
//   _Example01Tile(Colors.pink, Icons.battery_alert),
//   _Example01Tile(Colors.purple, Icons.desktop_windows),
//   _Example01Tile(Colors.blue, Icons.radio),
// ];

// class _OnBoardScreenPageState extends State<OnBoardScreenPage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text('example 02'),
//         ),
//         body: new Padding(
//             padding: const EdgeInsets.only(top: 12.0),
//             child: new StaggeredGridView.count(
//               crossAxisCount: 4,
//               staggeredTiles: _staggeredTiles,
//               children: _tiles
//                   .map((e) => Container(
//                         color: e.backgroundColor,
//                         child: Text('1'),
//                       ))
//                   .toList(),
//               mainAxisSpacing: 4.0,
//               crossAxisSpacing: 4.0,
//               padding: const EdgeInsets.all(4.0),
//             )));
//   }
// }

// class _Example01Tile {
//   _Example01Tile(this.backgroundColor, this.iconData);

//   final Color backgroundColor;
//   final IconData iconData;
// }

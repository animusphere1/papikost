// if (status == true) {
//   Navigator.pushReplacement(context,
//       MaterialPageRoute(builder: (context) => OnBoardScreen1()));
//   print("pindah hal 1");
// }

// if (status == false) {
//   Navigator.pushReplacement(context,
//       MaterialPageRoute(builder: (context) => OnBoardScreen2()));
//   print("pindah hal 2");
// }
// changehalaman();

// controller =
//     AnimationController(vsync: this, duration: Duration(seconds: 2));

// animation = Tween<double>(begin: 0, end: 100).animate(controller)
//   ..addListener(() {
//     setState(() {});
//   });
// controller.forward();

// Animation<double> animation;
//   AnimationController controller;
//   TickerProvider _ticker;

// List<int> cobadoang = [1, 2, 55, 40, 20, 30, 40];
// List<int> coba2;

// ambilangka() {
//   cobadoang.sort((a, b) => a.compareTo(b));

//   try {
//     cobadoang.shuffle();
//     if (coba2 == null) {
//       coba2 = cobadoang;
//     }
//     print(coba2);
//     print("Berhasil Ditambah");
//   } catch (e) {
//     Exception(e);
//   }
// }

//  _controller.addListener(() {
//       print(_controller.offset);

//       if (_controller.offset >= _controller.position.maxScrollExtent &&
//           !_controller.position.outOfRange) {

//           }

//       // if (_controller.offset <= _controller.position.minScrollExtent &&
//       //     !_controller.position.outOfRange) {
//       //   print("Maks Bang");
//       // }
//     });

//  _controller.animateTo(_controller.position.minScrollExtent,
//             curve: Curves.linear, duration: Duration(milliseconds: 500));

//             Widget _containerBottom(MediaQueryData mediaQuery) {
// return Align(
//   alignment: Alignment.bottomCenter,
//   child: Container(
//     height: 150,
//     child: ListView.builder(
//       controller: _controller,
//       itemCount: 100,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return Text(index.toString());
//       },
//     ),
//   ),
// );
// }

import 'package:ecommerce_flutter/screens/drawer.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class LiveStream extends StatefulWidget {
  const LiveStream({super.key});

  @override
  State<LiveStream> createState() => _LiveStreamState();
}

class _LiveStreamState extends State<LiveStream> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://media.tenor.com/xbzNsk1xsQoAAAAd/nal-do-canal.gif'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        drawer: MyDrawer(),
        appBar: MyAppBar(),
        body: Stack(
          children: [],
        ),
      ),
    );
  }
}

import 'package:din/widgets/bismi.dart';
import 'package:flutter/material.dart';

import '/widgets/verse.dart';
import '../utils/json.dart';

class Surah extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final chapter;

  const Surah({Key? key, this.chapter}) : super(key: key);
  @override
  State<Surah> createState() => _SurahState();
}

class _SurahState extends State<Surah> {
  List<dynamic> _verses = [];

  Future<void> initGetVerses() async {
    List<dynamic> verses = await getVerses(widget.chapter["id"]);

    if (mounted) {
      setState(() {
        _verses = verses;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initGetVerses();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildListDelegate([
          if (widget.chapter["id"] > 1)
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 32, left: 8, right: 8),
              child: Bismi(),
            ),
        ]),
      ),
      SliverList(
          key: PageStorageKey<String>("quran surah ${widget.chapter["id"]}"),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Verse(
                    verse: _verses[index],
                    chapter: widget.chapter["id"],
                  ),
                  if (index != _verses.length - 1) const Divider(height: 0)
                ],
              ),
            ),
            childCount: _verses.length,
          ))
    ]);
  }
}

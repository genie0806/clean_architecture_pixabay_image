import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_image_search/di/di.dart';
import 'package:try_image_search/presentation/mainview/search_page.dart';

void main() {
  runApp(
      MultiProvider(providers: globalProviders, child: const TryImageSearch()));
}

class TryImageSearch extends StatelessWidget {
  const TryImageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Try Image Search',
      home: SearchImageView(),
    );
  }
}

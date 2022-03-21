import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;
  const SearchBar({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 400,
      height: 50,
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue,
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Search Image',
          hintText: '이미지 검색',
          labelStyle: TextStyle(fontSize: 20, color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(width: 4, color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(width: 2, color: Colors.cyan),
            //검색창 위젯 만들기
          ),
        ),
      ),
    );
  }
}

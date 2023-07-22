import 'package:flutter/cupertino.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    required this.searchController,
    required this.filterNotifier,
  }) : super(key: key);

  final TextEditingController searchController;
  final ValueNotifier<Map<String, dynamic>> filterNotifier;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: widget.searchController,
      style: const TextStyle(
        color: CupertinoColors.secondaryLabel,
      ),
      onChanged: (text) {
        widget.filterNotifier.value["text"] = text;
        widget.filterNotifier.value = Map.from(widget.filterNotifier.value);
      },
      onSubmitted: (text) {},
    );
  }
}
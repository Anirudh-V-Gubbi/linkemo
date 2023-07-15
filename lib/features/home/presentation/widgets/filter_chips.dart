import 'package:flutter/material.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/core/utility.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';

class FilterChips extends StatefulWidget {
  const FilterChips({Key? key, required this.tags}) : super(key: key);

  final List<Tag> tags;

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  late List<ValueNotifier<bool>> filters;
  List<Tag> selectedFilters = [];

  @override
  void initState() {
    super.initState();

    filters = List.generate(
        widget.tags.length, (index) => ValueNotifier<bool>(false));

    // Default to "All" filter
    if (filters.isNotEmpty) {
      filters.first.value = true;
      selectedFilters.add(widget.tags.first);
    }
  }

  @override
  void didUpdateWidget(FilterChips oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    filters = List.generate(
        widget.tags.length, (index) => ValueNotifier<bool>(false));

    // Default to "All" filter
    if (filters.isNotEmpty) {
      filters.first.value = true;
      selectedFilters.add(widget.tags.first);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: mapIndexed(
          widget.tags,
          (int index, Tag tag) => ValueListenableBuilder(
              valueListenable: filters[index],
              builder: (BuildContext context, bool value, _) {
                return GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      if (value == false) {
                        for (int i = 1; i < filters.length; i++) {
                          if (filters[i].value == true) {
                            filters[i].value = false;
                          }
                        }
                        selectedFilters.clear();
                        selectedFilters.add(tag);
                        filters[index].value = true;
                      }
                    } else {
                      if (value == false) {
                        if (filters.first.value == true) {
                          selectedFilters.removeWhere(
                              (element) => element == widget.tags.first);
                          filters.first.value = false;
                        }
                        selectedFilters.add(tag);
                        filters[index].value = true;
                      } else {
                        if (selectedFilters.length > 1) {
                          selectedFilters
                              .removeWhere((element) => element == tag);
                          filters[index].value = false;
                        }
                      }
                    }
                  },
                  child: Chip(
                    shape: value == false
                        ? const StadiumBorder(
                            side: BorderSide(
                              color: kHighlightColor,
                            ),
                          )
                        : null,
                    backgroundColor:
                        value == true ? kFilterSelectedColor : kScaffoldColor,
                    label: Text(
                      tag.name,
                      style: const TextStyle(
                        color: kHighlightColor,
                      ),
                    ),
                  ),
                );
              })).toList(),
    );
  }
}

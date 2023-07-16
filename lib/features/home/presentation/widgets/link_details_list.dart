import 'package:flutter/material.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/presentation/widgets/link_details_card.dart';

class LinkDetailsList extends StatefulWidget {
  const LinkDetailsList({Key? key, this.detailsList, required this.filters})
      : super(key: key);

  final List<LinkDetails>? detailsList;
  final ValueNotifier<Map<String, dynamic>> filters;

  @override
  State<LinkDetailsList> createState() => _LinkDetailsListState();
}

class _LinkDetailsListState extends State<LinkDetailsList> {
  List<LinkDetails>? get detailsList => widget.detailsList;

  @override
  Widget build(BuildContext context) {
    return detailsList?.isNotEmpty == true
        ? ValueListenableBuilder(
            valueListenable: widget.filters,
            builder: (BuildContext context, Map<String, dynamic> filter, _) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.detailsList!.length,
                itemBuilder: (context, index) {
                  return _isInFilter(filter, widget.detailsList![index])
                      ? LinkDetailsCard(
                          details: widget.detailsList![index],
                        )
                      : const SizedBox.shrink();
                },
              );
            })
        : const Center(
            child: Text("No Links are currently available"),
          );
  }

  bool _isInFilter(Map<String, dynamic> filter, LinkDetails element) {
    if (filter["text"] == null && filter["tags"] == null) {
      return true;
    }
    if (filter["text"] != null &&
        element.description?.contains(filter["text"]) == true) {
      return true;
    }

    if (filter["tags"] != null &&
        element.tags?.any((element) => filter["tags"].contains(element)) ==
            true) {
      return true;
    }

    return false;
  }
}

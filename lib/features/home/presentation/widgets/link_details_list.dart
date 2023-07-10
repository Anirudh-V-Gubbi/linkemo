import 'package:flutter/material.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/presentation/widgets/link_details_card.dart';

class LinkDetailsList extends StatefulWidget {
  const LinkDetailsList({Key? key, this.detailsList}) : super(key: key);

  final List<LinkDetails>? detailsList;

  @override
  State<LinkDetailsList> createState() => _LinkDetailsListState();
}

class _LinkDetailsListState extends State<LinkDetailsList> {
  List<LinkDetails>? get detailsList => widget.detailsList;

  @override
  Widget build(BuildContext context) {
    return detailsList?.isNotEmpty == true
        ? ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: detailsList!.length,
            itemBuilder: (context, index) {
              return LinkDetailsCard(
                details: detailsList![index],
              );
            },
          )
        : const Center(
          child: Text(
            "No Links are currently available"
          ),
        );
  }
}

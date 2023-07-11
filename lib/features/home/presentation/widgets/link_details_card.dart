import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/core/utility.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';

class LinkDetailsCard extends StatelessWidget {
  const LinkDetailsCard({Key? key, required this.details}) : super(key: key);

  final LinkDetails details;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: circularBorder(12),
      ),
      margin: symmetricPadding(vertical: 8.0),
      color: kGreyCardColor,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: kGreyCardColor,
          borderRadius: circularBorder(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnyLinkPreview(
              link: details.link,
              displayDirection: UIDirection.uiDirectionHorizontal,
              previewHeight: deviceHeight(context) * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  DateFormat('MMM d, y').format(details.createdAt),
                  style: const TextStyle(
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (details.description != null)
              Padding(
                padding: symmetricPadding(horizontal: 8.0).copyWith(top: 4.0),
                child: Text(
                  details.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            if (details.tags?.isNotEmpty == true)
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 4.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ShaderMask(
                    shaderCallback: (Rect rect) {
                      return const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          kPurpleColor,
                          kTransparentColor,
                          kTransparentColor,
                          kPurpleColor
                        ],
                        stops: [0.0, 0.1, 0.9, 1.0],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstOut,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: details.tags!
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Chip(
                                  shape: const StadiumBorder(
                                    side: BorderSide(
                                      color: kHighlightColor,
                                    ),
                                  ),
                                  backgroundColor: kGreyCardColor,
                                  label: Text(
                                    e,
                                    style: const TextStyle(
                                      color: kHighlightColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

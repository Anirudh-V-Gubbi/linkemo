import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';

class LinkDetailsCard extends StatelessWidget {
  const LinkDetailsCard({Key? key, required this.details}) : super(key: key);

  final LinkDetails details;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.grey[900],
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            AnyLinkPreview(
              link: details.link,
              displayDirection: UIDirection.uiDirectionVertical,
              previewHeight: MediaQuery.of(context).size.height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  DateFormat('MMM d, y').format(details.createdAt),
                  style: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (details.description != null)
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
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
                padding: const EdgeInsets.only(left: 0.0, right: 8.0, top: 4.0),
                child: ShaderMask(
                  shaderCallback: (Rect rect) {
                    return const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purple,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.purple
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
                                    color: Color.fromRGBO(26, 91, 141, 1),
                                  ),
                                ),
                                backgroundColor: Colors.grey[900],
                                label: Text(
                                  e,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(26, 91, 141, 1),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/core/utility.dart';
import 'package:linkemo/core/widgets/input_text_field.dart';

class AddLinkSheet extends StatefulWidget {
  const AddLinkSheet({Key? key}) : super(key: key);

  @override
  State<AddLinkSheet> createState() => _AddLinkSheetState();
}

class _AddLinkSheetState extends State<AddLinkSheet> {
  final TextEditingController linkController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();

  ValueNotifier<List<String>> tags = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: symmetricPadding(horizontal: 8.0).copyWith(
        top: 20.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Save a link',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: symmetricPadding(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InputTextField(
                      controller: linkController,
                      width: double.infinity,
                      hintText: 'Link',
                      validatorMessage: "Link is required",
                      validator: (String? str) {
                        return (str == null || str.isEmpty);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: InputTextField(
                        controller: descController,
                        width: double.infinity,
                        maxLines: 4,
                        hintText: 'Description',
                        validator: (String? str) => false,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: tags,
                      builder: (BuildContext context, List<String> value, _) {
                        return value.isNotEmpty
                            ? Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: GridView.extent(
                                  childAspectRatio: 2,
                                  crossAxisSpacing: 3,
                                  mainAxisSpacing: 0,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  maxCrossAxisExtent: 100,
                                  children: value
                                      .map((tag) => Chip(
                                            label: Text(
                                              tag,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  color: kWhiteColor,
                                                  overflow: TextOverflow.clip),
                                            ),
                                            backgroundColor: kHighlightColor,
                                            side: const BorderSide(
                                                color: kHighlightColor),
                                            deleteIcon: const Icon(
                                              CupertinoIcons.clear_circled_solid,
                                              color: kGreyColor,
                                              size: 20,
                                            ),
                                            onDeleted: () {
                                              tags.value = List.from(tags.value)..remove(tag);
                                            },
                                          ))
                                      .toList(),
                                ),
                            )
                            : Container();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: InputTextField(
                        controller: tagsController,
                        width: double.infinity,
                        maxLength: 12,
                        hintText: 'Tags',
                        validatorMessage: "Tag already added",
                        validator: (String? str) => tags.value.contains(str),
                        onFieldSubmitted: (value) {
                          if (value == null || value.isEmpty) return;
                          if (tags.value.contains(value)) return;

                          tags.value = List.from(tags.value)..add(value);
                          tagsController.clear();
                        },
                        onEditingComplete: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

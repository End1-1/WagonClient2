import 'package:flutter/material.dart';
import 'package:wagon_client/model/address_model.dart';
import 'package:wagon_client/model/tr.dart';
import 'package:wagon_client/screen2/model/app_state.dart';
import 'package:wagon_client/screen2/model/model.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class ScreenAddressSuggest extends StatefulWidget {
  final Screen2Model model;
  final Function parentState;

  ScreenAddressSuggest(this.model, this.parentState);

  @override
  State<StatefulWidget> createState() => _ScreenAddressSuggest();
}

class _ScreenAddressSuggest extends State<ScreenAddressSuggest> {
  final focusFrom = FocusNode();
  final focusTo = FocusNode();
  var x = 0.0;

  @override
  Widget build(BuildContext context) {
    if (widget.model.appState.showFullAddressWidget) {
      if (widget.model.appState.focusFrom) {
        focusTo.unfocus();
        focusFrom.requestFocus();
      } else {
        focusFrom.unfocus();
        focusTo.requestFocus();
      }
    } else {
      focusFrom.unfocus();
      focusTo.unfocus();
    }

    return AnimatedPositioned(
        bottom: 0,
        left: 0,
        right: 0,
        top: widget.model.appState.showFullAddressWidget
            ? 50 + x > 50
                ? 50 + x
                : 50
            : MediaQuery.sizeOf(context).height,
        child: GestureDetector(
            onPanUpdate: (d) {
              print(d);
              x += d.delta.dy;
              if (x + 50 < 50) {
                x = 0;
              }
              setState(() {});
            },
            onPanEnd: (d) async {
              if (x > 150) {
                widget.model.appState.showFullAddressWidget = false;
                await widget.model.requests.initCoin(() async {
                  await widget.model.mapController.paintRoute();
                  setState(() {});
                }, (c, s) async {
                  await widget.model.mapController
                      .removePolyline(centerMe: false);
                  setState(() {});
                });
              }
              x = 0;
              setState(() {});
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //short line for hide this menu
                  Row(
                    children: [
                      Expanded(child: Container()),
                      InkWell(
                        onTap: () {
                          widget.model.appState.showFullAddressWidget = false;
                          if (widget.model.appState.focusFrom) {
                            if (widget
                                .model.appState.addressFrom.text.isEmpty) {
                              widget.model.appState.structAddressFrom = null;
                            }
                          } else {
                            if (widget
                                .model.appState.structAddressTod.isEmpty) {
                              widget.model.appState.structAddressTod.clear();
                            }
                          }

                          widget.parentState();
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          color: Colors.black26,
                          height: 5,
                          width: 50,
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),

                  //ADDRESS FROM
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                        child: Image.asset(
                          'images/frompoint.png',
                          height: 15,
                        ),
                      ),
                      Expanded(
                          child: TextFormField(
                        focusNode: focusFrom,
                        decoration: InputDecoration(
                            hintText: tr(trFrom),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            hintStyle: const TextStyle(color: Colors.black12)),
                        controller: widget.model.appState.addressFrom,
                        onTap: () {
                          widget.model.appState.focusFrom = true;
                          focusTo.unfocus();
                          focusFrom.requestFocus();
                          setState(() {

                          });
                        },
                        onChanged: (s) {
                          setState(() {

                          });
                          widget.model.suggest.suggest(s);
                        },
                      )),
                      Visibility(
                        visible: focusFrom.hasFocus && widget.model.appState.addressFrom.text.length > 0,
                          child:
                      InkWell(
                        onTap: () {
                          widget.model.appState.addressFrom.clear();
                          if (widget.model.appState.structAddressFrom != null) {
                            widget.model.appState.structAddressFrom = null;
                          }
                          focusFrom.requestFocus();
                          setState(() {

                          });
                        },
                        child: Icon(Icons.close_rounded)
                      )),
                      Visibility(visible: focusFrom.hasFocus, child: const SizedBox(width: 15, height: 20, child: VerticalDivider(color: Colors.black38))),
                      Visibility(
                        visible: focusFrom.hasFocus,
                        child: InkWell(
                        onTap: () {
                          widget.model.appState.appState =
                              AppState.asSearchOnMapFrom;
                          widget.parentState();
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                          child: Image.asset(
                            'images/mappin.png',
                            height: 20,
                          )),
                        ),
                      )
                    ],
                  ),

                  //ADDRESS TO
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                        child: Image.asset(
                          'images/frompoint.png',
                          height: 15,
                        ),
                      ),
                      Expanded(
                          child: TextFormField(
                        focusNode: focusTo,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            hintText: tr(trTo),
                            hintStyle: const TextStyle(color: Colors.black12)),
                        controller: widget.model.appState.addressTo,
                        onTap: () {
                          widget.model.appState.focusFrom = false;
                          focusFrom.unfocus();
                          focusTo.requestFocus();
                          setState(() {

                          });
                        },
                        onChanged: (s) {
                          widget.model.suggest.suggest(s);
                          setState(() {

                          });
                        },
                      )),
                      Visibility(
                        visible: focusTo.hasFocus && widget.model.appState.addressTo.text.length > 0,
                        child: InkWell(
                        onTap: () {
                          widget.model.appState.addressTo.clear();
                          if (widget
                              .model.appState.structAddressTod.isNotEmpty) {
                            widget.model.appState.structAddressTod.removeLast();
                          }
                          focusTo.requestFocus();
                          setState(() {

                          });
                        },
                        child: Icon(Icons.close_rounded)
                      )),
                     Visibility(visible: !focusFrom.hasFocus, child: const SizedBox(width: 15, height: 20, child: VerticalDivider(color: Colors.black38))),
                      Visibility(
                        visible: focusTo.hasFocus,
                        child: InkWell(
                        onTap: () {
                          focusTo.requestFocus();
                          widget.model.appState.appState =
                              AppState.asSearchOnMapTo;
                          widget.parentState();
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                          child: Image.asset(
                            'images/mappin.png',
                            height: 20,
                          ),
                        ),
                      ))
                    ],
                  ),

                  StreamBuilder(
                      stream: widget.model.suggestStream.stream,
                      builder: (builder, snapshot) {
                        if (snapshot.data == null) {
                          return Container();
                        }
                        if (snapshot.data is bool) {
                          return Center(child: CircularProgressIndicator());
                        }
                        return Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            for (final i in snapshot.data) ...[
                              Container(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 5),
                                      if (i.tags.contains('shop'))
                                        Image.asset(
                                          'images/sugg/supermarket.png',
                                          height: 26,
                                        )
                                      else if (i.tags.contains('street'))
                                        Image.asset(
                                          'images/sugg/streethouse.png',
                                          height: 26,
                                        )
                                      else if (i.tags.contains('restaurant') ||
                                          i.tags.contains('cafe'))
                                        Image.asset(
                                          'images/sugg/cafe.png',
                                          height: 26,
                                        )
                                      else if (i.tags.contains('bus') ||
                                          i.tags.contains('bus stop'))
                                        Image.asset(
                                          'images/sugg/busstation.png',
                                          height: 26,
                                        )
                                      else if (i.tags.contains('hospital') ||
                                          i.tags.contains('medicine'))
                                        Image.asset(
                                          'images/sugg/hospital.png',
                                          height: 26,
                                        )
                                      else
                                        Image.asset(
                                          'images/sugg/streethouse.png',
                                          height: 26,
                                        ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                          child: InkWell(
                                              onTap: () {
                                                if (focusFrom.hasFocus) {
                                                  widget
                                                      .model
                                                      .appState
                                                      .addressFrom
                                                      .text = i.type ==
                                                          SuggestItemType
                                                              .toponym
                                                      ? i.displayText
                                                      : '${i.title} ${i.subtitle}';
                                                  widget.model.appState
                                                          .structAddressFrom =
                                                      AddressStruct(
                                                          address: i.type ==
                                                                  SuggestItemType
                                                                      .toponym
                                                              ? i.displayText
                                                              : '${i.title} ${i.subtitle}',
                                                          title: i.title,
                                                          point: i.center);
                                                } else {
                                                  widget
                                                      .model
                                                      .appState
                                                      .addressTo
                                                      .text = i.type ==
                                                          SuggestItemType
                                                              .toponym
                                                      ? i.displayText
                                                      : '${i.title} ${i.subtitle}';
                                                  if (widget
                                                      .model
                                                      .appState
                                                      .structAddressTod
                                                      .isEmpty) {
                                                    widget.model.appState
                                                        .structAddressTod
                                                        .add(AddressStruct(
                                                            address: i.type ==
                                                                    SuggestItemType
                                                                        .toponym
                                                                ? i.displayText
                                                                : '${i.title} ${i.subtitle}',
                                                            title: i.title,
                                                            point: i.center));
                                                  } else {
                                                    widget.model.appState
                                                            .structAddressTod[0] =
                                                        AddressStruct(
                                                            address:
                                                                i.searchText,
                                                            title: i.title,
                                                            point: i.center);
                                                  }
                                                }
                                                widget.model.suggestStream
                                                    .add(null);
                                                print(i.tags);
                                                if (i.tags.contains('house') ||
                                                    i.type ==
                                                        SuggestItemType
                                                            .business) {
                                                  widget.model.appState
                                                          .showFullAddressWidget =
                                                      false;
                                                  if (widget.model.appState
                                                      .isFromToDefined()) {
                                                    widget.model.requests
                                                        .initCoin(() {
                                                      widget.parentState();
                                                    }, (c, s) {});
                                                  } else {
                                                    widget.parentState();
                                                  }
                                                } else {
                                                  if (focusFrom.hasFocus) {
                                                    widget
                                                        .model
                                                        .appState
                                                        .addressFrom
                                                        .text += ', ';
                                                    widget.model.suggest
                                                        .suggest(widget
                                                                .model
                                                                .appState
                                                                .addressFrom
                                                                .text +
                                                            '1');
                                                  } else {
                                                    widget.model.appState
                                                        .addressTo.text += ', ';
                                                    widget.model.suggest
                                                        .suggest(widget
                                                                .model
                                                                .appState
                                                                .addressTo
                                                                .text +
                                                            '1');
                                                  }
                                                }
                                              },
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(i.title,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis),
                                                    Text(i.subtitle, style: const TextStyle(color: Colors.black38)),
                                                    Divider(),
                                                  ]))),
                                    ],
                                  )),
                            ]
                          ],
                        )));
                      }),
                ],
              ),
            )),
        duration: Duration(milliseconds: 300));
  }
}

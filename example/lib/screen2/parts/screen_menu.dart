import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wagon_client/consts.dart';
import 'package:wagon_client/model/tr.dart';
import 'package:wagon_client/screen2/bloc/screen_menu_bloc.dart';
import 'package:wagon_client/screen2/model/model.dart';
import 'package:wagon_client/screen2/screen/history_all.dart';
import 'package:wagon_client/screen2/screen/myaddresses.dart';
import 'package:wagon_client/screen2/screen/profile_screen.dart';
import 'package:wagon_client/screen2/screen/settings.dart';
import 'package:wagon_client/screens/payment/screen.dart';

class ScreenMenu extends StatefulWidget {
  final Screen2Model model;

  const ScreenMenu(this.model, {super.key});

  @override
  State<StatefulWidget> createState() => _ScreenMenu();
}

class _ScreenMenu extends State<ScreenMenu> {
  var pos = 0.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 0.8;
    return BlocBuilder<AppAnimateBloc, AppAnimateStateIdle>(
        builder: (builder, state) {
      return Stack(
        children: [
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: state.runtimeType == AppAnimateStateRaise
                  ? InkWell(
                      onTap: () {
                        pos = 0;
                        BlocProvider.of<AppAnimateBloc>(
                                Consts.navigatorKey.currentContext!)
                            .add(AppAnimateEvent());
                      },
                      child: Container(color: Colors.black38))
                  : Container()),
          AnimatedPositioned(
              width: width,
              height: MediaQuery.sizeOf(context).height,
              left: state.runtimeType == AppAnimateStateRaise ? pos : 0 - width,
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                  onPanUpdate: (d) {
                    if (pos - d.delta.dx < 0) {
                      return;
                    }
                    if ((pos - d.delta.dx).abs() < width * 0.5) {
                      hideMenu();
                      return;
                    }
                    setState(() {
                      pos += d.delta.dx;
                    });
                  },
                  onPanEnd: (d) {
                    setState(() {
                      pos = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    color: Color(0xffffffff),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        //picture, name, phone
                        InkWell(
                            onTap: () {
                              hideMenu();
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileScreen()));
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset('images/profile.png')),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Firstname Lastname',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    Text(Consts.getString('phone'),
                                        style: const TextStyle(
                                            color: Colors.black38))
                                  ],
                                ))
                              ],
                            )),
                        Divider(),
                        //BONUS
                        Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          const SizedBox(height: 50),
                              Text(tr(trBonus), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Expanded(child: Container()),
                              Text('10,000', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              const SizedBox(width: 10),
                        ]),
                        Divider(),
                        //Payment method
                        InkWell(
                            onTap: () {
                              hideMenu();
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => PaymentFullWindow(widget.model)));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(tr(trPaymentMethods),
                                        style: const TextStyle(
                                            color: Colors.black)),
                                    if (widget.model.appState.paymentTypeId ==
                                        1)
                                      Text(tr(trCash),
                                          style: const TextStyle(
                                              color: Colors.black38)),
                                  ],
                                )),
                                SizedBox(
                                    height: 50,
                                    child: ClipRRect(
                                        //borderRadius: BorderRadius.circular(50),
                                        child: Image.asset('images/wallet.png',
                                            height: 20))),
                                const SizedBox(width: 10),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: () {
                              hideMenu();
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => MyAddresses()));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trMyAddresses),
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: () {
                              hideMenu();
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => HistoryAll()));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trORDERSHISTORY),
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: () async {
                              hideMenu();
                              final Uri url = Uri.parse('https://pornhub.com');
                              if (!await launchUrl(url)) {
                              //throw Exception('Could not launch $_url');
                              }
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trMakeDriver),
                                    style:
                                    const TextStyle(color: Colors.black)),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: () {
                              hideMenu();
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => SettingsWindow()));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trSETTINGS),
                                    style:
                                    const TextStyle(color: Colors.black)),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: () {
                              hideMenu();
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trSUPPORT),
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ],
                            )),
                        Divider(),
                        InkWell(
                            onTap: (){
                              hideMenu();
                              widget.model.logout;
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(tr(trEXIT),
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ],
                            )),
                      ],
                    ),
                  )))
        ],
      );
    });
  }

  void hideMenu() {
    pos = 0;
    BlocProvider.of<AppAnimateBloc>(
        Consts.navigatorKey.currentContext!)
        .add(AppAnimateEvent());
  }
}

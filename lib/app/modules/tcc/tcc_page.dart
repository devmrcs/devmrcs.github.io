import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:universal_ui/universal_ui.dart' as uui;

import 'tcc_controller.dart';

class TccPage extends StatefulWidget {
  final String title;
  const TccPage({Key key, this.title = "Tcc"}) : super(key: key);

  @override
  _TccPageState createState() => _TccPageState();
}

class _TccPageState extends ModularState<TccPage, TccController> {
  final IFrameElement _iframeElement = IFrameElement();

  Widget _iframeWidget;

  @override
  void initState() {
    super.initState();
    _iframeElement.height = '500';
    _iframeElement.width = '500';
    _iframeElement.src =
        'https://www.figma.com/embed?embed_host=share&url=https%3A%2F%2Fwww.figma.com%2Fproto%2FbHVFgF84HhOuXOisn1i8IJ%2F%25F0%259F%2596%25B1-Web-Portal-da-Tranpar%25C3%25AAncia-INF%3Fnode-id%3D28%253A260%26scaling%3Dscale-down';
    _iframeElement.style.border = 'none';

    uui.ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: _iframeWidget,
        ),
      ),
    );
  }
}

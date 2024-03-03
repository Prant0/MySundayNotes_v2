
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewActivity extends StatefulWidget {

  String url;
  WebViewActivity(this.url);

  @override
  State<WebViewActivity> createState() => _WebViewActivity();
}


class _WebViewActivity extends State<WebViewActivity> {

  late WebViewController _controller;


  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  UniqueKey _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.blueGrey,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('', style: TextStyle(
            color: Colors.black54
        ),),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
      /*  child: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          gestureRecognizers: gestureRecognizers,
          onWebViewCreated: (controller) {
            _controller = controller;
          },
          onProgress: (initialUrl) {
            _controller.evaluateJavascript("document.getElementsByClassName('elementor-location-header')[0].style.display='none';");
          },
        ),*/
      ),
    );
  }


}
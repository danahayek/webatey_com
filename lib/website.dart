
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class website_screen extends StatefulWidget {
  const website_screen({super.key});

  @override
  State<website_screen> createState() => _website_screenState();
}

class _website_screenState extends State<website_screen> {

  InAppWebViewController? webViewController ;
  PullToRefreshController? pullToRefreshController;
  late var url;
  double progress= 0;
  var url_controller = TextEditingController();
  String initialUrl = "https://www.webatey.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: InAppWebView(
            onWebViewCreated: (controller) => webViewController = controller,
            initialUrlRequest: URLRequest(url: WebUri(initialUrl)),
          ))
        ],
      ),
    );
  }
}

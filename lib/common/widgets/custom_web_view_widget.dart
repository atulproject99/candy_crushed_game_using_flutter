import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomWebView extends StatefulWidget {
  final String url;

  const CustomWebView({
    super.key,
    required this.url,
  });

  @override
  CustomWebViewState createState() => CustomWebViewState();
}

class CustomWebViewState extends State<CustomWebView>
    with AutomaticKeepAliveClientMixin {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(widget.url))),
          initialSettings: InAppWebViewSettings(
            javaScriptEnabled: true,
          ),
          onWebViewCreated: (controller) {},
          onLoadStart: (controller, url) {
            setState(() {
              _isLoading = true;
            });
          },
          onLoadStop: (controller, url) async {
            setState(() {
              _isLoading = false;
            });
          },
          onReceivedError: (controller, request, message) {
            // Handle load error if needed
            setState(() {
              _isLoading = false;
            });
          },
        ),
        if (_isLoading) const Center(child: CircularProgressIndicator()),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

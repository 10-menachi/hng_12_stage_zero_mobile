import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <ElevatedButton>[
            ElevatedButton(
              onPressed: () => {_launchUrl(_githubUri)},
              child: const Text("Github Link"),
            ),
            ElevatedButton(
              onPressed: () => {_launchUrl(_backlinkUri)},
              child: const Text("HNG Backlink"),
            ),
          ],
        ),
      ),
    );
  }
}

final Uri _githubUri = Uri.parse(
    "https://github.com/10-menachi/hng_12_stage_zero_mobile/tree/main");
final Uri _backlinkUri = Uri.parse(
    'https://www.notion.so/Stage-0-Blog-Post-with-Strategic-Backlinks-for-HNG-Hire-Delve-and-Telex-80a6ed3d3c3d49489769d78b6a23ecda?pvs=21');

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

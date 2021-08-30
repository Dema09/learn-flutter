import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

//this function is used to create a sample email template.
//We can set 'to', 'cc', 'subject', and the 'body' that we want inside this function.
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'mailto example subject',
    body: 'mailto example body',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

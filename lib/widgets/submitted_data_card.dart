// // import 'package:flutter/material.dart';
// // import '../models/form_component.dart';

// // class SubmittedDataCard extends StatelessWidget {
// //   final FormComponent component;

// //   SubmittedDataCard({required this.component});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: EdgeInsets.symmetric(vertical: 8),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text('Label: ${component.label}'),
// //             Text('Info-Text: ${component.infoText}'),
// //             Text('Settings: ${_getSettings(component)}'),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   String _getSettings(FormComponent component) {
// //     List<String> settings = [];
// //     if (component.required) settings.add('Required');
// //     if (component.readonly) settings.add('Readonly');
// //     if (component.hidden) settings.add('Hidden Field');
// //     return settings.join(', ');
// //   }
// // }

// import 'package:flutter/material.dart';
// import '../models/form_component.dart';

// class SubmittedDataCard extends StatelessWidget {
//   final FormComponent component;

//   SubmittedDataCard({required this.component});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Label: ${component.label}'),
//             Text('Info-Text: ${component.infoText}'),
//             Text('Settings: ${_getSettings(component)}'),
//           ],
//         ),
//       ),
//     );
//   }

//   String _getSettings(FormComponent component) {
//     List<String> settings = [];
//     if (component.required) settings.add('Required');
//     if (component.readonly) settings.add('Readonly');
//     if (component.hidden) settings.add('Hidden Field');
//     return settings.join(', ');
//   }
// }
import 'package:flutter/material.dart';
import '../models/form_component.dart';

class SubmittedDataCard extends StatelessWidget {
  final FormComponent component;

  SubmittedDataCard({required this.component});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Label: ${component.label}'),
            Text('Info-Text: ${component.infoText}'),
            Text('Settings: ${_getSettings(component)}'),
          ],
        ),
      ),
    );
  }

  String _getSettings(FormComponent component) {
    List<String> settings = [];
    if (component.required) settings.add('Required');
    if (component.readonly) settings.add('Readonly');
    if (component.hidden) settings.add('Hidden Field');
    return settings.join(', ');
  }
}

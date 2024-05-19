// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import '../models/form_component.dart';
// // import '../providers/form_provider.dart';

// // class FormComponentWidget extends StatefulWidget {
// //   final int index;

// //   FormComponentWidget({required Key key, required this.index}) : super(key: key);

// //   @override
// //   _FormComponentWidgetState createState() => _FormComponentWidgetState();
// // }

// // class _FormComponentWidgetState extends State<FormComponentWidget> {
// //   late TextEditingController _labelController;
// //   late TextEditingController _infoTextController;
// //   bool _required = false;
// //   bool _readonly = false;
// //   bool _hidden = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     final formProvider = Provider.of<FormProvider>(context, listen: false);
// //     final component = formProvider.components[widget.index];
// //     _labelController = TextEditingController(text: component.label);
// //     _infoTextController = TextEditingController(text: component.infoText);
// //     _required = component.required;
// //     _readonly = component.readonly;
// //     _hidden = component.hidden;
// //   }

// //   @override
// //   void dispose() {
// //     _labelController.dispose();
// //     _infoTextController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: EdgeInsets.symmetric(vertical: 8),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             TextField(
// //               controller: _labelController,
// //               decoration: InputDecoration(labelText: 'Label'),
// //               onChanged: (value) => _updateComponent(),
// //             ),
// //             TextField(
// //               controller: _infoTextController,
// //               decoration: InputDecoration(labelText: 'Info-Text'),
// //               onChanged: (value) => _updateComponent(),
// //             ),
// //             Row(
// //               children: [
// //                 _buildCheckbox('Required', _required, (value) {
// //                   setState(() => _required = value!);
// //                   _updateComponent();
// //                 }),
// //                 _buildCheckbox('Readonly', _readonly, (value) {
// //                   setState(() => _readonly = value!);
// //                   _updateComponent();
// //                 }),
// //                 _buildCheckbox('Hidden Field', _hidden, (value) {
// //                   setState(() => _hidden = value!);
// //                   _updateComponent();
// //                 }),
// //               ],
// //             ),
// //             SizedBox(height: 8),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.end,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () => _removeComponent(context),
// //                   child: Text('Remove'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void _updateComponent() {
// //     final formProvider = Provider.of<FormProvider>(context, listen: false);
// //     final component = FormComponent(
// //       label: _labelController.text,
// //       infoText: _infoTextController.text,
// //       required: _required,
// //       readonly: _readonly,
// //       hidden: _hidden,
// //     );
// //     formProvider.updateComponent(widget.index, component);
// //   }

// //   void _removeComponent(BuildContext context) {
// //     final formProvider = Provider.of<FormProvider>(context, listen: false);
// //     formProvider.removeComponent(widget.index);
// //   }

// //   Widget _buildCheckbox(String title, bool value, Function(bool?) onChanged) {
// //     return Row(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         Checkbox(value: value, onChanged: onChanged),
// //         Text(title),
// //       ],
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/form_component.dart';
// import '../providers/form_provider.dart';

// class FormComponentWidget extends StatefulWidget {
//   final int index;

//   FormComponentWidget({required Key key, required this.index}) : super(key: key);

//   @override
//   _FormComponentWidgetState createState() => _FormComponentWidgetState();
// }

// class _FormComponentWidgetState extends State<FormComponentWidget> {
//   late TextEditingController _labelController;
//   late TextEditingController _infoTextController;
//   bool _required = false;
//   bool _readonly = false;
//   bool _hidden = false;

//   @override
//   void initState() {
//     super.initState();
//     final formProvider = Provider.of<FormProvider>(context, listen: false);
//     final component = formProvider.components[widget.index];
//     _labelController = TextEditingController(text: component.label);
//     _infoTextController = TextEditingController(text: component.infoText);
//     _required = component.required;
//     _readonly = component.readonly;
//     _hidden = component.hidden;
//   }

//   @override
//   void dispose() {
//     _labelController.dispose();
//     _infoTextController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: _labelController,
//               decoration: InputDecoration(labelText: 'Label'),
//               onChanged: (value) => _updateComponent(),
//             ),
//             TextField(
//               controller: _infoTextController,
//               decoration: InputDecoration(labelText: 'Info-Text'),
//               onChanged: (value) => _updateComponent(),
//             ),
//             Row(
//               children: [
//                 _buildCheckbox('Required', _required, (value) {
//                   setState(() => _required = value!);
//                   _updateComponent();
//                 }),
//                 _buildCheckbox('Readonly', _readonly, (value) {
//                   setState(() => _readonly = value!);
//                   _updateComponent();
//                 }),
//                 _buildCheckbox('Hidden Field', _hidden, (value) {
//                   setState(() => _hidden = value!);
//                   _updateComponent();
//                 }),
//               ],
//             ),
//             SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _removeComponent(context),
//                   child: Text('Remove'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _updateComponent() {
//     final formProvider = Provider.of<FormProvider>(context, listen: false);
//     final component = FormComponent(
//       label: _labelController.text,
//       infoText: _infoTextController.text,
//       required: _required,
//       readonly: _readonly,
//       hidden: _hidden,
//     );
//     formProvider.updateComponent(widget.index, component);
//   }

//   void _removeComponent(BuildContext context) {
//     final formProvider = Provider.of<FormProvider>(context, listen: false);
//     formProvider.removeComponent(widget.index);
//   }

//   Widget _buildCheckbox(String title, bool value, Function(bool?) onChanged) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Checkbox(value: value, onChanged: onChanged),
//         Text(title),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/form_component.dart';
import '../providers/form_provider.dart';

class FormComponentWidget extends StatefulWidget {
  final int index;

  FormComponentWidget({required Key key, required this.index}) : super(key: key);

  @override
  _FormComponentWidgetState createState() => _FormComponentWidgetState();
}

class _FormComponentWidgetState extends State<FormComponentWidget> {
  late TextEditingController _labelController;
  late TextEditingController _infoTextController;
  bool _required = false;
  bool _readonly = false;
  bool _hidden = false;

  @override
  void initState() {
    super.initState();
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    final component = formProvider.components[widget.index];
    _labelController = TextEditingController(text: component.label);
    _infoTextController = TextEditingController(text: component.infoText);
    _required = component.required;
    _readonly = component.readonly;
    _hidden = component.hidden;
  }

  @override
  void dispose() {
    _labelController.dispose();
    _infoTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _labelController,
              decoration: InputDecoration(labelText: 'Label'),
              onChanged: (value) => _updateComponent(),
            ),
            TextField(
              controller: _infoTextController,
              decoration: InputDecoration(labelText: 'Info-Text'),
              onChanged: (value) => _updateComponent(),
            ),
            Row(
              children: [
                _buildCheckbox('Required', _required, (value) {
                  setState(() => _required = value!);
                  _updateComponent();
                }),
                _buildCheckbox('Readonly', _readonly, (value) {
                  setState(() => _readonly = value!);
                  _updateComponent();
                }),
                _buildCheckbox('Hidden Field', _hidden, (value) {
                  setState(() => _hidden = value!);
                  _updateComponent();
                }),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => _removeComponent(context),
                  child: Text('Remove'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _updateComponent() {
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    final component = FormComponent(
      label: _labelController.text,
      infoText: _infoTextController.text,
      required: _required,
      readonly: _readonly,
      hidden: _hidden,
    );
    formProvider.updateComponent(widget.index, component);
  }

  void _removeComponent(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    formProvider.removeComponent(widget.index);
  }

  Widget _buildCheckbox(String title, bool value, Function(bool?) onChanged) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(title),
      ],
    );
  }
}

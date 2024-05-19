import 'package:flutter/material.dart';
import '../models/form_component.dart';

class CustomDialog extends StatelessWidget {
  final List<FormComponent> components;

  CustomDialog({required this.components});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Form Data'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: components.map((component) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Card(
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
              ),
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Close'),
        ),
      ],
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

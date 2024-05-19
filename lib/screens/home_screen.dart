import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/form_provider.dart';
import '../widgets/form_component_widget.dart';
import '../widgets/submitted_data_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Form'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
           child: TextButton(
              onPressed: () => _submitForm(context, formProvider),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: formProvider.components.length,
                itemBuilder: (context, index) {
                  return FormComponentWidget(
                    key: ValueKey(index),
                    index: index,
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: formProvider.addComponent,
              child: Text('ADD'),
            ),
            SizedBox(height: 16),
            if (formProvider.submittedComponents.isNotEmpty) ...[
              Text(
                'Submitted Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: formProvider.submittedComponents.length,
                  itemBuilder: (context, index) {
                    return SubmittedDataCard(
                      component: formProvider.submittedComponents[index],
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _submitForm(BuildContext context, FormProvider formProvider) {
    formProvider.submitForm();
  }
}


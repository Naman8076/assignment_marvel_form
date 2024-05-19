// // import 'package:flutter/material.dart';
// // import '../models/form_component.dart';

// // class FormProvider with ChangeNotifier {
// //   List<FormComponent> _components = [FormComponent()];
// //   List<FormComponent> _submittedComponents = [];

// //   List<FormComponent> get components => _components;
// //   List<FormComponent> get submittedComponents => _submittedComponents;

// //   void addComponent() {
// //     _components.add(FormComponent());
// //     notifyListeners();
// //   }

// //   void removeComponent(int index) {
// //     if (_components.length > 1) {
// //       _components.removeAt(index);
// //       notifyListeners();
// //     }
// //   }

// //   void updateComponent(int index, FormComponent component) {
// //     _components[index] = component;
// //     notifyListeners();
// //   }

// //   void submitForm() {
// //     _submittedComponents = List.from(_components);
// //     notifyListeners();
// //   }
// // }

// import 'package:flutter/material.dart';
// import '../models/form_component.dart';

// class FormProvider with ChangeNotifier {
//   List<FormComponent> _components = [FormComponent()];
//   List<FormComponent> _submittedComponents = [];

//   List<FormComponent> get components => _components;
//   List<FormComponent> get submittedComponents => _submittedComponents;

//   void addComponent() {
//     _components.add(FormComponent());
//     notifyListeners();
//   }

//   void removeComponent(int index) {
//     if (_components.length > 1) {
//       _components.removeAt(index);
//       notifyListeners();
//     }
//   }

//   void updateComponent(int index, FormComponent component) {
//     _components[index] = component;
//     notifyListeners();
//   }

//   void submitForm() {
//     _submittedComponents = List.from(_components);
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import '../models/form_component.dart';

class FormProvider with ChangeNotifier {
  List<FormComponent> _components = [FormComponent()];
  List<FormComponent> _submittedComponents = [];

  List<FormComponent> get components => _components;
  List<FormComponent> get submittedComponents => _submittedComponents;

  void addComponent() {
    _components.add(FormComponent());
    notifyListeners();
  }

  void removeComponent(int index) {
    if (_components.length > 1) {
      _components.removeAt(index);
      notifyListeners();
    }
  }

  void updateComponent(int index, FormComponent component) {
    _components[index] = component;
    notifyListeners();
  }

  void submitForm() {
    _submittedComponents = List.from(_components);
    notifyListeners();
  }
}

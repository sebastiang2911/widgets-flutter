import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Sebastian',
      'lastname': 'Garcia',
      'email': 'sebasuchiha29.sg@gmail.com',
      'password': 'Test1234',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            onChanged: () {},
            child: Column(
              children: [
                CustomInputField(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    formValues: formValues,
                    fromProperty: 'name'),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Lastname',
                    hintText: 'Enter your lastname',
                    formValues: formValues,
                    fromProperty: 'lastname'),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    keyboardType: TextInputType.emailAddress,
                    formValues: formValues,
                    fromProperty: 'email'),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  formValues: formValues,
                  fromProperty: 'password',
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Form is not valid');
                      return;
                    }

                    //* print values from form
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Save'),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}

import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = '\CategoriesScreen';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  uploadCategory() {
    if (_formKey.currentState!.validate()) {
      print('Good Guy');
    } else {
      print('O Bad Guy');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Category',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text('Category'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade900),
                        onPressed: () {},
                        child: Text('Upload Image'),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Category Name Must Not Be Empty';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Enter Category name',
                          hintText: 'Enter Category name'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.yellow.shade900),
                  onPressed: () {
                    uploadCategory();
                  },
                  child: Text('save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

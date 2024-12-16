import 'package:flutter/material.dart';
import 'package:holding/screen/comholding.dart'; // Asegúrate de tener esta ruta correcta

class AddCompanyScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController sectorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Empresa'),
        backgroundColor: Colors.blue[400],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nombre de la Empresa'),
            ),
            TextField(
              controller: sectorController,
              decoration: InputDecoration(labelText: 'Sector de la Empresa'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String sector = sectorController.text;

                if (name.isNotEmpty && sector.isNotEmpty) {
                  // Usamos la instancia única de CompanyHolding
                  CompanyHolding.instance.addCompany(name, sector);
                  Navigator.pop(context);  // Volver al menú principal
                }
              },
              child: Text('Agregar Empresa'),
            ),
          ],
        ),
      ),
    );
  }
}

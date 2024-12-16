import 'package:flutter/material.dart';
import 'package:holding/screen/comholding.dart'; // Asegúrate de tener esta ruta correcta

class CompanyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Empresas'),
        backgroundColor: Colors.blue[400],
      ),
      body: CompanyHolding.instance.getCompanies().isEmpty
          ? Center(child: Text('No hay empresas disponibles', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
          : ListView.builder(
              itemCount: CompanyHolding.instance.getCompanies().length,
              itemBuilder: (context, index) {
                String name = CompanyHolding.instance.getCompanies().keys.elementAt(index);
                String sector = CompanyHolding.instance.getCompanies()[name]!;

                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text('Sector: $sector', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                  ),
                );
              },
            ),
    );
  }
}

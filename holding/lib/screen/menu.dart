import 'package:flutter/material.dart';
import 'package:holding/screen/agregar.dart';
import 'package:holding/screen/comholding.dart';
import 'package:holding/screen/lista.dart';


class Menuoption extends StatefulWidget {
  const Menuoption({super.key});

  @override
  State<Menuoption> createState() => _MenuoptionState();
}

class _MenuoptionState extends State<Menuoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          foregroundColor: Colors.white,
          title: Text('Menú de Opciones'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 16),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb4M1RNIskIydEFBKumKOxbeAfwOi6iI3eYA&s',
              height: 280,
              width: 280,
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                title: Text('Agregar Empresa'),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddCompanyScreen()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Lista de Empresas'),
                leading: Icon(Icons.business),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompanyListScreen()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Calcular Ingresos Totales'),
                leading: Icon(Icons.calculate),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  _showTotalRevenue(context);
                },
              ),
            ),
          ],
        ));
  }

  // Método para mostrar los ingresos totales
void _showTotalRevenue(BuildContext context) {
  // Usamos el Singleton de CompanyHolding para obtener los ingresos totales
  double totalRevenue = CompanyHolding.instance.getTotalRevenue();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Ingresos Totales'),
        content: Text('Los ingresos totales del holding son: \$${totalRevenue.toStringAsFixed(2)}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);  // Cerrar el cuadro de diálogo
            },
            child: Text('Cerrar'),
          ),
        ],
      );
    },
  );
}
}
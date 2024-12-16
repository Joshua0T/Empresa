

class CompanyHolding {
  // Atributos
  Map<String, String> companies = {};  // {nombre: sector}
  double totalRevenue = 0.0;

  // Constructor privado
  CompanyHolding._privateConstructor();

  // Instancia estática de la clase (Singleton)
  static final CompanyHolding _instance = CompanyHolding._privateConstructor();

  // Método para obtener la instancia
  static CompanyHolding get instance => _instance;

  // Método para añadir una empresa
  void addCompany(String name, String sector) {
    companies[name] = sector;
  }

  // Método para calcular los ingresos totales
  void calculateTotalRevenue(Map<String, double> revenues) {
    totalRevenue = 0.0;
    revenues.forEach((name, revenue) {
      totalRevenue += revenue;
    });
  }

  // Método para mostrar las empresas y sus sectores
  void displayCompanies() {
    companies.forEach((name, sector) {
      print('Empresa: $name, Sector: $sector');
    });
  }

  // Obtener la lista de empresas para la UI
  Map<String, String> getCompanies() {
    return companies;
  }

  // Obtener los ingresos totales
  double getTotalRevenue() {
    return totalRevenue;
  }
}

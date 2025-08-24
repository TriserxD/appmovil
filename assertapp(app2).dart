void main() {
  Persona p = new Persona(nombre: 'Nared', apellido: 'Carvajal', edad: 20);
  // p = Persona();

  print(p);
  final Map<String, dynamic> apidata = {
    'nombre': 'Nared',
    'apellido': 'Carvajal',
    'edad': 21,
  };
  final api = Persona.apidata(apidata);

  print(api);
}

class Persona {
  String nombre = '';
  String apellido = '';
  int edad = 0;

  Persona({required this.nombre, required this.apellido, required this.edad})
    : assert(edad <= 18, 'la persoan es mayor de edad.');
  @override
  String toString() {
    return 'nombre:$nombre,apellido:$apellido,edad:$edad';
  }

  Persona.apidata(Map<String, dynamic> apidata)
    : nombre = apidata['nombre'] ?? 'No name found',
      apellido = apidata['apellido'] ?? 'No power found',
      edad = apidata['edad'] ?? 'No isAlive found';
}

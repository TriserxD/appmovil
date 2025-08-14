void main() {
 
  Persona p = new Persona(nombre:'Nared',apellido:'Carvajal',edad:20,telefono:123456789,correo:'nar12@gmail.com');
  // p = Persona();
  print(p);
  
  Animal a= new Animal(raza:'pitbull',propietario:'Nared',fecha_nac:040322,vacunas:'pargovirus');
  print(a);
}
class Persona {
  String nombre='';
  String apellido='';
  int edad=0;
  int telefono=0;
  String correo='';

    Persona({required this.nombre,required this.apellido,required this.edad,required this.telefono,required this.correo});
  String toString(){return 'nombre:$nombre,apellido:$apellido,edad:$edad,telefono:$telefono,correo:$correo';}
}

class  Animal{
  String raza='';
  String propietario='';
  int fecha_nac=0;
  String vacunas='';
  Animal({required this.raza,required this.propietario,required this.fecha_nac,required this.vacunas});
  String toString(){return'raza:$raza,propietario:$propietario,fecha de nacimiento:$fecha_nac,vacunas:$vacunas';}
}
void main() {
   
  final flipper = Avion();
  flipper.volar();

  final sub = Submarino();
  sub.sumergir();
  sub.navegar();
  sub.explotar();
 
  final namor = Db5();
  namor.rodar();
  namor.sumergir();
  namor.navegar();
                   
  final car= Carro();
  car.rodar();
}


abstract class Vehiculo {}

abstract class Terrestre extends Vehiculo {}

abstract class Aereo extends Vehiculo {}

abstract class Acuatico extends Vehiculo {}

mixin Volador {
  void volar() => print('estoy volando!');
}

mixin Rodar {
  void rodar() => print('estoy rodando a toda velicidad!');
}
mixin Explotar {
  void explotar() => print('AAAAAAAAAAA!');
}
mixin Sumergir {
  void sumergir() => print('estoy bajo el agua!');
}
mixin Navegar {
  void navegar() => print('estoy nadando!');
}

class Barco extends Acuatico with Navegar {}

class Carro extends Terrestre with Rodar {}

class Avion extends Aereo with  Volador {}

class Pato extends Aereo with Rodar, Volador, Navegar {}

class Submarino extends Acuatico with Navegar,Sumergir , Explotar{}

class Db5 extends Terrestre with Sumergir, Rodar, Navegar {
  
    
  
}
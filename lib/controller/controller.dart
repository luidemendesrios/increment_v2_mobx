import 'package:mobx/mobx.dart';
part 'controller.g.dart';

//3 -> | packages nas dev_dependencies: flutter_lints: ^2.0.0 build_runner: ^2.4.8    mobx_codegen: ^2.6.0+1

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{

  @observable
  int counter = 0;


  @action
  incrementar(){
    counter++;
  }


  @computed
 // bool get ePar => counter % 2 == 0;  //retorna se é par
  bool get ePar => counter.isEven; //retorna se é par

 @computed
 int get dobro => counter * 2;
}
//4 -> | comando terminal: dart run build_runner build
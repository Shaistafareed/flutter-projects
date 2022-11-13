import 'dart:math';
class calculatorBrain{
  calculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  double _bmi=0.0;

  String getcalculatorB(){
    _bmi=weight / pow(height / 100 ,2);
    return _bmi.toStringAsFixed(1);
  }

  String getinter(){
    _bmi=weight / pow(height / 100 ,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >=25){
      return 'overweight';

    }
    else if(
    _bmi > 18.5){
      return 'normal';
    }
    else {
      return "underweight";
    }

  }

}
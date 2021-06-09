import 'dart:io';

class IOStream {
  dynamic value;
  IOStream([this.value]);

  IOStream fromline(){
    value = stdin.readLineSync();
    return IOStream(value);
  }

  IOStream getline(){
    return IOStream(stdin.readLineSync());
  }

  IOStream operator <<(dynamic x){
    //print('debug' + x.value);
    //print('DEBUG: '+x.runtimeType.toString());
    if(x is IOStream){
      stdout.write(x.value);
    }else{
      //print('\ndebug ${x}');
      stdout.write(x);
    }

    return IOStream();
  }

  IOStream operator >>(IOStream x){
    x.value = stdin.readLineSync();
    return IOStream(value);
  }
}
IOStream cout = IOStream();
IOStream cin  = IOStream();
String endl = '\n';
IOStream getline(IOStream stream,IOStream s){
  s.value = stream.getline().value;
  return s;
}
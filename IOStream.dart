import 'dart:io';

class IOStream {
  dynamic value;
  IOStream([this.value]);

  IOStream operator <<(dynamic x){
    if(x is IOStream){
      stdout.write(x.value);
    }else{
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
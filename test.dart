import 'dart:io';
import 'IOStream.dart';

int main(){
  IOStream x = IOStream();

  // Wrong
  x.getline();
  cout << "Now: " << x << endl;

  getline(cin, x);
  cout << "Now: " << x << endl;

  cin >> x;
  cout << "Now: " << x << endl;

  return 0;
}
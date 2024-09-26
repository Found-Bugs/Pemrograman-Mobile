void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.
  
  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Farid Fitriansah Alfarizi");
  names1.add("2241720055");

  names2.addAll({"Farid Fitriansah Alfarizi", "2241720055"});
  
  print(names1);
  print(names2);
}
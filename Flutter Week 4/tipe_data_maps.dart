void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': '1'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon'
  };

  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  gifts['name'] = 'Farid Fitriansah Alfarizi';
  gifts['NIM'] = '2241720055';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  
  nobleGases[20] = 'Farid Fitriansah Alfarizi';
  nobleGases[30] = '2241720055';

  mhs1['name'] = 'Farid Fitriansah Alfarizi';
  mhs1['NIM'] = '2241720055';

  mhs2[1] = 'Farid Fitriansah Alfarizi';
  mhs2[2] = '2241720055';
  
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
void main() {
  //Dynamic object
  // string key
  var hexColors = {
    'White': '#FFFFFF',
    'Black': '#000000',
    'Blue': '#0000FF',
    'Yellow': '#FFFF00',
    'Red': '#FF0000',
  };

  // int key
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Set Type
  var synonyms = Map<String, String>();

  // Add new key-value
  synonyms["Casa"] = 'Hogar';
  synonyms["Planta"] = 'Árbol';
  synonyms["Doctor"] = 'Médico';

  hexColors['LightColor'] = '#F08080';

  // Get Value
  var keyColor = 'Red';
  print('la clave headecimal del color ${keyColor} es ${hexColors[keyColor]}');

  // Key that isn't in a map
  var keyMaterial = 100;
  print(nobleGases[keyMaterial] == null
      ? 'No se encontró el elemento químico'
      : nobleGases[keyMaterial]);

  // Get the number of key-value
  print('El map cuenta con ${synonyms.length} elementos');

  // Remove a element
  hexColors.remove('Red');
  print(hexColors);
}

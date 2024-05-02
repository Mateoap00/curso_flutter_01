/*
  A partir del siguiente arreglo de edades var ages = [33, 15, 27, 40, 22];
  Crea un programa en Dart que las ordene e imprima la edad mayor, la edad menor y la edad promedio
  con sus respectivos mensajes: “La edad mayor es: ” , “La edad menor es: ”, “La edad promedio es:
*/

void main() {
  var ages = [33, 15, 27, 40, 22];

  // Ordenar las edades de menor a mayor
  ages.sort();

  // Calcular la edad mayor y menor
  var edadMayor = ages.last;
  var edadMenor = ages.first;

  // Calcular la edad promedio
  var sumaEdades = 0;
  for (var edad in ages) {
    sumaEdades += edad;
  }
  var edadPromedio = sumaEdades / ages.length;

  // Muestra los resultados
  print("La edad mayor es: $edadMayor");
  print("La edad menor es: $edadMenor");
  print("La edad promedio es: $edadPromedio");
}

import 'package:flutter_test/flutter_test.dart';

bool esDniValido(String dni) => RegExp(r'^\d{8}$').hasMatch(dni);
bool esCelularValido(String telefono) => RegExp(r'^\d{9}$').hasMatch(telefono);
bool estaCompleto(String nombre, String apellido, String dni) =>
    nombre.isNotEmpty && apellido.isNotEmpty && dni.isNotEmpty;

void main() {
  group('Validación de DNI', () {
    test('DNI válido', () => expect(esDniValido("12345678"), true));
    test('DNI con letras', () => expect(esDniValido("abc45678"), false));
  });

  group('Validación de celular', () {
    test('Celular válido', () => expect(esCelularValido("987654321"), true));
  });

  group('Formulario completo', () {
    test('Todos los campos llenos', () =>
        expect(estaCompleto("Ana", "Lopez", "12345678"), true));
  });
}

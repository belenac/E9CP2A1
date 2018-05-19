# Crear una clase Course cuyo constructor reciba el nombre del curso y las fechas de inicio y término.
# Crear un método que permita leer el archivo y crear una instancia de la clase Course por línea del archivo.
# Crear métodos que permitan:
# Saber qué cursos comienzan previo a una fecha entregada como argumento.
# Saber qué cursos finalizan posterior a una fecha entregada como argumento.
# En ambos el métodos argumento por defecto debe ser la fecha de hoy.
# Ambos métodos deben levantar una excepción si la fecha recibida es >= 2019-01-01.

class Course
  def initialize(curso, inicio, termino)
    @curso = curso
    @inicio = inicio
    @termino = termino
  end

  def leer_archivo
    file = File.open('cursos.txt', 'r')
    data = file.readlines
    file.close
  end
end

cursos = Course.new

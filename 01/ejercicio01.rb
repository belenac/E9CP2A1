# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las recaudaciones correspondientes de cada día.
# Hint: El constructor debe recibir 5 argumentos. Uno para el nombre de la mesa y los demás para cada recaudación correspondiente a esa mesa.
# Crear un método que permita leer el archivo e instanciar un objeto de la clase Table por cada línea del archivo.
# Crear métodos que permitan:
# Conocer el mayor valor recaudado, por mesa, y el nombre de la mesa y día corresponde (día 1, día 2, día 3 o día 4).
# Calcular el promedio total de lo recaudado por todas las mesas en todos los días.

class Table
  def initialize(mesa, dia_1, dia_2, dia_3, dia_4)
    @mesa = mesa
    @dia_1 = dia_1.to_i
    @dia_2 = dia_2.to_i
    @dia_3 = dia_3.to_i
    @dia_4 = dia_4.to_i
  end

  def recaudacion_mesa
    puts "Recaudación #{@mesa}:\nDía 1: #{@dia_1}, Día 2: #{@dia_2}, Día 3: #{@dia_3}, Día 4: #{@dia_4}."
  end

  def total_recaudado_mesa
    promedio_mesas = @dia_1 + @dia_2 + @dia_3 + @dia_4
    "Recaudación #{@mesa} total de la semana #{promedio_mesas}"
  end
end

file = File.open('casino.txt', 'r')
data = file.readlines
file.close

mesas = data.map { |row| Table.new(*row.split(', ')) }
mesas.each { |x| puts x.recaudacion_mesa }
mesas.each { |x| puts x.total_recaudado_mesa }

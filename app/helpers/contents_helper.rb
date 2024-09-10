module ContentsHelper
  # metodo que recibe la fecha como argumento
  def date_format(date)
    date.strftime("%d de %B de %Y")
    # listado de meses
    #meses = %w[Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre]
    # formato en español del mes extrayendo el mes de la fecha
    #mes = meses[date.strftime("%m").to_i - 1]
    # obtener el día
    #dia = date.strftime("%d")
    # obtener el año
    #year = date.strftime("%Y")
    # formato para la fecha
    #"#{dia} de #{mes} de #{year}"
  end


  # metodo que recibe como arguento la descripción de la tarjeta
  def simple_description(description)
    # retorna los 30 primeros caracteres en la card para que no se dañe y lo puedo usar en todas las vistas
    description.truncate(30)
  end

end

class View

  def index
    # sleep 1
    puts "Welcome to the online store"
    # sleep 1
    puts "Store: Nokogiri.com Encuentra lo que buscas"
    puts "-----------------------------------------------"
    puts "Selecciona una opcion(numero)"
    puts "-----------------------------------------------"
    # sleep 0.7
    puts "1. Registrate"
    # sleep 0.7
    puts "2. Login"
    # sleep 0.7
    puts "3. Administrador"
    # sleep 0.7
    puts "4. Exit"
    respuesta = gets.chomp
  end

  def tipo_usuario
    # sleep 1
    puts "Como que tipo de usuario deseas registrarte"
    # sleep 0.7
    puts "1. Cliente"
    puts "2. Vendedor"
    respuesta = gets.chomp
  end

  def pide_datos
    datos = []
    # sleep 1
    puts "Para realizar el registro necesitamos los siguientes datos"
    puts "Nombre y primer apellido?"
    nombre = gets.chomp
    # sleep 0.7
    puts "Nombre de usuario?"
    usuario = gets.chomp
    # sleep 0.7
    puts "Contraseña?"
    pass = gets.chomp
    # sleep 0.7
    puts "Correo?"
    correo = gets.chomp

    datos << nombre << usuario << pass << correo
  end

  def pide_datos_v
    datos = []
    # sleep 1
    puts "Para realizar el registro necesitamos los siguientes datos"
    puts "Nombre y primer apellido?"
    nombre = gets.chomp
    # sleep 0.7
    puts "Nombre de usuario?"
    usuario = gets.chomp
    # sleep 0.7
    puts "Contraseña?"
    pass = gets.chomp
    # sleep 0.7
    puts "Correo?"
    correo = gets.chomp
    # sleep 0.7
    puts "Nombre del producto que vendes?"
    producto = gets.chomp
    # sleep 0.7
    puts "Cantidad de stock?"
    stock = gets.chomp

    datos << nombre << usuario << pass << correo << producto << stock
  end

  def registro_exitoso
    puts 
    print "Registrandote"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 0.7
    puts "Felicidades tu registro ha sido exitoso"
  end

  def tipo_login
    sleep 0.7
    puts "Que tipo de usuario eres"
    puts "1. Cliente"
    puts "2. Vendedor"
    respuesta = gets.chomp
  end

  def login
    login = []
    sleep 0.7
    puts "Login   -  Nokogiri.com"
    # sleep 0.5
    puts "----------------------------------------"
    puts "Ingresa tu Usuario:"
    usuario = gets.chomp
    # sleep 0.5
    puts "Ingresa tu Contraseña:"
    pass = gets.chomp
    login << usuario << pass
  end

  def opcion_invalida
    puts "La opción seleccionada no es valida"
    puts "Vuelve a intentarlo"
  end

  def error_login
    puts 
    print "Comprobando usuario"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    puts "El acceso no fue permitido"
    puts "Usuario o password incorrecto"
    
  end

  def login_exitoso(datos)
    puts 
    print "Comprobando usuario"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    puts
    sleep 1
    puts "Login exitoso"
    puts "Bienvenido #{datos[1]}"
  end

  def login_exitoso_admin(datos)
    puts 
    print "Comprobando usuario"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    puts
    sleep 1
    puts "Login exitoso"
    puts "Bienvenido Admin #{datos[0]}"
  end

  def pag_cont
    puts "Página en contrucción"
  end

  def pag_admin
    puts "Página en contrucción"
  end

  def pag_cliente
    puts "Página en contrucción"
  end

  # def resultado_login(acceso)
  #     p "ya estoy en view"
  #     p acceso
  # end

end








require 'csv'
require 'pp'

class User

   attr_accessor :nombre, :usuario, :password, :correo

  def initialize(nombre, usuario, password, correo)
    @nombre = nombre
    @usuario = usuario
    @password = password
    @correo = correo
  end

end

class Cliente < User

end


class Vendedor < User

  attr_accessor :producto, :stock

  def initialize(nombre, usuario, password, correo, producto, stock)
    super(nombre, usuario, password, correo)
    @producto = producto
    @stock = stock
  end

end


class BaseDatos

  def agregar_cliente(cliente)
     tareas = []
    CSV.foreach('clientes.csv') do |tarea|
      tareas << tarea
    end
    
    num = tareas.length 

    CSV.open('clientes.csv', 'a+') do |csv|
      csv << [num + 1, cliente.nombre, cliente.usuario, cliente.password, cliente.correo ]
    end
  end

  def agregar_vendedor(vendedor)
    vendedores = []
    CSV.foreach('vendedores.csv') do |vendedor|
      vendedores << vendedor
    end
    
    num = vendedores.length 

    CSV.open('vendedores.csv', 'a+') do |csv|
      csv << [num + 1, vendedor.nombre, vendedor.usuario, vendedor.password, vendedor.correo, vendedor.producto, vendedor.stock]
    end
  end

  def login_cliente(array)
    datos_cliente = []
    usuario = array[0]
    pass = array[1]

     CSV.foreach('clientes.csv') do |cliente|

      if usuario == cliente[2] && pass == cliente[3]
        for i in 0...cliente.length
          datos_cliente << cliente[i]
        end
      end

    end
  datos_cliente
  end

   def login_vendedor(array)
    datos_vendedor = []
    usuario = array[0]
    pass = array[1]

     CSV.foreach('vendedores.csv') do |vendedor|

      if usuario == vendedor[2] && pass == vendedor[3]
        for i in 0...vendedor.length
          datos_vendedor << vendedor[i]
        end
      end

    end
  datos_vendedor
  end

  def login_admin(array)
    datos_admin = []
    usuario = array[0]
    pass = array[1]

     CSV.foreach('administradores.csv') do |admin|

      if usuario == admin[0] && pass == admin[1]
        for i in 0...admin.length
          datos_admin << admin[i]
        end
      end

    end
    datos_admin
  end

end # final clase BaseDatos

# # ------ Restart BD
# CSV.open('clientes.csv', 'wb') do |csv|
      
# end

# CSV.open('vendedores.csv', 'wb') do |csv|
      
# end

# v = Vendedor.new("n", "u", "c", "c", "la", "la")

# p 

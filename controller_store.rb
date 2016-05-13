require_relative 'model_store.rb'
require_relative 'view_store.rb'
class MainController

  def initialize
    @view = View.new
    @base_datos = BaseDatos.new
    pagina_inicio
  end

  def pagina_inicio
    respuesta = @view.index
    opcion_usuario(respuesta)
  end

  def opcion_usuario(respuesta)
    if respuesta == "1"
      r = @view.tipo_usuario
      if r == "1"
        registro_cliente
      else
        registro_vendedor
      end
    elsif respuesta == "2"
      login_usuario
    elsif respuesta == "3"
      login_admin
    elsif respuesta == "4"
      exit 
    end
  end

  def registro_cliente
    datos = @view.pide_datos
    cliente = Cliente.new(datos[0], datos[1], datos[2], datos[3])
    @base_datos.agregar_cliente(cliente)
    @view.registro_exitoso
    login_usuario
  end

  def registro_vendedor
    datos = @view.pide_datos_v
    vendedor = Vendedor.new(datos[0], datos[1], datos[2], datos[3], datos[4], datos[5])
    @base_datos.agregar_vendedor(vendedor)
    @view.registro_exitoso
    login_usuario
  end

  def login_usuario
    usuario = @view.tipo_login
    if usuario == "1"
      login = @view.login
      datos_usuario = @base_datos.login_cliente(login)

      if datos_usuario.length > 0
        @view.login_exitoso(datos_usuario)
        @view.pag_cont
      else
        @view.error_login
      end

    elsif usuario == "2"
      login = @view.login
      datos_usuario = @base_datos.login_vendedor(login)

      if datos_usuario.length > 0
        @view.login_exitoso(datos_usuario)
        @view.pag_cont
      else
        @view.error_login
      end

    else
      @view.opcion_invalida
    end
  end 

  def login_admin
    login = @view.login
    datos_admin = @base_datos.login_admin(login)
    if datos_admin.length > 0
      @view.login_exitoso_admin(datos_admin)
      @view.pag_cont
    else
      @view.error_login
    end
  end

end # Clase Main


MainController.new



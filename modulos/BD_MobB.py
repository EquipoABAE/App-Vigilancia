import pymysql

    
def obtener_conexion(host_name, user_name, user_pass, db_name):
    return pymysql.connect( host=host_name,
                            user=user_name,
                            password=user_pass,
                            db=db_name)


def insertar_video(nombre, fecha, ruta_video, ruta_miniatura, comentario, duracion):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                consulta = "INSERT INTO video(NOMBRE, FECHA, RUTA_VIDEO, RUTA_MINIATURA, COMENTARIO, DURACION) VALUES (%s, %s, %s, %s, %s, %s);"
                #Podemos llamar a .execute con datos distintos
                cursor.execute(consulta, (nombre, fecha, ruta_video, ruta_miniatura, comentario, duracion))
            conexion.commit()
        finally:
            conexion.close()
            return True
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False

def insertar_video_en_papelera(nombre, fecha, ruta_video, ruta_miniatura, comentario, duracion):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                consulta = "INSERT INTO papelera(NOMBRE, FECHA, RUTA_VIDEO, RUTA_MINIATURA, COMENTARIO, DURACION) VALUES (%s, %s, %s, %s, %s, %s);"
                #Podemos llamar a .execute con datos distintos
                cursor.execute(consulta, (nombre, fecha, ruta_video, ruta_miniatura, comentario, duracion))
=======
import mysql.connector



def main():
    conexion_db()
    #lectura_all()
    #lectura_intervalo_fechas()
    #lectura_ID()
    #eliminar_intervalo_fechas("1900-01-01", "2022-12-12",)
    #eliminar_ID()
    #print('main')

def create_db():
    #conexion con el servidor
    conexion = mysql.connector.connect (
                                        host = "localhost",
                                        user = "root",
                                        password = "",
                                        )

    #creación del cursor
    cursor = conexion.cursor()

    #creación de nueva base de datos
    try:
        cursor.execute("CREATE DATABASE pruebas;")
        return True
    except:
        return False


def create_tabla():
    conexion = mysql.connector.connect(
        host = 'localhost',
        user = 'root',
        password = '',
        db = 'eventos'
    )

    #creación del cursor
    cursor = conexion.cursor()

    #creación de una tabla
    try:
        cursor.execute("CREATE TABLE registro" 
        "(ID INT(11) NOT NULL AUTO_INCREMENT,"
        "NOMBRE TEXT NOT NULL COLLATE 'utf8mb4_general_ci',"
        "FECHA DATE NOT NULL,"
        "DIREC_VIDEO TEXT NOT NULL COLLATE 'utf8mb4_general_ci',"
        "DIREC_MINI TEXT NOT NULL COLLATE 'utf8mb4_general_ci', "
        "COMEN TEXT NOT NULL COLLATE 'utf8mb4_general_ci',"
        "DURACION TIME NOT NULL, "
        "PRIMARY KEY ID USING BTREE);")
        
        return True
    except:
        return False




    
def conexion_db():
    try:
        conexion = pymysql.connect(host = 'localhost',
                                   user = 'root',
                                   password = '',
                                   db = 'eventos')

        #print("Conexión correcta con el servidor")
        return True
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        #print("Ocurrió un error al conectar con el servidor: ", e)
        return False

def insertar_video(in_nombre, in_fecha, in_direc_video, in_direc_mini, in_comen, in_duracion):
    nombre = in_nombre
    fecha = in_fecha
    direc_video = in_direc_video
    direc_mini = in_direc_mini
    comen = in_comen
    duracion = in_duracion
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:
                consulta = "INSERT INTO registro(NOMBRE, FECHA, DIREC_VIDEO, DIREC_MINI, COMEN, DURACION) VALUES (%s, %s, %s, %s, %s, %s);"
                #Podemos llamar a .execute con datos distintos
                cursor.execute(consulta, (nombre, fecha, direc_video, direc_mini, comen, duracion))

            conexion.commit()
        finally:
            conexion.close()
            return True
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False



def lectura_all():
    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                # En este caso no necesitamos limpiar ningún dato
                cursor.execute("SELECT * FROM video;")
                # El caracter * se refiere o selecciona a todos los campos de la tabla video

def lectura_all():
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:
                # En este caso no necesitamos limpiar ningún dato
                cursor.execute("SELECT ID, NOMBRE, FECHA, DIREC_VIDEO, DIREC_MINI, COMEN, DURACION FROM registro;")

                # Con fetchall traemos todas las filas
                all = cursor.fetchall()
        finally:
            conexion.close()
            return all
        
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False


def lectura_mas_recientes():
    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                # En este caso no necesitamos limpiar ningún dato
                cursor.execute("SELECT * FROM video ORDER BY nombre DESC LIMIT 20;")
                # El caracter * se refiere o selecciona a todos los campos de la tabla video
                # Con fetchall traemos todas las filas
                videos_recientes = cursor.fetchall()
        finally:
            conexion.close()
            return videos_recientes
        
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False


def lectura_intervalo_fechas(fecha_inicial, fecha_final):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:  
                consulta = "SELECT * FROM video WHERE FECHA BETWEEN %s and %s ORDER BY NOMBRE ASC;"
                cursor.execute(consulta, (fecha_inicial, fecha_final))

def lectura_intervalo_fechas(in_fecha1, in_fecha2):
    fecha1 = in_fecha1
    fecha2 = in_fecha2
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:  
                consulta = "SELECT ID, NOMBRE, FECHA, DIREC_VIDEO, DIREC_MINI, COMEN, DURACION FROM registro WHERE FECHA BETWEEN %s and %s;"
                cursor.execute(consulta, (fecha1, fecha2))

                # Con fetchall traemos todas las filas
                resultado = cursor.fetchall()
        finally:
            conexion.close()
            return resultado
        
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False



def lectura_id(id):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:             
                consulta = "SELECT * FROM video WHERE ID = %s;"
                cursor.execute(consulta, (id))
                # Con fetchall traemos todas las filas que coincidan
                resultado = cursor.fetchone()
        finally:
            conexion.close()
            return resultado
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False

def lectura_papelera_id(id):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:             
                consulta = "SELECT * FROM papelera WHERE ID = %s;"
                cursor.execute(consulta, (id))
                # Con fetchall traemos todas las filas que coincidan
                resultado = cursor.fetchone()
        finally:
            conexion.close()
            return resultado
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False


def eliminar_intervalo_fechas(fecha_inicial, fecha_final):

    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                
                numero_de_registros = "SELECT COUNT(*) FROM video WHERE FECHA BETWEEN %s and %s;"
                cursor.execute(numero_de_registros, (fecha_inicial, fecha_final))
                resultado = cursor.fetchone()
                # Retornar solo un registro (numero de registros a eliminados)

                consulta = "DELETE FROM video WHERE FECHA BETWEEN %s and %s;"
                cursor.execute(consulta, (fecha_inicial, fecha_final))
            # No olvidemos hacer commit cuando hacemos un cambio a la BD
            conexion.commit()
        finally:
            conexion.close()
            return resultado
        

def lectura_ID(in_id):
    id = in_id
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:             
                consulta = "SELECT ID, NOMBRE, FECHA, DIREC_VIDEO, DIREC_MINI, COMEN, DURACION FROM registro WHERE ID = %s;"
                cursor.execute(consulta, (id))
                # Con fetchall traemos todas las filas que coincidan
                resultado = cursor.fetchall()
        finally:
            conexion.close()
            return resultado

    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False



def eliminar_video_id(id):
    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                
                consulta = "DELETE FROM video WHERE id = %s;"
                cursor.execute(consulta, (id))

def eliminar_intervalo_fechas(in_fecha1, in_fecha2):
    fecha1 = in_fecha1
    fecha2 = in_fecha2
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:
                
                consulta = "DELETE FROM registro WHERE FECHA BETWEEN %s and %s;"
                cursor.execute(consulta, (fecha1, fecha2))

    
            # No olvidemos hacer commit cuando hacemos un cambio a la BD
            conexion.commit()
        finally:
            conexion.close()
            return True


        

    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False


def eliminar_video_de_papelera(id):
    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                
                consulta = "DELETE FROM papelera WHERE id = %s;"
                cursor.execute(consulta, (id))

def eliminar_ID(in_id):
    ID = in_id
    try:
        conexion = pymysql.connect( host = 'localhost',
                                    user = 'root',
                                    password = '',
                                    db = 'eventos')
        try:
            with conexion.cursor() as cursor:
                
                consulta = "DELETE FROM registro WHERE ID = %s;"
                cursor.execute(consulta, (ID))

    
            # No olvidemos hacer commit cuando hacemos un cambio a la BD
            conexion.commit()
        finally:
            conexion.close()
            return True
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False


def lectura_total_de_papelera():
    try:
        conexion = obtener_conexion('localhost', 'root', '', 'eventos')
        try:
            with conexion.cursor() as cursor:
                # En este caso no necesitamos limpiar ningún dato
                cursor.execute("SELECT * FROM papelera;")
                # El caracter * se refiere o selecciona a todos los campos de la tabla video
                # Con fetchall traemos todas las filas
                all = cursor.fetchall()
        finally:
            conexion.close()
            return all
        
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
        return False



main()


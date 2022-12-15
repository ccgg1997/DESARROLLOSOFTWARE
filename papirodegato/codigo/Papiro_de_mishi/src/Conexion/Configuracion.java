
package Conexion;


public interface Configuracion {
       //CONEXION ORACLE
//    String DRIVER="oracle.jdbc.driver.OracleDriver";
//    String DATABASE="XXXXX";
//    String CONNECTION_URL="jdbc:oracle:thin:@localhost:1521:xe";
//    String USERNAME="XXXX";
//    String PASSWORD="XXX";
    
      // CONEXION POSTGRES
//    String DRIVER="org.postgresql.Driver";
//    String DATABASE="XXXXX";
//    String CONNECTION_URL="jdbc:postgresql://localhost/"+DATABASE;
//    String USERNAME="postgres";
//    String PASSWORD="XXXX";
    
      // CONEXION JAVA DERBY     
//    String DRIVER="org.apache.derby.jdbc.ClientDriver";
//    String DATABASE="agendadb";
//    String CONNECTION_URL="jdbc:derby://localhost/"+DATABASE;
//    String USERNAME="XXX";
//    String PASSWORD="XXX";
    
    
    //CONEXION A MYSQL
    String DRIVER="org.postgresql.Driver";//necesitamos nombre del driver que vamos a usar para la conexion segun nuestro gestor de BD
    String HOST="localhost";
    String PORT="5432";
    String DATABASE="mishi_database";//aqui en esta variable, guardamos el valor del nombre de nuestra base de datos que creamos en MYSQL
    String CONNECTION_URL="jdbc:postgresql://"+HOST+":"+PORT+"/"+DATABASE; //url de la conexion; como es local por eso se pone 127.0.0.1 y se
    //concatena el nombre de la base de datos que previamente ya hemos creado en mysql. 
    //En ejecucion la ruta se veria asi:jdbc:postgresql://
    String USERNAME="postgres";//nombre del usuario de nuestra base de datos, por defecto es root
    String PASSWORD="1234";// aqui iria el password si es que hemos asignado uno en la base de datos, sino se deja en blanco
}

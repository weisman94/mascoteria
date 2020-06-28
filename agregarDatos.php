<?php

include('baseDatos.php');

if(isset($_POST["btnEnviar"])){

    //Recibir los datos

    $usuario=$_POST["usuario"];
    $password=$_POST["clave"];
    $nombre=$_POST["nombre"];
    $apellido=$_POST["apellido"];
    $telefono=$_POST["telefono"];
    $direccion=$_POST["Direccion"];
    $correo=$_POST["correo"];

    $operacionBaseDatos= new BaseDatos();

    //crear consulta
    $consulta="INSERT INTO usuarios(nombre, clave, correo, usuario, telefono,apellido, direccion) VALUES ('$nombre','$password','$correo','$usuario','$telefono','$apellido','$direccion')";

    //insertar o escribir en la BD
    $resultado=$operacionBaseDatos->alterarBaseDatos($consulta);
    //validemos el resultado
    if($resultado){
        echo("<br>");
        echo("Transacción éxitosa, datos agrgados");
    }else{
        echo("<br>");
        die("Error en la transacción");
    }

}else{

    echo("no se presiono");
}


?>
<?php  

include('baseDatos.php');


if(isset($_POST["btnBuscar"])){

    //recibir datos del formulario
    $nombre=$_POST["nombreBuscar"];

    $operacionBaseDatos = new BaseDatos();

    $consulta="SELECT nombre,correo,clave,apellido from usuarios where nombre='$nombre'";

    $resultado=$operacionBaseDatos->consultarEnBaseDatos($consulta);

    if($resultado){
        echo("<br>");
        echo("Transacción éxitosa, datos agregados");
        echo("<br>");
        print_r($resultado);
    }else{
        echo("<br>");
        die("Error en la transacción");
    }

  
}else{
    echo("no se presiono");
}



?>
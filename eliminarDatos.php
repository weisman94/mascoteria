<?php 

include('baseDatos.php');

if(isset($_POST["btnEliminar"])){

    
    $nombre=$_POST["nombreEliminar"];

  
    $operacionBaseDatos = new BaseDatos();

    
    $consulta="DELETE from usuarios where nombre='$nombre'";

    
    $resultado=$operacionBaseDatos->alterarBaseDatos($consulta);

    
    if($resultado){
        echo("<br>");
        echo("Transacción éxitosa, datos eliminados");
    }else{
        echo("<br>");
        die("Error en la transacción");
    }

}else{
    echo ("no se presiono");
}





?>
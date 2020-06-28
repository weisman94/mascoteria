<?php

class BaseDatos{

    //Atributos
        private $servidor="localhost";
        private $usuario="root";
        private $clave="";
        private $nombreBaseDatos="lamascoteria";
        private $conexion;
    

    //Constructor
        public function __construct(){}

    //metodos
        public function conectarConBaseDatos(){

            $this->conexion= mysqli_connect(
                $this->servidor,
                $this->usuario,
                $this->clave,
                $this->nombreBaseDatos

            );

            //verificar conexion
            if(!($this->conexion)){ 
                die('error de Conexion: '. $mysqli->connect_error);
            }else{
                echo("Conexion Exitosa");
            }
        }

        public function alterarBaseDatos($consultaSQL){

            $this->conectarConBaseDatos();
            $resultado=$this->conexion->query($consultaSQL);
            
            return($resultado);
            $this->conexion->close();
        }

        //Lectura en la base de datos (buscar)
        public function consultarEnBaseDatos($consultaSQL){

            $this->conectarConBaseDatos();
            $resultado=$this->conexion->query($consultaSQL);

            $arregloFilas=array();
            foreach($resultado as $registros){
                $arregloFilas[]=$registros;
            }
            
            return($arregloFilas);
            $this->conexion->close();




        }
    

}

?>
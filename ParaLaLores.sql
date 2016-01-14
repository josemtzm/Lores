--AREA
CREATE TABLE `xxi_inventario`.`tbl_area` (
  `id_area` INT NULL,
  `area_unificada` VARCHAR(100) NULL,
  `area` VARCHAR(100) NULL,
  PRIMARY KEY (`id_area`));

 --OFICINA
CREATE TABLE `xxi_inventario`.`tbl_oficina` (
  `id_oficina` INT NULL,
  `ciudad` VARCHAR(200) NULL,
  `direccion` VARCHAR(500) NULL,
  `estado` VARCHAR(200) NULL,
  `ind_comercial` INT NULL,
  `ind_comercial` INT NULL,
  PRIMARY KEY (`id_oficina`)); 
  
--MARCAS
CREATE TABLE `xxi_inventario`.`tbl_marca` (
  `id_marca` INT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_marca`));

--ID_ESTATUS_EQUIPO
CREATE TABLE `xxi_inventario`.`tbl_estatus_equipo` (
  `id_estatus_equipo` INT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_estatus_equipo`));
  
--ID PROVEEDOR
CREATE TABLE `xxi_inventario`.`tbl_proveedor` (
  `id_proveedor` INT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_proveedor`));
  
--ID_ESTATUS USUARIO
CREATE TABLE `xxi_inventario`.`tbl_estatus_usuario` (
  `id_estatus_usuario` INT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_estatus_usuario`));  

 --USUARIO
CREATE TABLE `xxi_inventario`.`tbl_usuario` (
  `id_usuario` VARCHAR(50) NOT NULL,
  `consecutivo` INT NOT NULL,
  `nombre_completo` VARCHAR(200) NULL,
  `telefono_ext` VARCHAR(100) NULL,
  `correo_electronico` VARCHAR(100) NULL,
  `usuario_red` VARCHAR(100) NULL,
  `id_area` INT NULL,
  `id_oficina` INT NULL,
  `id_puesto` INT NULL,
  `id_ceco` INT NULL,
  `observaciones` VARCHAR(100) NULL,
  `id_estatus_usuario` INT NULL,
  `fecha_alta_usuario` DATE NULL,
  `fecha_baja_usuario` DATE NULL,
  `nombre_area` VARCHAR(100) NULL,
  PRIMARY KEY (`id_usuario`)); 
 
  --ASIGNACION USUARIO-PC
CREATE TABLE `xxi_inventario`.`tbl_asignacion_usuario` (

  PRIMARY KEY (`id_usuario`)); 

  
--PC
CREATE TABLE `xxi_inventario`.`tbl_pc` (
  `num_serie_pc` VARCHAR(50) NOT NULL,
  `tipo_equipo` VARCHAR(50) NOT NULL,
  `id_marca` INT NULL,
  `modelo_pc` VARCHAR(100) NULL,
  `procesador` VARCHAR(100) NULL,
  `memoria` VARCHAR(100) NULL,
  `disco_duro` VARCHAR(100) NULL,
  `mac_adress_pc` VARCHAR(100) NULL,
  `inventario` VARCHAR(100) NULL,
  `id_estatus_red` INT NULL,
  `observaciones` VARCHAR(100) NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `num_serie_monitor` VARCHAR(50) NOT NULL,
  `num_serie_teclado` VARCHAR(50) NOT NULL,
  `num_serie_mouse` VARCHAR(50) NOT NULL,
  `num_serie_cargador` VARCHAR(50) NOT NULL,
  `num_serie_dock_Station` VARCHAR(50) NOT NULL,
  `num_serie_candado` VARCHAR(50) NOT NULL,
  `ind_maletin` INT NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  `costo` DECIMAL(6,2) NULL,
  PRIMARY KEY (`num_serie_pc`));
   
--MONITOR
CREATE TABLE `xxi_inventario`.`tbl_monitor` (
  `num_serie_monitor` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_monitor` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_monitor`));
  
  --TECLADO
  CREATE TABLE `xxi_inventario`.`tbl_teclado` (
  `num_serie_teclado` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_teclado` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_teclado`));
  
  --MOUSE
  CREATE TABLE `xxi_inventario`.`tbl_mouse` (
  `num_serie_mouse` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_mouse` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_mouse`));
  
  --CARGADOR
  CREATE TABLE `xxi_inventario`.`tbl_cargador` (
  `num_serie_cargador` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_cargador` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_cargador`));
  
  --DOCK STATION
  CREATE TABLE `xxi_inventario`.`tbl_dock_Station` (
  `num_serie_dock_Station` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_dock_Station` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_dock_Station`));
  
  --CANDADO
  CREATE TABLE `xxi_inventario`.`tbl_candado` (
  `num_serie_candado` VARCHAR(50) NOT NULL,
  `num_serie_pc` VARCHAR(50) NULL,
  `id_marca` INT NULL,
  `modelo_candado` VARCHAR(100) NULL,
  `no_inventario` INT NULL,
  `id_estatus_equipo` INT NULL,
  `fecha_adqe` DATE NULL,
  `fecha_baja` DATE NULL,
  `observaciones` VARCHAR(100) NULL,
  `factura_folio` VARCHAR(50) NULL,
  `id_proveedor` INT NULL,
  `pedido` VARCHAR(100) NULL,
  PRIMARY KEY (`num_serie_candado`));
  
  
  
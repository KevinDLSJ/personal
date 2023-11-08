-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 01-11-2023 a las 01:09:13
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `tipo_art` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`tipo_art`, `descripcion`) VALUES
(1, 'venta directa'),
(2, 'preparado'),
(3, 'insumo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_producto`, `cantidad`, `email`) VALUES
(11, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `folio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `precio` float NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`folio`, `id_producto`, `cantidad`, `precio`, `name`) VALUES
(2, 47, 2, 5, 'Cubrebocas'),
(2, 48, 1, 25, 'Bionicos'),
(104, 2, 2, 16, 'Agua ciel 1L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `folio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_status` int(11) NOT NULL,
  `corre_emp` varchar(200) DEFAULT NULL,
  `correo_clie` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`folio`, `fecha`, `id_status`, `corre_emp`, `correo_clie`) VALUES
(2, '2023-10-23', 2, '', '21301061550127@cetis155.edu.mx'),
(104, '2023-10-25', 1, NULL, '21301061550127@cetis155.edu.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_producto` int(11) NOT NULL,
  `unidad` int(11) NOT NULL,
  `tipo_art` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `costo` float NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_producto`, `unidad`, `tipo_art`, `name`, `precio`, `costo`, `imagen`) VALUES
(1, 2, 1, 'Agua ciel 1.5L', 19, 9, 'https://cdn.alsuper.com/products/297320_p.png'),
(2, 2, 1, 'Agua ciel 1L', 16, 8, 'https://alsuper.online/products/359811_p.png'),
(3, 4, 3, 'Pan Dulce', 12, 8, 'https://farmaciacalderon.com/cdn/shop/products/100785_580x.png?v=1637273350'),
(8, 4, 2, 'Torta de Carnitas', 35, 17, 'https://store.loscorrales.com.mx/cdn/shop/products/ARACHERA150px-01_1200x1200.png?v=1590610077'),
(9, 2, 1, 'Santa Clara ', 12, 6, 'https://www.coca-cola.com.mx/content/dam/one/mx/es/products/santa-clara/saborizadas/Sabor_Chocolate_180ml.png'),
(10, 2, 1, 'Tikito', 6, 3, 'https://chedrauimx.vtexassets.com/arquivos/ids/17694978/7501209708962_00.jpg?v=638277116912700000'),
(11, 2, 1, 'Arizona', 20, 12, 'https://static.wixstatic.com/media/458b8d_8f52ccf63d414125aa95b1dade522a9c.png/v1/fit/w_500,h_500,q_90/file.png'),
(13, 4, 2, 'Flautas', 35, 17, 'https://elpasoflauta.com/wp-content/uploads/2022/05/The-El-Paso-Flauta-04-cropped.png'),
(15, 1, 1, 'Galletas', 19, 14, 'https://marinelausa.com/sites/default/files/styles/large/public/2023-03/Principe%20Chocolate%208%20ct%20SS_0.png.webp?itok=kUSOkOjb'),
(16, 2, 1, 'Yogurt', 12, 5, 'https://www.lala.com.mx/storage/app/media/Prodcutos/7501020561159.png'),
(17, 2, 1, 'Frutsi', 10, 5, 'https://farmaciacalderon.com/cdn/shop/products/75001988_580x.png?v=1605547188'),
(18, 4, 2, 'Torta Adobada', 12, 35, 'https://store.loscorrales.com.mx/cdn/shop/products/ADOBADA2150px-01_2048x2048.png?v=1590855675'),
(19, 4, 2, 'Hot Dog', 15, 30, 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c1b7.png'),
(20, 2, 1, 'Coca Cola 3L', 45, 220, 'https://www.superaki.mx/cdn/shop/products/7501055304745_1ecc2b87-976d-4daf-83b0-1992d3c757a0_300x300.png?v=1626651528'),
(21, 4, 1, 'Paleta Twister', 20, 13, 'https://www.heladosholanda.com.mx/content/dam/unilever/heart/mexico/pack_shot/productshot_twister_5000x5000-86178216-png.png.ulenscale.300x300.png'),
(23, 4, 2, 'Bolillo guisado', 25, 12, 'https://www.acalastortas.com.mx/wp-content/uploads/2017/06/torta-yucateca-png.png'),
(24, 2, 1, 'Coca-cola', 20, 10, 'https://modeloramanow.vtexassets.com/arquivos/ids/156312/CC_500ml.png?v=637795090929930000'),
(25, 2, 1, 'Fuze tea ', 20, 10, 'https://alsuper.online/products/335319_p.png'),
(26, 2, 1, 'Jumex', 18, 9, 'https://chefmart.com.mx/cdn/shop/products/BOTELLAmango450ML_1600x.png?v=1630944211'),
(27, 2, 1, 'Jugo del valle ', 18, 9, 'https://www.lasmamis.mx/Mamis2/complementos/uploads/articulos/8.png?var=2'),
(28, 1, 1, 'Magnum', 46, 32, 'https://www.heladosholanda.com.mx/content/dam/unilever/magnum/mexico/pack_shot/7506306413368_magnum_almendras-1251165-png.png'),
(29, 1, 1, 'Gansito', 15, 7, 'https://cdn.shopify.com/s/files/1/0566/4391/1854/products/7501000153107.png?v=1626777432'),
(30, 4, 1, 'Donas', 12, 6, 'https://alsuper.online/products/404724_p.png'),
(31, 4, 3, 'Churros', 10, 5, 'https://www.panovo.mx/wp-content/uploads/2022/03/churros-crudos-congelados.png'),
(32, 4, 2, 'Carlota', 25, 12, 'https://tvpacifico.mx/recetas/intranet/images/recipes/577-620.png'),
(33, 4, 1, 'Paleta de la rosa', 5, 2, 'https://www.fpsf.mx/cdn/shop/products/image_1_400x400.jpg?v=1589218484'),
(34, 4, 1, 'Lucas Muecas', 10, 5, 'https://www.lucas.com.mx/sites/g/files/fnmzdf1681/files/migrate-product-files/ycfe0zr5gatyjl3lbdai.png'),
(35, 4, 2, 'Burrito', 20, 10, 'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product$mc-burrito-a-la-mexican.png/200/200/original?country=mx'),
(36, 2, 1, 'Frapuccino', 18, 9, 'https://www.starbucks.com.au/imagecache/bestfit/620x634/_files/product-images/frapps/cream/cookies-n-creme-frappuccino-onwhite.png'),
(37, 4, 1, 'Paleta hielo', 15, 7, 'https://www.heladosholanda.com.mx/content/dam/unilever/heart/global/spanish/product_visual/chemisse_fresa_coco-103126257-png.png'),
(38, 4, 1, 'Mangonada', 15, 7, 'https://bk-latam-prod.s3.amazonaws.com/sites/burgerking.latam/files/BK_Web_SMOOTHIEMANGOTROPICAL_500X540px.png'),
(39, 4, 2, 'Torta jamón', 25, 12, 'https://file.adomicil.io/castellana.adomicil.io/_files/images/division/large/jamonserrano-07740880319728.png'),
(40, 1, 1, 'Cacahuate ga.', 13, 6, 'https://www.superaki.mx/cdn/shop/products/0000000003218_52c98ecd-e0b2-440b-915a-fb3a812dc698_300x300.png?v=1626652448'),
(41, 1, 1, 'Krankys', 13, 6, 'https://tienda.farmaciasroma.com/media/catalog/product/cache/8cfc93e6196efd5c8964fe64a59d97bb/4/4/4432998ace793dc244ca9c1348defb2c_757528042011-1.png'),
(42, 1, 1, 'Panditas', 13, 6, 'https://dulcesbalu.mx/cdn/shop/products/Super-Dulces-min-panditas-1-kilo-frente.png?v=1677257304'),
(43, 2, 1, 'Agua ciel limón', 13, 6, 'https://tienda.farmaciasroma.com/media/catalog/product/cache/8cfc93e6196efd5c8964fe64a59d97bb/2/6/265790452160d48f3477d77c5b00c8a0_7501055352463-1.png'),
(44, 3, 1, 'Brownies', 12, 6, 'https://www.terecazola.com/wp-content/uploads/2017/03/browniesconazucar-2.png'),
(45, 4, 1, 'Palomitas', 16, 8, 'https://cdn.uey.mx/uploads/Grupo18-Mix-palomitas.png.webp'),
(46, 4, 2, 'Rollo sushi', 25, 12, 'https://asianbistro.mx/upload/thumbnail/bora_bora_roll.png'),
(47, 4, 1, 'Cubrebocas', 5, 2, 'https://www.bhp.com.mx/hubfs/Sitio_web/productos/con-tabla/cubre-bocas/cubre-bocas-sencillo.png'),
(48, 5, 2, 'Bionicos', 25, 12, 'https://i.pinimg.com/originals/46/a7/89/46a789d219162d3a11fa5b2ab21f65b0.png'),
(49, 4, 2, 'Tacos guisado', 15, 7, 'https://media.mundotkm.com/p/a9b527ce8f337db19cd745244e7b6748/adjuntos/342/imagenes/000/067/0000067918/790x0/smart/taco1-e1454105333564png.png'),
(50, 2, 2, 'Sprite', 20, 10, 'https://alsuper.online/products/319639_p.png'),
(51, 2, 1, 'Manzanita', 20, 10, 'https://modeloramanow.vtexassets.com/arquivos/ids/155447/51.png?v=637349320009530000'),
(52, 2, 1, 'Fanta de fresa', 20, 10, 'https://alsuper.online/products/244266_p.png'),
(54, 2, 1, 'Delaware punch', 20, 10, 'https://www.yokiro.com.mx/yokiro/assets/img/productos/586_1.png'),
(55, 2, 1, 'Limonada', 20, 10, 'https://www.tang.com.mx/wp-content/uploads/2021/03/11-Limonada-Brasilena-1.png'),
(56, 1, 1, 'Galletas con chis', 6, 4, 'https://www.pngmart.com/files/16/Chocolate-Cookie-PNG-Transparent-Image.png'),
(57, 2, 1, 'Naranjada', 20, 10, 'https://coca-colafemsa.com/wp-content/uploads/2020/02/1-10.png'),
(58, 2, 1, 'Agua mineral', 16, 8, 'https://img.frubana.com/cmx/products/Ciel_mineralizada_2L-1646264923764.png'),
(59, 1, 1, 'Cacahuate jal.', 14, 7, 'https://deliyum.com/wp-content/uploads/2021/07/cacahuate-japonesenchilado-1.png'),
(60, 2, 1, 'Pepsi', 20, 10, 'https://cdparque.com/img/sections/productos/pepsi.png'),
(61, 1, 1, 'Doritos Nacho', 19, 13, 'https://epadelivery.com.mx/images/thumbs/0000060_doritos-nachos-105gr_550.png'),
(62, 4, 1, 'Trident menta', 2, 1, 'https://i.pinimg.com/originals/5e/da/40/5eda40a79eb060d20c49bd6df8c4c0f1.png'),
(63, 4, 2, 'Trident fresa', 2, 1, 'https://d2e63rjlg57kwc.cloudfront.net/products/432359.png'),
(64, 4, 1, 'Torta ahogada', 38, 17, 'https://tortasahogadaslosprimos.com/wp-content/uploads/2023/01/Torta-Ahogada-V1.png'),
(65, 4, 1, 'Trident uva', 2, 1, 'https://media.cotabest.com.br/media/sku/chiclete-sabor-limonada-e-uva-caixa-21-unidades-trident-cx.png'),
(66, 4, 1, 'Trident Tropical', 2, 1, 'https://www.joysdelights.com.au/cdn/shop/products/trident-tropical_1200x1200.png?v=1668763770'),
(67, 1, 1, 'Doritos 3D', 16, 8, 'https://quesuper.mx/wp-content/uploads/2019/06/07_3d.png'),
(68, 1, 1, 'Doritos Dinamita', 16, 9, 'https://quesuper.mx/wp-content/uploads/2019/06/03_dinamita.png'),
(69, 1, 1, 'Doritos Flamin ', 16, 9, 'https://detqhtv6m6lzl.cloudfront.net/HCLContenido/producto/FullImage/7501011130272_1.png'),
(70, 1, 1, 'Doritos Diablo', 16, 9, 'https://quesuper.mx/wp-content/uploads/2019/06/02_diablo.png'),
(71, 1, 1, 'Doritos Pizzerola', 16, 8, 'https://www.nicepng.com/png/full/164-1646336_the-only-doritos-i-like-pizzerolas-doritos-nacho.png'),
(72, 1, 1, 'Ruffles Queso', 17, 9, 'https://revistasociosams.com/wp-content/uploads/2023/09/RUFFLES_QUESO-280G-LLEVA-2.png'),
(73, 1, 1, 'Doritos incognita', 15, 8, 'https://tienda.farmaciasroma.com/media/catalog/product/cache/8cfc93e6196efd5c8964fe64a59d97bb/7/6/76128a9a1205ea458d00c3120c4ce319_7501011123878-1.png'),
(74, 1, 1, 'Emperador de limon', 18, 14, 'https://www.gamesacookies.com/sites/gamesa.com/files/2022-04/emperador-lemon-big-v2.png'),
(75, 4, 1, 'Trident  Sandia', 2, 1, 'https://tienda.farmaciasroma.com/media/catalog/product/cache/8cfc93e6196efd5c8964fe64a59d97bb/5/e/5e97f1a9cc746b18e17e0a20bf0df458_7506105606084-1.png'),
(76, 1, 1, 'Cheetos', 14, 6, 'https://d2e63rjlg57kwc.cloudfront.net/products/361755.png'),
(77, 1, 1, 'Mamut', 12, 6, 'https://www.gamesacookies.com/sites/gamesa.com/files/2022-03/mamut-product-big.png'),
(78, 2, 1, 'Bonafont Fresa', 16, 8, 'https://cdn.shopify.com/s/files/1/0566/4391/1854/products/0758104006656_080922_de775fc3-330e-4ae8-ae8f-d3d07b99e222.png?v=1663679630'),
(79, 1, 1, 'Bimbuñuelos', 19, 15, 'https://alsuper.online/products/450621_p.png'),
(80, 1, 1, 'Triki Trakers', 18, 12, 'https://d287z5784cyr3t.cloudfront.net/s3fs-public/productos/triki.png'),
(81, 1, 1, 'Chokis ', 18, 12, 'https://www.gamesacookies.com/sites/gamesa.com/files/2021-09/chokis-individual.png'),
(82, 1, 1, 'Oreo', 18, 12, 'https://images.rappi.com.mx/products/842348496777_bnfalptuhcoh_757679941210_xtxxowenyptf_1082356_1.png'),
(83, 2, 1, 'Bonafont piña', 16, 8, 'https://alsuper.online/products/412675_p.png'),
(84, 1, 1, 'Takis Blue Heat', 16, 7, 'https://supermode.com.mx/cdn/shop/products/D_NQ_NP_2X_856962-MLM54365591212_032023-Fcopia.png?v=1681154299'),
(85, 1, 1, 'Takis Fuego', 16, 8, 'https://www.barcel.com.mx/themes/custom/barceldos/images/files/takis_fuego.png'),
(86, 1, 1, 'Takis Originales', 16, 7, 'https://www.barcel.com.mx/themes/custom/barceldos/images/files/takis_original.png'),
(87, 1, 1, 'Conchas Bimbo', 19, 13, 'https://d5xnv1r45pn40.cloudfront.net/s3fs-public/productos/conchas.png'),
(88, 1, 1, 'Mantecadas Bimbo', 22, 15, 'https://bimbousa.com/sites/default/files/2022-07/MantecadasVainilla_SS_render_web_SFondo_0.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `tip_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `tip_status`) VALUES
(1, 'Pendiente'),
(2, 'Terminado'),
(3, 'Pagado'),
(4, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `units`
--

CREATE TABLE `units` (
  `unidad` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `units`
--

INSERT INTO `units` (`unidad`, `description`) VALUES
(1, 'Gramos'),
(2, 'Litros'),
(3, 'Rebanada'),
(4, 'Piezas'),
(5, 'No contable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_usuario` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ap_paterno` varchar(200) NOT NULL,
  `ap_materno` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_usuario`, `name`, `ap_paterno`, `ap_materno`, `telefono`, `email`, `password`) VALUES
(1, 'Erick', 'Chavez', 'Ponce', '4495882440', 'erick123@gmail.com', '$2b$12$6Qc8a93tW8Yhg8Jmf.D9PeXMJL.vw.bfP1xsF/IEnaQtQgQ9uLESy'),
(3, 'Kevin Raziel', 'De Los Santos', 'Jaramillo', '4493938732', '21301061550104@cetis155.edu.mx', '$2b$12$wVpqHzv11CgBLGPfMiqoo.we8UG.XO/nNXNRQFiq2aUljvaMRoC3C'),
(5, 'DanLolero', 'Martinez', '', '4493657845', 'newuser@gmail.com', '$2b$12$5Perg1TSbGXQhR.iDPXDPOmd.a6d7PFVKoo.59uzvxfXlWT3qsNue'),
(6, 'Carlos', 'Martinez', 'Jaramill', '4995888561', 'martin_mtz@outlook.com', '$2b$12$Q/IbW3GkdyW2o7TK54du6elP/jN3NE5BTxVPjJ6BWA7rw5MkIpjG6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`tipo_art`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`folio`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `name` (`name`),
  ADD KEY `precio` (`precio`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `id_status` (`id_status`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tipo_art` (`tipo_art`),
  ADD KEY `product_ibfk_2` (`unidad`),
  ADD KEY `precio` (`precio`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indices de la tabla `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unidad`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `tipo_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `units`
--
ALTER TABLE `units`
  MODIFY `unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `product` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `pedido` (`folio`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `product` (`id_producto`),
  ADD CONSTRAINT `detalle_ibfk_3` FOREIGN KEY (`name`) REFERENCES `product` (`name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_4` FOREIGN KEY (`precio`) REFERENCES `product` (`precio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`tipo_art`) REFERENCES `articulo` (`tipo_art`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`unidad`) REFERENCES `units` (`unidad`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

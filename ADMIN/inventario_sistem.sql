-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2021 a las 08:18:27
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario_sistem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id_accounts` int(11) NOT NULL,
  `name_accounts` varchar(400) NOT NULL COMMENT 'nombre de la cuenta ',
  `tipe_accounts` varchar(300) NOT NULL COMMENT 'tipo de cuenta',
  `num_accounts` varchar(300) NOT NULL COMMENT 'numero de cuenta',
  `name_bank_accounts` varchar(400) NOT NULL COMMENT 'nombre del banco',
  `ci_accounts` varchar(300) NOT NULL COMMENT 'cedula de la cuenta',
  `mail_accounts` varchar(300) NOT NULL COMMENT 'correo de la cuenta',
  `id_admin_accound` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id_accounts`, `name_accounts`, `tipe_accounts`, `num_accounts`, `name_bank_accounts`, `ci_accounts`, `mail_accounts`, `id_admin_accound`) VALUES
(10, 'Carlos Tello', 'Ahorro', '123456789101112', 'Banco Movil', 'v-2000000', 'carlos2020@gmail.com', 1),
(11, 'edison taipe ', 'otro', '', 'BBVA', '01201210220', 'adminedison@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pw` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombre`, `apellido`, `correo`, `nivel`, `pw`) VALUES
(1, 'Edison ', 'Taipe Gomez', 'adminedison@gmail.com', 1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car`
--

CREATE TABLE `car` (
  `id_car` int(11) NOT NULL,
  `id_service_car` int(11) NOT NULL COMMENT 'relacion con el servicio',
  `cantidacar` int(11) NOT NULL,
  `id_payment_id_car` int(11) NOT NULL,
  `costo_car` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `car`
--

INSERT INTO `car` (`id_car`, `id_service_car`, `cantidacar`, `id_payment_id_car`, `costo_car`) VALUES
(22, 54, 1, 65, 1300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisas`
--

CREATE TABLE `divisas` (
  `id_divisas` int(11) NOT NULL,
  `name_divisa` varchar(100) NOT NULL,
  `simbolo_divisa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `divisas`
--

INSERT INTO `divisas` (`id_divisas`, `name_divisa`, `simbolo_divisa`) VALUES
(1, 'dolar', '$'),
(2, 'euros', '€'),
(3, 'libra', '£');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `name_empresa` varchar(300) NOT NULL,
  `tel_empresa` varchar(300) NOT NULL,
  `rif_empresa` varchar(300) NOT NULL,
  `dir_empresa` varchar(300) NOT NULL,
  `id_admin_id_empresa` int(11) NOT NULL,
  `logo_empresa` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `name_empresa`, `tel_empresa`, `rif_empresa`, `dir_empresa`, `id_admin_id_empresa`, `logo_empresa`) VALUES
(1, 'HeavyDeveloper', '0276-3480995', 'j-21545412-0', 'centro calle 12', 1, 'logoc3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL,
  `id_service_id_ingreso` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `id_proveedor_id_ingreso` int(11) NOT NULL,
  `cantida_movimiento` int(11) NOT NULL,
  `motivo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id_ingreso`, `id_service_id_ingreso`, `fecha_ingreso`, `id_proveedor_id_ingreso`, `cantida_movimiento`, `motivo`) VALUES
(42, 55, '2021-03-07 22:48:00', 3, 1, 'Maquina Por Verse'),
(43, 57, '2021-03-07 23:24:00', 3, 80, 'Falta Detallar Maquinas'),
(44, 60, '2021-03-07 23:36:00', 3, 16, 'Faltan Detalles de la Maquina'),
(45, 61, '2021-03-08 05:03:29', 1, 29, ''),
(46, 62, '2021-03-07 23:41:00', 3, 33, 'Detalle de la Maquina Falta'),
(47, 63, '2021-03-07 23:42:00', 3, 278, 'Detalle de la Maquina Falta'),
(48, 64, '2021-03-07 23:44:00', 3, 23, '2 Maquinas Inoperativas '),
(49, 65, '2021-03-07 23:49:00', 3, 2, '1 Maquina Inoperativa en el Almacen \"G\"'),
(50, 66, '2021-03-07 23:53:00', 3, 1, 'Maquina Inoperativa en el Almacen \"G\"'),
(52, 68, '2021-03-07 23:55:00', 3, 4, 'Detalle de Maquina Falta'),
(53, 69, '2021-03-08 00:05:00', 3, 7, 'Detalle de Maquinas Falta'),
(55, 71, '2021-03-08 00:06:00', 3, 2, '2 Maquinas Inoperativas'),
(56, 72, '2021-03-08 00:07:00', 3, 1, 'Detalle de Maquinas Falta'),
(57, 73, '2021-03-08 00:08:00', 3, 1, 'Detalle de Maquinas Falta'),
(58, 74, '2021-03-08 00:09:00', 3, 2, 'Detalle de Maquinas Falta'),
(60, 79, '2021-03-08 00:10:00', 3, 1, 'Detalle de Maquinas Falta'),
(61, 81, '2021-03-08 00:13:00', 3, 1, 'Maquina Inoperativa Savin '),
(62, 82, '2021-03-08 00:15:00', 3, 5, '2 Maquinas S/ Smart Panel'),
(63, 83, '2021-03-08 00:16:00', 3, 1, 'Detalle de Maquinas Falta'),
(65, 85, '2021-03-08 00:18:00', 3, 3, '2 Maquinas Con Codigo'),
(67, 88, '2021-03-08 00:20:00', 3, 7, 'Maquinas Operativas'),
(68, 89, '2021-03-08 00:22:00', 3, 3, 'Detalle de Maquinas Falta'),
(69, 90, '2021-03-08 00:25:00', 3, 9, 'Detalle de Maquinas Falta'),
(71, 93, '2021-03-08 00:27:00', 3, 3, 'Detalle de Maquinas Falta'),
(73, 95, '2021-03-08 00:28:00', 3, 1, 'Detalle de Maquinas Falta'),
(75, 97, '2021-03-08 00:29:00', 3, 1, 'Detalle de Maquinas Falta'),
(76, 98, '2021-03-08 00:30:00', 3, 1, 'Detalle de Maquinas Falta'),
(78, 101, '2021-03-08 00:32:00', 3, 1, 'Maquina no Prende - Revisar'),
(79, 103, '2021-03-08 00:33:00', 3, 77, 'Detalle de Maquinas Falta Almacen: 3er Piso'),
(80, 104, '2021-03-08 00:34:00', 3, 2, 'Detalle de Maquinas Falta'),
(81, 105, '2021-03-08 00:35:00', 3, 1, 'Detalle de Maquinas Falta Almacen: 3er Piso'),
(82, 106, '2021-03-08 00:39:00', 3, 42, 'Detalle de Maquinas Falta '),
(84, 108, '2021-03-08 00:40:00', 3, 50, 'Detalle de Maquinas Falta'),
(85, 109, '2021-03-08 00:41:00', 3, 1, 'Detalle de Maquinas Falta'),
(86, 110, '2021-03-08 00:42:00', 3, 8, 'Detalle de Maquinas Falta'),
(87, 111, '2021-03-08 00:43:00', 3, 2, 'Detalle de Maquinas Falta'),
(89, 113, '2021-03-08 00:44:00', 3, 1, 'Detalle de Maquinas Falta 1 Inoperativa'),
(90, 114, '2021-03-08 00:45:00', 3, 2, '1 Maquina Inoperativa'),
(91, 116, '2021-03-08 00:46:00', 3, 33, 'Detalle de Maquinas Falta Revisar el Tecnico'),
(92, 117, '2021-03-08 00:47:00', 3, 10, 'Detalle de Maquinas Falta - Revisar el Tecnico'),
(93, 118, '2021-03-08 00:48:00', 3, 2, 'Detalle de Maquinas Falta'),
(94, 123, '2021-03-08 01:34:00', 3, 17, 'Detalle de la Maquina Falta\r\n '),
(95, 124, '2021-03-08 07:03:07', 3, 5, 'Detalle de la Maquina Falta'),
(97, 125, '2021-03-08 01:41:00', 3, 2, 'Detalle de la Maquina Falta'),
(98, 126, '2021-03-08 01:44:00', 3, 1, 'Detalle de la Maquina Falta'),
(99, 127, '2021-03-08 01:45:00', 3, 1, 'Detalle de la Maquina Falta'),
(100, 128, '2021-03-08 07:03:48', 3, 10, 'Detalle de la Maquina Falta'),
(101, 129, '2021-03-08 01:47:00', 3, 2, 'Detalle de la Maquina Falta'),
(102, 130, '2021-03-08 01:48:00', 3, 16, 'Detalle de la Maquina Falta'),
(103, 131, '2021-03-08 01:50:00', 3, 1, 'Detalle de la Maquina Falta'),
(104, 132, '2021-03-08 07:03:53', 3, 1, 'Detalle de la Maquina Falta'),
(105, 133, '2021-03-08 01:53:00', 3, 6, 'Detalle de la Maquina Falta'),
(106, 134, '2021-03-08 01:54:00', 3, 4, 'Detalle de la Maquina Falta'),
(107, 135, '2021-03-08 01:55:00', 3, 1, 'Detalle de la Maquina Falta'),
(108, 136, '2021-03-08 01:56:00', 3, 1, 'Detalle de la Maquina Falta'),
(109, 137, '2021-03-08 01:57:00', 3, 4, 'Detalle de la Maquina Falta'),
(110, 138, '2021-03-08 01:58:00', 3, 1, 'Detalle de la Maquina Falta'),
(111, 139, '2021-03-08 02:00:00', 3, 10, 'Detalle de la Maquina Falta'),
(112, 140, '2021-03-08 02:02:00', 3, 2, 'Detalle de la Maquina Falta'),
(113, 141, '2021-03-08 02:03:00', 3, 1, 'Detalle de la Maquina Falta'),
(114, 142, '2021-03-08 02:05:00', 3, 5, 'Detalle de la Maquina Falta'),
(115, 143, '2021-03-08 02:06:00', 3, 7, 'Detalle de la Maquina Falta'),
(116, 144, '2021-03-08 02:08:00', 3, 5, 'Detalle de la Maquina Falta'),
(117, 145, '2021-03-08 02:10:00', 3, 3, 'Detalle de la Maquina Falta'),
(118, 122, '2021-03-08 02:13:00', 3, 14, 'Detalle de la Maquina Falta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosaldo`
--

CREATE TABLE `movimientosaldo` (
  `id_msaldo` int(11) NOT NULL,
  `id_msaldo_id_saldo` int(11) NOT NULL,
  `cantida_msaldo` int(11) NOT NULL,
  `fecha_msaldo` datetime NOT NULL,
  `motivo_msaldo` varchar(500) NOT NULL,
  `movimiento_emisor` int(11) DEFAULT NULL,
  `tipo_mmovimiento` varchar(100) NOT NULL COMMENT 'tipo de movimiento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientosaldo`
--

INSERT INTO `movimientosaldo` (`id_msaldo`, `id_msaldo_id_saldo`, `cantida_msaldo`, `fecha_msaldo`, `motivo_msaldo`, `movimiento_emisor`, `tipo_mmovimiento`) VALUES
(1, 1, 1000, '2021-02-26 00:49:00', 'Por la Prueba de sistemas', 0, 'entrada'),
(2, 1, 10, '2021-02-26 00:50:00', 'Por aprobacion', 0, 'salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id_payments` int(11) NOT NULL COMMENT 'id de tabla de pagos ',
  `state_payment` varchar(300) NOT NULL COMMENT 'estado del pago si vensido o n proceso y pagado ',
  `date_payment` datetime NOT NULL COMMENT 'fecha de pago ',
  `id_user_id_payments` int(11) NOT NULL COMMENT 'relacion con el usuario que pago o que se esta procesando ',
  `id_accounts_id_payments` int(11) NOT NULL COMMENT 'relacion con bancos',
  `date_pago` datetime NOT NULL COMMENT 'fecha de registro de pago'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id_payments`, `state_payment`, `date_payment`, `id_user_id_payments`, `id_accounts_id_payments`, `date_pago`) VALUES
(65, 'aceptado', '2017-10-22 00:10:45', 8, 10, '2017-10-22 01:10:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(500) NOT NULL,
  `telefono_proveedor` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_proveedor`, `telefono_proveedor`, `correo`) VALUES
(1, 'Seleccione el Proveedor', '0426-1454751', 'popotas@popotas.com'),
(2, 'Importaciones Perez', '(01) 332-5539\r\n\r\n', 'ventas@importacionesperez.com'),
(3, 'Ricoh del Peru', '(01) 7163600', 'ricoh@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `cantida_saldo` int(11) NOT NULL,
  `id_saldo_id_accounts` int(11) NOT NULL,
  `id_divisa_id_saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `cantida_saldo`, `id_saldo_id_accounts`, `id_divisa_id_saldo`) VALUES
(4, 5, 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id_salida` int(11) NOT NULL,
  `id_service_id_salida` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `id_user_id_salida` int(11) NOT NULL COMMENT 'id de usuarios en caso de que haya sido una venta ',
  `cantida_salida` int(11) NOT NULL,
  `motivo_salida` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `name_service` varchar(300) NOT NULL COMMENT 'nombre del servicio',
  `price_service` bigint(20) NOT NULL COMMENT 'precio del servicio',
  `date_ven_service` datetime NOT NULL COMMENT 'fecha de vencimiento del servicio',
  `info_service` varchar(500) NOT NULL COMMENT 'informacion adicional del servicio',
  `cantida` int(11) NOT NULL COMMENT 'cantida de productos',
  `date_registro_pro` datetime NOT NULL COMMENT 'fecha de registro del producto ',
  `tipo_producto` varchar(100) NOT NULL COMMENT 'tipo de producto  si es servicio o producto',
  `imagen` varchar(1000) NOT NULL COMMENT 'imagen principal del producto',
  `costo` int(11) NOT NULL COMMENT 'costo del producto o servicio',
  `state_service` int(11) NOT NULL COMMENT 'estado del servicio si es producto o entrada de  dinero'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`id_service`, `name_service`, `price_service`, `date_ven_service`, `info_service`, `cantida`, `date_registro_pro`, `tipo_producto`, `imagen`, `costo`, `state_service`) VALUES
(54, 'Toner MP C2003', 36, '0000-00-00 00:00:00', 'Repuestos de Fotocopiadoras Ricoh', 1, '2017-10-22 00:10:50', 'Tecnologico', 'producto_TonerMPC2003tonermpc2003.jpg', 60, 0),
(55, 'AF 2075 - Usa - Lince', 500, '0000-00-00 00:00:00', 'Maquinas de A3 Multifuncional', 1, '2021-02-24 07:02:04', 'LINCE', 'img-no.jpg', 400, 0),
(56, 'MP 201 - Usa - Sta.Cata', 200, '0000-00-00 00:00:00', 'Maquina en Stock 0 hasta el proximo aviso', 0, '2021-02-24 07:02:05', 'LINCE', 'img-no.jpg', 0, 0),
(57, 'MP 301 - Usa - Lince', 360, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 80, '2021-02-24 07:02:36', 'LINCE', 'img-no.jpg', 360, 0),
(60, 'MP 305+ - Usa - Lince', 400, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 16, '2021-03-07 23:03:00', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 400, 0),
(61, 'MP 401 - Usa - Lince', 200, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 29, '2021-03-07 23:03:48', 'Of. Lince Almacen: 3er Piso', 'img-no.jpg', 0, 0),
(62, 'MP 402 - Usa - Lince', 500, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 33, '2021-03-07 23:03:11', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 500, 0),
(63, 'MP 501 - Usa - Lince', 500, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 278, '2021-03-07 23:03:46', 'Of. Lince - Almacen: 2do Piso ', 'img-no.jpg', 500, 0),
(64, 'MP 601 - Usa - Lince', 500, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 23, '2021-03-07 23:03:24', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 500, 0),
(65, 'MP 2501 - Usa - Lince', 600, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncional Blanco y Negro', 2, '2021-03-07 23:03:21', 'Of. Lince Almacen: \"E\"', 'img-no.jpg', 600, 0),
(66, 'MP 2550B - Usa - Lince', 600, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:23', 'Of. Lince Almacen: \"G\"', 'img-no.jpg', 600, 0),
(67, 'MP 2553 - Usa - Lince', 600, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:52', 'Of. Lince Almacen: \"G\"', 'img-no.jpg', 600, 0),
(68, 'MP 2554 - Usa - Lince', 700, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 4, '2021-03-07 23:03:55', 'Of. Lince Almacen: \"G\"', 'img-no.jpg', 700, 0),
(69, 'MP 2555 - Usa - Lince', 800, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 7, '2021-03-07 23:03:45', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(70, 'MP 2852 - Usa - Lince', 700, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:54', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 700, 0),
(71, 'MP 3054 - Usa - Lince', 800, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 2, '2021-03-07 23:03:38', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(72, 'MP 3055 - Usa - Lince', 800, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:11', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(73, 'MP 3353 - Usa - Lince', 800, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:29', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(74, 'MP 3554 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 2, '2021-03-07 23:03:02', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(76, 'MP 3555 - Usa - Lince', 860, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 3, '2021-03-07 23:03:27', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(77, 'MP 4002 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 0, '2021-03-07 23:03:17', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(78, 'MP 5002 - Usa - Lince', 900, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 0, '2021-03-07 23:03:55', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(79, 'MP 4054 - Usa - Lince', 950, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:34', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 900, 0),
(80, 'MP 5055 - Usa - Lince', 950, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 0, '2021-03-07 23:03:15', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(81, 'MP 6001 - Usa - Lince', 750, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:26', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 700, 0),
(82, 'MP 6002 - Usa - Lince ', 950, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 5, '2021-03-07 23:03:58', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 900, 0),
(83, 'MP 6503 - Usa - Lince', 950, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:31', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 900, 0),
(84, 'MP 7502 - Usa - Lince', 1500, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-07 23:03:12', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 1000, 0),
(85, 'MP 7503 - Usa - Lince', 1500, '0000-00-00 00:00:00', 'Maquina A3 Multifuncional Blanco y Negro', 3, '2021-03-07 23:03:58', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 1000, 0),
(86, 'MP C305 - Usa - Lince', 400, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 1, '2021-03-07 23:03:00', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 350, 0),
(87, 'MP C306 - Usa - Lince', 300, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 0, '2021-03-07 23:03:29', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 0, 0),
(88, 'MP C307 - Usa - Lince', 400, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 6, '2021-03-07 23:03:57', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 350, 0),
(89, 'MP C407 - Usa - Lince', 400, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 3, '2021-03-07 23:03:57', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 350, 0),
(90, 'MP C2004 - Usa - Lince', 900, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 9, '2021-03-07 23:03:52', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(91, 'MP C2003 - Usa - Lince', 900, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 0, '2021-03-07 23:03:31', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(92, 'MP C3003 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:23', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(93, 'MP C3004 - Usa - Lince', 860, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 3, '2021-03-07 23:03:54', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(94, 'MP C3504 - Usa - Lince', 752, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:58', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 700, 0),
(95, 'MP C4502 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:11', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(96, 'MP C4504 - Usa - Lince', 900, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:41', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(97, 'MP C5502 - Usa - Lince', 750, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:27', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 700, 0),
(98, 'MP C5503 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-07 23:03:50', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(99, 'MP C6004 - Usa - Lince', 1200, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 0, '2021-03-07 23:03:20', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(100, 'IM 430F - Usa - Lince', 450, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 3, '2021-03-07 23:03:23', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 400, 0),
(101, 'IM C2000 - Usa - Lince', 850, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-08 00:03:06', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 800, 0),
(102, 'LD 630C - Usa - Lince', 650, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 0, '2021-03-08 00:03:37', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(103, 'SP 4510SF - Usa - Lince', 250, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 77, '2021-03-08 00:03:52', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 200, 0),
(104, 'SP 5200S - Usa - Lince', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 2, '2021-03-08 00:03:57', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 300, 0),
(105, 'SP 5210SF - Usa - Lince', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 1, '2021-03-08 00:03:40', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 300, 0),
(106, 'SP 4510DN - Usa - Lince', 100, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 42, '2021-03-08 00:03:07', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 90, 0),
(107, 'SP 4520DN - Usa - Lince', 105, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 4, '2021-03-08 00:03:38', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 100, 0),
(108, 'SP 5200DN - Usa - Lince', 220, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 50, '2021-03-08 00:03:11', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 200, 0),
(109, 'SP 5210DN - Usa - Lince', 220, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 1, '2021-03-08 00:03:49', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 200, 0),
(110, 'SP 5300DN - Usa - Lince', 230, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 8, '2021-03-08 00:03:20', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 200, 0),
(111, 'SP 5310DN - Usa - Lince', 220, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 2, '2021-03-08 00:03:05', 'Of. Lince - Almacen: 3er Piso', 'img-no.jpg', 200, 0),
(112, 'SP C252SF - Usa - Lince', 240, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 2, '2021-03-08 00:03:27', 'Of. Lince - Almacen: 2do Piso', 'img-no.jpg', 200, 0),
(113, 'SP C252DN - Usa - Lince', 210, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color Solo Impresora', 1, '2021-03-08 00:03:51', 'Of. Lince - Almacen: 2do Piso ', 'img-no.jpg', 200, 0),
(114, 'SP C440DN - Usa - Lince', 250, '0000-00-00 00:00:00', 'Maquinas de Escritorio Solo Impresoras a Color', 2, '2021-03-08 00:03:13', 'Of. Lince - Almacen: 2do Piso ', 'img-no.jpg', 200, 0),
(115, 'SP C840DN - Usa - Lince', 500, '0000-00-00 00:00:00', 'Maquinas A3 Solo Impresoras a Color', 0, '2021-03-08 00:03:26', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 0, 0),
(116, 'SAMSUNG 2875 - Usa - Lince', 200, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 33, '2021-03-08 00:03:47', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 150, 0),
(117, 'SAMSUNG 5637 - Usa - Lince', 210, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 10, '2021-03-08 00:03:18', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 150, 0),
(118, 'SAMSUNG 6545 - Usa - Lince', 260, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 2, '2021-03-08 00:03:00', 'Of. Lince Almacen: \"D\"', 'img-no.jpg', 200, 0),
(121, 'MP 201 - Usa - Catalina', 100, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 0, '2021-03-08 07:03:35', 'Santa Catalina ', 'img-no.jpg', 0, 0),
(122, 'MP 301 - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 14, '2021-03-08 07:03:48', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(123, 'MP 401 - Usa - Sta.Cata', 220, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 17, '2021-03-08 07:03:55', 'Santa Catalina ', 'img-no.jpg', 200, 0),
(124, 'MP 501 - Usa - Sta.Cata', 250, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 5, '2021-03-08 07:03:38', 'Santa Catalina ', 'img-no.jpg', 200, 0),
(125, 'MP 601 - Usa - Sta.Cata', 250, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 2, '2021-03-08 07:03:44', 'Santa Catalina ', 'img-no.jpg', 200, 0),
(126, 'MP 2352 - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-08 07:03:01', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(127, 'MP 2553 - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-08 07:03:01', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(128, 'MP 2554 - Usa - Sta.Cata', 450, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 10, '2021-03-08 07:03:17', '450', 'img-no.jpg', 400, 0),
(129, 'MP 3054 - Usa - Sta.Cata', 450, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 2, '2021-03-08 07:03:24', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(130, 'MP 3554 - Usa - Sta.Cata', 450, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 16, '2021-03-08 07:03:41', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(131, 'MP 3555 - Usa - Sta.Cata', 450, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-08 07:03:01', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(132, 'MP 4054 - Usa - Sta.Cata', 450, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 1, '2021-03-08 07:03:09', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(133, 'MP 6002 - Usa - Sta.Cata', 550, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 6, '2021-03-08 07:03:27', 'Santa Catalina ', 'img-no.jpg', 500, 0),
(134, 'MP 7503 - Usa - Sta.Cata', 560, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales Blanco y Negro', 4, '2021-03-08 07:03:49', 'Santa Catalina ', 'img-no.jpg', 500, 0),
(135, 'MP C306 - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 1, '2021-03-08 07:03:19', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(136, 'MP C307 - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional a Color', 1, '2021-03-08 07:03:13', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(137, 'MP C2004 - Usa - Sta.Cata', 500, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 4, '2021-03-08 07:03:14', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(138, 'MP C2503 - Usa - Sta.Cata', 500, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-08 07:03:44', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(139, 'MP C3004 - Usa - Sta.Cata', 500, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 10, '2021-03-08 08:03:28', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(140, 'MP C3504 - Usa - Sta.Cata', 550, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 2, '2021-03-08 08:03:49', 'Santa Catalina ', 'img-no.jpg', 500, 0),
(141, 'MP C3503 - Usa - Sta.Cata', 560, '0000-00-00 00:00:00', 'Maquinas A3 Multifuncionales a Color', 1, '2021-03-08 08:03:10', 'Santa Catalina ', 'img-no.jpg', 500, 0),
(142, 'SP 4510SF - Usa - Sta.Cata', 350, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 5, '2021-03-08 08:03:04', 'Santa Catalina ', 'img-no.jpg', 320, 0),
(143, 'SP 5200F - Usa - Sta.Cata', 400, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 7, '2021-03-08 08:03:43', 'Santa Catalina ', 'img-no.jpg', 300, 0),
(144, 'SP 5210SF - Usa - Sta.Cata', 500, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional', 5, '2021-03-08 08:03:28', 'Santa Catalina ', 'img-no.jpg', 400, 0),
(145, 'SP 8300DN - Usa - Sta.Cata', 380, '0000-00-00 00:00:00', 'Maquinas de Escritorio Multifuncional Solo Impresoras', 3, '2021-03-08 08:03:10', 'Santa Catalina ', 'img-no.jpg', 300, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(300) NOT NULL,
  `last_name_user` varchar(300) NOT NULL,
  `mail_user` varchar(300) NOT NULL,
  `phone_user` int(11) NOT NULL,
  `ci_user` varchar(300) NOT NULL,
  `pw_user` varchar(300) NOT NULL,
  `direccion` varchar(1000) NOT NULL,
  `id_admin_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `last_name_user`, `mail_user`, `phone_user`, `ci_user`, `pw_user`, `direccion`, `id_admin_id_user`) VALUES
(8, 'yon', 'cacadsd', 'y@y.com', 424762061, '23134135', '123456', 'calle 12 carrera 9-10', 1),
(9, 'Tomas', 'Perez Martin', 'tomasjrunico@gmail.com', 986125456, '0122456', 'tomas', 'Av. Arenales 2395 - lince', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_accounts`),
  ADD KEY `id_admin_accound` (`id_admin_accound`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id_car`),
  ADD KEY `id_service_car` (`id_service_car`),
  ADD KEY `codigo_fac` (`id_payment_id_car`);

--
-- Indices de la tabla `divisas`
--
ALTER TABLE `divisas`
  ADD PRIMARY KEY (`id_divisas`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `id_admin_id_empresa` (`id_admin_id_empresa`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD UNIQUE KEY `fecha_ingreso` (`fecha_ingreso`),
  ADD KEY `id_proveedor_id_ingreso` (`id_proveedor_id_ingreso`),
  ADD KEY `id_service_id_ingreso` (`id_service_id_ingreso`);

--
-- Indices de la tabla `movimientosaldo`
--
ALTER TABLE `movimientosaldo`
  ADD PRIMARY KEY (`id_msaldo`),
  ADD UNIQUE KEY `fecha_msaldo` (`fecha_msaldo`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payments`),
  ADD KEY `id_user_id_payments` (`id_user_id_payments`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_user_id_salida` (`id_user_id_salida`),
  ADD KEY `id_service_id_salida` (`id_service_id_salida`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`),
  ADD UNIQUE KEY `name_service` (`name_service`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_admin_id_user` (`id_admin_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_accounts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `car`
--
ALTER TABLE `car`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `divisas`
--
ALTER TABLE `divisas`
  MODIFY `id_divisas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `movimientosaldo`
--
ALTER TABLE `movimientosaldo`
  MODIFY `id_msaldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payments` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de tabla de pagos ', AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_admin_accound`) REFERENCES `administrador` (`id_administrador`);

--
-- Filtros para la tabla `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`id_service_car`) REFERENCES `service` (`id_service`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`id_payment_id_car`) REFERENCES `payments` (`id_payments`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`id_admin_id_empresa`) REFERENCES `administrador` (`id_administrador`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`id_proveedor_id_ingreso`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`id_service_id_ingreso`) REFERENCES `service` (`id_service`);

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `salida_ibfk_1` FOREIGN KEY (`id_service_id_salida`) REFERENCES `service` (`id_service`),
  ADD CONSTRAINT `salida_ibfk_2` FOREIGN KEY (`id_user_id_salida`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

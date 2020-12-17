CREATE DATABASE IF NOT EXISTS `brokeaf` DEFAULT CHARACTER SET utf8mb4;
USE `brokeaf`;


#
# TABLE STRUCTURE FOR: Categories
#
DROP TABLE IF EXISTS `Categories`;

CREATE TABLE `Categories` (
  `name` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keywords` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Categories` (`name`, `keywords`) VALUES ('aqua', 'Temporibus');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('black', 'Ut quia qu');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('blue', 'Optio in s');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('fuchsia', 'Cum offici');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('gray', 'Aut accusa');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('green', 'Architecto');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('navy', 'Quia nihil');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('olive', 'Magnam inc');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('silver', 'Nobis culp');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('teal', 'Perferendi');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('white', 'Nisi quide');
INSERT INTO `Categories` (`name`, `keywords`) VALUES ('yellow', 'Deserunt n');


#
# TABLE STRUCTURE FOR: DetailsItems
#

DROP TABLE IF EXISTS `DetailsItems`;

CREATE TABLE `DetailsItems` (
  `serialCode` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `positionIndex` int(11) NOT NULL,
  `quantity` char(4) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdList` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ae7659', 1, '1', '961.65', '66');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ai5638', 1, '4', '751.49', '124');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ap9694', 1, '6', '632.87', '280');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('av3711', 1, '5', '140.98', '288');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('bb8796', 1, '2', '153.3', '295');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('bl3327', 1, '2', '550.7', '338');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('cc6868', 1, '3', '356.3', '549');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('cl7287', 1, '9', '730.86', '750');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('co4359', 1, '2', '631.32', '784');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('cy2341', 1, '4', '383.61', '897');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('dr2337', 1, '1', '681.32', '992');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('dz1164', 1, '8', '179.33', '1316');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ea8605', 1, '7', '922.11', '1335');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('el0014', 1, '6', '486.41', '1424');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ep0266', 1, '2', '867.37', '1462');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ey9461', 1, '2', '593.21', '1468');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ff7633', 1, '1', '951.45', '1606');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('fh9344', 1, '5', '110.54', '1786');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('fk2901', 1, '6', '435.61', '1958');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('fr2776', 1, '3', '324.61', '2032');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('fy5085', 1, '1', '274.27', '2094');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('gf6597', 1, '4', '318.42', '2189');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('gt7315', 1, '1', '406.03', '2348');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('hl9227', 1, '6', '47.33', '2532');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('hp7742', 1, '1', '1.7', '2574');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ii1058', 1, '9', '941.27', '2664');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('in0715', 1, '9', '777.22', '2670');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('jp8185', 1, '5', '587.64', '2689');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('jr0453', 1, '4', '767.93', '2717');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('js0303', 1, '7', '377.42', '2842');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('js7179', 1, '1', '548.63', '2904');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ke7146', 1, '1', '7.15', '2915');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ke8078', 1, '5', '289.9', '3226');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('kf0381', 1, '6', '767.03', '3320');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('kf4847', 1, '2', '41.97', '3379');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ki0197', 1, '4', '913.72', '3414');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('kn5176', 1, '5', '787.2', '3454');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lg3352', 1, '8', '258.69', '3543');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lk6197', 1, '7', '206.62', '3614');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lt1859', 1, '9', '891.3', '3992');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lt9527', 1, '7', '191.71', '4036');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lu1473', 1, '5', '740.07', '4098');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lu2322', 1, '5', '349.84', '4146');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('lz2318', 1, '9', '727.46', '4207');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ml6137', 1, '6', '260.32', '4266');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('mo0186', 1, '2', '173.45', '4404');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('mz1633', 1, '9', '177.37', '4478');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ng7022', 1, '6', '497.9', '4481');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('nk1505', 1, '1', '156.48', '4610');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('nt3056', 1, '9', '735.28', '4720');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('oc5714', 1, '1', '887.9', '4733');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('or5582', 1, '2', '599.81', '4824');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ou1653', 1, '6', '656.24', '4847');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ov2094', 1, '3', '474.15', '4889');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('pg3591', 1, '3', '166.74', '4933');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('pp4319', 1, '6', '636.53', '4951');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('pv4893', 1, '4', '720.44', '5044');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qc9210', 1, '5', '234.17', '5428');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qd0069', 1, '6', '69.5', '5534');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qj6895', 1, '3', '789.59', '5557');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qm9285', 1, '7', '188.57', '5594');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qp4559', 1, '7', '560.96', '5874');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('qz0849', 1, '3', '520.59', '5994');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('rf1487', 1, '4', '444.83', '6046');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('rt2199', 1, '7', '214.05', '6381');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('rz2349', 1, '7', '66.64', '6624');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('sj9726', 1, '7', '60.21', '6665');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('so6206', 1, '7', '905.2', '6731');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('sq0831', 1, '5', '715.54', '6752');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('st5061', 1, '2', '888.12', '6781');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('sz3175', 1, '2', '376.7', '6808');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ts9249', 1, '1', '855.93', '6911');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ua8819', 1, '2', '690.52', '7046');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('uh2791', 1, '9', '681.88', '7158');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('up5643', 1, '9', '45.27', '7286');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vc4713', 1, '8', '689.99', '7412');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vd6738', 1, '2', '614.79', '7488');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('ve2196', 1, '6', '441.81', '7613');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vo1354', 1, '8', '96.47', '7637');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vq1011', 1, '1', '976.04', '7984');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vu4447', 1, '4', '769.01', '8107');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('vu5370', 1, '8', '856.03', '8159');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('wa6332', 1, '1', '501.19', '8233');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('wj1132', 1, '8', '795.87', '8240');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('wo6721', 1, '3', '388.83', '8399');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('wx7307', 1, '8', '258.93', '8451');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('wy3854', 1, '4', '309.33', '8470');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xb8399', 1, '7', '836.82', '8625');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xf4380', 1, '3', '96.52', '8664');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xl0691', 1, '4', '361.14', '8831');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xq6517', 1, '5', '581.87', '8952');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xr3930', 1, '2', '785.5', '9035');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('xs0936', 1, '9', '153.75', '9049');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('yc8208', 1, '4', '653.81', '9113');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('yh5173', 1, '2', '229.55', '9124');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('yw1845', 1, '9', '79.74', '9186');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('zm8079', 1, '9', '507.2', '9221');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('zo1709', 1, '2', '487.51', '9498');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('zu5955', 1, '2', '871.33', '9855');
INSERT INTO `DetailsItems` (`serialCode`, `positionIndex`, `quantity`, `price`, `IdList`) VALUES ('zv3035', 1, '8', '553.13', '9900');


#
# TABLE STRUCTURE FOR: Images
#

DROP TABLE IF EXISTS `Images`;

CREATE TABLE `Images` (
  `path` char(20) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `serialCode` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Images` (`path`, `serialCode`) VALUES ('1', 'js0303');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('10', 'zo1709');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('100', 'ea8605');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('11', 'av3711');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('12', 'qc9210');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('13', 'so6206');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('14', 'lu2322');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('15', 'ts9249');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('16', 'jp8185');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('17', 'rf1487');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('18', 'xr3930');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('19', 'gt7315');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('2', 'vd6738');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('20', 'pp4319');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('21', 'zu5955');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('22', 'oc5714');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('23', 'ki0197');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('24', 'rz2349');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('25', 'ae7659');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('26', 'vu5370');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('27', 'lz2318');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('28', 'yh5173');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('29', 'cc6868');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('3', 'fh9344');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('30', 'ou1653');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('31', 'fk2901');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('32', 'or5582');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('33', 'ai5638');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('34', 'dr2337');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('35', 'lk6197');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('36', 'qj6895');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('37', 'el0014');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('38', 'wa6332');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('39', 'wo6721');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('4', 'bl3327');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('40', 'kf4847');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('41', 'ml6137');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('42', 've2196');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('43', 'sj9726');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('44', 'hl9227');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('45', 'sz3175');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('46', 'lt9527');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('47', 'ov2094');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('48', 'xs0936');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('49', 'ey9461');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('5', 'ng7022');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('50', 'cl7287');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('51', 'vo1354');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('52', 'ua8819');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('53', 'qm9285');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('54', 'fr2776');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('55', 'ii1058');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('56', 'ap9694');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('57', 'rt2199');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('58', 'ke7146');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('59', 'pg3591');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('6', 'dz1164');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('60', 'wx7307');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('61', 'xb8399');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('62', 'xf4380');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('63', 'vq1011');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('64', 'ep0266');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('65', 'co4359');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('66', 'js7179');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('67', 'qz0849');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('68', 'nk1505');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('69', 'lg3352');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('7', 'zm8079');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('70', 'lu1473');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('71', 'uh2791');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('72', 'jr0453');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('73', 'in0715');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('74', 'hp7742');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('75', 'mz1633');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('76', 'cy2341');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('77', 'qd0069');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('78', 'qp4559');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('79', 'xq6517');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('8', 'nt3056');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('80', 'bb8796');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('81', 'kf0381');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('82', 'ke8078');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('83', 'st5061');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('84', 'yw1845');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('85', 'up5643');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('86', 'fy5085');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('87', 'xl0691');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('88', 'yc8208');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('89', 'lt1859');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('9', 'vc4713');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('90', 'gf6597');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('91', 'kn5176');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('92', 'vu4447');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('93', 'zv3035');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('94', 'ff7633');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('95', 'mo0186');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('96', 'wj1132');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('97', 'sq0831');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('98', 'pv4893');
INSERT INTO `Images` (`path`, `serialCode`) VALUES ('99', 'wy3854');


#
# TABLE STRUCTURE FOR: Items
#

DROP TABLE IF EXISTS `Items`;

CREATE TABLE `Items` (
  `quantity` int(11) NOT NULL,
  `isVisible` char(1) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` char(20) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `serialCode` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Categories` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emailSeller` char(254) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`serialCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (28, '', 'Dolor harum porro pa', '2.06', 'consequunt', 'ae7659', 'fuchsia', 'esmith@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (446, '1', 'Harum odit minus et', '6.04', 'est', 'ai5638', 'green', 'rkoelpin@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (867, '', 'Velit quia omnis rer', '4.68', 'exercitati', 'ap9694', 'fuchsia', 'mayert.larry@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (587, '1', 'Unde aut non exceptu', '3.27', 'impedit', 'av3711', 'white', 'dkuhic@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (631, '', 'Ut odio ad consequat', '2.2', 'amet', 'bb8796', 'aqua', 'bridie.mayer@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (247, '1', 'Nemo sed est nihil n', '9.05', 'sint', 'bl3327', 'silver', 'ibeatty@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (620, '1', 'Ipsum aliquam volupt', '6.88', 'velit', 'cc6868', 'green', 'mitchell.thompson@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (792, '', 'Deleniti quia conseq', '3.31', 'quo', 'cl7287', 'teal', 'geraldine.o\'kon@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (966, '', 'Ducimus totam et qui', '8.76', 'aliquam', 'co4359', 'aqua', 'abigale31@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (258, '1', 'Maiores doloribus qu', '6.71', 'ipsum', 'cy2341', 'silver', 'lsporer@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (472, '', 'Laboriosam ab animi', '2.9', 'ad', 'dr2337', 'yellow', 'gislason.maggie@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (52, '', 'Explicabo repudianda', '2.66', 'vel', 'dz1164', 'blue', 'guiseppe.williamson@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (910, '1', 'Dolor ut quisquam cu', '8.07', 'repellendu', 'ea8605', 'fuchsia', 'reba.murphy@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (223, '', 'Ut deleniti mollitia', '8.08', 'ut', 'el0014', 'olive', 'rosalee.ledner@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (556, '', 'Neque dolore reprehe', '5.49', 'eveniet', 'ep0266', 'green', 'cynthia75@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (133, '', 'Ab quo ad totam ab c', '1.24', 'ratione', 'ey9461', 'teal', 'schmidt.harry@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (589, '1', 'Magnam quo facere co', '1.19', 'eos', 'ff7633', 'black', 'einar.weissnat@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (940, '1', 'Qui unde dolorem rep', '7.03', 'unde', 'fh9344', 'black', 'markus.heller@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (691, '1', 'Non dolores quisquam', '2.48', 'quos', 'fk2901', 'aqua', 'spencer.titus@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (982, '', 'Dolor quis aspernatu', '3.18', 'asperiores', 'fr2776', 'green', 'annabelle22@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (16, '', 'Sed porro quisquam a', '9.4', 'voluptas', 'fy5085', 'black', 'jon.smitham@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (599, '', 'Quas sint non qui eu', '5.01', 'magnam', 'gf6597', 'gray', 'langworth.coleman@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (963, '1', 'Cum neque dignissimo', '7.18', 'aut', 'gt7315', 'green', 'finn.frami@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (667, '1', 'Occaecati optio pari', '7.42', 'adipisci', 'hl9227', 'aqua', 'xterry@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (759, '', 'Ea laudantium accusa', '1.6', 'illum', 'hp7742', 'black', 'groob@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (107, '', 'Ratione omnis ullam', '9.5', 'itaque', 'ii1058', 'black', 'caesar59@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (252, '', 'Natus delectus qui e', '8.83', 'ex', 'in0715', 'navy', 'arnoldo.adams@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (367, '', 'Unde reprehenderit a', '3.88', 'eum', 'jp8185', 'green', 'lexi84@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (316, '1', 'Repudiandae et et ul', '2.53', 'sed', 'jr0453', 'olive', 'arvid.aufderhar@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (876, '1', 'Facere eum ipsum ius', '6.52', 'molestiae', 'js0303', 'blue', 'qcole@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (11, '1', 'Deleniti minima sit', '5.04', 'maiores', 'js7179', 'silver', 'morar.kelton@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (843, '', 'Ut quibusdam est sit', '7.97', 'optio', 'ke7146', 'yellow', 'mable.keeling@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (16, '', 'Sit nulla praesentiu', '5.78', 'adipisci', 'ke8078', 'fuchsia', 'gwolf@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (172, '', 'Deserunt officia rep', '3.76', 'qui', 'kf0381', 'green', 'hahn.leonel@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (799, '1', 'Fugit ab asperiores', '9.81', 'necessitat', 'kf4847', 'gray', 'hadley.herman@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (841, '1', 'Dignissimos eaque ex', '2.85', 'molestias', 'ki0197', 'yellow', 'smith.alejandra@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (726, '', 'Doloribus nihil even', '9.12', 'repellat', 'kn5176', 'olive', 'monte30@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (776, '', 'Porro id tempora har', '9.65', 'voluptatem', 'lg3352', 'fuchsia', 'lakin.sheila@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (963, '1', 'Dolores qui sed face', '1.54', 'assumenda', 'lk6197', 'olive', 'tromp.pierre@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (780, '1', 'Et quia rem cum et a', '3.44', 'delectus', 'lt1859', 'blue', 'martine.leffler@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (612, '1', 'Animi mollitia ad ma', '1.78', 'quia', 'lt9527', 'white', 'sienna.johnston@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (635, '', 'Impedit tenetur reru', '5.35', 'aut', 'lu1473', 'aqua', 'giuseppe.gibson@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (535, '', 'Eos est et doloribus', '8.72', 'quod', 'lu2322', 'blue', 'kip.dach@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (47, '', 'Est molestiae exerci', '7.6', 'ea', 'lz2318', 'gray', 'megane27@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (116, '', 'Eveniet vel eum at u', '3.35', 'dolorum', 'ml6137', 'aqua', 'durward.kerluke@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (299, '1', 'Vero sunt velit ea c', '9.95', 'quo', 'mo0186', 'gray', 'ali39@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (875, '1', 'Odio natus veritatis', '8.89', 'quia', 'mz1633', 'navy', 'treva.torp@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (568, '', 'Temporibus maxime te', '7.15', 'temporibus', 'ng7022', 'blue', 'alexandrea.hodkiewicz@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (353, '', 'Excepturi incidunt s', '6.63', 'distinctio', 'nk1505', 'white', 'lzieme@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (829, '', 'Laboriosam ratione e', '3.32', 'tenetur', 'nt3056', 'yellow', 'orion.russel@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (904, '', 'Tempora numquam mole', '7.72', 'quaerat', 'oc5714', 'olive', 'lou.klein@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (182, '1', 'Sed voluptates velit', '3.29', 'consequatu', 'or5582', 'white', 'nestor.pacocha@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (176, '1', 'Sunt beatae voluptat', '8.95', 'quo', 'ou1653', 'teal', 'benedict.cremin@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (702, '', 'Ducimus quas et volu', '2.12', 'hic', 'ov2094', 'fuchsia', 'zbreitenberg@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (469, '', 'Molestiae voluptate', '8.43', 'amet', 'pg3591', 'silver', 'devonte84@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (70, '', 'Sint reiciendis impe', '4.03', 'nam', 'pp4319', 'navy', 'littel.wilson@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (48, '1', 'Sint occaecati sint', '7.57', 'quasi', 'pv4893', 'teal', 'ireichert@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (296, '1', 'Quam odit ut at sit', '7.33', 'blanditiis', 'qc9210', 'gray', 'cole.newton@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (758, '1', 'Atque fugiat dicta d', '5.32', 'hic', 'qd0069', 'teal', 'lucas.bechtelar@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (164, '', 'Doloremque est quisq', '8.01', 'autem', 'qj6895', 'olive', 'hessel.briana@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (736, '', 'Corporis et autem it', '6.81', 'facere', 'qm9285', 'blue', 'cgutkowski@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (473, '1', 'Ex similique volupta', '3.3', 'beatae', 'qp4559', 'yellow', 'xavier93@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (400, '1', 'Sed sunt tenetur tem', '1.23', 'aliquid', 'qz0849', 'teal', 'wadams@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (282, '1', 'Tempore laboriosam b', '7.94', 'officia', 'rf1487', 'yellow', 'borer.samara@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (532, '', 'Dolor ducimus hic se', '1.56', 'harum', 'rt2199', 'gray', 'rjast@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (192, '', 'Nihil et sit neque p', '6.54', 'molestias', 'rz2349', 'aqua', 'pschumm@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (97, '1', 'Vel eaque similique', '8.88', 'quia', 'sj9726', 'black', 'stephen96@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (679, '1', 'Eum quia ex illum qu', '2.1', 'assumenda', 'so6206', 'white', 'wisoky.thomas@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (266, '1', 'Quisquam quis hic ex', '2.14', 'incidunt', 'sq0831', 'blue', 'ywilderman@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (811, '1', 'Fuga sit velit autem', '1.88', 'quos', 'st5061', 'gray', 'tony.howe@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (76, '1', 'Commodi commodi corp', '4.26', 'vero', 'sz3175', 'teal', 'mraz.darrion@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (537, '', 'In incidunt maiores', '1.41', 'sunt', 'ts9249', 'black', 'alan.heller@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (115, '', 'Magni omnis cupidita', '3.12', 'dignissimo', 'ua8819', 'aqua', 'mariela.morar@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (148, '', 'Dolore suscipit saep', '3.3', 'quidem', 'uh2791', 'gray', 'fermin30@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (701, '1', 'Adipisci quaerat dol', '6.93', 'sed', 'up5643', 'navy', 'dach.dayne@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (325, '1', 'Eveniet molestiae la', '7.4', 'aperiam', 'vc4713', 'white', 'iwolff@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (960, '1', 'Fuga nam distinctio', '8.41', 'repudianda', 'vd6738', 'silver', 'ashton.will@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (518, '1', 'Earum provident perf', '4.95', 'eveniet', 've2196', 'navy', 'monahan.guiseppe@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (43, '', 'Facilis vitae ducimu', '8.85', 'rerum', 'vo1354', 'silver', 'rylan.predovic@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (589, '1', 'Qui perferendis repr', '5.11', 'voluptate', 'vq1011', 'yellow', 'jheaney@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (279, '', 'Esse perferendis del', '8.94', 'optio', 'vu4447', 'black', 'qbaumbach@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (991, '', 'Qui eos provident mi', '8.43', 'id', 'vu5370', 'fuchsia', 'claudia.funk@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (398, '1', 'Veniam molestias dol', '6.09', 'in', 'wa6332', 'blue', 'stokes.heather@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (237, '', 'Amet et a natus ipsa', '9.3', 'voluptatem', 'wj1132', 'black', 'yjaskolski@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (434, '1', 'Sunt quasi similique', '7.35', 'sunt', 'wo6721', 'silver', 'georgiana49@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (880, '1', 'Consequatur sunt rep', '2.28', 'dolores', 'wx7307', 'silver', 'vo\'conner@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (568, '1', 'Asperiores unde even', '8.67', 'expedita', 'wy3854', 'aqua', 'jody93@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (285, '', 'Ut inventore dolorib', '1.71', 'iste', 'xb8399', 'fuchsia', 'taya.langworth@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (629, '', 'Quidem non nobis mag', '5.14', 'est', 'xf4380', 'navy', 'roob.kendrick@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (549, '', 'Perspiciatis nihil q', '3.47', 'itaque', 'xl0691', 'navy', 'gbatz@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (666, '1', 'At doloribus aliquid', '1.17', 'culpa', 'xq6517', 'olive', 'dach.greg@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (230, '', 'Laboriosam non dolor', '1.53', 'non', 'xr3930', 'green', 'travis.block@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (156, '1', 'Repellat et non pari', '6.68', 'assumenda', 'xs0936', 'olive', 'general.rowe@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (510, '', 'Sit fugit repellendu', '7.38', 'incidunt', 'yc8208', 'yellow', 'dominic66@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (280, '', 'Dolorem optio eum qu', '2.79', 'est', 'yh5173', 'navy', 'herzog.dejuan@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (108, '1', 'Ipsum alias consequa', '8.3', 'nihil', 'yw1845', 'white', 'bmayert@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (18, '1', 'Occaecati vero nobis', '1.21', 'aliquam', 'zm8079', 'white', 'gerlach.leann@example.com');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (871, '', 'Cum reiciendis ut vo', '5.13', 'cupiditate', 'zo1709', 'blue', 'elvie.mcdermott@example.org');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (742, '1', 'Repudiandae enim exe', '3.35', 'voluptatem', 'zu5955', 'fuchsia', 'alfonso.gibson@example.net');
INSERT INTO `Items` (`quantity`, `isVisible`, `description`, `price`, `name`, `serialCode`, `Categories`, `emailSeller`) VALUES (605, '1', 'Quo ducimus est quae', '3.2', 'saepe', 'zv3035', 'teal', 'dickens.charley@example.org');


#
# TABLE STRUCTURE FOR: ListsItems
#

DROP TABLE IF EXISTS `ListsItems`;

CREATE TABLE `ListsItems` (
  `total` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdList` bigint(20) NOT NULL,
  `idShoppingCart` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdList`),
  UNIQUE KEY `FKhold_ID` (`idShoppingCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '66', '4710');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '124', '53443011');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '280', '35');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '288', '81355');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '295', '155890489');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '338', '7333152');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '549', '7200437');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '750', '13300704');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '784', '630828');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '897', '2');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '992', '772773311');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1316', '87199702');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1335', '178502');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1424', '49689');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1462', '621269297');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1468', '3580971');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1606', '19');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1786', '13557678');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '1958', '806927463');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2032', '41975');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2094', '4');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2189', '21');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2348', '6');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2532', '7');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2574', '19294');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2664', '');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2670', '23493');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2689', '3');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2717', '9496176');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2842', '858');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2904', '82333');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '2915', '5');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3226', '37755226');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3320', '257028117');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3379', '3828342');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3414', '48588243');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3454', '899996506');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3543', '30634787');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3614', '636');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '3992', '3849875');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4036', '980552');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4098', '25821');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4146', '77701');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4207', '8688');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4266', '7789');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4404', '18708306');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4478', '958');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4481', '55');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4610', '221991');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4720', '8765720');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4733', '573902030');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4824', '88428');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4847', '482');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4889', '29061');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4933', '44');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '4951', '33');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5044', '6446897');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5428', '266598');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5534', '67');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5557', '48528');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5594', '7643062');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5874', '43');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '5994', '49');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6046', '68568814');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6381', '437580');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6624', '573');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6665', '488');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6731', '106');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6752', '37401');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6781', '912');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6808', '15432496');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '6911', '1500570');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7046', '7872147');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7158', '419841');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7286', '29');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7412', '9');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7488', '499208259');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7613', '68');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7637', '9306526');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '7984', '86');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8107', '431');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8159', '17');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8233', '11384');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8240', '83');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8399', '12500345');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8451', '927');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8470', '1232182');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8625', '8077409');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8664', '9072256');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8831', '866223212');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '8952', '6532192');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9035', '33135');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9049', '58919855');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9113', '461794559');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9124', '586968');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9186', '9921');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9221', '222149');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9498', '7270955');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9855', '200');
INSERT INTO `ListsItems` (`total`, `IdList`, `idShoppingCart`) VALUES ('', '9900', '93');


#
# TABLE STRUCTURE FOR: NotificationsSeller
#

DROP TABLE IF EXISTS `NotificationsSeller`;

CREATE TABLE `NotificationsSeller` (
  `emailSeller` char(254) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` char(1) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` char(20) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`emailSeller`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('abigale31@example.net', 'I', 'http://lorempixel.co', '1137394945');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('alan.heller@example.org', 'Q', 'http://lorempixel.co', '1381553356');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('alexandrea.hodkiewicz@example.org', 'L', 'http://lorempixel.co', '577855136');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('alfonso.gibson@example.net', 'S', 'http://lorempixel.co', '1204790076');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('ali39@example.org', 'T', 'http://lorempixel.co', '566455812');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('annabelle22@example.org', 'Q', 'http://lorempixel.co', '40480063');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('arnoldo.adams@example.net', 'P', 'http://lorempixel.co', '781147175');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('arvid.aufderhar@example.com', 'C', 'http://lorempixel.co', '52777040');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('ashton.will@example.org', 'A', 'http://lorempixel.co', '1130867189');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('benedict.cremin@example.net', 'T', 'http://lorempixel.co', '114903449');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('bmayert@example.net', 'A', 'http://lorempixel.co', '778046736');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('borer.samara@example.com', 'E', 'http://lorempixel.co', '187394080');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('bridie.mayer@example.org', 'I', 'http://lorempixel.co', '1478936249');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('caesar59@example.net', 'E', 'http://lorempixel.co', '1402510573');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('cgutkowski@example.org', 'C', 'http://lorempixel.co', '1179176008');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('claudia.funk@example.net', 'E', 'http://lorempixel.co', '816330399');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('cole.newton@example.org', 'V', 'http://lorempixel.co', '482556642');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('cynthia75@example.org', 'M', 'http://lorempixel.co', '266489874');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('dach.dayne@example.org', 'S', 'http://lorempixel.co', '1093556892');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('dach.greg@example.net', 'O', 'http://lorempixel.co', '241884044');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('devonte84@example.org', 'D', 'http://lorempixel.co', '1593680270');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('dickens.charley@example.org', 'Q', 'http://lorempixel.co', '186106901');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('dkuhic@example.org', 'S', 'http://lorempixel.co', '1501406716');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('dominic66@example.net', 'A', 'http://lorempixel.co', '71438681');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('durward.kerluke@example.net', 'E', 'http://lorempixel.co', '987223423');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('einar.weissnat@example.org', 'I', 'http://lorempixel.co', '1256501524');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('elvie.mcdermott@example.org', 'I', 'http://lorempixel.co', '1529956318');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('esmith@example.net', 'D', 'http://lorempixel.co', '550049077');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('fermin30@example.org', 'R', 'http://lorempixel.co', '215511734');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('finn.frami@example.net', 'L', 'http://lorempixel.co', '354592516');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('gbatz@example.net', 'S', 'http://lorempixel.co', '397133404');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('general.rowe@example.net', 'D', 'http://lorempixel.co', '1014993657');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('georgiana49@example.org', 'M', 'http://lorempixel.co', '743560085');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('geraldine.o\'kon@example.net', 'N', 'http://lorempixel.co', '1016188631');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('gerlach.leann@example.com', 'L', 'http://lorempixel.co', '686978760');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('gislason.maggie@example.com', 'N', 'http://lorempixel.co', '924832689');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('giuseppe.gibson@example.org', 'S', 'http://lorempixel.co', '1176608522');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('groob@example.com', 'A', 'http://lorempixel.co', '740460284');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('guiseppe.williamson@example.com', 'D', 'http://lorempixel.co', '1583234939');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('gwolf@example.org', 'D', 'http://lorempixel.co', '1160595996');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('hadley.herman@example.org', 'U', 'http://lorempixel.co', '484064099');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('hahn.leonel@example.net', 'E', 'http://lorempixel.co', '1396935582');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('herzog.dejuan@example.org', 'M', 'http://lorempixel.co', '945219772');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('hessel.briana@example.net', 'N', 'http://lorempixel.co', '1247112007');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('ibeatty@example.org', 'N', 'http://lorempixel.co', '1477200597');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('ireichert@example.com', 'O', 'http://lorempixel.co', '488654070');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('iwolff@example.com', 'M', 'http://lorempixel.co', '441061278');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('jheaney@example.com', 'D', 'http://lorempixel.co', '317070228');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('jody93@example.org', 'Q', 'http://lorempixel.co', '1531969627');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('jon.smitham@example.com', 'P', 'http://lorempixel.co', '706148111');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('kip.dach@example.net', 'V', 'http://lorempixel.co', '1073120337');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lakin.sheila@example.net', 'R', 'http://lorempixel.co', '1128608398');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('langworth.coleman@example.com', 'P', 'http://lorempixel.co', '497906847');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lexi84@example.net', 'T', 'http://lorempixel.co', '1567597822');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('littel.wilson@example.com', 'O', 'http://lorempixel.co', '1152915760');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lou.klein@example.org', 'S', 'http://lorempixel.co', '1276900182');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lsporer@example.com', 'E', 'http://lorempixel.co', '579623574');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lucas.bechtelar@example.net', 'M', 'http://lorempixel.co', '1020501571');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('lzieme@example.com', 'I', 'http://lorempixel.co', '221691448');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('mable.keeling@example.net', 'S', 'http://lorempixel.co', '1526163621');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('mariela.morar@example.net', 'A', 'http://lorempixel.co', '589768712');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('markus.heller@example.org', 'D', 'http://lorempixel.co', '21789357');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('martine.leffler@example.com', 'A', 'http://lorempixel.co', '385929430');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('mayert.larry@example.net', 'O', 'http://lorempixel.co', '894216602');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('megane27@example.org', 'Q', 'http://lorempixel.co', '659386534');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('mitchell.thompson@example.com', 'A', 'http://lorempixel.co', '502685453');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('monahan.guiseppe@example.com', 'D', 'http://lorempixel.co', '1312884305');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('monte30@example.org', 'Q', 'http://lorempixel.co', '1298366350');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('morar.kelton@example.com', 'V', 'http://lorempixel.co', '437606849');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('mraz.darrion@example.net', 'M', 'http://lorempixel.co', '49794524');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('nestor.pacocha@example.org', 'Q', 'http://lorempixel.co', '547427276');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('orion.russel@example.net', 'N', 'http://lorempixel.co', '2227506');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('pschumm@example.com', 'E', 'http://lorempixel.co', '929673588');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('qbaumbach@example.org', 'I', 'http://lorempixel.co', '784507497');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('qcole@example.net', 'S', 'http://lorempixel.co', '1528986040');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('reba.murphy@example.org', 'N', 'http://lorempixel.co', '6389059');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('rjast@example.net', 'E', 'http://lorempixel.co', '1527992732');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('rkoelpin@example.com', 'D', 'http://lorempixel.co', '333117402');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('roob.kendrick@example.net', 'S', 'http://lorempixel.co', '1000894844');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('rosalee.ledner@example.org', 'Q', 'http://lorempixel.co', '855702243');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('rylan.predovic@example.org', 'D', 'http://lorempixel.co', '1454963077');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('schmidt.harry@example.net', 'M', 'http://lorempixel.co', '49137980');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('sienna.johnston@example.net', 'I', 'http://lorempixel.co', '355899775');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('smith.alejandra@example.com', 'S', 'http://lorempixel.co', '1270964613');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('spencer.titus@example.org', 'R', 'http://lorempixel.co', '994500867');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('stephen96@example.com', 'C', 'http://lorempixel.co', '973018442');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('stokes.heather@example.net', 'R', 'http://lorempixel.co', '293861898');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('taya.langworth@example.com', 'E', 'http://lorempixel.co', '706695611');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('tony.howe@example.net', 'Q', 'http://lorempixel.co', '899222756');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('travis.block@example.org', 'F', 'http://lorempixel.co', '1121184466');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('treva.torp@example.net', 'E', 'http://lorempixel.co', '1086768495');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('tromp.pierre@example.org', 'I', 'http://lorempixel.co', '1150068605');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('vo\'conner@example.net', 'V', 'http://lorempixel.co', '1601296585');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('wadams@example.com', 'V', 'http://lorempixel.co', '258569125');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('wisoky.thomas@example.com', 'Q', 'http://lorempixel.co', '159300466');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('xavier93@example.org', 'A', 'http://lorempixel.co', '750026277');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('xterry@example.org', 'E', 'http://lorempixel.co', '715301716');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('yjaskolski@example.com', 'R', 'http://lorempixel.co', '73267376');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('ywilderman@example.org', 'C', 'http://lorempixel.co', '1467388929');
INSERT INTO `NotificationsSeller` (`emailSeller`, `description`, `path`, `date`) VALUES ('zbreitenberg@example.net', 'E', 'http://lorempixel.co', '1090935000');


#
# TABLE STRUCTURE FOR: NotificationsUser
#

DROP TABLE IF EXISTS `NotificationsUser`;

CREATE TABLE `NotificationsUser` (
  `emailUsers` char(254) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` char(20) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`emailUsers`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('abernathy.helene@example.net', 'Similique', 'http://torp.com/', '829609560');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('alvera.howell@example.org', 'Ad omnis e', 'http://okeefe.com/', '976377474');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('amckenzie@example.net', 'Libero odi', 'http://connelly.biz/', '811959889');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('andres31@example.org', 'Ad distinc', 'http://www.schroeder', '75158666');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('aniya.stanton@example.com', 'Vel quia q', 'http://blick.com/', '1181525699');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('annalise.monahan@example.com', 'Quibusdam', 'http://www.welch.com', '209398060');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('ashtyn.larkin@example.net', 'Perspiciat', 'http://gislasonabbot', '1080774050');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('asmitham@example.org', 'Nemo cum m', 'http://koelpin.com/', '798381794');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('bayer.marge@example.com', 'Est et nam', 'http://www.littel.bi', '1477591693');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('bdooley@example.com', 'Quasi minu', 'http://www.nienowdoy', '300085991');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('bfritsch@example.org', 'Et asperio', 'http://www.eichmanns', '379068914');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('brendan.botsford@example.com', 'Eum volupt', 'http://schumm.com/', '1557282766');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('buckridge.evie@example.net', 'Voluptas n', 'http://www.frami.com', '98654556');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('chaim18@example.net', 'Id vitae n', 'http://www.langworth', '973143043');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('cheyanne12@example.net', 'Voluptate', 'http://mccullough.co', '436990784');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('constantin.daniel@example.net', 'Enim natus', 'http://boyle.com/', '1091329392');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('cordell44@example.net', 'Et laudant', 'http://gutkowski.com', '1149207438');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('dean.crooks@example.org', 'Repellat c', 'http://www.corwin.co', '1077257692');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('destinee11@example.org', 'Quia ut do', 'http://durganmraz.co', '600623994');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('edythe.larkin@example.com', 'Et praesen', 'http://kassulke.com/', '235192770');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('eromaguera@example.org', 'In molesti', 'http://www.lubowitz.', '1220996770');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('erwin04@example.net', 'Officia ni', 'http://www.kunze.inf', '772259964');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('eudora02@example.org', 'Eum quis i', 'http://schinnergreen', '876043740');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('farrell.afton@example.com', 'Incidunt e', 'http://douglas.com/', '1031775424');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('franco01@example.net', 'Perferendi', 'http://www.roberts.b', '676723246');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('fwalsh@example.net', 'Quisquam c', 'http://www.aufderhar', '282694282');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('gerald.bode@example.org', 'Tempora ut', 'http://www.jerde.com', '30499935');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('grayce58@example.org', 'Quia assum', 'http://bashirianmedh', '17301941');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('greenfelder.bennie@example.com', 'Asperiores', 'http://www.corkery.c', '531221870');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('gregory.schulist@example.org', 'Eveniet qu', 'http://leannonmarvin', '1250085262');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hane.addison@example.org', 'Et enim al', 'http://www.langoshsc', '284362160');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hartmann.hiram@example.com', 'Corporis v', 'http://murazik.com/', '1431697227');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hector43@example.com', 'Facere con', 'http://www.gulgowski', '202679804');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('heidenreich.tianna@example.org', 'Et labore', 'http://www.schuster.', '302072343');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hreichert@example.net', 'Fugit amet', 'http://wilkinson.com', '678315830');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hudson.kilback@example.org', 'Voluptas n', 'http://www.mosciskij', '79527423');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hulda.mohr@example.org', 'Hic ea cul', 'http://www.konopelsk', '924044643');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('hyatt.conor@example.org', 'Occaecati', 'http://pfannerstill.', '1463233265');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('iblanda@example.org', 'Quia volup', 'http://www.west.biz/', '636509590');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('jacobs.ola@example.net', 'Et commodi', 'http://schiller.biz/', '1279067978');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('jade.ortiz@example.net', 'Voluptas a', 'http://www.pacochasc', '1277085310');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('jarvis.dibbert@example.com', 'Non tempor', 'http://johnson.com/', '404902359');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('jedidiah20@example.com', 'Provident', 'http://www.herzog.co', '200115505');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('joannie58@example.org', 'Qui ea qui', 'http://www.schneider', '544266833');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('julie.cole@example.org', 'Temporibus', 'http://weissnatemmer', '336854849');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('june13@example.com', 'Consequatu', 'http://www.hane.com/', '879137777');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('jwitting@example.com', 'Numquam ex', 'http://howe.info/', '1206587526');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('kailey37@example.org', 'Sequi ut v', 'http://tremblay.com/', '1034832648');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('kautzer.brent@example.org', 'Est odio i', 'http://rau.info/', '1546694010');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('ken.cole@example.net', 'Vitae amet', 'http://www.dibbert.c', '1490694934');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('kmoore@example.net', 'Odit dolor', 'http://www.wuckert.o', '1048779684');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('kuphal.mollie@example.com', 'Et rerum u', 'http://nader.com/', '378597919');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lamar.bernhard@example.org', 'Ex impedit', 'http://www.blick.com', '1090089051');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lauryn06@example.org', 'Nam ration', 'http://www.feestkihn', '732242093');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('leanna.bauch@example.net', 'Ut vel ull', 'http://klein.net/', '569806200');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('leffler.eldon@example.org', 'Dignissimo', 'http://howe.com/', '604355212');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('legros.johnpaul@example.net', 'Aut aut ma', 'http://www.schuster.', '99373716');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lind.zackery@example.net', 'Qui qui vo', 'http://www.jacobs.co', '1506115961');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lo\'reilly@example.org', 'Et laudant', 'http://www.abernathy', '1409765862');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lucio.beahan@example.com', 'Quos non l', 'http://mohr.biz/', '1308183350');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lucio.conroy@example.net', 'Beatae ver', 'http://www.volkman.c', '1552659002');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('lzemlak@example.net', 'Repudianda', 'http://brekke.com/', '1571851047');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('matt39@example.com', 'Qui volupt', 'http://www.stroman.n', '1070771519');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('mayer.ed@example.com', 'Iure est d', 'http://conn.info/', '733676541');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('metz.orrin@example.org', 'Dolor expe', 'http://hesselkerluke', '449191991');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('mustafa.hills@example.com', 'Ducimus ha', 'http://mraz.com/', '1354704465');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('naomie05@example.net', 'Ut aut ali', 'http://koss.biz/', '1130603648');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('nwindler@example.net', 'Quia ipsum', 'http://pfannerstillh', '1461648679');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('odie.will@example.com', 'Corrupti n', 'http://kub.org/', '1276355645');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('oma79@example.net', 'Excepturi', 'http://www.kautzersc', '839650343');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('pdaugherty@example.org', 'Dolorum il', 'http://kochruecker.c', '1293107812');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('qchamplin@example.org', 'Molestiae', 'http://bergstrom.org', '1174515419');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('ralph00@example.net', 'Quo nulla', 'http://www.zboncak.i', '1395920754');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('rgrady@example.com', 'Rerum adip', 'http://www.hilpertgo', '1462067422');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('rkuphal@example.com', 'Et aliquam', 'http://www.leannon.b', '1152788451');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('roberts.myrl@example.org', 'Provident', 'http://simonis.com/', '519821903');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('rubie26@example.net', 'Ut recusan', 'http://will.com/', '137127570');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('schmeler.krystel@example.org', 'Soluta ali', 'http://www.brekkebar', '1234294353');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('scot.o\'hara@example.com', 'Ut eveniet', 'http://www.kozey.biz', '1444200765');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('sfranecki@example.com', 'Enim nostr', 'http://www.turcotte.', '1351294209');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('shea53@example.org', 'Non blandi', 'http://www.kohler.co', '333473546');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('sheaney@example.org', 'Eum eos bl', 'http://www.cruicksha', '63438857');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('sigurd61@example.com', 'Maiores do', 'http://www.gorczanym', '58597447');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('soledad.johnston@example.net', 'Nihil beat', 'http://dare.info/', '682527638');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('stan45@example.com', 'Beatae vol', 'http://donnelly.com/', '529105340');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('stehr.susie@example.com', 'Corrupti c', 'http://www.dicki.com', '1289936365');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('stephan.murphy@example.org', 'Qui volupt', 'http://www.grimeswun', '1464240349');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('swaniawski.darron@example.com', 'Harum eos', 'http://gerhold.com/', '999827023');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('tiara30@example.org', 'Iusto cons', 'http://will.com/', '142786742');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('trau@example.org', 'Facere mag', 'http://www.shields.c', '1394396085');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('trowe@example.com', 'Ut quo aut', 'http://www.jacobson.', '1086503723');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('ttrantow@example.com', 'Sit adipis', 'http://www.pacochajo', '435146957');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('tyson90@example.net', 'Nemo dolor', 'http://www.schroeder', '1153897306');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('uwilderman@example.net', 'Sit aut ve', 'http://ohara.biz/', '418727772');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('walsh.mia@example.net', 'Reprehende', 'http://farrell.biz/', '1025775457');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('will.adrain@example.org', 'Officia ip', 'http://ohara.org/', '629973836');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('willms.mac@example.org', 'Omnis in e', 'http://www.considine', '602077888');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('wiza.jaylon@example.com', 'Ab cupidit', 'http://beerjohnston.', '951684438');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('zbeatty@example.net', 'Sed quis e', 'http://www.braun.com', '954190379');
INSERT INTO `NotificationsUser` (`emailUsers`, `description`, `path`, `date`) VALUES ('zulauf.brandi@example.com', 'Incidunt a', 'http://lemkeparker.i', '1413821912');


#
# TABLE STRUCTURE FOR: Sellers
#

DROP TABLE IF EXISTS `Sellers`;

CREATE TABLE `Sellers` (
  `cap` int(11) NOT NULL,
  `address` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `companyAddress` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `companyName` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` char(254) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `surname` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(32) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `province` char(6) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (28065, '4892 Vaugh', 'East Giova', '1509 Marvi', 'Roberts LL', 'abigale31@example.net', 'Eudora', 'Jaskolski', '017ce99ce1fea363098bc509b105b48d', '353-839-6605', 'NM');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (18854, '1700 Fredd', 'Williambur', '35782 Nata', 'Stanton-Br', 'alan.heller@example.org', 'Glennie', 'Williamson', '367e2a6ac2d52ff362a82f38d9fdc7b4', '+27(3)156034', 'MS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (70689, '1443 Kim R', 'Lindhaven', '7082 Arvil', 'McLaughlin', 'alexandrea.hodkiewicz@example.org', 'Mossie', 'Ward', '4c3f335b19a584eb322c6c706275fb72', '217-118-4426', 'MN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (8403, '22681 Hamm', 'West Perry', '3635 Konop', 'Smitham-Sh', 'alfonso.gibson@example.net', 'Gage', 'Goodwin', '9a78048b6ae0743d8323867534d15319', '+68(3)609235', 'VA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (97977, '4416 Bogis', 'New Aliyah', '408 Powlow', 'Ondricka-O', 'ali39@example.org', 'Gretchen', 'Ledner', '80ffd48e8cf0982f4dc56705620a1b1e', '(652)854-736', 'OK');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (38187, '96567 Aust', 'North Phoe', '106 Lucien', 'Schuppe LL', 'annabelle22@example.org', 'Cloyd', 'Mitchell', '68b64239dd441a350097fff8f0c8b829', '476.439.4837', 'NY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (38803, '23053 Schi', 'Heberchest', '251 Zieme', 'Zboncak, G', 'arnoldo.adams@example.net', 'Michael', 'Lindgren', '0de882e22ab7b4b484436f8435198193', '112-112-6034', 'IL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (84893, '904 Kuphal', 'Gradyville', '2645 Shad', 'Rosenbaum', 'arvid.aufderhar@example.com', 'Buck', 'Stehr', 'a3937917c5bfd7f9047c4dff9d879401', '(199)091-663', 'MI');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (42383, '918 Turcot', 'Lake Dorth', '978 Jeffre', 'Parker-Ber', 'ashton.will@example.org', 'Jarvis', 'Roberts', '100fd82389793a078e390677719d5fd0', '(429)889-009', 'UT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (37259, '443 Altenw', 'Port Katri', '006 Bayer', 'Rau-Hauck', 'benedict.cremin@example.net', 'Donna', 'Pollich', 'e4b3566a27aec66f432955699e2e14f1', '784.812.2140', 'NM');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (14443, '51109 Omar', 'Lake Santi', '098 Gregor', 'Turner-Hal', 'bmayert@example.net', 'Lila', 'Yost', '56b26b5ace0a24d866a5dafa97d8d222', '181.798.3252', 'HI');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (95696, '13753 Kris', 'South Nata', '00985 Berg', 'Konopelski', 'borer.samara@example.com', 'Vladimir', 'Watsica', '44a213e4c0eebdbb73a8c4e70d4dbbd6', '1-613-214-77', 'DC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (61785, '493 Shield', 'Port Eldor', '025 Heathc', 'Carroll, S', 'bridie.mayer@example.org', 'Bernhard', 'Kiehn', '4a1da62dbeffd6d0e44e2d9dc51a105f', '(853)225-360', 'OK');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (89979, '6156 Lueil', 'East Valen', '30435 Ena', 'Schumm Inc', 'caesar59@example.net', 'Torrance', 'Prohaska', 'e55a9492fad122ebb65c37b4445cd3d3', '(394)525-730', 'IA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (26327, '4478 Smith', 'East Odie', '19783 Adam', 'Jakubowski', 'cgutkowski@example.org', 'Una', 'Jones', '163bccf6f9d82ba3228bc1c14540dd7b', '578-824-2875', 'LA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (45366, '510 Torphy', 'Daughertys', '904 Lehner', 'Lemke-Brow', 'claudia.funk@example.net', 'Elyse', 'Powlowski', '34a6bc78811e5633cce648e5371933d5', '635.014.0845', 'UT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (3042, '4924 Elsa', 'West Melis', '76532 Tran', 'Ullrich In', 'cole.newton@example.org', 'Emmett', 'Little', '73932799eab6f0c8defbe585af463558', '1-947-578-59', 'VT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (40076, '70880 Bauc', 'North Maxi', '87303 Ziem', 'Schroeder-', 'cynthia75@example.org', 'Natalia', 'Paucek', 'dde676f5db6690e215f4f4cc65727874', '816.673.8998', 'MA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (68690, '6101 Schup', 'Port Anabe', '066 Metz M', 'Schiller,', 'dach.dayne@example.org', 'Arely', 'Brakus', '685d704ba656e2b711b61b018db1ecc4', '1-475-531-03', 'ID');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (22949, '07871 Iman', 'New Ferne', '289 Brock', 'Adams, Yun', 'dach.greg@example.net', 'Katrina', 'Gorczany', 'f104918747192f09704978666b80eb94', '1-625-639-17', 'KY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (70024, '75508 Town', 'Natashabor', '96589 Will', 'Lehner-How', 'devonte84@example.org', 'Jordane', 'Parker', '23e78712c26c7b0965982adc9ca55365', '360.821.4950', 'FL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (41604, '7899 Matte', 'North Lill', '228 Stokes', 'Hamill, Ni', 'dickens.charley@example.org', 'Dorthy', 'Champlin', '237d8793645b07da003c4392bda83cdd', '(342)640-363', 'CA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (91810, '19488 Abig', 'Lake Adity', '676 Myles', 'Bernhard,', 'dkuhic@example.org', 'Lacey', 'Barrows', 'ecd9d04d9ec2f5b40406405ef58fad96', '(943)655-177', 'KS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (95297, '177 Crist', 'Casperview', '69345 Huel', 'Schneider-', 'dominic66@example.net', 'Maiya', 'Marks', 'eda6758a07914d2148e6d99baf7ee80a', '(416)025-251', 'FL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (26721, '39728 Grey', 'West Issac', '1747 Cummi', 'Wolff-Auer', 'durward.kerluke@example.net', 'Dawson', 'Krajcik', 'b253a7b5c47e782557e1b727bc87d76a', '652-813-8101', 'KY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (45896, '30930 Fred', 'Rolfsonshi', '378 Onie U', 'Breitenber', 'einar.weissnat@example.org', 'Candida', 'Rau', 'd3e0ae69c733e318e37582fdec69fda7', '(716)857-918', 'TN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (27552, '17444 Tran', 'New Duncan', '850 Alyson', 'Kertzmann-', 'elvie.mcdermott@example.org', 'Justice', 'Corwin', '179807425fba9f06792e57948f9eb34b', '+17(8)689263', 'ID');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (67802, '46039 Desi', 'South Bern', '8939 Feil', 'Eichmann,', 'esmith@example.net', 'Alessandro', 'Mayert', '4327d39c90b6feb480b35929dcb38852', '(924)673-230', 'AZ');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (51320, '0266 Lindg', 'Schroederp', '649 Champl', 'Lindgren,', 'fermin30@example.org', 'Kristy', 'Waters', '31479e169ca5520c27da4b5ab0325599', '881.457.0776', 'CA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (62652, '45200 Rett', 'East Dalto', '965 Greg P', 'Ebert PLC', 'finn.frami@example.net', 'Mose', 'Smitham', 'e6d59530e802c1386d389e007014b5ec', '(229)967-059', 'GA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81750, '45203 Dool', 'Port Angel', '14194 Wava', 'Turner-Run', 'gbatz@example.net', 'Jared', 'Wolf', '0cb4d162f4f61558806f8f8f552da072', '(800)285-882', 'MS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (74200, '822 Sporer', 'East Nameb', '958 Gutman', 'Muller Inc', 'general.rowe@example.net', 'Elton', 'Lockman', 'eb3a36280ffda0916de532ff9e696e74', '+62(3)932055', 'OH');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (51867, '75901 Glov', 'Cassandras', '8204 Pagac', 'Williamson', 'georgiana49@example.org', 'Douglas', 'Fisher', '60deaa97c6328ea556e6ada656c74a37', '03278333464', 'TN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (59137, '1700 Elroy', 'New Freema', '2591 Lind', 'Mosciski-S', 'geraldine.o\'kon@example.net', 'Henri', 'Becker', '35db300d812766e2ac78b64be7810a97', '1-864-997-91', 'CT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81609, '4826 Maud', 'Lake Brand', '9873 Kovac', 'Johnson-Sc', 'gerlach.leann@example.com', 'Evalyn', 'Barrows', '4480608a4da7a4be24cb8ac177e9d79b', '872.581.2398', 'SD');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (49872, '450 Langos', 'Champlinvi', '7936 White', 'Jast, Buck', 'gislason.maggie@example.com', 'Jaquelin', 'Cruickshan', '1e7da75205d9b67e4f279cb22d3bc375', '559.027.7386', 'MT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (35104, '86858 Roby', 'North Mons', '76553 Renn', 'Muller-McL', 'giuseppe.gibson@example.org', 'Rachael', 'Steuber', '376ca8691d896ca71e84299c10689519', '1-446-095-24', 'TN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (27092, '15225 Witt', 'Wernerberg', '55689 Brad', 'Pagac LLC', 'groob@example.com', 'Kip', 'Will', 'fb1371077aa1d55525b866b58b1d2a03', '491.826.2734', 'AK');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (74096, '750 Blick', 'East Jarro', '8476 Beier', 'Farrell, T', 'guiseppe.williamson@example.com', 'Bud', 'Gulgowski', 'cb5bc6e964d987db4442a2ff6ac505ee', '059.798.4067', 'PA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (52411, '83420 Jede', 'Beckerfort', '695 Hacket', 'Lesch, Sim', 'gwolf@example.org', 'Freeman', 'Hilpert', '2fca382895de66849a1afa9997d7c650', '1-552-606-64', 'NE');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (24019, '75732 Lowe', 'Skilesfort', '17776 Keyo', 'Feil, Turc', 'hadley.herman@example.org', 'Gabriel', 'Mosciski', '8cbb4e217e6a48e676da2f69c988a453', '(180)853-752', 'LA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (75953, '26303 Donn', 'Bradtkefor', '257 Gaylor', 'Bahringer-', 'hahn.leonel@example.net', 'Troy', 'Harris', '2cd14d5a545166def9ee43a33913521c', '017.232.0756', 'AR');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (83699, '5116 Keebl', 'Langtown', '7480 Grady', 'Cruickshan', 'herzog.dejuan@example.org', 'Dale', 'Weimann', 'c82bcd0523f8b02c56fb12d9193dc2af', '771-130-7541', 'FL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (73316, '1882 Sean', 'North Zaka', '14865 Murp', 'Hane PLC', 'hessel.briana@example.net', 'Molly', 'Cormier', '5a41ab05b5bc6763353a7b706da52226', '250-332-0148', 'WY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (20749, '3616 Ondri', 'North Edmu', '874 Sienna', 'D\'Amore an', 'ibeatty@example.org', 'Santa', 'Kihn', 'c96d3d0c3fe050679fb1ed64d9ec6d71', '1-920-684-13', 'DC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (88407, '882 Nigel', 'Kirlinfurt', '75787 Jacy', 'Johnston P', 'ireichert@example.com', 'Zane', 'Wyman', 'cd68fc2733457bc8bd3105cc05f9e411', '883-692-6097', 'CO');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (51400, '736 Elouis', 'West Arvid', '52320 Maxi', 'Bogisich-K', 'iwolff@example.com', 'Jedediah', 'Kulas', '7be0885275646f550d00f137ed1de252', '(865)813-343', 'KY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (70273, '721 Mills', 'Ratkeborou', '0584 McLau', 'Schmidt LL', 'jheaney@example.com', 'Ashley', 'Gusikowski', '676455f35518c78b7b224124cb9537dd', '(881)121-349', 'WV');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (80112, '22415 Ziem', 'O\'Konton', '39290 Hale', 'Lemke-Till', 'jody93@example.org', 'Garrick', 'Blanda', '4f2b2c8041e794f7eed8869c2f8dd03c', '478-650-5043', 'TX');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (61194, '061 Thad R', 'Zboncaklan', '438 King T', 'Spinka, We', 'jon.smitham@example.com', 'Fabiola', 'Gaylord', '490e58fd2f1b55c6f121d5608013b8b0', '994.019.9779', 'VT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (51450, '071 Ambros', 'Loyalland', '101 Brende', 'Bergstrom,', 'kip.dach@example.net', 'Ulises', 'Aufderhar', '12a19e4caa8b28421a817cd197412386', '349.734.8757', 'NY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (90100, '22815 Nola', 'North Arju', '20904 Leff', 'Kertzmann', 'lakin.sheila@example.net', 'Joanny', 'Collier', '4d5d629729f263d5817676c6006edf84', '1-692-535-86', 'GA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (85044, '9767 Tate', 'Kleinburgh', '22127 Kurt', 'Kshlerin,', 'langworth.coleman@example.com', 'Dayna', 'Ratke', 'bcd64e3f2f63c8654a031f1727974968', '07093959149', 'AZ');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (80152, '27522 Shan', 'Lake Ilian', '782 Cruz F', 'Bradtke, R', 'lexi84@example.net', 'Colin', 'Luettgen', 'a280ddfab18c7823389ac104ce09f14a', '1-100-484-35', 'DC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (9954, '1722 Marvi', 'New Patsy', '4949 Flori', 'Kautzer-Ho', 'littel.wilson@example.com', 'Marlen', 'Walker', '54d11500a0ee9128b2b3ed6030c4cf19', '609.256.9986', 'CO');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (85906, '085 Dante', 'West Adaht', '773 Gina H', 'Sanford, G', 'lou.klein@example.org', 'Rickie', 'Dickinson', '2b36de6567a675b8584fffa35db21dec', '354-168-1322', 'RI');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (3636, '81781 Hirt', 'Kleinville', '37938 Darr', 'Leannon-Ra', 'lsporer@example.com', 'Stanford', 'Mertz', 'ef8445388b94e2e80093ffe9007d88e4', '234-343-3935', 'DC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81279, '06469 Sash', 'Port Alexz', '17437 Doug', 'McDermott,', 'lucas.bechtelar@example.net', 'Demario', 'Rippin', '77431fa28729db725f987b13256ea7ae', '914-965-7698', 'AZ');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (82957, '984 Fadel', 'Windlertow', '4256 Aliso', 'Yundt-Hegm', 'lzieme@example.com', 'Kayley', 'Bradtke', '91bd66ebe9dc16aad47974219dd82409', '(967)487-817', 'PA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (86092, '23611 Fran', 'Evansfurt', '77445 Nola', 'Spinka, Co', 'mable.keeling@example.net', 'Jerrod', 'Torphy', '1f47322edbea4ce05a6209aa55570a6d', '1-792-008-97', 'LA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81357, '277 Telly', 'Weissnatmo', '772 Lucien', 'Legros, Ro', 'mariela.morar@example.net', 'Retta', 'Ebert', '52f70ed725b893599751af90f99ae213', '+87(5)003786', 'FL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (92162, '315 Kozey', 'Andersonmo', '26814 Elia', 'Yundt Grou', 'markus.heller@example.org', 'Clifford', 'Harris', '89b7b3eb26d1577a1bcfd132923ab74a', '293-537-1663', 'CT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (26554, '977 Franci', 'McCullough', '10205 Kuva', 'West-Saway', 'martine.leffler@example.com', 'Elliot', 'Gerlach', '40c10d42c10714e93c96a1e1883a69db', '056-270-0318', 'OK');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (14774, '6118 Botsf', 'West Caesa', '1120 Hayes', 'Windler, K', 'mayert.larry@example.net', 'Kenneth', 'Christians', 'a12a0b50787824f2b41f51cbe51885f8', '1-219-806-94', 'ID');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (97565, '459 Tromp', 'Wymanbury', '184 Hauck', 'Pagac-Eber', 'megane27@example.org', 'Randal', 'Ondricka', '05ee3ebb5272601c0121fc2e665665b0', '(666)874-842', 'KS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99989, '108 Jarvis', 'Anibalfurt', '590 DuBuqu', 'Johnson Gr', 'mitchell.thompson@example.com', 'Jeffrey', 'Bode', '5ed45f48ddc846a664bcbe0ff82ac00d', '112-098-6559', 'VT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (16554, '432 Emile', 'New Stacey', '962 Von Vi', 'Runolfsson', 'monahan.guiseppe@example.com', 'Luis', 'Stroman', 'cf195c31c051fad48a382b46ec6492e7', '(414)233-157', 'DC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (54711, '14719 Lane', 'North Joes', '346 Bobby', 'White LLC', 'monte30@example.org', 'Alena', 'Olson', '95bb3a70738e7b26d3eb6a85c1f8015d', '(244)981-429', 'AZ');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (39231, '6459 Gleic', 'Boehmview', '55130 Cris', 'Bauch-Kunz', 'morar.kelton@example.com', 'Wiley', 'Smith', '5ba5e49b33509b27b7b15f1eb50b01fc', '05069078263', 'MI');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (82367, '424 Willis', 'North Myrn', '0982 Bogan', 'Klocko-Ker', 'mraz.darrion@example.net', 'Bobbie', 'Jerde', '7671edfa569c1643b59c315ecdd76b8d', '605.707.1012', 'SC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (48637, '341 Shanah', 'Lake Jamal', '583 Kessle', 'Littel-Lea', 'nestor.pacocha@example.org', 'Aglae', 'Feest', 'dfb16910860d8712f227f37e651bd053', '1-245-511-65', 'SD');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (11541, '463 Hoppe', 'Gutmannche', '4754 Mathi', 'Powlowski,', 'orion.russel@example.net', 'Nannie', 'Lockman', '30e302827012e4b18176f19b7f21ff2e', '509.960.7208', 'NC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (43040, '4061 Keeli', 'Garettburg', '524 Bergst', 'Kshlerin,', 'pschumm@example.com', 'Chyna', 'Hirthe', '86bdfe22248bed33ab19cb1939106727', '069.024.8366', 'WA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (89778, '798 Koss M', 'Darronmout', '25172 Ripp', 'Baumbach,', 'qbaumbach@example.org', 'Malachi', 'Maggio', 'b4d8fa13b18c9a9a89a7186f27b89850', '00212084946', 'RI');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (21834, '084 Monaha', 'Gerryfurt', '60069 Jere', 'Hettinger-', 'qcole@example.net', 'Jamir', 'Gutmann', 'f8c2ef2b2b60bffcdf96ffc5401dc35d', '518-358-6659', 'NH');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (47622, '34435 Cayl', 'Kuvalismou', '5623 Zbonc', 'Emard, Cre', 'reba.murphy@example.org', 'Ryleigh', 'Torphy', 'c97fa02ff22e88ea6dd6d10b3e1dd469', '1-064-349-54', 'KY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (26737, '28275 Roy', 'Lake Krist', '5732 Hagen', 'Ferry, O\'K', 'rjast@example.net', 'Wanda', 'Schneider', '3c2eedda6f3b438ff57b3b4b532bb4d8', '640-842-0019', 'AR');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (95664, '217 Jettie', 'New Paxton', '24660 Fred', 'Nolan PLC', 'rkoelpin@example.com', 'Burdette', 'Rosenbaum', 'f1e48a76dfd1b4b227fb05262e4286d7', '(657)933-758', 'IL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (77369, '0652 Noemi', 'South Tore', '768 Nolan', 'Gutkowski', 'roob.kendrick@example.net', 'Hilda', 'Little', '9c55ddb5b78c5fe0c7ad71df25b9bfa5', '565.478.0565', 'SC');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (65059, '5256 Lubow', 'Javontebor', '33089 Yost', 'Adams-Wats', 'rosalee.ledner@example.org', 'Alejandrin', 'Swift', '5559f1edff4fbcbbc57ad946c5fe2450', '+07(4)057056', 'WY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (24352, '8015 Celin', 'Lake River', '24583 Leff', 'Goldner In', 'rylan.predovic@example.org', 'Aletha', 'Haag', '2b50a266ba43b2f02ec5d99e44649fd3', '741.595.1790', 'IN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (75628, '311 Cecili', 'Allisonton', '15148 Duan', 'Stehr, Wuc', 'schmidt.harry@example.net', 'Nicole', 'Wiegand', 'ad33a7b432a118838e9fbeda3e31ff7c', '320-042-1120', 'MN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (20191, '79873 Jamm', 'Reichelfur', '87790 Ritc', 'Murazik-Br', 'sienna.johnston@example.net', 'Manuela', 'Ebert', '515720042e8e37ec1542b3e405d13606', '203.713.4179', 'LA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (34588, '7034 Quigl', 'South Alex', '1296 Halle', 'Von-Hermis', 'smith.alejandra@example.com', 'Alessia', 'Carter', '631d76a42f7012a705330f1c9f63b712', '686.458.2684', 'CO');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (97699, '3813 Hegma', 'West Derek', '994 Trembl', 'Wunsch, Mc', 'spencer.titus@example.org', 'Pete', 'Hackett', '2f8cd926658c94c1a092937cee7e1b46', '503-334-6609', 'MT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (34774, '26670 Abbo', 'Cletatown', '81321 Lesc', 'Spinka-Ols', 'stephen96@example.com', 'Heather', 'Bartell', '5d6c093e57f9bfd623b1a4515c288d32', '+57(5)944029', 'WV');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (91791, '12564 Maye', 'New Macybe', '858 Danny', 'Aufderhar', 'stokes.heather@example.net', 'Elody', 'Sauer', 'd6390bba3f6e811f7afd31c87f603747', '+83(8)912319', 'KS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81690, '476 Nat St', 'Lake Jenni', '021 Kreige', 'Stark and', 'taya.langworth@example.com', 'Floyd', 'Cruickshan', '068b9a0385e18cbe281cf72dc614388a', '679-383-6443', 'IA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99325, '89866 Ethy', 'West Terra', '34498 Lubo', 'Bogan-Ruec', 'tony.howe@example.net', 'Ila', 'Erdman', '478321843501a14adc085dfea8f9ef73', '(025)941-738', 'MA');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (54600, '045 Zieme', 'Carissapor', '696 Archib', 'Goodwin-Bo', 'travis.block@example.org', 'Adrienne', 'Howell', 'adbc39fb8ca27aebe6e7f943847aad4b', '902-751-4675', 'IL');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (50450, '77569 Krys', 'West Santa', '401 Kirlin', 'Hodkiewicz', 'treva.torp@example.net', 'Leopoldo', 'Lesch', '72982dd9296824b63913cd3d162db803', '(639)687-080', 'CT');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81530, '023 Lorenz', 'Kilbackbor', '7728 Boyer', 'Auer Group', 'tromp.pierre@example.org', 'Letitia', 'Connelly', '4e4da11fec4a5d7eaae52caec8400f95', '1-953-300-99', 'KY');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (78706, '3611 Kobe', 'Mitchellbu', '102 Predov', 'Carter, Sp', 'vo\'conner@example.net', 'Frankie', 'Pouros', '9a377816798ddc18e5f95e038b795383', '+52(0)241842', 'IN');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (35340, '7376 Dasha', 'North Daro', '663 Dooley', 'Raynor PLC', 'wadams@example.com', 'Keanu', 'Fritsch', '418cfbf1f547be4d546dcbabc0588339', '1-456-946-73', 'OH');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (28839, '3105 Hand', 'Casperport', '737 Penelo', 'Hartmann,', 'wisoky.thomas@example.com', 'Lilliana', 'Hills', 'ed542d8c6efaf38e229ce56d3d017d4f', '823.891.6165', 'ID');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (12434, '9503 Steub', 'North Arle', '40546 Reic', 'Cassin-Cri', 'xavier93@example.org', 'Astrid', 'Larson', 'e58ab0a39ff7704c7e267738e1ed049d', '201.829.3334', 'KS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (17196, '09280 Hegm', 'Bridgethav', '44684 Marv', 'Little and', 'xterry@example.org', 'Carlotta', 'Christians', '96be5c7ba3b28bc20b09d7d4425bf223', '(240)735-010', 'AR');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (73649, '156 Rolfso', 'South Chas', '8661 Rowe', 'Gislason-O', 'yjaskolski@example.com', 'Jevon', 'Jacobson', 'a4ec51e4ef3da4bee45ba82e29ab9c7c', '490-503-4828', 'MS');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (12132, '449 Jewel', 'Kailynboro', '8447 Goodw', 'Mills, Cru', 'ywilderman@example.org', 'Madeline', 'Ledner', '27caf2710646312e3ab96532cf3708a7', '590.217.1718', 'NE');
INSERT INTO `Sellers` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (58609, '615 Marisa', 'Kasandrach', '31258 Erdm', 'Konopelski', 'zbreitenberg@example.net', 'Peggie', 'Schulist', 'a094315e8a47787cc4f98488b0a66535', '394.681.2783', 'MT');


#
# TABLE STRUCTURE FOR: ShoppingCarts
#

DROP TABLE IF EXISTS `ShoppingCarts`;

CREATE TABLE `ShoppingCarts` (
  `idShoppingCart` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idShoppingCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('106');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('11384');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('1232182');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('12500345');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('13300704');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('13557678');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('1500570');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('15432496');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('155890489');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('17');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('178502');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('18708306');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('19');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('19294');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('2');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('200');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('21');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('221991');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('222149');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('23493');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('257028117');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('25821');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('266598');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('29');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('29061');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('3');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('30634787');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('33');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('33135');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('35');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('3580971');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('37401');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('37755226');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('3828342');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('3849875');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('4');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('41975');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('419841');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('43');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('431');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('437580');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('44');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('461794559');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('4710');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('482');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('48528');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('48588243');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('488');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('49');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('49689');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('499208259');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('5');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('53443011');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('55');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('573');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('573902030');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('586968');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('58919855');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('6');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('621269297');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('630828');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('636');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('6446897');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('6532192');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('67');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('68');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('68568814');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7200437');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7270955');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7333152');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7643062');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('772773311');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('77701');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7789');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('7872147');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('806927463');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('8077409');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('81355');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('82333');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('83');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('858');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('86');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('866223212');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('8688');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('87199702');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('8765720');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('88428');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('899996506');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('9');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('9072256');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('912');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('927');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('93');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('9306526');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('9496176');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('958');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('980552');
INSERT INTO `ShoppingCarts` (`idShoppingCart`) VALUES ('9921');


#
# TABLE STRUCTURE FOR: Users
#

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `cap` int(11) NOT NULL,
  `address` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` char(254) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idShoppingCart` char(10) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `surname` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(32) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `province` char(6) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `FKwhant_ID` (`idShoppingCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (80147, 'Casa Mia 22', 'Napoli', 'pasquale@gmail.com', '654523', 'Pasquale', 'Lo Carmine', '123stella', '0382 6688932', 'NA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (76846, '219 Nienow', 'Rafaelasid', 'abernathy.helene@example.net', '912', 'Noe', 'Kautzer', '6ef176dba0e92873ca5fdd7e5fe862f1', '027.573.6741', 'LA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99530, '342 Hoppe', 'North Cono', 'alvera.howell@example.org', '772773311', 'Everardo', 'Reilly', 'fbc1d7ce5e0bcc9041d525cb26677159', '871.507.5761', 'KY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (60330, '77462 Farr', 'Hanetown', 'amckenzie@example.net', '437580', 'Maximus', 'Flatley', '84279c666f312009d742715e7331fe15', '698-928-4093', 'NM');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (59177, '2237 Johns', 'Kuhnhaven', 'andres31@example.org', '7643062', 'Aiyana', 'Jaskolski', '9efaea24b2cb522065e5278bec1ade38', '1-014-969-56', 'MA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (80811, '198 Brenna', 'Loycechest', 'aniya.stanton@example.com', '', 'Ramona', 'Corwin', 'e0b03e96ddacf5cbc01a6cdd3b832450', '(952)784-672', 'IN');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (13348, '658 Amani', 'Quintenpor', 'annalise.monahan@example.com', '200', 'Audreanne', 'Hilll', '25eeaf78b9d56d31626b8d8db2799e21', '1-688-487-30', 'IN');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (4674, '86138 Maso', 'North Keon', 'ashtyn.larkin@example.net', '44', 'Zoie', 'Casper', '8e1d4d92519b3abb6cabc0d996bd8d21', '02681921558', 'CT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (46357, '26802 Torp', 'Maritzamou', 'asmitham@example.org', '5', 'Vince', 'Rice', '233daf62411ed35a0ed099442f3ac2a8', '+91(0)732497', 'IL');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (25918, '99877 Cass', 'Gabriellaf', 'bayer.marge@example.com', '19294', 'Henderson', 'Stroman', 'd0dc15917c92e10275f8311686ceb596', '01705555453', 'IN');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (25032, '6257 Malli', 'West Roma', 'bdooley@example.com', '8077409', 'Khalid', 'Blanda', 'b14ba27c7cf7363ff891d2cdf85dedec', '(789)829-319', 'KY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (97978, '47462 Case', 'Kautzershi', 'bfritsch@example.org', '13557678', 'Belle', 'Williamson', 'ce1f9ffcd3e50af58c9dc80c05401b35', '(964)371-564', 'IN');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (60309, '298 McCull', 'Lake Maris', 'brendan.botsford@example.com', '48528', 'Prudence', 'McCullough', '56c7a674baae80d26119aaa52caa47f0', '+27(6)265393', 'SD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (39383, '22938 Reth', 'Kohlerbury', 'buckridge.evie@example.net', '7789', 'Jade', 'Pfannersti', '7dc85dfe59bb984d53e18331d4b7d56f', '+18(0)539406', 'MT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (37919, '7791 Hesse', 'New Clair', 'chaim18@example.net', '621269297', 'Sophia', 'Torp', '07cf3d3f63f07e9be595eb1ad27b37b4', '1-097-534-55', 'MA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (21001, '9015 Hayes', 'Vellaville', 'cheyanne12@example.net', '1500570', 'Winona', 'Mann', '936feaee5416c6fc496570f86f2a8596', '840.623.1798', 'UT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (47803, '17589 Berg', 'Kunzetown', 'constantin.daniel@example.net', '7', 'Roma', 'Gottlieb', '340d09c6b6ffef2715751ee549ca9ae9', '1-536-255-01', 'NE');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (8381, '962 Amelia', 'Granvillet', 'cordell44@example.net', '806927463', 'Zackary', 'Wyman', '90884aeb5c905d71175d54f753c82da5', '208.845.0596', 'NV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (55225, '49909 Kula', 'East Helen', 'dean.crooks@example.org', '35', 'Blair', 'Rau', '4aa6cc8a417f56967e5a7b98dbd56a29', '846.560.5918', 'ME');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (81589, '826 Sereni', 'Port Alana', 'destinee11@example.org', '927', 'Kenneth', 'Kautzer', '3895e73dd6e924b18b5a6502b273c81e', '+73(9)062875', 'HI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (74269, '022 Boris', 'New Jazmin', 'edythe.larkin@example.com', '499208259', 'Maxine', 'Dooley', '16c0bdee97931985815c773e18aca632', '(301)896-752', 'NJ');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (39197, '573 Meda G', 'Johnsstad', 'eromaguera@example.org', '222149', 'Angelo', 'Herman', '92e5dbc380a28923c1afacaa64ac156b', '1-013-400-20', 'ME');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (73388, '00192 Dort', 'Kayashire', 'erwin04@example.net', '77701', 'Mathew', 'Hudson', '4c5f8c954f929d4d0d98a7d30fe3cbf9', '1-265-691-53', 'MS');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (17628, '48684 Viol', 'Heberview', 'eudora02@example.org', '43', 'Jayson', 'Mueller', '96bc072b5df8ad75b09619f54d90b873', '953.516.7215', 'WV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (11944, '1246 Goyet', 'Boyerhaven', 'farrell.afton@example.com', '7200437', 'Guillermo', 'Klein', '49a5c809b35720dec3a5725218445bc6', '(083)418-621', 'SC');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (19057, '86498 Wind', 'New Linnea', 'franco01@example.net', '82333', 'Sarina', 'Tillman', '13f5430c4a14d66da65eedd67bd5b6f5', '1-191-235-83', 'IN');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (10356, '823 Mitche', 'Jaedenshir', 'fwalsh@example.net', '33135', 'Savion', 'Ziemann', '2196e83c63194c349369f6f84b8c770e', '436-766-6016', 'VA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (27733, '326 Ortiz', 'Margaretem', 'gerald.bode@example.org', '88428', 'Virgie', 'Wunsch', '80ff66f776591dd602cadc4aac6847b6', '(176)282-672', 'NM');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (72166, '704 Meghan', 'Quigleypor', 'grayce58@example.org', '899996506', 'Abigayle', 'Mante', '2226651031725f710253578a903b33e9', '634-031-5378', 'WV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (91856, '12639 Kayl', 'Ullrichhav', 'greenfelder.bennie@example.com', '461794559', 'Kianna', 'Nolan', '0f481909293659180e511ac88173aa0f', '418-500-7485', 'AR');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (66995, '46743 Hell', 'Beerberg', 'gregory.schulist@example.org', '25821', 'Christiana', 'Effertz', '96e31331b1fbf0982ae4d6b1cc88c24b', '733-804-5541', 'SD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (77142, '3718 Mulle', 'McKenzievi', 'hane.addison@example.org', '8765720', 'Jeffrey', 'Abshire', '4e9f6acb4cf820e456b4a97435c21106', '613.500.1871', 'PA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (49855, '781 Hoppe', 'Hirtheboro', 'hartmann.hiram@example.com', '21', 'Jaqueline', 'Von', '25bd6667bb255538e63ba135794d775f', '1-374-434-70', 'KS');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (70650, '40146 Tiar', 'North Newe', 'hector43@example.com', '573', 'Lupe', 'Johnston', 'ceff4b4aded1a94288cf863e704a88d6', '1-459-428-41', 'WA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99639, '683 Strosi', 'Caleview', 'heidenreich.tianna@example.org', '858', 'Cyrus', 'Brakus', 'c8f1381c84e54c105729a533543b2d6f', '08297615553', 'NH');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (16852, '792 Reilly', 'Fayborough', 'hreichert@example.net', '9', 'Conor', 'Kuhic', 'fe310a2b9ea6dc4020d53cd98ca79f06', '(045)428-722', 'AZ');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (8165, '12076 Maxi', 'West Gregg', 'hudson.kilback@example.org', '106', 'Lavinia', 'Kirlin', '8cfb052129e8067f8daf1ba9faed4071', '208-246-7048', 'TX');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (7463, '8243 Carme', 'Lake Trema', 'hulda.mohr@example.org', '178502', 'Darron', 'Dickens', 'eed9ed481a2b4817c56a34199fcc6223', '06013674339', 'NH');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (73435, '447 Brakus', 'East Beth', 'hyatt.conor@example.org', '4', 'Aletha', 'Ziemann', '4fe140ff5c4c13ca8f0a50d5ef84c6a4', '398.488.3476', 'VT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (68771, '030 Zaria', 'Ottiliebur', 'iblanda@example.org', '958', 'Else', 'Lockman', '61a8d637e23817badd0a10302e409d91', '1-926-345-43', 'VT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (63761, '1904 Pacoc', 'Rowenabury', 'jacobs.ola@example.net', '67', 'Hyman', 'Medhurst', 'ea1cdfac2beea1eee554ebd3aaf0d955', '958.383.1638', 'GA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (75959, '7669 Simon', 'Lake Alivi', 'jade.ortiz@example.net', '630828', 'Haley', 'Keebler', '9efc8bc0fcd376a692828159ac86ac50', '542-292-7667', 'OH');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (13352, '0948 Macej', 'North Ales', 'jarvis.dibbert@example.com', '482', 'Quinten', 'Shanahan', '0e54948c8dfcb9611a4660553d4301c6', '+39(9)687195', 'CA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (76484, '159 Xavier', 'North Thel', 'jedidiah20@example.com', '58919855', 'Katelyn', 'Schneider', 'acfa97a4c3f3ddcf9d4160d664d2067c', '04498027097', 'IL');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (37294, '3243 Lilia', 'Alexanderp', 'joannie58@example.org', '980552', 'Mekhi', 'Koch', 'e9f2717c9aee70c1b29a2ce78429fda8', '08115297767', 'KS');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (82220, '50058 Gisl', 'New Davont', 'julie.cole@example.org', '3828342', 'Alvera', 'Halvorson', 'be648f4b674dbdbb1bc2c902f24d8d75', '641-610-5748', 'MT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (31501, '4277 Rowe', 'Ariellelan', 'june13@example.com', '221991', 'Samson', 'Schowalter', 'c6fb85b46c9db3120dfc4292e1c6abbb', '(129)528-987', 'ND');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (86572, '819 Charit', 'Maviston', 'jwitting@example.com', '6446897', 'Susanna', 'Ratke', '59ce0fe9695d0197e0015e9bf801b4c9', '1-791-466-17', 'OH');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (68888, '8330 Green', 'Vandervort', 'kailey37@example.org', '9921', 'Shanny', 'Blanda', 'bd34cb20759c1284ab81f685d43e9fb4', '1-339-515-18', 'NY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (36088, '81088 Geor', 'East Domin', 'kautzer.brent@example.org', '7333152', 'Kenny', 'Schamberge', 'b798df5e0274f19aa24fd36ab09912e1', '1-669-199-01', 'LA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (86730, '6278 Izaia', 'Rosannamou', 'ken.cole@example.net', '49', 'Angelica', 'Wehner', 'c340f771f22a920e7716d578d3ef0e68', '(897)101-064', 'IL');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (63472, '4636 Scham', 'East Ola', 'kmoore@example.net', '37755226', 'Danny', 'Greenholt', '7d4cdf7ffb6b8fe58307ce15791e7051', '1-306-073-60', 'DE');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (68589, '57997 Baum', 'Joelletown', 'kuphal.mollie@example.com', '9306526', 'Tevin', 'Stehr', '2ab0ee7fae9a2941834640af2bf62e1f', '(032)078-779', 'VT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (88140, '5678 Dillo', 'Rodriguezb', 'lamar.bernhard@example.org', '866223212', 'Ciara', 'Smitham', 'b39b7b54edb03e4db3a1ff7fa8c86f1e', '129.700.1936', 'UT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (17325, '4543 Petra', 'West Arace', 'lauryn06@example.org', '55', 'Theresia', 'Breitenber', '1a812321a47ebc448a6f06a73ba9e4ad', '(477)952-485', 'MI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (78400, '4441 Kathe', 'Devynburgh', 'leanna.bauch@example.net', '7270955', 'Ellsworth', 'Senger', '9d6a22daaee735a734ecf6ddd70ae652', '1-212-741-90', 'DC');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (91954, '977 Ahmad', 'South Prin', 'leffler.eldon@example.org', '23493', 'Paul', 'Dach', 'ad656ed29f196fbfdbc33a8bfaf1880c', '1-621-603-24', 'MD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (22193, '78316 Walk', 'Willmsport', 'legros.johnpaul@example.net', '17', 'Maida', 'Altenwerth', '3256a64a67256c00f80836f066531234', '(953)538-580', 'AL');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (16044, '50477 Esme', 'Stoltenber', 'lind.zackery@example.net', '68568814', 'Trinity', 'Casper', '3e7517dc9fcf3b2d2888a6e7411f4473', '911-264-1688', 'MI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (78845, '11733 Tito', 'West John', 'lo\'reilly@example.org', '33', 'Rodrick', 'Koch', '72e588c2e1c3f0229011b40f188cfdb4', '(856)153-657', 'MD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (34535, '846 Jacint', 'West Moshe', 'lucio.beahan@example.com', '586968', 'Olga', 'Weimann', 'a19bb2451d820a6db5a27febe76a9a0f', '+23(8)524946', 'RI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (19042, '2367 Lydia', 'Goldenview', 'lucio.conroy@example.net', '419841', 'Barbara', 'Cummings', '27016cde5077ba77b0ab14b186f66889', '1-394-168-41', 'ND');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (9576, '61740 Spin', 'Leilanitow', 'lzemlak@example.net', '3849875', 'Ibrahim', 'McLaughlin', '6decc6866a61546ad7a5d3ca619d7dfb', '175-630-8609', 'IA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (5133, '9998 Grace', 'South Amiy', 'matt39@example.com', '49689', 'Genoveva', 'Beier', 'bb1eed49f3121be6c01e0bad84bd09c8', '1-511-555-01', 'WV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (26888, '694 Stokes', 'Colefort', 'mayer.ed@example.com', '13300704', 'Luis', 'Hane', 'b0a5a9f31513a003f3319a07f41fb78c', '659.957.7937', 'CO');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (44857, '8314 Brend', 'Fanniemout', 'metz.orrin@example.org', '573902030', 'Dante', 'Tromp', 'f9490da1ef14a5d3ea6df057047ccfa9', '137-721-3125', 'MA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99348, '634 Larkin', 'Ellenview', 'mustafa.hills@example.com', '3', 'Urban', 'Wisozk', '7c40031a7633bbcbbbe4e279fc49c715', '+12(3)214822', 'CA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (53616, '717 Zane H', 'East Kenya', 'naomie05@example.net', '93', 'Ellis', 'Pagac', 'f7451c4cc0c32cdc910c3af4884504c4', '04122926002', 'TX');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (41584, '6149 Brenn', 'West Gunne', 'nwindler@example.net', '53443011', 'Fiona', 'Okuneva', '62b37f3470230f436a2b54f80d800f9d', '687.112.8389', 'MD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (65709, '807 Bethel', 'Elwynmouth', 'odie.will@example.com', '4710', 'Reagan', 'O\'Hara', 'ddc838f11c74853f2fddf9f57d6c1057', '1-586-705-04', 'DE');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (50573, '880 Enid S', 'Lake Guill', 'oma79@example.net', '6', 'Myron', 'Keeling', '8e5d3789c1de03aa091bc4cb9b867a8e', '063.965.1459', 'OK');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (36366, '29907 Spen', 'Schowalter', 'pdaugherty@example.org', '41975', 'Vinnie', 'Rogahn', 'aae19c26e71f4352df88ba547d3f4e98', '02292384167', 'AK');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (30035, '54553 Rodr', 'Richieside', 'qchamplin@example.org', '29', 'Tate', 'Barton', '4ddac55e931ed413d4e0b7d61f443388', '846-091-3114', 'MD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (86216, '00935 Kirs', 'Lake Alici', 'ralph00@example.net', '68', 'Ocie', 'Emard', 'eab9551624f30db69eba659d65d77e51', '399.181.2690', 'OH');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (10204, '7358 Schae', 'Lake Blanc', 'rgrady@example.com', '29061', 'Carmine', 'Bednar', '4fd9cb7a88630f2a4802f2395277f73e', '726-102-6327', 'WV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (44896, '360 Cremin', 'Port Derri', 'rkuphal@example.com', '9496176', 'Jamaal', 'Balistreri', 'f76d02e98d4f18ecde76aa07714d9a49', '387-434-9991', 'NY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (84063, '16419 Noah', 'Marianeshi', 'roberts.myrl@example.org', '1232182', 'Benedict', 'Bins', '32d05c0341d761e698565406b13032e2', '1-689-794-84', 'WI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (79522, '290 Ruther', 'Littleberg', 'rubie26@example.net', '87199702', 'Adella', 'Barrows', '523dd32623ed41a50d83edda62222abf', '1-348-183-65', 'PA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (96987, '307 Mohr W', 'Lake Alysa', 'schmeler.krystel@example.org', '257028117', 'Don', 'Batz', '63199216603879c6131c9fe120cbead0', '290-401-6748', 'IA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (16299, '61048 Alle', 'West Ebba', 'scot.o\'hara@example.com', '2', 'Vinnie', 'Koch', '338983f0e795bba4a2840a377e8cccf4', '(873)133-079', 'VT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99232, '46514 Feil', 'New Zechar', 'sfranecki@example.com', '6532192', 'Brielle', 'Pfeffer', '6b33c62551ddfd614eacbec6d230346b', '226-740-3077', 'MO');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (96170, '7983 Schmi', 'East Ronny', 'shea53@example.org', '86', 'Kale', 'Cruickshan', 'b31a652d8327b66b77bd42b6a736e33c', '1-856-815-43', 'GA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (93147, '9449 Micae', 'Gleasontow', 'sheaney@example.org', '83', 'Jovani', 'Rohan', '2fd4751c549901aba778aa9238153501', '254-505-4365', 'DC');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (10560, '21381 Reic', 'West Pasqu', 'sigurd61@example.com', '636', 'Sheila', 'Howe', '89c9c80ed63420da891c20d537acc1c3', '1-786-016-09', 'CO');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (86381, '4622 Dameo', 'New Hellen', 'soledad.johnston@example.net', '19', 'Elisabeth', 'Hermann', '52b313749686be41c1714fd58ad13b49', '1-087-575-82', 'WV');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (88617, '49237 Gusi', 'D\'Amorefur', 'stan45@example.com', '3580971', 'Tyshawn', 'Grant', 'd4344bf48eb1581c3d65ff3b8ac1f31e', '105.209.4964', 'ID');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (33871, '18327 Kuva', 'Goyetteche', 'stehr.susie@example.com', '8688', 'Quincy', 'Blick', '3dfc2a03b77e9bd03e2df2c9f6434f78', '(121)597-895', 'WY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (48139, '1238 Oran', 'East Velva', 'stephan.murphy@example.org', '12500345', 'Terrence', 'Pollich', 'bc7bf1fe866ebc1e4fd11080bca4be14', '722-141-4032', 'ME');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (99284, '98815 Vivi', 'New Barney', 'swaniawski.darron@example.com', '15432496', 'Noemi', 'Barrows', 'f5af1028fd76f55d951442ee9a2a8817', '1-088-073-12', 'WI');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (18518, '28024 Rod', 'Port Gregg', 'tiara30@example.org', '488', 'Hubert', 'Daniel', 'e967b46412fa8dfc2b5f21a495c6decf', '646-375-5787', 'GA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (24199, '6208 Caesa', 'Mckaylabor', 'trau@example.org', '30634787', 'Elroy', 'Carter', '1f768ddf8959d317ca675a6d2449daf4', '+47(3)093100', 'MA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (82511, '3935 Frami', 'Pablochest', 'trowe@example.com', '7872147', 'Lina', 'Parisian', '4c81c60afa97dedc45c244f51e347f3c', '862-135-6754', 'ME');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (36320, '549 Nikola', 'VonRuedent', 'ttrantow@example.com', '431', 'Melisa', 'Nitzsche', '50da3b7d9272707dfe0562bbc738b459', '(765)558-992', 'KS');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (37692, '8698 Zieme', 'North Nyac', 'tyson90@example.net', '155890489', 'Damon', 'Fadel', '34b1649e5b9f708d3e665e4009cbbbb2', '019-314-7980', 'AZ');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (23553, '03122 Kilb', 'East Babyv', 'uwilderman@example.net', '9072256', 'Russel', 'Armstrong', '19c9e9af277f89110822996059a38cf0', '347-523-7678', 'NY');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (92931, '363 Ferry', 'Sengershir', 'walsh.mia@example.net', '81355', 'Tom', 'Gleichner', '3d315186315581da5eea69d2ac65b208', '1-143-302-07', 'VA');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (82415, '1560 Cremi', 'New Destin', 'will.adrain@example.org', '11384', 'Ettie', 'Sporer', 'acc20955d5a5a71c1ebf71b132dae0e2', '067.168.7073', 'NM');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (21707, '7592 Goodw', 'North Kayd', 'willms.mac@example.org', '48588243', 'Joey', 'Gutkowski', 'b19687283785195c54a6b9d4fa66974f', '(079)816-841', 'VT');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (71094, '478 DuBuqu', 'Lake Karol', 'wiza.jaylon@example.com', '37401', 'Lacy', 'Emard', 'c5bc261589d014ed06cde9b8543aafb3', '593-810-2477', 'FL');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (75184, '9115 Manue', 'Bradfordha', 'zbeatty@example.net', '18708306', 'Durward', 'Robel', '8dc40d6103a09f16a6ca773ca4e27f51', '1-578-208-75', 'SD');
INSERT INTO `Users` (`cap`, `address`, `city`, `email`, `idShoppingCart`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES (3157, '31334 Patr', 'Agnesberg', 'zulauf.brandi@example.com', '266598', 'Maeve', 'Hoppe', '8212dd73a3f94c7e5139e7e8fb2f5744', '375-945-4668', 'PA');

#
# TABLE STRUCTURE FOR: Orders
#

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `emailUsers` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cap` int(11) NOT NULL,
  `city` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `surname` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `province` char(6) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` char(10) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datePayment` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdList` bigint(20) NOT NULL,
  PRIMARY KEY (`emailUsers`,`datePayment`),
  UNIQUE KEY `FKcontain_ID` (`IdList`),
  CONSTRAINT `FKbuy` FOREIGN KEY (`emailUsers`) REFERENCES `Users` (`email`),
  CONSTRAINT `FKcontain_FK` FOREIGN KEY (`IdList`) REFERENCES `ListsItems` (`idList`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


#
# TABLE STRUCTURE FOR: Visitors
#

DROP TABLE IF EXISTS `Visitors`;

CREATE TABLE `Visitors` (
  `lastSeen` char(12) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idVisitor` char(8) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idShoppingCart` char(10) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idVisitor`),
  UNIQUE KEY `FKwish_ID` (`idShoppingCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('392461332', '1024', '621269297');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('830147847', '109', '77701');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1574654563', '121', '41975');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('2650719', '1336', '9072256');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1587021085', '1467', '30634787');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1539989632', '1613', '13300704');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('593857704', '169', '7200437');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('848158872', '1743', '17');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('826402271', '1774', '33135');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('480782258', '1792', '4710');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('726187851', '1804', '200');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('78841736', '1936', '461794559');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('366377087', '1985', '419841');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1598410905', '2276', '899996506');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1028936594', '2397', '23493');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('195012231', '2595', '15432496');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('408416756', '2746', '5');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('107452921', '2765', '18708306');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('883599315', '2849', '806927463');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1072941684', '2916', '37401');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1380388498', '3006', '8765720');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('239773091', '3013', '437580');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('613117408', '318', '33');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('422703205', '3267', '49');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1203209305', '3350', '7643062');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('765768535', '3404', '53443011');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('361112223', '3595', '155890489');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('571775737', '3648', '586968');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('852534163', '3878', '93');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('978330315', '3900', '866223212');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('714294017', '3953', '21');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1192213687', '3994', '4');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1027335827', '4096', '7333152');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('698190801', '4511', '81355');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('833963277', '4575', '6');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1463932339', '4580', '88428');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1558817942', '4622', '86');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('38766947', '474', '29');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('285913621', '501', '573');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('735534509', '5125', '67');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('371942389', '517', '9921');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1386659019', '5320', '68568814');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1328013572', '5323', '55');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1106976923', '5371', '573902030');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('127594888', '5462', '636');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1033001729', '5531', '7789');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('398923246', '5587', '8688');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('795347113', '567', '630828');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1405967658', '58', '83');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1272394308', '5827', '2');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('543352894', '5847', '68');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1603830845', '6041', '37755226');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1127100995', '6065', '482');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1050471407', '6226', '222149');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('534416260', '6491', '87199702');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('223399280', '6505', '1232182');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('927723054', '6532', '82333');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1366716118', '6541', '11384');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1467572376', '6591', '43');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1380181113', '6650', '927');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('168405839', '6738', '488');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('4110449', '7011', '19');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('465973732', '7118', '25821');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('695132173', '7135', '499208259');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1485012229', '7146', '1500570');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1251681592', '7262', '3580971');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('541593900', '7321', '7270955');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('585160061', '7412', '');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('219169489', '7427', '6532192');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('900178954', '7433', '178502');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('860494227', '7466', '431');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('7593260', '7537', '58919855');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('623324044', '7728', '858');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('42247765', '7771', '7872147');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1576407090', '7833', '9306526');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('44796110', '7880', '6446897');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('960359373', '7888', '44');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('205900647', '7960', '8077409');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('273745857', '8105', '3849875');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('104475589', '8413', '49689');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('525117728', '8425', '106');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('482281709', '8620', '48588243');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1288167052', '8717', '7');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1319086253', '8743', '221991');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('720657398', '8767', '772773311');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('57164198', '8783', '958');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('481008909', '9102', '3');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('792193042', '9134', '266598');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1279243618', '9171', '9496176');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1524292081', '9277', '19294');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('163202718', '9396', '48528');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('678028472', '9518', '912');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1181286988', '9552', '35');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1012593273', '9560', '257028117');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1511534925', '9590', '9');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('278006150', '9649', '980552');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('994994415', '9673', '12500345');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('212451940', '9676', '13557678');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('348993104', '968', '3828342');
INSERT INTO `Visitors` (`lastSeen`, `idVisitor`, `idShoppingCart`) VALUES ('1353448331', '9968', '29061');

CREATE DATABASE VEHICULOS_GENERAL;


USE VEHICULOS_GENERAL;

--tabla color
CREATE TABLE COLOR (
ID_COLOR INT PRIMARY KEY IDENTITY (1,1),
colores VARCHAR(15) not null,
);

--tabla tipo de vehiculo
CREATE TABLE TIPO_DE_VEHICULO(
ID_TIPO_VEHICULO INT PRIMARY KEY IDENTITY (1,1),
tipo_vehiculo VARCHAR(20) not null,
);

--tabla marca
CREATE TABLE MARCA(
ID_MARCA INT PRIMARY KEY IDENTITY (1,1),
nombre_marca VARCHAR(30) not null,
);

--tabla vehiculo fotos
CREATE TABLE VEHICULO_FOTOS(
ID_VEHICULOS_FOTOS INT PRIMARY KEY IDENTITY (1,1),
fotos VARCHAR(300) not null,
);


--tabla modelo
CREATE TABLE MODELO(
ID_MODELO INT PRIMARY KEY IDENTITY (1,1),
ID_MARCA INT not null,
ID_TIPO_VEHICULO INT not null,
modelo VARCHAR(30) not null, 
año INt not null,
caja_cambios VARCHAR(30) not null,
combustible VARCHAR(30) not null,
ID_VEHICULOS_FOTOS INT not null,
FOREIGN KEY (ID_MARCA) REFERENCES MARCA (ID_MARCA),
FOREIGN KEY (ID_TIPO_VEHICULO) REFERENCES TIPO_DE_VEHICULO (ID_TIPO_VEHICULO),
FOREIGN KEY (ID_VEHICULOS_FOTOS) REFERENCES VEHICULO_FOTOS (ID_VEHICULOS_FOTOS),
);

--tabla piezas
CREATE TABLE PIEZA(
ID_PIEZA INT PRIMARY KEY IDENTITY (1,1),
PIEZA_1 VARCHAR (20) not null,
PIEZA_2 VARCHAR (20) not null,
PIEZA_3 VARCHAR (20) not null,
PIEZA_4 VARCHAR (20) not null,
PIEZA_5 VARCHAR (20) not null,
PIEZA_6 VARCHAR (20) not null,
PIEZA_7 VARCHAR (20) not null,
PIEZA_8 VARCHAR (20) not null,
PIEZA_9 VARCHAR (20) not null,
PIEZA_10 VARCHAR (20) not null,
);

--tabla gantia
CREATE TABLE GARANTIA_PIEZA(
ID_GARANTIA_PIEZAS INT PRIMARY KEY IDENTITY (1,1),
plan_garantia VARCHAR (20)not null,
meses VARCHAR (20) not null,
ID_PIEZA INT not null,
FOREIGN KEY (ID_PIEZA) REFERENCES PIEZA (ID_PIEZA),
);

--TABLA DESCRICION DEL SEGURO
CREATE TABLE DESCRIPCION_SEGURO(
ID_DESCRIPCION_SEGURO INT PRIMARY KEY IDENTITY (1,1),
DESCRIPCION VARCHAR (600) not null,
); 

--tabla de seguro
CREATE TABLE SEGURO(
ID_PLAN_SEGURO INT PRIMARY KEY IDENTITY (1,1),
PLAN_SEGURO VARCHAR(20) not null,
ID_DESCRIPCION_SEGURO INT not null,
PRECIO_ANUAL_SEGURO FLOAT NOT NULL,
FOREIGN KEY (ID_DESCRIPCION_SEGURO) REFERENCES DESCRIPCION_SEGURO (ID_DESCRIPCION_SEGURO),
);

--tabla vehiculo
CREATE TABlE VEHICULO(
ID_VEHICULO INT PRIMARY KEY IDENTITY (1,1),
nombre_razon_social VARCHAR(40) not null,
direccion VARCHAR(70) not null,
telefono VARCHAR (20) not null,
ID_COLOR INT not null,
ID_MODELO INT not null,
matricula VARCHAR(30) not null,
cilindro INT not null,
chasis VARCHAR(25) not null,
motor VARCHAR(25) not null,
puertas INT not null,
pasajeros INT not null,
potencia VARCHAR (20) not null,
precio float not null,
ID_GARANTIA_PIEZAS INT not null,
ID_PLAN_SEGURO INT NOT NULL,
FOREIGN KEY (ID_COLOR) REFERENCES COLOR (ID_COLOR),
FOREIGN KEY (ID_MODELO) REFERENCES MODELO (ID_MODELO),
FOREIGN KEY (ID_GARANTIA_PIEZAS) REFERENCES GARANTIA_PIEZA (ID_GARANTIA_PIEZAS),
FOREIGN KEY (ID_PLAN_SEGURO) REFERENCES SEGURO (ID_PLAN_SEGURO),
);

/*
ALTER TABLE VEHICULO
ADD ID_GARANTIA_PIEZAS INT;

ALTER TABLE VEHICULO 
ADD FOREIGN KEY (ID_GARANTIA_PIEZAS) REFERENCES GARANTIA_PIEZA (ID_GARANTIA_PIEZAS);
*/

--ingresar datos en tabla color
INSERT INTO COLOR (colores) VALUES
('BLANCO'),
('GRIS'),
('NEGRO'),
('PLATA'),
('ROJO'),
('AZUL'),
('AMARILLO'),
('VERDE'),
('NARANJA');

--ingresar datos en tabla tipo_de_vehiculo
INSERT INTO TIPO_DE_VEHICULO(tipo_vehiculo) VALUES
('JEEPETA'),
('CARRO'),
('CAMIONETA'),
('FURGONETA'),
('DEPORTIVO');

--insertat datos en la tabla de marca
INSERT INTO MARCA (nombre_marca) VALUES 
('HONDA'),
('TOYOTA'),
('NISSAN'),
('KIA'),
('MAZDA'),
('HYUDAI'),
('LEXUS'),
('FORD');

--insertat datos en la tabla de fotos
INSERT INTO VEHICULO_FOTOS (fotos)VALUES
('https://static.carsbarter.es/newCars/images/Honda-Hr-v/high'),
('https://assets.nexuspointapex.co.uk/resize/2048/tenant_d9013b5a-4990-4f3e-beec-4e1fc85990eb/media/670934/honda-hr-v-15-h-i-mmd-advance-style-cvt-euro-6-ss-5dr-3-62b080936af74.jpg'),
('https://www.revista4x4.es/wp-content/uploads/2022/10/honda-hrv-elegance-blanco-exterior-03-1200x750.jpg'),
('https://cdn2.laclave.com.do/images/cut-anuncios/JEEPETA+HYUNDAI+TERRACAN+2007+VERDE+DIESEL+PIEL+4WD3+FILAS+355000-14473557451559688057-191x142.jpg'),
('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/348234-2021-honda-hr-v-e-hev-1643208643.jpg?crop=0.896xw:0.755xh;0.0782xw,0.245xh&resize=480:*'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3nEuw0LZPfZUZ2lD2-fq3cvK_184M4W-VWJ0I043e7XLtFDW7ehBLru-7si4zxzJ-28s&usqp=CAU'),
('https://img.remediosdigitales.com/ea8915/650_1000_honda-cr-v-black-edition-1/1366_2000.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10932482.jpg'),
('https://e7.pngegg.com/pngimages/10/707/png-clipart-2010-honda-civic-2011-honda-civic-car-honda-cr-v-honda-compact-car-glass.png'),
('https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2020/04/mejores-honda-rojos-historia-1909225.jpg'),
('https://static.cargurus.com/images/forsale/2021/03/07/06/12/2009_honda_civic-pic-5612513316213152230-1024x768.jpeg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10366586.jpg'),
('https://selfimotors.com/wp-content/uploads/2022/02/20220205_120307_resized.jpg'),
('https://carrosrd-media.s3.amazonaws.com/listings/30557/full_16298313720156755.jpg'),
('https://thumbs.dreamstime.com/z/camioneta-pickup-de-plata-58333835.jpg'),
('https://http2.mlstatic.com/D_NQ_NP_828965-MLM50587082479_072022-W.jpg'),
('https://www.conceptcarz.com/images/Honda/honda_ridgeline_manu-06_019.jpg'),
('https://thumbs.dreamstime.com/b/spada-blanco-de-honda-stepwgn-del-coche-microb%C3%BAs-rusia-kemerovo-jap%C3%B3n-cubierto-con-nieve-vista-delantera-en-concepto-bosque-145581203.jpg'),
('https://image-cdn.beforward.jp/large/201808/1046890/BF954382_a99b9c.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10790420.jpg'),
('https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/2018_Honda_Stepwgn.jpg/800px-2018_Honda_Stepwgn.jpg'),
('https://i.ytimg.com/vi/MvE1dKrWbbo/maxresdefault.jpg'),
('https://motor.elpais.com/wp-content/uploads/2017/06/2018-honda-civic-type-r-euro-spec-9.jpg'),
('https://es.latincaribbean.hondatechtutor.com/-/media/Tech-Tutor/Vehicle-Images/Civic-Coupe/2019-2020/MY20_Civic-Si_1500x612.ashx?h=612&w=1500&la=en&hash=45134F25748D83758FD39E7DF0484C78CD7777FB'),
('https://i.pinimg.com/originals/d3/20/f1/d320f11e7b60b53681e5e07c0c8bcb21.jpg'),
('https://toyotahonduras.com/asset/images/general/land-cruiser-prado/land-cruiser-prado_08.png'),
('https://www.toyotarp.com/images/ImagenesModelo/RAV4/360/36/images/sp/RAV4_SUPER_WHITE_2040_06.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2021/05/20210502-TOYOTA-LAND-CRUISER-300-RENDER-PORTADA.jpg'),
('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1lc300-1623311809.jpg?crop=1.00xw:0.893xh;0,0.0696xh&resize=640:*'),
('https://di-uploads-pod21.dealerinspire.com/toyotaofirving/uploads/2019/10/2020-Toyota-4Runner-TRD-Pro-Army-Green.png'),
('https://w0.peakpx.com/wallpaper/671/738/HD-wallpaper-toyota-land-cruiser-prado-offroad-2018-cars-suvs-white-prado-japanese-cars-toyota.jpg'),
('https://c8.alamy.com/compes/d28k1w/toyota-corolla-american-international-auto-show-naias-2013-los-coches-mas-importantes-presenta-sus-comapanies-d28k1w.jpg'),
('https://i.ytimg.com/vi/jF-_BU6yWyU/hqdefault.jpg'),
('https://i.ytimg.com/vi/-Cqr1riwhRQ/maxresdefault.jpg'),
('https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2019/07/toyota-prius-phev-2019_2.jpg'),
('https://toyota.cl/media/images/VISTA_S_FRONTAL_-_XLI_ROJODO.max-730x330.png'),
('https://www.buyatoyota.com/assets/img/vehicle-info/Avalon/2022/hero_image_avalon.png'),
('https://costarica-carrocarros.s3.amazonaws.com/uploads/picture/url/14632/big_with_watermark_cfd91e40-b0fe-4e6e-8a60-42d6de2c81cf.jpg'),
('https://cdn.motor1.com/images/mgl/qnr1Z/s1/lanzamiento-toyota-hilux-2020.webp'),
('https://deltacomercial.com.do/cdn/modelos/hilux/Hilux_Plata09.png'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Erzk6W7INNf2_wN1ojBKeXm2uxVYAM40dw&usqp=CAU'),
('https://deltacomercial.com.do/cdn/modelos/hiace-carga/95ad41b53e4954cc28cd53f44353cfb3.png'), 
('https://img.freepik.com/fotos-premium/furgoneta-comercial-verde-transportar-cargas-pequenas-ciudad-sobre-fondo-blanco-cuerpo-blanco-su-ilustracion-diseno-3d_101266-23929.jpg?w=2000'),
('https://deltacomercial.com.do/cdn/modelos/hiace-pasajeros/1f7227f5f72de30e9f4566590426ea52.png'),
('https://img.remediosdigitales.com/562ba8/toyota-86-motorpasion_01/1366_2000.jpg'),
('https://prod.pictures.autoscout24.net/listing-images/59d04a46-7108-496a-a4c6-6cfd0722a64b_ffabf544-2cf7-4cb9-ba7a-141463c9e066.jpg/250x188.webp'),
('https://static.motor.es/fotos-noticias/2020/11/toyota-gr86-lanzamiento-europa-202072939-1605783701_1.jpg'),
('https://img.remediosdigitales.com/67fe80/toyota-gr-supra-colores-usa-7-/450_1000.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjfpYj3Lt9-Qw_I6voHuNziIA4UmJ8RB46IVtY0gc4&s'),
('https://img2.freepng.es/20180414/baq/kisspng-2017-toyota-prius-prime-car-2018-toyota-prius-prim-toyota-5ad1c57607c024.5706571415236970140318.jpg'),
('https://motorgiga.com/cargadatos/fotos2/nissan/x-trail-black-edition-(suv-todocamino)-2016/1600px/delantera.jpg'),
('https://acnews.blob.core.windows.net/imgnews/large/NAZ_8b8548f2e84f439a9db3f9f77fd3dc96.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2020/11/Dise%C3%B1o-sin-t%C3%ADtulo-8-5.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/9985497.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10750223.jpg'),
('https://cdn2.laclave.com.do/images/cut-anuncios/Jeepeta+Nissan+Juke+2011+verde+Reci%C3%A9n+importada-149362005651210841-500x375-jpg.webp'),
('https://images.kavak.services/images/189127/EXTERIOR-frontSidePilotNear-1655739522913.jpeg?d=540x310'),
('https://images.hgmsites.net/med/sentra-se-r01-jpg_100225438_m.jpg'),
('https://img.autosblogmexico.com/crop/620x324/2019/11/06/n9a4xzuz/nissan-march-thumbnail-600x400-5b23.jpg'),
('https://upload.wikimedia.org/wikipedia/commons/7/76/2020_Nissan_Versa_SV_1.6L%2C_front_2.29.20.jpg'),
('https://ms-prd-nna.use.mediaserver.heliosnissan.net/iris/iris?bkgnd=%23F5F5F5&resp=jpg&quality=95&pov=E01&w=6667&h=6667&x=1328&y=1528&height=326&width=578&vehicle=8_B18&paint=KH3&fabric=G&brand=nisnna&sa=1_B,2_DR,4_A,5_L,6_D,7_Z,11_D,12_U,13_A,SHADOW_ON,PI_ON,PE_ON,2022'),
('https://es.nissanusa.com/content/dam/Nissan/global/vehicles/altima_teana/l33/2_minor_change/overview/17tdiuslhd-althelios101.jpg.ximg.l_full_m.smart.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2020/02/20200218-NISSAN-NAVARA-N-GUARD-FRONTIER-01.jpg'),
('https://i.pinimg.com/originals/d7/52/1f/d7521fc06e7f19c251929bbb4d1a0d60.jpg'),
('https://soloautos.li.csnstatic.com/soloautos/cars/private/8hew02ctpg0z4mke0773k3ne9.jpg?pxc_method=gravityfill&pxc_bgtype=self&height=725&width=1087'),
('https://i.pinimg.com/originals/49/c1/ed/49c1ed87e65a68a774da7caf974d0ec0.jpg'),
('https://cdn.motor1.com/images/mgl/pLklv/s1/4x3/critica-nissan-frontier-fabricada-en-argentina.webp'),
('https://thumbs.dreamstime.com/b/nissan-nv-49450489.jpg'),
('https://static.motor.es/fotos-noticias/2020/11/furgonetas-electricas-202072612-1604942263_1.jpg'),
('https://e7.pngegg.com/pngimages/951/779/png-clipart-2017-nissan-nv200-car-2014-nissan-nv200-2015-nissan-nv200-nissan-compact-car-van.png'),
('https://img.remediosdigitales.com/11cb79/nissan-gt-r-2017-000/450_1000.jpg'),
('https://es.nissanusa.com/content/dam/Nissan/us/experience_nissan/newsevents/skyline-to-gt-r/2018-Nissan-GTR-in-black.jpg.ximg.l_6_m.smart.jpg'),
('https://w0.peakpx.com/wallpaper/669/407/HD-wallpaper-nissan-370z-2017-cars-tuning-red-370z-japanese-cars-nissan.jpg'),
('https://img.remediosdigitales.com/b696e1/nissan-gtr-nismo-gt3-1/1366_2000.jpg'),
('https://cdn.motor1.com/images/mgl/YAW9nj/s3/kia-sorento-phev-prueba.jpg'),
('https://geekzilla.tech/home/wp-content/uploads/2022/11/Kia-EV6-1024x683.jpg'),
('https://acroadtrip.blob.core.windows.net/publicaciones-imagenes/Small/kia/sportage/mx/RT_PU_f4cf886a87c74b88900fb1cb7f28d0dc.webp'),
('https://latam-editorial.pxcrush.net/soloautos/general/editorial/kia-seltos-2023-09.jpeg'),
('https://cdn2.laclave.com.do/images/cut-anuncios/Jeepeta+Kia+Sorento+LX+2018+Reci%C3%A9n+Importada+con+asiento+en+Leather-165937449884333181-500x375-jpg.webp'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10958218.jpg'),
('https://carrosrd-media.s3.amazonaws.com/listings/31397/m_16341390790201036.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10642426.jpg'),
('https://acnews.blob.core.windows.net/imgnews/large/NAZ_71bb2a87b0054ff7967964522c98b5de.jpg'),
('https://e00-marca.uecdn.es/assets/multimedia/imagenes/2021/02/08/16128072100948.jpg'),
('https://image-cdn.beforward.jp/large/201806/998954/BF863913_b2a2dc.jpg'),
('https://renty.ae/cdn-cgi/image/format=auto,fit=contain/https://renty.ae/uploads/car/photo/l/silver_kia-cerato_2020_2048_main_970d80aa1fd549d5483488fc52ff173a.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2021/05/Portada-3-1.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2020/04/20200404-PICK-UP-KIA-PORTADA.jpg'),
('https://pbs.twimg.com/media/D_UIJMuXYAA8eQB.jpg'),
('https://blogmedia.dealerfire.com/wp-content/uploads/sites/457/2017/09/Sedona-Aurora-Black_O.png'), 
('https://images.patiotuerca.com/thumbs/w/260x153xC/amz_ptf_ecuador/3182022/1687709/o_o/1687709_1661981802746_948.jpg'),
('https://fotos.estaticosmf.com/fotos_jato/E/300/KIA/PREGIO/2006/4CC.JPG'),
('https://c8.alamy.com/comp/2AX3YMK/english-2005-kia-pregio-ct2-gs-van-photographed-in-cronulla-new-south-wales-australia-10-june-2010-own-work-osx-2AX3YMK.jpg'),
('https://img.remediosdigitales.com/a972bf/kia-stinger-mexico_2/450_1000.jpg'),
('https://www.autonocion.com/wp-content/uploads/2018/06/prueba-kia-stinger-ext-53.jpg'),
('https://www.kia.com/content/dam/kwcms/au/en/images/showroom/stinger/features/kia-stinger-grade-comparison-GT.webp'),
('https://cdn.hum3d.com/wp-content/uploads/Kia/139_Kia_Stinger_GT_CK_HQinterior_wEngine_2017/Kia_Stinger_GT_CK_HQinterior_wEngine_2017_1000_0001.jpg'),
('https://www.mazdausa.com/siteassets/vehicles/2023/cx-5/build--price/trims/34-jellies/2.5-s/2022-cx5-2-5s-jet-black-mica.png'),
('https://i.ytimg.com/vi/gPY6SJNAqFA/maxresdefault.jpg'),
('https://www.pruebaderuta.com/wp-content/uploads/2015/03/mazda-cx5-grand-touring-2.jpg'),

('https://www.mazdausa.com/siteassets/images/open-graph/mazda-cx-5-crossover-suv.jpg'),
('https://http2.mlstatic.com/D_NQ_NP_961425-MCO49988128595_052022-W.jpg'),
('https://cs.copart.com/v1/AUTH_svc.pdoc00001/PIX442/9d4c5d2a-4f73-4ee2-b025-2934936e234b.JPG'),
('https://http2.mlstatic.com/D_NQ_NP_871015-MCO52197427579_102022-O.webp'),
('https://carroya-commons.avaldigitallabs.com/2031188/2031188_2_l.jpg'),
('https://static.carfromjapan.com/spec_5c3708cd-59eb-4868-a727-b5914f2e2869_640_0'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10641062.jpg'),
('https://http2.mlstatic.com/D_NQ_NP_897209-MLV52385788102_112022-W.jpg'),
('https://w0.peakpx.com/wallpaper/870/783/HD-wallpaper-mazda-bt-50-2020-front-view-exterior-black-pickup-truck-new-black-bt-50-bt-50-double-cab-mazda.jpg'),
('https://cdn.wheel-size.com/automobile/body/mazda-bongo-brawny-2019-2021-1585234438.21.jpg'),
('https://image-cdn.beforward.jp/large/201703/740908/BF617772_0bd3a3.jpg'),
('https://images.milanuncios.com/api/v1/ma-ad-media-pro/images/0c354892-000f-45af-bd2c-a35c899cd5c5?rule=hw396_70'),
('https://image-cdn.beforward.jp/large/201701/710739/BF588563_54977e.jpg'),
('https://noticias.coches.com/wp-content/uploads/2020/05/Mazda-MX-5-RF-Dark-Red-Edition-2020-1.jpg'),
('https://noticias.coches.com/wp-content/uploads/2018/06/Mazda-MX-5-RF-prueba-8.jpg'),
('https://www.autopista.es/uploads/s1/76/70/83/7/asi-es-el-hyundai-tucson-2021.jpeg'),
('https://karros.com.do/wp-content/uploads/2021/06/Palisade-1-768x535.jpg'),
('https://p4.wallpaperbetter.com/wallpaper/698/343/807/hyundai-car-hyundai-veloster-vehicle-wallpaper-preview.jpg'),
('https://i.ytimg.com/vi/x8D_-yXOKv4/maxresdefault.jpg'),
('https://img.sm360.ca/images/inventory/groupe-trevors/hyundai/santa-fe-sport/2017/27488398/27488398_04876_2017-hyundai-santa-fe-sport_001.jpg'),
('https://www.hyundai.com.mx/content/dam/hyundaimx/mx/image/modelos/grand-i10-sd/grand-i10-sedan-gls-tm-625X300.jpg'),
('https://www.diariomotor.com/imagenes/picscache/750x/hyundai-genesis-coupe-r-spec-directo-12_750x.jpg'),
('https://img.remediosdigitales.com/4e668c/hyundai-i20-2018-06/1366_2000.jpg'),
('https://i.pinimg.com/originals/4d/4d/46/4d4d46bceed9382019a416f5e6063a2d.png'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2017/11/20171120-HYUNDAI-IONIQ-CARRO-DEL-ANO-EN-EL-MUNDO-PARA-LAS-MUJERES-01.jpg'),
('https://acnews.blob.core.windows.net/imgnews/large/NAZ_628ecc7dceb44f3cbc8d9c24348b5183.jpg'),
('https://www.autofacil.es/wp-content/uploads/2021/05/preview_f7c7b5178cc53.jpg'),
('https://queautocompro.com/wp-content/uploads/2021/06/hyundaisantacruz202237.jpg'),
('https://latam-editorial.pxcrush.net/soloautos/general/editorial/hyundai_santa_cruz_renders_03.png?pxc_width=900&pxc_height=600&pxc_method=crop&pxc_format=auto'),
('https://i.ytimg.com/vi/fawAiLuRL8Y/maxresdefault.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkweV0-61TYjqvln4KuxIvVzp9c7FGLGRuOC2uHeaRFHkxwBDV_858RaFXtO0SurQ1JA&usqp=CAU'),
('https://www.diariomotor.com/imagenes/picscache/750x/hyundai-staria-portada-6299123559418.jpeg_750x.jpg'),
('https://acroadtrip.blob.core.windows.net/catalogo-imagenes/l/RT_V_82d123f7dd9c481cbc89ced3454170b0.jpg'),
('https://acnews.blob.core.windows.net/imgnews/large/NAZ_cf9e27a8daa441949686ed46fe43c758.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS100ebT4udlqFh-i_flY9mq_QKN53XgW2PgXGcJQQxrbuPAp89rJT5QRqJ94wowC9-ULI&usqp=CAU'),
('https://www.automocionpere.com/storage/app/uploads/public/vehiculos/1833/ficha01.jpg'),
('https://i.pinimg.com/originals/c3/1e/98/c31e989b922b3f55404a1766b74331f6.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10762752.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10904016.jpg'),
('https://www.asocivu.com/image/product/60fb3179d81fa.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/10925835.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/11004050.jpg'),
('https://img.supercarros.com/AdsPhotos/500x500/0/9732931.jpg'),
('https://cs.copart.com/v1/AUTH_svc.pdoc00001/PIX479/37a802e5-2eb5-456c-ac70-924bc96ecbd4.JPG'),
('https://i.pinimg.com/originals/c4/6a/22/c46a223a4c7908418c654ef2db8863d4.jpg'),
('https://www.km77.com/media/fotos/lexus_is_2006_2030_1.jpg'),
('https://i.gaw.to/content/photos/49/05/490556-lexus-is-500-2022-renaissance-d-un-dinosaure.jpeg'),
('https://st1.uvnimg.com/3b/b3/e9cdda4a4361a4347dfb816173ae/2016_Lexus_IS_200t_F_SPORT_001_035E4B2ABCC13C29CC9459550826CF1A308ED265.jpg'),
('https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/480/public/media/image/2015/09/456111-asi-seria-pick-lexus.jpg?itok=EDyuH7Oj'),
('https://2020pickuptrucks.com/wp-content/uploads/2019/01/2020-Lexus-Pickup-Truck-review.jpg'),
('https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/lexus-hilux-ute-red-2016.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_mWxvWE6zkY__zk9Uv1XF6Utg-4Hz9AQBkQqYkdaFNG-SEG4GQkWBMlDETIkJ0yEBiOM&usqp=CAU'),
('https://spirotours.com/wp-content/uploads/2019/04/lexus-pickups-2021-interior-concept-photo-picture.jpg'),
('https://coolpickuptrucks.com/wp-content/uploads/2017/12/Lexus-Pickup-Truck-Concept.jpg'),
('https://lacddam.lexusasia.com/lexus-v3-blueprint/price-list/lexus-ux.jpg'),
('https://editorials.autotrader.ca/media/76055/2017-lexus-lc-500-01-jb.jpg?anchor=center&mode=crop&width=1920&height=1080&rnd=131256861953130000'),
('https://img.remediosdigitales.com/d80bc3/lexus-lc-yellow-edition-2-/450_1000.jpg'),
('https://img.remediosdigitales.com/d80bc3/lexus-lc-yellow-edition-2-/450_1000.jpg'),
('https://www.diariomotor.com/imagenes/picscache/1440x655c/lexus-lfa-prueba-03-dm-700px_1440x655c.jpg'),
('https://img.automexico.com/2018/08/17/b09YwtPD/ford-explorer-2018-a-af1e.jpg'),
('https://c8.alamy.com/compes/bew4f2/2010-ford-escape-xlt-en-rojo-vista-del-angulo-frontal-bew4f2.jpg'),
('https://www.marketplace.com.do/oc-content/uploads/389/152030.jpg'),
('https://www.motor.com.co/__export/1645131831490/sites/motor/img/2022/02/17/20220217_030351261_61c33821a1009_r_1640199531324_236-369-2515-1508.jpeg_346753400.jpeg'),
('https://i.ytimg.com/vi/9M6hNBKgEDc/hqdefault.jpg'),
('https://soymotor.com/sites/default/files/styles/mega/public/imagenes/noticia/2015-ford-focus-sport-4.jpg?itok=q3LYlGHd'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2017/11/20171126-FORD-FIESTA-2018-BRASIL-ARGENTINA-CHILE-PERU-01.jpg'),
('https://www.elcarrocolombiano.com/wp-content/uploads/2016/06/20151127-FORD-FIESTA-TITANIUM-MANUAL-01.jpg'),
('https://carrosrd-media.s3.amazonaws.com/listings/42427/m_16656674650186754.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRwj2i8m-kiagJckTl4qolFR2ASJ_bK1jkAcQ34lcdvcBOqSh3tdxf8ZKVqwQ3s5DL37g&usqp=CAU'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLCCZ6wi68JeBsaASW4eAu8468hpmp3WGioPtT2siKO7uj6sXlBdiNNryy2kK4fmq_Mpw&usqp=CAU'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1YQWVM_NHL5zgKuCNCg7Sk1ErGczZtyagSi8PPRpCDQ7qknrrMwUTwFIy89WHTVh2rQ&usqp=CAU'),
('https://d2uf4zk8t94n2d.cloudfront.net/23335/_DSC1021.jpg'),
('https://www.tuningblog.eu/wp-content/uploads/2019/12/MS-RT-Ford-Transit-R185-Limited-Edition-Widebody-Tuning-2.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_VmTRp4z2WtJhSTWiJGItjBb7JA_d0DZNinAshOBOXFAStJKldmQzqXe5y8df8LUfh4&usqp=CAU'),
('https://noticias.coches.com/wp-content/uploads/2019/10/8f6702fbb6269524db65b0ff301dbad6.jpg'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsaoRTSgbrkiHu4tig-KhBo9dpBx66nWITsjD3gzPZRR4TFALbr1YK9jEbH2wWWDtX1Wk&usqp=CAU'),
('https://img.remediosdigitales.com/906dbb/captura-de-pantalla-2016-04-13-a-la-s-09.58.08/450_1000.jpg'),
('https://static.motor.es/fotos-noticias/2019/08/ford-mustang-shelby-gt500-2020-sorteo-201960033-1566039723_1.jpg'),
('https://www.diariomotor.com/imagenes/picscache/375x250c/portada-ficha-ford-gt_375x250c.jpg'),
('https://upload.wikimedia.org/wikipedia/commons/8/8c/White_Ford_Mustang_VI_fr.jpg');
 




--insertar datos en la tabla modelo
INSERT INTO MODELO (ID_MARCA, ID_TIPO_VEHICULO, modelo, año, caja_cambios, combustible, ID_VEHICULOS_FOTOS) VALUES
--honda jeepeta
('1','1','HR-V MMD ELEGANCE','2021','AUTOMATICO','HIBRIDO','1'),
('1','1','HRV-V MMD ADVANCE','2021','AUTOMATICO','HIBRIDO','2'),
('1','1','HRV-V ELEGANCE','2018','MANUAL','GASOLINA','3'),
('1','1','EXECUTIVE','2015','AUTOMATICA','GASOLINA','4'),
('1','1','HR-V MMD CONFORT','2020','MANUAL','HIBRIDA','5'),
('1','1','CR-V MMBD TEC','2017','AUTOMATICA','GASOLINA','6'),
('1','1','CR-V MMB VTEC','2018','AUTOMATICO','GASOLINA','7'),
--honda CARRO
('1','2','CIVI SEDAN','2022','MANUAL','HIBRIDA','8'),
('1','2','CIVI CR-V','2020','AUTOMATICA','HIBRIDA','9'),
('1','2','CIVI','2020','MANUAL','HIBRIDA','10'),
('1','2','CIVI LX-S','2019','AUTOMACO','GASOLINA','11'),
('1','2','CIVI CRV-V','2019','AUTOMATICO','GASOLINA','12'),
('1','2','CIVI LX-S','2018','MANUAL','GASOLINA','13'),
('1','2','CIVI LX-V','2018','GASOLINA','GASOLINA','14'),
--honda CAMIONETA
('1','3','SFAB-SG','2015','AUTOMATIO','GASOLINA','15'),
('1','3','HONDA KLF','2011','AUTOMATICA','GASOLINA','16'),
('1','3','VHA-HG','2014','MANUAL','HIBRIDA','17'),
--honda FURGONETA
('1','4','STEP WGN','2015','AUTOMATICA','GASOLINA','18'),
('1','4','STEP WGN','2020','MANUAL','HIBRIDA','19'),
('1','4','N-VAN','2017','AUTOMATICA','GASOLINA','20'),
('1','4','STEP WGNMMB VTEC','2018','AUTOMATICO','GASOLINA','21'),
--honda DEPORTIVO
('1','5','CIVI NSX','2022','MANUAL','HIBRIDA','22'),
('1','5','CIVI TIPE R','2020','AUTOMATICA','HIBRIDA','23'),
('1','5','CIVI SI','2020','MANUAL','GASOLINA','24'),
('1','5','CIVI SI','2019','MANUAL','GASOLINA','25'),


--TOYOTA JIPETTA
('2','1','PRADO','2021','AUTOMATICO','HIBRIDA','26'),
('2','1','RAVJ','2020','AUTOMATICA','HIBRIDA','27'),
('2','1','LAND CRUISER','2019','MANUAL','GASOLINA','28'),
('2','1','LAND CRUISER','2019','AUTOMACO','GASOLINA','29'),
('2','1','RUSH','2017','AUTOMATICO','GASOLINA','30'),
('2','1','PRADO','2018','MANUAL','GASOLINA','31'),
--toyota CARRO
('2','2','TOYOTA COROLLA','2016','AUTOMATIO','GASOLINA','32'),
('2','2','TOYOTA AVALON','2020','AUTOMATICA','GASOLINA','33'),
('2','2','TOYOTA COROLLA','2019','AUTOMATICO','HIBRIDA','34'),
('2','2','TOYOTA PRIUS','2022','AUTOMATIO','HIBRIDO','35'),
('2','2','TOYOTA HYBRID','2022','AUTOMATICA','GASOLINA','36'),
('2','2','TOYOTA AVALON','2017','MANUAL','HIBRIDA','37'),
--toyota FURGONETA
('2','3','HIACE CFD','2022','MANUAL','GASOLINA','38'),
('2','3','HIACE','2015','MANUAL','GASOLINA','39'),
('2','3','HIACE FGE','2017','MANUAL','GASOLINA','40'),
('2','3','HIACE 453','2019','AUTOMACO','GASOLINA','41'),
--toyota CAMIONETA
('2','4','HILUX SMGB','2022','AUTOMATIO','GASOLINA','42'),
('2','4','HILUX RJ5','2020','AUTOMATICA','GASOLINA','43'),
('2','4','HILUX VHA','2020','MANUAL','HIBRIDA','44'),
--toyota DEPORTIVO
('2','5','GR86','2017','MANUAL','GASOLINA','45'),
('2','5','SUPRA','2020','MANUAL','GASOLINA','46'),
('2','5','GR86','2020','MANUAL','GASOLINA','47'),
('2','5','GR SUPRA','2019','MANUAL','GASOLINA','48'),
('2','5','PRIUS','2022','AUTOMATIO','GASOLINA','49'),
('2','5','PRIUS PRIMA','2020','AUTOMATICA','GASOLINA','50'),

--NISSAN JIPETA
('3','1','X-TALL','2015','MANUAL','GASOLINA','51'),
('3','1','MURANO','2019','AUTOMATICO','HIBRIDO','52'),
('3','1','LEAF','2017','MANUAL','HIBRIDO','53'),
('3','1','KICKS','2019','AUTOMATICO','GASOLINA','54'),
('3','1','SENTRA','2020','AUTOMATIO','GASOLINA','55'),
('3','1','MURANO','2020','MANUAL','HIBRIDO','56'),
--nissan CARRO
('3','2','MAXIMA','2017','AUTOMATICO','GASOLINA','57'),
('3','2','ALTIMA','2020','AUTOMATICO','GASOLINA','58'),
('3','2','MARCH','2020','AUTOMATICO','HIBRIDO','59'),
('3','2','VERSA','2019','MANUAL','GASOLINA','60'),
('3','2','SENTRA','2022','AUTOMATIO','GASOLINA','61'),
('3','2','ALTIMA','2020','AUTOMATICA','GASOLINA','62'),
--nissan FURGONETA
('3','3','NV300','2019','MANUAL','HIBRIDO','63'),
('3','3','NV200','2020','AUTOMATICO','HIBRIDO','64'),
('3','3','TOWNSTAR','2021','MANUAL','GASOLINA','65'),
('3','3','URVA','2018','MANUAL','GASOLINA','66'),
('3','3','TOWNSTAR COMBI','2022','AUTOMATIO','HIBRIDO','67'),
--nissan CAMIONETA
('3','4','NP300 FRONTIER','2017','MANUAL','GASOLINA','68'),
('3','4','CROSSOVERS','2020','AUTOMATICO','HIBRIDA','69'),
('3','4','SUV','2020','MANUAL','GASOLINA','70'),
--nissan DEPORTIVO
('3','5','CT-R','2021','MANUAL','GASOLINA','71'),
('3','5','CT-R','2020','AUTOMATICO','GASOLINA','72'),
('3','5','370S','2022','MANUAL','GASOLINA','73'),
('3','5','NISMO','2017','MANUAL','GASOLINA','74'),



--kia jipetta
('4','1','SONETO','2019','MANUAL','HIBRIDO','75'),
('4','1','MINISOU','2020','AUTOMATICO','GASOLINA','76'),
('4','1','SPORTAGE LX','2020','MANUAL','HIBRIDO','77'),
('4','1','SELTOS','2021','MANUAL','HIBRIDO','78'),
('4','1','PRIUS','2020','AUTOMATIO','GASOLINA','79'),
('4','1','SORENTO LIMITED','20222','AUTOMATICA','HIBRIDO','80'),
--kia CARRO
('4','2','KS','2019','MANUAL','GASOLINA','81'),
('4','2','SOUL','2018','MANUAL','HIBRIDO','82'),
('4','2','OPTIMA','2020','MANUAL','GASOLINA','83'),
('4','2','GR SUPRA','2017','MANUAL','GASOLINA','84'),
('4','2','KS-GLP','2022','AUTOMATIO','GASOLINA','85'),
('4','2','CERATO','2021','AUTOMATICA','HIBRIDO','86'),
--kia CAMIONETA
('4','3','MANGUN','2017','AUTOMATICO','HIBRIDO','87'),
('4','3','GYA-VF','2020','MANUAL','GASOLINA','88'),
--kia FURGONETA
('4','4','K2700','2017','AUTOMATICO','GASOLINA','89'),
('4','4','BONGO','2020','MANUAL','HIBRIDO','90'),
('4','4','PREGIO','2019','AUTOMATICO','GASOLINA','91'),
('4','4','PREGIO 2.5TCL','2020','MANUAL','HIBRIDO','92'),
('4','4','CARENS','2022','AUTOMATIO','GASOLINA','93'),
--kia DEPORTIVO
('4','5','STRIGER','2022','MANUAL','GASOLINA','94'),
('4','5','GTS','2020','AUTOMATICO','GASOLINA','95'),
('4','5','GT4STRINGER','2020','MANUAL','GASOLINA','96'),
('4','5','STIGER GT','2021','MANUAL','GASOLINA','97'),


--MAZDA-JEEPETTA
('5','1','CR-5','2017','MANUAL','GASOLINA','98'),
('5','1','CR9','2022','AUTOMATICO','GASOLINA','99'),
('5','1','X-5','2021','MANUAL','HIBRIDO','100'),
('5','1','CX-5GT','2018','AUTOMATICO','GASOLINA','101'),
('5','1','X39','2020','AUTOMATICO','GASOLINA','102'),
--mazda CARRO
('5','2','CX-5','2019','AUTOMATICO','GASOLINA','103'),
('5','2','MAZDA-5','2021','AUTOMATICO','HIBRIDO','104'),
('5','2','MAZDA-4','2018','MANUAL','GASOLINA','105'),
('5','2','DEMIO','2022','AUTOMATICO','GASOLINA','106'),
--mazda CAMIONETA
('5','3','BT-50','2012','AUTOMATICO','GASOLINA','107'),
('5','3','BT-55','2017','MANUAL','HIBRIDO','108'),
('5','3','KLSP-4','2022','AUTOMATICO','HIBRIDO','109'),
--mazda FURGONETA
('5','4','BRAWNY VAN','2020','AUTOMATICO','GASOLINA','110'),
('5','4','AZ-WAGOH','2022','MANUAL','GASOLINA','111'),
('5','4','DX2.0P-T','2019','AUTOMATICO','HIBRIDO','112'),
('5','4','BIANTE','2022','AUTOMATICO','GASOLINA','113'),
--mazda DEPRTIVO
('5','5','MX-5 MIATA','2021','MANUAL','GASOLINA','114'),
('5','5','MX-5 MIATA RF','2022','MANUAL','GASOLINA','115'),


--HYUDAI JEEPETA
('6','1','TUCSON','2017','AUTOMATICO','GASOLINA','116'),
('6','1','PALISADE','2022','MANUAL','GASOLINA','117'),
('6','1','VELCESER','2021','AUTOMATICO','HIBRIDO','118'),
('6','1','I49','2018','AUTOMATICO','GASOLINA','119'),
('6','1','SANTA FE','2020','MANUAL','GASOLINA','120'),
-- hyuday CARRO
('6','2','I10','2020','AUTOMATICO','GASOLINA','121'),
('6','2','GENESIS','2022','AUTOMATICO','GASOLINA','122'),
('6','2','I20','2021','AUTOMATICO','GASOLINA','123'),
('6','2','SONATA','2022','AUTOMATICO','GASOLINA','124'),
('6','2','BAYON','2020','AUTOMATICO','GASOLINA','125'),
--hyudai CAMIONETA
('6','3','SANTA FE','2022','MANUAL','GASOLINA','126'),
('6','3','SANTA FE','2019','AUTOMATICO','HIBRIDO','127'),
('6','3','PICK-UP','2019','AUTOMATICO','GASOLINA','128'),
('6','3','KJSI-S','2021','MANUAL','HIBRIDO','129'),
--hyudai FURGONETA
('6','4','H-350','2017','MANUAL','GASOLINA','130'),
('6','4','H1 TRAVEL','2019','AUTOMATICO','GASOLINA','131'),
('6','4','STARIA','2021','MANUAL','HIBRIDO','132'),
('6','4','H1','2018','AUTOMATICO','HIBRIDO','133'),
--hyudai DEPOTIVO
('6','5','PROPHECY','2022','MANUAL','GASOLINA','134'),
('6','5','ELETA-N','2022','AUTOMATICO','GASOLINA','135'),
('6','5','COUPE','2021','MANUAL','GASOLINA','136'),
('6','5','VELOSTER','2021','MANUAL','GASOLINA','137'),



--lexus JEEPETA
('7','1','Rx 350','2020','MANUAL','GASOLINA','138'),
('7','1','LX 570','2022','AUTOMATICO','GASOLINA','139'),
('7','1','RX 350F sport ','2021','MANUAL','HIBRIDO','140'),
('7','1','GX 470','2021','MANUAL','GASOLINA','141'),
('7','1','LX 470','2017','MANUAL','HIBRIDO','142'),
('7','1','LX 360','2019','AUTOMATICO','HIBRIDO','143'),
--lexus CARRO
('7','2','ES 350','2022','MANUAL','GASOLINA','144'),
('7','2','LEXUS IS','2022','AUTOMATICO','GASOLINA','145'),
('7','2','LESUS IS250','2021','MANUAL','HIBRIDO','146'),
('7','2','LEXUS IS500','2021','MANUAL','GASOLINA','147'),
('7','2','LS','2022','MANUAL','HIBRIDO','148'),
--lexus CAMIONETA
('7','3','LEXUS 350','2022','MANUAL','GASOLINA','149'),
('7','3','LX 577','2022','AUTOMATICO','GASOLINA','150'),
('7','3','Ultra 430','2021','MANUAL','HIBRIDO','151'),
('7','3','MD43','2021','MANUAL','GASOLINA','152'),
--lexus FURGONETA
('7','4','Rx 350','2010','MANUAL','GASOLINA','153'),
('7','4','LX 570','2022','AUTOMATICO','GASOLINA','154'),
('7','4','RX 350F sport ','2021','MANUAL','HIBRIDO','155'),
--lexus DEPORTIVO
('7','5','LC','2022','MANUAL','GASOLINA','156'),
('7','5','LC 50','2022','AUTOMATICO','GASOLINA','157'),
('7','5','LC 500h','2021','MANUAL','GASOLINA','158'),
('7','5','LFA','2021','MANUAL','GASOLINA','159'),


--ford JEEPETA
('8','1','FORD EXPLORE','2022','AUTOMATICO','GASOLINA','160'),
('8','1','FORD ESCAPE','2021','MANUAL','HIBRIDO','161'),
('8','1','ESCAPE XLT','2021','MANUAL','GASOLINA','162'),
('8','1','ESCAPE SEL','2022','MANUAL','HIBRIDO','163'),
('8','1','Escape titaniun','2022','AUTOMATICO','HIBRIDO','164'),
--ford CARRO
('8','2','FOCUS','2020','MANUAL','GASOLINA','165'),
('8','2','SCAPE','2019','AUTOMATICO','GASOLINA','166'),
('8','2','FIESTA TITANIUN','2021','MANUAL','HIBRIDO','167'),
('8','2','FUSION','2021','MANUAL','GASOLINA','168'),
--ford CAMIONETA
('8','3','MAVERICK','2020','MANUAL','GASOLINA','169'),
('8','3','F-150','2022','AUTOMATICO','GASOLINA','170'),
('8','3','RAPTOR','2021','MANUAL','HIBRIDO','171'),
('8','3','PIckup','2021','MANUAL','GASOLINA','172'),
--ford FURGONETA
('8','4','R 185','2022','MANUAL','HIBRIDO','173'),
('8','4','CUSTOM-MHEY','2022','AUTOMATICO','GASOLINA','174'),
('8','4','TRANSIT','2021','MANUAL','HIBRIDO','175'),
('8','4','TOURNEO','2021','MANUAL','HIBRIDO','176'),
--ford DEPORTIVO
('8','5','GT','2019','MANUAL','GASOLINA','177'),
('8','5','SHELBY GT','2022','AUTOMATICO','GASOLINA','178'),
('8','5','GT40','2017','MANUAL','GASOLINA','179'),
('8','5','MUSTANG','2021','MANUAL','GASOLINA','180');

SELECT *FROM SEGURO

--ingresar datos a la tabla pieza
INSERT INTO PIEZA (PIEZA_1, PIEZA_2, PIEZA_3, PIEZA_4, PIEZA_5, PIEZA_6, PIEZA_7, PIEZA_8, PIEZA_9, PIEZA_10) VALUES 
('faros','amortiguadores','bujia','retrobisores','guarda lodo','bateria','plumilla','filtro aceite','filtro aire','correa'),
('cadena','dalin guia','biela','damper','bomba de agua','manguera','vonvita EGR','mascara','espejos','bobina'),
('bujia','guarda lodo','filtro aire','masxara','plumlla','bateria','cadena','damper','filtro aire','bomba de agua'),
('filtro de bencina','eje cardan','cruseta','brazo pitman','bieleta','patin tensor','biela','camisa','ventilador','sensor TPS');


--ingresar datos a la tabla de garantia
INSERT INTO GARANTIA_PIEZA (plan_garantia, meses, ID_PIEZA) VALUES
('PLAN-A','6 meses','3'),
('PLAN-B','12 meses','1'),
('PLAN-C','14 meses','2'),
('PLAN-D','18 meses','1'),
('PLAN-E','24 meses','4'),
('PLAN-F','28 meses','3'),
('PLAN-G','36 meses','1'),
('PLAN-H','44 meses','4'),
('PLAN-I','28 meses','2');


--ingresar datos a la tabla descripcion
INSERT INTO DESCRIPCION_SEGURO (DESCRIPCION) VALUES
('SIN BENEFICIOS'),
('RC BIENES, RC PERSONAS, RC POR FALLECIMIENTO, ASISTENCIA LEGAL Y FIANZA, RC CARRETERAS, GASTOS MEDICOS OCUPANTES, AUXILIO VIAL, EXTENSION RC, RC USA' ),
('RC BIENES, RC PERSONAS, RC POR FALLECIMIENTO, ASISTENCIA LEGAL Y FIANZA, RC CARRETERAS, GASTOS MEDICOS OCUPANTES, AUXILIO VIAL, ROBO TOTAL, DAÑOS A TERCEROS, EXTENSION RC, AUXILIO VIAL PLUS, PRIMAX, SEGURO DE LLANTAS, AUTO SUSTITUTO, ROBO PARCIAL, EQUIPO ESPECIAL, RC USA'),
('RC BIENES, RC PERSONAS, RC POR FALLECIMIENTO, ASISTENCIA LEGAL Y FIANZA, RC CARRETERAS, GASTOS MEDICOS OCUPANTES, AUXILIO VIAL, ROBO TOTAL, DAÑO MATERIALES + CRISTALES, DAÑOS A TERCEROS, EXTENSION RC, AUXILIO VIAL PLUS, PRIMAX, SEGURO DE LLANTAS, AUTO SUSTITUTO, ROBO PARCIAL, EQUIPO ESPECIAL, RC USA'),
('RC BIENES, RC PERSONAS, RC POR FALLECIMIENTO, ASISTENCIA LEGAL Y FIANZA, RC CARRETERAS, GASTOS MEDICOS OCUPANTES, AUXILIO VIAL, ROBO TOTAL, DAÑO MATERIALES + CRISTALES, DAÑOS A TERCEROS, EXTENSION RC, AUXILIO VIAL PLUS, PRIMAX, SEGURO DE LLANTAS, AUTO SUSTITUTO, ROBO PARCIAL, EQUIPO ESPECIAL, RC USA');


--insertar datos a la tabla seguro
INSERT INTO SEGURO (PLAN_SEGURO, ID_DESCRIPCION_SEGURO, PRECIO_ANUAL_SEGURO) VALUES
('SIN SEGURO','1','0.000'),
('ESENCIAL','2','5000.00'),
('BASICO','3','10000.00'),
('AMPLIO','4','20000.00'),
('AMPLIO PLUS','5','25000.00');


select *from vehiculo
--ingresar datos en la tabla vehiculo
INSERT INTO VEHICULO (nombre_razon_social, direccion, telefono, ID_COLOR, ID_MODELO, matricula, cilindro, chasis, motor, puertas, pasajeros, potencia, precio, ID_GARANTIA_PIEZAS, ID_PLAN_SEGURO ) VALUES 
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','1','F1511927','4','HB1JBAT0837648573','QF23748949I','4','5','3100CV','2500000.00','3','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','2','G15651','4','KB1JBAT3092887340','JG27646827Q','4','5','2200CV','2100000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','3','H154900','4','FS1JBAT380103839','LÑ27392090D','4','3','4200CV','3500000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','4','J154957','4','SD1JBA46517828730','UX25830928Y','4','4','3200CV','4000000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','5','K154903','4','DQ1JBAT6487297836','XX27397290A','4','5','1200CV','450000.00','1','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','6','L154951','4','QQ1JBAT9838509344','ND26283654Z','4','4','3200CV','250000.00','8','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','7','T154903','4','LP1JBA63791037477','BF25739625X','4','4','2000CV','250000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','8','Y154873','4','JZ1JBAT9586773925','TH28476253P','4','3','4200CV','250000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','9','S159431','4','US1JBAT32Z0025661','HL25215700V','4','5','3200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','10','W158131','4','OD1JBAT9687394985','ZP25215700M','4','5','2500CV','250000.00','7','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','11','Q154942','4','WK1JBAT859498318','FD25279178H','4','5','1200CV','550000.00','4','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','12','K155970','4','LA1JBA74693082582','OP25830262G','4','4','3000CV','650000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','13','P155532','4','GP1JBAT32Z04759238','MS25732098F','4','5','2800CV','150000.00','9','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','14','F125927','4','HB1JBAT0825648573','QF23725949I','4','3','3100CV','250000.00','3','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','15','G12551','4','KB1JBAT3092587340','JG27642527Q','4','5','2200CV','210000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','16','H125900','4','FS1JBAT382503839','LÑ27392590D','4','3','4200CV','35000.00','6','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','17','J125957','4','SD1JBA46525828730','UX25825928Y','4','4','3200CV','40000.00','1','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','18','K125903','4','DQ1JBAT6425297836','XX27325290A','4','5','1200CV','450000.00','8','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','19','L152551','4','QQ1JBAT9825509344','ND26225654Z','4','4','3200CV','250000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','20','T152503','4','LP1JBA63725037477','BF25725625X','4','4','2000CV','250000.00','6','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','21','Y152573','4','JZ1JBAT9525773925','TH28425253P','4','3','4200CV','250000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','22','S152531','4','US1JBAT3225025661','HL25225700V','2','5','3200CV','550000.00','3','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','23','W152531','4','OD1JBAT9625394985','ZP25425700M','2','5','2500CV','250000.00','1','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','24','Q152542','4','WK1JBAT852598318','FD25272578H','2','5','1200CV','550000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','25','K152570','4','LA1JBA74625082582','OP25825262G','2','4','3000CV','650000.00','9','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','26','P152532','4','GP1JBAT32254759238','MS25252098F','4','5','2800CV','150000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','27','F156727','4','HB1JBAT0837678573','QF237467949I','4','3','3100CV','250000.00','1','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','28','G15671','4','KB1JBAT3092867340','JG27646677Q','4','5','2200CV','210000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','29','H156700','4','FS1JBAT380167839','LÑ27392670D','4','3','4200CV','35000.00','9','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','30','J156757','4','SD1JBA46517678730','UX25836728Y','4','4','3200CV','40000.00','6','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','31','K156703','4','DQ1JBAT6487677836','XX27396790A','4','5','1200CV','450000.00','1','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','32','L156751','4','QQ1JBAT9838679344','ND26286754Z','4','4','3200CV','250000.00','6','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','33','T156703','4','LP1JBA63791677477','BF25736725X','4','4','2000CV','250000.00','1','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','34','Y156773','4','JZ1JBAT9586673925','TH2846753P','4','3','4200CV','250000.00','4','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','35','S156731','4','US1JBAT32Z0675661','HL25267700V','4','5','3200CV','550000.00','2','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','36','W156731','4','OD1JBAT9687674985','ZP25267700M','4','5','2500CV','250000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','37','Q156742','4','WK1JBAT859467318','FD25276778H','4','5','1200CV','550000.00','5','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','38','K156770','4','LA1JBA74693672582','OP25867262G','4','4','3000CV','650000.00','8','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','39','P156732','4','GP1JBAT32Z06759238','MS25672098F','4','5','2800CV','150000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','40','F134927','4','HB1JBAT0347648573','QF23348949I','4','3','3100CV','250000.00','7','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','41','G13451','4','KB1JBAT3034887340','JG27634827Q','4','5','2200CV','210000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','42','H134900','4','FS1JBAT334103839','LÑ27334090D','4','3','4200CV','350000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','43','J134957','4','SD1JBA46347828730','UX258340928Y','4','4','3200CV','400000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','43','K134903','4','DQ1JBAT6347297836','XX27334290A','4','5','1200CV','450000.00','1','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','45','L134951','4','QQ1JBAT9348509344','ND26234654Z','2','4','3200CV','250000.00','2','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','46','T134903','4','LP1JBA63341037477','BF25734625X','2','4','2000CV','250000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','47','Y134873','4','JZ1JBAT9346773925','TH28434253P','2','3','4200CV','250000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','48','S134431','4','US1JBAT3340025661','HL25234700V','2','5','3200CV','550000.00','4','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','49','W134131','4','OD1JBAT9347394985','ZP25234700M','2','5','2500CV','250000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','50','Q134942','4','WK1JBAT843498318','FD25273478H','2','5','1200CV','550000.00','8','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','51','K134970','4','LA1JBA34693082582','OP25834262G','4','4','3000CV','650000.00','1','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','52','P134532','4','GP1JBA342Z04759238','MS25342098F','4','5','2800CV','150000.00','2','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','53','F141927','4','HB1JBAT0427648573','QF23428949I','4','3','3100CV','250000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','54','G42651','4','KB1JBAT3094287340','JG27644227Q','4','5','2200CV','210000.00','4','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','55','H142900','4','FS1JBAT342103839','LÑ27342090D','4','3','4200CV','35000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','56','J154257','4','SD1JBA46542828730','UX25842928Y','4','4','3200CV','40000.00','5','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','57','K142903','4','DQ1JBAT6427297836','XX27427290A','4','5','1200CV','450000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','58','L142951','4','QQ1JBAT9428509344','ND26423654Z','4','4','3200CV','250000.00','8','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','59','T154203','4','LP1JBA63742037477','BF25742625X','4','4','2000CV','250000.00','7','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','60','Y142873','4','JZ1JBAT9426773925','TH28426253P','4','3','4200CV','250000.00','2','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','61','S142431','4','US1JBAT3420025661','HL25425700V','4','5','3200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','62','W142131','4','OD1JBAT9427394985','ZP25425700M','4','5','2500CV','250000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','63','Q142942','4','WK1JBAT842498318','FD25242178H','4','5','1200CV','550000.00','4','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','64','K142970','4','LA1JBA74423082582','OP25420262G','4','4','3000CV','650000.00','9','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','65','P142532','4','GP1JBAT34204759238','MS25422098F','4','5','2800CV','150000.00','1','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','66','F101927','4','HB1JBAT137648573','QF20148949I','4','3','3100CV','250000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','67','G02651','4','KB1JBAT3102887340','JG27026827Q','4','5','2200CV','210000.00','3','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','68','H103900','4','FS1JBAT090103839','LÑ27032090D','4','3','4200CV','35000.00','4','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','69','L104951','4','QQ1JBAT0838509344','ND20483654Z','4','4','3200CV','250000.00','2','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','70','T105903','4','LP1JBA60791037477','BF20539625X','4','4','2000CV','250000.00','1','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','71','Y106873','4','JZ1JBAT0686773925','TH20676253P','2','3','4200CV','250000.00','8','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','72','S107431','4','US1JBAT05Z0025661','HL20715700V','2','5','3200CV','550000.00','9','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','73','W108131','4','OD1JBAT0387394985','ZP20815700M','2','5','2500CV','250000.00','7','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','74','Q109942','4','WK1JBAT039498318','FD25099178H','2','5','1200CV','550000.00','5','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','75','K190970','4','LA1JBA70293562582','OP21035462G','4','4','3000CV','650000.00','3','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','76','P191532','4','GP1JBAT01Z04159238','MS11735398F','4','5','2800CV','150000.00','4','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','77','K192970','4','LA1JBA34693432582','OP25835562G','4','4','3000CV','650000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','78','P193532','4','GP1JBA342230079238','MS2572098F','4','5','2800CV','150000.00','2','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','79','F194927','4','HB1JBAT0420948573','QF23488949I','4','3','3100CV','250000.00','5','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','80','G495551','4','KB1JBAT3020887340','JG27694227Q','4','5','2200CV','210000.00','4','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','81','H149600','4','FS1JBAT342073839','LÑ27340090D','4','3','4200CV','35000.00','2','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','82','J159757','4','SD1JBA46520628730','UX25812928Y','4','4','3200CV','40000.00','5','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','83','K149803','4','DQ1JBAT6420597836','XX27117290A','4','5','1200CV','450000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','84','L149951','4','QQ1JBAT9420409344','ND26123654Z','4','4','3200CV','250000.00','8','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','85','T165203','4','LP1JBA63720337477','BF25132625X','4','4','2000CV','250000.00','7','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','86','Y164873','4','JZ1JBAT9420273925','TH28146253P','4','3','4200CV','250000.00','2','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','87','S163431','4','US1JBAT3420125661','HL25155700V','4','5','3200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','88','W162131','4','OD1JBAT9420094985','ZP25165700M','4','5','2500CV','250000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','89','Q161942','4','WK1JBAT8410998318','FD25172178H','4','5','1200CV','550000.00','4','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','90','K168970','4','LA1JBA74410882582','OP25180262G','4','4','3000CV','650000.00','9','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','91','P167532','4','GP1JBAT4106759238','MS25192098F','4','5','2800CV','150000.00','1','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','92','F169927','4','HB1JBAT1371055573','QF20208949I','4','3','3100CV','250000.00','9','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','93','G026051','4','KB1JBAT3102104340','JG270216827Q','4','5','2200CV','210000.00','3','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','94','H107600','4','FS1JBAT090103839','LÑ27032290D','2','3','4200CV','35000.00','4','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','95','L107551','4','QQ1JBAT0810020344','ND20423654Z','2','4','3200CV','250000.00','2','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','96','T107403','4','LP1JBA60710037477','BF20524625X','2','4','2000CV','250000.00','1','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','97','Y107273','4','JZ1JBAT01001773925','TH206256253P','2','3','4200CV','250000.00','8','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','98','S107901','4','US1JBAT05Z0115661','HL20715769V','4','5','3200CV','550000.00','9','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','99','W108911','4','OD1JBAT0387124985','ZP20815768M','4','5','2500CV','250000.00','7','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','100','Q109242','4','WK1JBAT039138318','FD25099167H','4','5','1200CV','550000.00','5','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','101','K134930','4','LA1JBA34691482582','OP25834662G','4','4','3000CV','650000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','102','P134942','4','GP1JBA342Z15759238','MS25346598F','4','5','2800CV','150000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','103','F141957','4','HB1JBAT0421648573','QF23428649I','4','3','3100CV','250000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','104','G426966','4','KB1JBAT3094177340','JG27644263Q','4','5','2200CV','210000.00','4','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','105','H142970','4','FS1JBAT342183839','LÑ27342061D','4','3','4200CV','35000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','106','J154987','4','SD1JBA46541928730','UX25842608Y','4','4','3200CV','40000.00','5','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','107','K142993','4','DQ1JBAT6420097836','XX27427590A','4','5','1200CV','450000.00','6','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','108','L142001','4','QQ1JBAT9422109344','ND26423584Z','4','4','3200CV','250000.00','8','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','109','T154413','4','LP1JBA63742237477','BF25742575X','4','4','2000CV','250000.00','7','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','110','Y142423','4','JZ1JBAT9422373925','TH28426563P','4','3','4200CV','250000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','111','S142431','4','US1JBAT3422425661','HL25425550V','4','5','3200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','112','W142441','4','OD1JBAT9422594985','ZP25425540M','4','5','2500CV','250000.00','7','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','113','Q142452','4','WK1JBAT842268318','FD25242153H','4','5','1200CV','550000.00','4','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','114','K142460','4','LA1JBA74422782582','OP25420252G','2','4','3000CV','650000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','115','P142472','4','GP1JBAT34228759238','MS25422051F','2','5','2800CV','150000.00','1','4'),
 
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','116','F103127','4','HB1J00T137648573','QF20018949I','4','3','3100CV','250000.00','9','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','117','G02321','4','KB1JB103102887340','JG27026827Q','4','5','2200CV','210000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','118','H103300','4','FS1J19T090103839','LÑ27032090D','4','3','4200CV','35000.00','4','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','119','L103451','4','QQ1J18T0838509344','ND20483654Z','4','4','3200CV','250000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','120','T103503','4','LP1J1760791037477','BF21139625X','4','4','2000CV','250000.00','1','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','121','Y103673','4','JZ1J16T0686773925','TH21276253P','4','3','4200CV','250000.00','8','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','122','S103731','4','US1J15T05Z0025661','HL13715700V','4','5','3200CV','550000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','123','W103831','4','OD1J14T0387394985','ZP15815700M','4','5','2500CV','250000.00','7','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','124','Q103942','4','WK1J12T039498318','FD21699178H','4','5','1200CV','550000.00','5','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','125','F1581927','4','HB111AT0837648573','Q173748949I','4','5','3100CV','250000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','126','G158111','4','KB1J39T3092887340','JG28646827Q','4','5','2200CV','210000.00','1','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','127','H154820','4','FS1J38T380103839','LÑ22992090D','4','3','4200CV','35000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','128','J154837','4','SD1J3746517828730','UX20830928Y','4','4','3200CV','40000.00','7','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','129','K154843','4','DQ1J36T6487297836','XX21397290A','4','5','1200CV','450000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','130','L154851','4','QQ1J35T9838509344','ND22283654Z','4','4','3200CV','250000.00','8','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','131','T154863','4','LP1J3463791037477','BF23739625X','4','4','2000CV','250000.00','1','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','132','Y154803','4','JZ1JBAT9586863925','TH24476253P','4','3','4200CV','2500000.00','2','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','133','S159881','4','US1JBAT32Z0855661','HL54215700V','4','5','3200CV','550000.00','5','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','134','W158891','4','OD1JBAT9687844985','ZP60215700M','2','5','2500CV','250000.00','7','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','135','Q154642','4','WK1JBAT859483318','FD207779178H','2','5','1200CV','550000.00','4','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','136','K155360','4','LA1JBA74693822582','OP07830262G','2','4','3000CV','650000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','137','P155672','4','GP1JBAT32Z08159238','M385732098F','2','5','2800CV','150000.00','9','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','138','P152532','4','GP1JBAT32254759238','MS25952198F','4','5','2800CV','150000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','139','GA56727','4','HB1JBAT0837678573','QF237237249I','4','3','3100CV','250000.00','1','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','140','JD5671','4','KB1JBAT3092867340','JG27642173Q','4','5','2200CV','210000.00','2','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','141','MX56700','4','FS1JBAT380167839','LÑ27394574D','4','3','4200CV','35000.00','9','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','142','RL56757','4','SD1JBA46517678730','UX25845758Y','4','4','3200CV','40000.00','6','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','143','LE56703','4','DQ1JBAT6487677836','XX27367760A','4','5','1200CV','450000.00','1','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','144','JA56751','4','QQ1JBAT9838679344','ND26256774Z','4','4','3200CV','250000.00','6','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','145','RN56703','4','LP1JBA63791677477','BF25743785X','4','4','2000CV','250000.00','1','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','146','AP56773','4','JZ1JBAT9586673925','TH2842359P','4','3','4200CV','250000.00','4','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','147','AX56731','4','US1JBAT32Z0675661','HL25265880V','4','5','3200CV','550000.00','2','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','148','SN56731','4','OD1JBAT9687674985','ZP25283710M','4','5','2500CV','250000.00','9','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','149','MR56742','4','WK1JBAT859467318','FD25278672H','4','5','1200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','150','ZK56770','4','LA1JBA74693672582','OP25863232G','4','4','3000CV','650000.00','8','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','151','DM56732','4','GP1JBAT32Z06759238','MS25642498F','4','5','2800CV','150000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','152','LD34927','4','HB1JBAT0347648573','QF23334959I','4','3','3100CV','250000.00','7','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','153','ÑC3451','4','KB1JBAT3034887340','JG27634326Q','4','5','2200CV','210000.00','6','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','154','AL34900','4','FS1JBAT334103839','LÑ273346597D','4','3','4200CV','35000.00','5','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','155','VS34957','4','SD1JBA46347828730','UX258397828Y','4','4','3200CV','40000.00','3','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','156','NB34903','4','DQ1JBAT6347297836','XX273394990A','2','5','1200CV','450000.00','1','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','157','DF34951','4','QQ1JBAT9348509344','ND262375500Z','2','4','3200CV','250000.00','2','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','158','LH34903','4','LP1JBA63341037477','BF25735542X','2','4','2000CV','250000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','159','HT34873','4','JZ1JBAT9346773925','TH28439654P','2','3','4200CV','250000.00','7','5'),

('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','160','J134431','4','US1NBAT3340025661','HL25234700H','4','5','3200CV','550000.00','4','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','161','J134131','4','OD1NBAT9347394985','ZP25234700H','4','5','2500CV','250000.00','9','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','162','J134942','4','WK1NBAT843498318','FD25273478J','4','5','1200CV','550000.00','8','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','163','JN56731','4','OD1NBAT9687674985','ZP25283710H','4','5','2500CV','250000.00','9','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','164','JR56742','4','WK1NBAT859467318','FD25278672J','4','5','1200CV','550000.00','5','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','165','JK56770','4','LA1NBA74693672582','OP25863232J','4','4','3000CV','650000.00','8','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','166','JM56732','4','GP1NBAT32Z06759238','MS25642498G','4','5','2800CV','150000.00','3','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','167','JD34927','4','HB1NBAT0347648573','QF23334959G','4','3','3100CV','250000.00','7','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','168','JC34501','4','KB1JNAT3034887340','JG27634326G','4','5','2200CV','210000.00','6','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','169','JL34900','4','FS1NBAT334103839','LÑ273346597G','4','3','4200CV','35000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','8','170','JS34957','4','SD1NBA46347828730','UX258397828H','4','4','3200CV','40000.00','3','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','171','JB34903','4','DQ1NBAT6347297836','XX273394990H','4','5','1200CV','450000.00','1','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','7','172','JF34951','4','QQ1NBAT9348509344','ND262375500H','4','4','3200CV','250000.00','2','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','3','173','JH34903','4','LP1NBA63341037477','BF25735542J','4','4','2000CV','250000.00','6','1'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','174','JT34873','4','JZ1NBAT9346773925','TH28439654J','4','3','4200CV','250000.00','7','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','175','JN56731','4','OD1NBAT9687674985','ZP25283710MJ','4','5','2500CV','250000.00','9','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','6','176','JR56742','4','WK1NBAT859467318','FD25278672HJ','4','5','1200CV','550000.00','5','3'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','5','177','JU56732','4','GJ1NBAT32Z06759238','MS25642498Ñ','2','5','2800CV','150000.00','3','2'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','2','178','JU34927','4','HJ1NBAT0347648573','QF23334959Ñ','2','3','3100CV','250000.00','7','4'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','4','179','JU34501','4','KJ1JNAT3034887340','JG27634326Ñ','2','5','2200CV','210000.00','6','5'),
('EZ-SRL','AV-MAXIMO GOMEZ #54','809-521-4219','1','180','JU34900','4','FJ1NBAT334103839','LÑ273346597Ñ','2','3','4200CV','35000.00','5','5');



SELECT * FROM COLOR;
SELECT * FROM MARCA;
SELECT * FROM MODELO;
SELECT * FROM TIPO_DE_VEHICULO;
SELECT * FROM VEHICULO;
SELECT * FROM GARANTIA_PIEZA
SELECT * FROM PIEZA
SELECT * FROM DESCRIPCION_SEGURO
select * from seguro
 


--CANTIDAD DE VEHICULO DE CADA MARCA HONDA, TOYOTA, NISSAN, KIA
--MAZDA, HYUDAI, LEXUS, FORD
SELECT  COUNT(*) AS 'TOTAL HONDA' FROM MODELO WHERE ID_MARCA = 1
SELECT  COUNT(*) as 'TOTAL TOYOTA' FROM MODELO WHERE ID_MARCA = 2
SELECT  COUNT(*) as 'TOTAL NISSAN' FROM MODELO WHERE ID_MARCA = 3
SELECT  COUNT(*) as 'TOTAL KIA' FROM MODELO WHERE ID_MARCA = 4
SELECT  COUNT(*) as 'TOTAL MAZDA' FROM MODELO WHERE ID_MARCA = 5
SELECT  COUNT(*) as 'TOTAL HYUDAI' FROM MODELO WHERE ID_MARCA = 6
SELECT  COUNT(*) as 'TOTA LEXUS' FROM MODELO WHERE ID_MARCA = 7
SELECT  COUNT(*) as 'TOTAL FORD' FROM MODELO WHERE ID_MARCA = 8


--total de los vehiculo ingresado
SELECT COUNT(*) AS TOTAL_DE_VEHICULO  FROM VEHICULO


--El join imprimira nombre social, direccion, marca, tipo de vehiculo, modelo, color, año, cambios, 
--combustible, matricula, chasis,puertas, pasajeto, plan de garantia y el total a pagar
CREATE OR ALTER VIEW FACTURA
as
SELECT vh.nombre_razon_social, vh.direccion, mc.nombre_marca, tv.tipo_vehiculo, md.modelo, cl.colores, md.año, md.caja_cambios, md.combustible, 
vh.matricula, vh.chasis, vh.puertas, vh.pasajeros, gp.plan_garantia, sg.PLAN_SEGURO, sg.PRECIO_ANUAL_SEGURO, (vh.precio + sg.PRECIO_ANUAL_SEGURO) TOTAL_A_PAGAR
from 
VEHICULO vh join COLOR cl
on vh.ID_COLOR = cl.ID_COLOR
join MODELO md 
on vh.ID_MODELO = md.ID_MODELO
JOIN TIPO_DE_VEHICULO tv
on md.ID_TIPO_VEHICULO = tv.ID_TIPO_VEHICULO 
JOIN MARCA mc
on md.ID_MARCA = mc.ID_MARCA
JOIN GARANTIA_PIEZA gp
on vh.ID_GARANTIA_PIEZAS = gp.ID_GARANTIA_PIEZAS
join SEGURO sg
on vh.ID_PLAN_SEGURO = sg.ID_PLAN_SEGURO



--EL JOIN IMPRIMIRA LOS PLAN DE GARANTIAS, MESES DE GARANTIA, PIEZAS DE GARANTIA
CREATE OR ALTER VIEW PLANES_DE_GARANTIA
as
SELECT gp.plan_garantia, gp.meses, pz.PIEZA_1, pz.PIEZA_2, pz.PIEZA_3, pz.PIEZA_4, pz.PIEZA_5, pz.PIEZA_6, pz.PIEZA_7, 
pz.PIEZA_8, pz.PIEZA_9, pz.PIEZA_10
FROM
GARANTIA_PIEZA gp JOIN PIEZA pz
on gp.ID_PIEZA = pz.ID_PIEZA 


--IMPRIMIR LA CANTIDAD TOTAL DE LOS TIPOS DE VEHICULO JEEPETA, CARRO, CAMIONETA, FURGONETA, DEPORTIVO
SELECT COUNT (*) as 'TOTAL JEEPETA' FROM MODELO WHERE ID_TIPO_VEHICULO = '1'
SELECT COUNT (*) as 'TOTAL CARRO' FROM MODELO WHERE ID_TIPO_VEHICULO = '2'
SELECT COUNT (*) as 'TOTAL CAMIONETA' FROM MODELO WHERE ID_TIPO_VEHICULO = '3'
SELECT COUNT (*) as 'TOTAL FURGONETA 'FROM MODELO WHERE ID_TIPO_VEHICULO = '4'
SELECT COUNT (*) as 'TOTAL DEPORTIVO 'FROM MODELO WHERE ID_TIPO_VEHICULO = '5'




--IMORIMIR SOLO LOS MODELO DEL 2017, 2018, 2019, 2020, 2021, 2022 Y QUE SEAN AUTOMATICO
CREATE OR ALTER VIEW MODELOS_DE_VEHICULOS_AUTOMATICO
as
SELECT  mc.nombre_marca,  md.MODELO, md.año, md.caja_cambios, md.combustible 
FROM
MODELO md JOIN MARCA mc
on md.ID_MARCA = mc.ID_MARCA
WHERE (md.año >= '2017' and md.año <= '2022') and (md.caja_cambios = 'AUTOMATICO')


--IMORIMIR SOLO LOS MODELO DEL 2017, 2018, 2019, 2020, 2021,2022 Y QUE SEAN MANUAL
CREATE OR ALTER VIEW MODELOS_DE_VEHICULOS_MANUAL
as
SELECT  mc.nombre_marca,  md.MODELO, md.año, md.caja_cambios, md.combustible  
FROM
MODELO md JOIN MARCA mc
on md.ID_MARCA = mc.ID_MARCA
WHERE (md.año  >= '2017' and md.año <='2022') and (md.caja_cambios = 'MANUAL')

SELECT * FROM VEHICULO WHERE ID_VEHICULO >= '1' and ID_VEHICULO  <= '180' 


--IMPRIMIR LOS PLANES DE SEGURO SIN SEGURO, ESENCIAL, BASICO, AMPLIO, AMPLIO PLUS
CREATE OR ALTER VIEW PLANES_DE_SEGUROS
as
SELECT sg.PLAN_SEGURO, ds.descripcion, sg.PRECIO_ANUAL_SEGURO
FROM
SEGURO sg JOIN DESCRIPCION_SEGURO ds
on sg.ID_DESCRIPCION_SEGURO =  ds.ID_DESCRIPCION_SEGURO


SELECT * FROM  PLANES_DE_SEGUROS
SELECT * FROM  MODELOS_DE_VEHICULOS_MANUAL
SELECT * FROM  MODELOS_DE_VEHICULOS_AUTOMATICO
SELECT * FROM  PLANES_DE_GARANTIA
SELECT * FROM  FACTURA


--CRYSTAL 

--Procedimiento Almacenado para Parámetros de un Reporte:
create procedure ReporteCrystal
(@año_Inicial INT,
 @año_Final INT
)
as
select * from MODELO where año >= @año_Inicial and año <= @año_Final
go


--creamos un Procedimiento Almacenado con Parametros de un Reporte:
create or alter procedure ANALISIS_VEHICULO
(
@año_Inicial INT,
@año_Final INT
)
AS
SELECT mc.nombre_marca, tv.tipo_vehiculo, md.modelo, cl.colores, md.año, md.caja_cambios, md.combustible, 
vh.matricula, vh.chasis, vh.puertas, vh.pasajeros, gp.plan_garantia, sg.PLAN_SEGURO, sg.PRECIO_ANUAL_SEGURO, (vh.precio + sg.PRECIO_ANUAL_SEGURO) TOTAL_A_PAGAR
from 
VEHICULO vh join COLOR cl
on vh.ID_COLOR = cl.ID_COLOR
join MODELO md 
on vh.ID_MODELO = md.ID_MODELO
JOIN TIPO_DE_VEHICULO tv
on md.ID_TIPO_VEHICULO = tv.ID_TIPO_VEHICULO 
JOIN MARCA mc
on md.ID_MARCA = mc.ID_MARCA
JOIN GARANTIA_PIEZA gp
on vh.ID_GARANTIA_PIEZAS = gp.ID_GARANTIA_PIEZAS
join SEGURO sg
on vh.ID_PLAN_SEGURO = sg.ID_PLAN_SEGURO



--Ejecutamos el store:
DECLARE @return_value int
EXEC @return_value = [dbo].SP_ANALISIS_VENTAS
@año_Inicial = '2017',
@año_Final = '2022'
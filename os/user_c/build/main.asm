
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000000001000 <_start>:
    1000:	a1e5                	j	14e8 <main>

0000000000001002 <_Z7getcharv>:
    1002:	1101                	addi	sp,sp,-32
    1004:	ec06                	sd	ra,24(sp)
    1006:	e822                	sd	s0,16(sp)
    1008:	1000                	addi	s0,sp,32
    100a:	fef40793          	addi	a5,s0,-17
    100e:	0e900613          	li	a2,233
    1012:	85be                	mv	a1,a5
    1014:	4501                	li	a0,0
    1016:	7ba000ef          	jal	ra,17d0 <_Z4readiPvy>
    101a:	fef44783          	lbu	a5,-17(s0)
    101e:	853e                	mv	a0,a5
    1020:	60e2                	ld	ra,24(sp)
    1022:	6442                	ld	s0,16(sp)
    1024:	6105                	addi	sp,sp,32
    1026:	8082                	ret

0000000000001028 <_Z7putcharc>:
    1028:	1101                	addi	sp,sp,-32
    102a:	ec06                	sd	ra,24(sp)
    102c:	e822                	sd	s0,16(sp)
    102e:	1000                	addi	s0,sp,32
    1030:	87aa                	mv	a5,a0
    1032:	fef407a3          	sb	a5,-17(s0)
    1036:	fef40793          	addi	a5,s0,-17
    103a:	4605                	li	a2,1
    103c:	85be                	mv	a1,a5
    103e:	4505                	li	a0,1
    1040:	7ca000ef          	jal	ra,180a <_Z5writeiPKvy>
    1044:	0001                	nop
    1046:	60e2                	ld	ra,24(sp)
    1048:	6442                	ld	s0,16(sp)
    104a:	6105                	addi	sp,sp,32
    104c:	8082                	ret

000000000000104e <_Z6putstrPc>:
    104e:	1101                	addi	sp,sp,-32
    1050:	ec06                	sd	ra,24(sp)
    1052:	e822                	sd	s0,16(sp)
    1054:	1000                	addi	s0,sp,32
    1056:	fea43423          	sd	a0,-24(s0)
    105a:	a829                	j	1074 <_Z6putstrPc+0x26>
    105c:	fe843783          	ld	a5,-24(s0)
    1060:	0007c783          	lbu	a5,0(a5)
    1064:	853e                	mv	a0,a5
    1066:	fc3ff0ef          	jal	ra,1028 <_Z7putcharc>
    106a:	fe843783          	ld	a5,-24(s0)
    106e:	0785                	addi	a5,a5,1
    1070:	fef43423          	sd	a5,-24(s0)
    1074:	fe843783          	ld	a5,-24(s0)
    1078:	0007c783          	lbu	a5,0(a5)
    107c:	f3e5                	bnez	a5,105c <_Z6putstrPc+0xe>
    107e:	0001                	nop
    1080:	0001                	nop
    1082:	60e2                	ld	ra,24(sp)
    1084:	6442                	ld	s0,16(sp)
    1086:	6105                	addi	sp,sp,32
    1088:	8082                	ret

000000000000108a <_ZL8printintiii>:
    108a:	7139                	addi	sp,sp,-64
    108c:	fc06                	sd	ra,56(sp)
    108e:	f822                	sd	s0,48(sp)
    1090:	0080                	addi	s0,sp,64
    1092:	87aa                	mv	a5,a0
    1094:	86ae                	mv	a3,a1
    1096:	8732                	mv	a4,a2
    1098:	fcf42623          	sw	a5,-52(s0)
    109c:	87b6                	mv	a5,a3
    109e:	fcf42423          	sw	a5,-56(s0)
    10a2:	87ba                	mv	a5,a4
    10a4:	fcf42223          	sw	a5,-60(s0)
    10a8:	fc442783          	lw	a5,-60(s0)
    10ac:	2781                	sext.w	a5,a5
    10ae:	cf99                	beqz	a5,10cc <_ZL8printintiii+0x42>
    10b0:	fcc42783          	lw	a5,-52(s0)
    10b4:	01f7d79b          	srliw	a5,a5,0x1f
    10b8:	0ff7f793          	zext.b	a5,a5
    10bc:	fcf42223          	sw	a5,-60(s0)
    10c0:	fc442783          	lw	a5,-60(s0)
    10c4:	2781                	sext.w	a5,a5
    10c6:	c399                	beqz	a5,10cc <_ZL8printintiii+0x42>
    10c8:	4785                	li	a5,1
    10ca:	a011                	j	10ce <_ZL8printintiii+0x44>
    10cc:	4781                	li	a5,0
    10ce:	cb89                	beqz	a5,10e0 <_ZL8printintiii+0x56>
    10d0:	fcc42783          	lw	a5,-52(s0)
    10d4:	40f007bb          	negw	a5,a5
    10d8:	2781                	sext.w	a5,a5
    10da:	fef42423          	sw	a5,-24(s0)
    10de:	a029                	j	10e8 <_ZL8printintiii+0x5e>
    10e0:	fcc42783          	lw	a5,-52(s0)
    10e4:	fef42423          	sw	a5,-24(s0)
    10e8:	fe042623          	sw	zero,-20(s0)
    10ec:	fc842783          	lw	a5,-56(s0)
    10f0:	fe842703          	lw	a4,-24(s0)
    10f4:	02f777bb          	remuw	a5,a4,a5
    10f8:	2781                	sext.w	a5,a5
    10fa:	00001717          	auipc	a4,0x1
    10fe:	f3670713          	addi	a4,a4,-202 # 2030 <_ZL6digits>
    1102:	1782                	slli	a5,a5,0x20
    1104:	9381                	srli	a5,a5,0x20
    1106:	97ba                	add	a5,a5,a4
    1108:	0007c703          	lbu	a4,0(a5)
    110c:	fec42783          	lw	a5,-20(s0)
    1110:	0017869b          	addiw	a3,a5,1
    1114:	fed42623          	sw	a3,-20(s0)
    1118:	17c1                	addi	a5,a5,-16
    111a:	97a2                	add	a5,a5,s0
    111c:	fee78423          	sb	a4,-24(a5)
    1120:	fc842783          	lw	a5,-56(s0)
    1124:	fe842703          	lw	a4,-24(s0)
    1128:	02f757bb          	divuw	a5,a4,a5
    112c:	fef42423          	sw	a5,-24(s0)
    1130:	fe842783          	lw	a5,-24(s0)
    1134:	2781                	sext.w	a5,a5
    1136:	00f037b3          	snez	a5,a5
    113a:	0ff7f793          	zext.b	a5,a5
    113e:	f7dd                	bnez	a5,10ec <_ZL8printintiii+0x62>
    1140:	fc442783          	lw	a5,-60(s0)
    1144:	2781                	sext.w	a5,a5
    1146:	c79d                	beqz	a5,1174 <_ZL8printintiii+0xea>
    1148:	fec42783          	lw	a5,-20(s0)
    114c:	0017871b          	addiw	a4,a5,1
    1150:	fee42623          	sw	a4,-20(s0)
    1154:	17c1                	addi	a5,a5,-16
    1156:	97a2                	add	a5,a5,s0
    1158:	02d00713          	li	a4,45
    115c:	fee78423          	sb	a4,-24(a5)
    1160:	a811                	j	1174 <_ZL8printintiii+0xea>
    1162:	fec42783          	lw	a5,-20(s0)
    1166:	17c1                	addi	a5,a5,-16
    1168:	97a2                	add	a5,a5,s0
    116a:	fe87c783          	lbu	a5,-24(a5)
    116e:	853e                	mv	a0,a5
    1170:	eb9ff0ef          	jal	ra,1028 <_Z7putcharc>
    1174:	fec42783          	lw	a5,-20(s0)
    1178:	37fd                	addiw	a5,a5,-1
    117a:	fef42623          	sw	a5,-20(s0)
    117e:	fec42783          	lw	a5,-20(s0)
    1182:	fff7c793          	not	a5,a5
    1186:	01f7d79b          	srliw	a5,a5,0x1f
    118a:	0ff7f793          	zext.b	a5,a5
    118e:	fbf1                	bnez	a5,1162 <_ZL8printintiii+0xd8>
    1190:	0001                	nop
    1192:	0001                	nop
    1194:	70e2                	ld	ra,56(sp)
    1196:	7442                	ld	s0,48(sp)
    1198:	6121                	addi	sp,sp,64
    119a:	8082                	ret

000000000000119c <_ZL8printptry>:
    119c:	7179                	addi	sp,sp,-48
    119e:	f406                	sd	ra,40(sp)
    11a0:	f022                	sd	s0,32(sp)
    11a2:	1800                	addi	s0,sp,48
    11a4:	fca43c23          	sd	a0,-40(s0)
    11a8:	03000513          	li	a0,48
    11ac:	e7dff0ef          	jal	ra,1028 <_Z7putcharc>
    11b0:	07800513          	li	a0,120
    11b4:	e75ff0ef          	jal	ra,1028 <_Z7putcharc>
    11b8:	fe042623          	sw	zero,-20(s0)
    11bc:	a805                	j	11ec <_ZL8printptry+0x50>
    11be:	fd843783          	ld	a5,-40(s0)
    11c2:	93f1                	srli	a5,a5,0x3c
    11c4:	00001717          	auipc	a4,0x1
    11c8:	e6c70713          	addi	a4,a4,-404 # 2030 <_ZL6digits>
    11cc:	97ba                	add	a5,a5,a4
    11ce:	0007c783          	lbu	a5,0(a5)
    11d2:	853e                	mv	a0,a5
    11d4:	e55ff0ef          	jal	ra,1028 <_Z7putcharc>
    11d8:	fec42783          	lw	a5,-20(s0)
    11dc:	2785                	addiw	a5,a5,1
    11de:	fef42623          	sw	a5,-20(s0)
    11e2:	fd843783          	ld	a5,-40(s0)
    11e6:	0792                	slli	a5,a5,0x4
    11e8:	fcf43c23          	sd	a5,-40(s0)
    11ec:	fec42703          	lw	a4,-20(s0)
    11f0:	47bd                	li	a5,15
    11f2:	fce7f6e3          	bgeu	a5,a4,11be <_ZL8printptry+0x22>
    11f6:	0001                	nop
    11f8:	0001                	nop
    11fa:	70a2                	ld	ra,40(sp)
    11fc:	7402                	ld	s0,32(sp)
    11fe:	6145                	addi	sp,sp,48
    1200:	8082                	ret

0000000000001202 <_Z6printfPcz>:
    1202:	7119                	addi	sp,sp,-128
    1204:	fc06                	sd	ra,56(sp)
    1206:	f822                	sd	s0,48(sp)
    1208:	0080                	addi	s0,sp,64
    120a:	fca43423          	sd	a0,-56(s0)
    120e:	e40c                	sd	a1,8(s0)
    1210:	e810                	sd	a2,16(s0)
    1212:	ec14                	sd	a3,24(s0)
    1214:	f018                	sd	a4,32(s0)
    1216:	f41c                	sd	a5,40(s0)
    1218:	03043823          	sd	a6,48(s0)
    121c:	03143c23          	sd	a7,56(s0)
    1220:	04040793          	addi	a5,s0,64
    1224:	fcf43023          	sd	a5,-64(s0)
    1228:	fc043783          	ld	a5,-64(s0)
    122c:	fc878793          	addi	a5,a5,-56
    1230:	fcf43823          	sd	a5,-48(s0)
    1234:	fe042623          	sw	zero,-20(s0)
    1238:	aa41                	j	13c8 <_Z6printfPcz+0x1c6>
    123a:	fdc42783          	lw	a5,-36(s0)
    123e:	0007871b          	sext.w	a4,a5
    1242:	02500793          	li	a5,37
    1246:	00f70a63          	beq	a4,a5,125a <_Z6printfPcz+0x58>
    124a:	fdc42783          	lw	a5,-36(s0)
    124e:	0ff7f793          	zext.b	a5,a5
    1252:	853e                	mv	a0,a5
    1254:	dd5ff0ef          	jal	ra,1028 <_Z7putcharc>
    1258:	a29d                	j	13be <_Z6printfPcz+0x1bc>
    125a:	fc843703          	ld	a4,-56(s0)
    125e:	fec42783          	lw	a5,-20(s0)
    1262:	2785                	addiw	a5,a5,1
    1264:	fef42623          	sw	a5,-20(s0)
    1268:	fec42783          	lw	a5,-20(s0)
    126c:	97ba                	add	a5,a5,a4
    126e:	0007c783          	lbu	a5,0(a5)
    1272:	fcf42e23          	sw	a5,-36(s0)
    1276:	fdc42783          	lw	a5,-36(s0)
    127a:	2781                	sext.w	a5,a5
    127c:	16078963          	beqz	a5,13ee <_Z6printfPcz+0x1ec>
    1280:	fdc42783          	lw	a5,-36(s0)
    1284:	0007871b          	sext.w	a4,a5
    1288:	07800793          	li	a5,120
    128c:	08f70763          	beq	a4,a5,131a <_Z6printfPcz+0x118>
    1290:	fdc42783          	lw	a5,-36(s0)
    1294:	0007871b          	sext.w	a4,a5
    1298:	07800793          	li	a5,120
    129c:	10e7c563          	blt	a5,a4,13a6 <_Z6printfPcz+0x1a4>
    12a0:	fdc42783          	lw	a5,-36(s0)
    12a4:	0007871b          	sext.w	a4,a5
    12a8:	07300793          	li	a5,115
    12ac:	08f70f63          	beq	a4,a5,134a <_Z6printfPcz+0x148>
    12b0:	fdc42783          	lw	a5,-36(s0)
    12b4:	0007871b          	sext.w	a4,a5
    12b8:	07300793          	li	a5,115
    12bc:	0ee7c563          	blt	a5,a4,13a6 <_Z6printfPcz+0x1a4>
    12c0:	fdc42783          	lw	a5,-36(s0)
    12c4:	0007871b          	sext.w	a4,a5
    12c8:	07000793          	li	a5,112
    12cc:	06f70463          	beq	a4,a5,1334 <_Z6printfPcz+0x132>
    12d0:	fdc42783          	lw	a5,-36(s0)
    12d4:	0007871b          	sext.w	a4,a5
    12d8:	07000793          	li	a5,112
    12dc:	0ce7c563          	blt	a5,a4,13a6 <_Z6printfPcz+0x1a4>
    12e0:	fdc42783          	lw	a5,-36(s0)
    12e4:	0007871b          	sext.w	a4,a5
    12e8:	02500793          	li	a5,37
    12ec:	0af70863          	beq	a4,a5,139c <_Z6printfPcz+0x19a>
    12f0:	fdc42783          	lw	a5,-36(s0)
    12f4:	0007871b          	sext.w	a4,a5
    12f8:	06400793          	li	a5,100
    12fc:	0af71563          	bne	a4,a5,13a6 <_Z6printfPcz+0x1a4>
    1300:	fd043783          	ld	a5,-48(s0)
    1304:	00878713          	addi	a4,a5,8
    1308:	fce43823          	sd	a4,-48(s0)
    130c:	439c                	lw	a5,0(a5)
    130e:	4605                	li	a2,1
    1310:	45a9                	li	a1,10
    1312:	853e                	mv	a0,a5
    1314:	d77ff0ef          	jal	ra,108a <_ZL8printintiii>
    1318:	a05d                	j	13be <_Z6printfPcz+0x1bc>
    131a:	fd043783          	ld	a5,-48(s0)
    131e:	00878713          	addi	a4,a5,8
    1322:	fce43823          	sd	a4,-48(s0)
    1326:	439c                	lw	a5,0(a5)
    1328:	4605                	li	a2,1
    132a:	45c1                	li	a1,16
    132c:	853e                	mv	a0,a5
    132e:	d5dff0ef          	jal	ra,108a <_ZL8printintiii>
    1332:	a071                	j	13be <_Z6printfPcz+0x1bc>
    1334:	fd043783          	ld	a5,-48(s0)
    1338:	00878713          	addi	a4,a5,8
    133c:	fce43823          	sd	a4,-48(s0)
    1340:	639c                	ld	a5,0(a5)
    1342:	853e                	mv	a0,a5
    1344:	e59ff0ef          	jal	ra,119c <_ZL8printptry>
    1348:	a89d                	j	13be <_Z6printfPcz+0x1bc>
    134a:	fd043783          	ld	a5,-48(s0)
    134e:	00878713          	addi	a4,a5,8
    1352:	fce43823          	sd	a4,-48(s0)
    1356:	639c                	ld	a5,0(a5)
    1358:	fef43023          	sd	a5,-32(s0)
    135c:	fe043783          	ld	a5,-32(s0)
    1360:	0017b793          	seqz	a5,a5
    1364:	0ff7f793          	zext.b	a5,a5
    1368:	c785                	beqz	a5,1390 <_Z6printfPcz+0x18e>
    136a:	00001797          	auipc	a5,0x1
    136e:	ce678793          	addi	a5,a5,-794 # 2050 <nuclear+0x8>
    1372:	fef43023          	sd	a5,-32(s0)
    1376:	a829                	j	1390 <_Z6printfPcz+0x18e>
    1378:	fe043783          	ld	a5,-32(s0)
    137c:	0007c783          	lbu	a5,0(a5)
    1380:	853e                	mv	a0,a5
    1382:	ca7ff0ef          	jal	ra,1028 <_Z7putcharc>
    1386:	fe043783          	ld	a5,-32(s0)
    138a:	0785                	addi	a5,a5,1
    138c:	fef43023          	sd	a5,-32(s0)
    1390:	fe043783          	ld	a5,-32(s0)
    1394:	0007c783          	lbu	a5,0(a5)
    1398:	f3e5                	bnez	a5,1378 <_Z6printfPcz+0x176>
    139a:	a015                	j	13be <_Z6printfPcz+0x1bc>
    139c:	02500513          	li	a0,37
    13a0:	c89ff0ef          	jal	ra,1028 <_Z7putcharc>
    13a4:	a829                	j	13be <_Z6printfPcz+0x1bc>
    13a6:	02500513          	li	a0,37
    13aa:	c7fff0ef          	jal	ra,1028 <_Z7putcharc>
    13ae:	fdc42783          	lw	a5,-36(s0)
    13b2:	0ff7f793          	zext.b	a5,a5
    13b6:	853e                	mv	a0,a5
    13b8:	c71ff0ef          	jal	ra,1028 <_Z7putcharc>
    13bc:	0001                	nop
    13be:	fec42783          	lw	a5,-20(s0)
    13c2:	2785                	addiw	a5,a5,1
    13c4:	fef42623          	sw	a5,-20(s0)
    13c8:	fec42783          	lw	a5,-20(s0)
    13cc:	fc843703          	ld	a4,-56(s0)
    13d0:	97ba                	add	a5,a5,a4
    13d2:	0007c783          	lbu	a5,0(a5)
    13d6:	fcf42e23          	sw	a5,-36(s0)
    13da:	fdc42783          	lw	a5,-36(s0)
    13de:	2781                	sext.w	a5,a5
    13e0:	00f037b3          	snez	a5,a5
    13e4:	0ff7f793          	zext.b	a5,a5
    13e8:	e40799e3          	bnez	a5,123a <_Z6printfPcz+0x38>
    13ec:	a011                	j	13f0 <_Z6printfPcz+0x1ee>
    13ee:	0001                	nop
    13f0:	0001                	nop
    13f2:	70e2                	ld	ra,56(sp)
    13f4:	7442                	ld	s0,48(sp)
    13f6:	6109                	addi	sp,sp,128
    13f8:	8082                	ret

00000000000013fa <_Z6strlenPc>:
    13fa:	7179                	addi	sp,sp,-48
    13fc:	f422                	sd	s0,40(sp)
    13fe:	1800                	addi	s0,sp,48
    1400:	fca43c23          	sd	a0,-40(s0)
    1404:	fe042623          	sw	zero,-20(s0)
    1408:	fd843783          	ld	a5,-40(s0)
    140c:	fef43023          	sd	a5,-32(s0)
    1410:	a819                	j	1426 <_Z6strlenPc+0x2c>
    1412:	fec42783          	lw	a5,-20(s0)
    1416:	2785                	addiw	a5,a5,1
    1418:	fef42623          	sw	a5,-20(s0)
    141c:	fe043783          	ld	a5,-32(s0)
    1420:	0785                	addi	a5,a5,1
    1422:	fef43023          	sd	a5,-32(s0)
    1426:	fe043783          	ld	a5,-32(s0)
    142a:	0007c783          	lbu	a5,0(a5)
    142e:	f3f5                	bnez	a5,1412 <_Z6strlenPc+0x18>
    1430:	fec42783          	lw	a5,-20(s0)
    1434:	853e                	mv	a0,a5
    1436:	7422                	ld	s0,40(sp)
    1438:	6145                	addi	sp,sp,48
    143a:	8082                	ret

000000000000143c <_Z6strcmpPcS_>:
    143c:	7179                	addi	sp,sp,-48
    143e:	f422                	sd	s0,40(sp)
    1440:	1800                	addi	s0,sp,48
    1442:	fca43c23          	sd	a0,-40(s0)
    1446:	fcb43823          	sd	a1,-48(s0)
    144a:	fd843783          	ld	a5,-40(s0)
    144e:	fef43423          	sd	a5,-24(s0)
    1452:	fd043783          	ld	a5,-48(s0)
    1456:	fef43023          	sd	a5,-32(s0)
    145a:	a099                	j	14a0 <_Z6strcmpPcS_+0x64>
    145c:	fe843783          	ld	a5,-24(s0)
    1460:	0007c703          	lbu	a4,0(a5)
    1464:	fe043783          	ld	a5,-32(s0)
    1468:	0007c783          	lbu	a5,0(a5)
    146c:	02f70063          	beq	a4,a5,148c <_Z6strcmpPcS_+0x50>
    1470:	fe843783          	ld	a5,-24(s0)
    1474:	0007c703          	lbu	a4,0(a5)
    1478:	fe043783          	ld	a5,-32(s0)
    147c:	0007c783          	lbu	a5,0(a5)
    1480:	00e7f463          	bgeu	a5,a4,1488 <_Z6strcmpPcS_+0x4c>
    1484:	4785                	li	a5,1
    1486:	a805                	j	14b6 <_Z6strcmpPcS_+0x7a>
    1488:	57fd                	li	a5,-1
    148a:	a035                	j	14b6 <_Z6strcmpPcS_+0x7a>
    148c:	fe843783          	ld	a5,-24(s0)
    1490:	0785                	addi	a5,a5,1
    1492:	fef43423          	sd	a5,-24(s0)
    1496:	fe043783          	ld	a5,-32(s0)
    149a:	0785                	addi	a5,a5,1
    149c:	fef43023          	sd	a5,-32(s0)
    14a0:	fe843783          	ld	a5,-24(s0)
    14a4:	0007c783          	lbu	a5,0(a5)
    14a8:	fbd5                	bnez	a5,145c <_Z6strcmpPcS_+0x20>
    14aa:	fe043783          	ld	a5,-32(s0)
    14ae:	0007c783          	lbu	a5,0(a5)
    14b2:	f7cd                	bnez	a5,145c <_Z6strcmpPcS_+0x20>
    14b4:	4781                	li	a5,0
    14b6:	853e                	mv	a0,a5
    14b8:	7422                	ld	s0,40(sp)
    14ba:	6145                	addi	sp,sp,48
    14bc:	8082                	ret

00000000000014be <_Z4plusii>:
    14be:	1101                	addi	sp,sp,-32
    14c0:	ec22                	sd	s0,24(sp)
    14c2:	1000                	addi	s0,sp,32
    14c4:	87aa                	mv	a5,a0
    14c6:	872e                	mv	a4,a1
    14c8:	fef42623          	sw	a5,-20(s0)
    14cc:	87ba                	mv	a5,a4
    14ce:	fef42423          	sw	a5,-24(s0)
    14d2:	fec42783          	lw	a5,-20(s0)
    14d6:	873e                	mv	a4,a5
    14d8:	fe842783          	lw	a5,-24(s0)
    14dc:	9fb9                	addw	a5,a5,a4
    14de:	2781                	sext.w	a5,a5
    14e0:	853e                	mv	a0,a5
    14e2:	6462                	ld	s0,24(sp)
    14e4:	6105                	addi	sp,sp,32
    14e6:	8082                	ret

00000000000014e8 <main>:
    14e8:	1101                	addi	sp,sp,-32
    14ea:	ec06                	sd	ra,24(sp)
    14ec:	e822                	sd	s0,16(sp)
    14ee:	1000                	addi	s0,sp,32
    14f0:	00001517          	auipc	a0,0x1
    14f4:	b6850513          	addi	a0,a0,-1176 # 2058 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	00001517          	auipc	a0,0x1
    1500:	b7450513          	addi	a0,a0,-1164 # 2070 <nuclear+0x28>
    1504:	cffff0ef          	jal	ra,1202 <_Z6printfPcz>
    1508:	afbff0ef          	jal	ra,1002 <_Z7getcharv>
    150c:	87aa                	mv	a5,a0
    150e:	fef407a3          	sb	a5,-17(s0)
    1512:	00001797          	auipc	a5,0x1
    1516:	a5678793          	addi	a5,a5,-1450 # 1f68 <buf>
    151a:	fef43023          	sd	a5,-32(s0)
    151e:	a09d                	j	1584 <main+0x9c>
    1520:	fef44783          	lbu	a5,-17(s0)
    1524:	0ff7f713          	zext.b	a4,a5
    1528:	47a1                	li	a5,8
    152a:	00f70a63          	beq	a4,a5,153e <main+0x56>
    152e:	fef44783          	lbu	a5,-17(s0)
    1532:	0ff7f713          	zext.b	a4,a5
    1536:	07f00793          	li	a5,127
    153a:	02f71163          	bne	a4,a5,155c <main+0x74>
    153e:	00001517          	auipc	a0,0x1
    1542:	b3a50513          	addi	a0,a0,-1222 # 2078 <nuclear+0x30>
    1546:	cbdff0ef          	jal	ra,1202 <_Z6printfPcz>
    154a:	fe043783          	ld	a5,-32(s0)
    154e:	fff78713          	addi	a4,a5,-1
    1552:	fee43023          	sd	a4,-32(s0)
    1556:	00078023          	sb	zero,0(a5)
    155a:	a005                	j	157a <main+0x92>
    155c:	fef44783          	lbu	a5,-17(s0)
    1560:	853e                	mv	a0,a5
    1562:	ac7ff0ef          	jal	ra,1028 <_Z7putcharc>
    1566:	fef44703          	lbu	a4,-17(s0)
    156a:	fe043783          	ld	a5,-32(s0)
    156e:	00178693          	addi	a3,a5,1
    1572:	fed43023          	sd	a3,-32(s0)
    1576:	00e78023          	sb	a4,0(a5)
    157a:	a89ff0ef          	jal	ra,1002 <_Z7getcharv>
    157e:	87aa                	mv	a5,a0
    1580:	fef407a3          	sb	a5,-17(s0)
    1584:	fef44783          	lbu	a5,-17(s0)
    1588:	0ff7f713          	zext.b	a4,a5
    158c:	47b5                	li	a5,13
    158e:	f8f719e3          	bne	a4,a5,1520 <main+0x38>
    1592:	fe043783          	ld	a5,-32(s0)
    1596:	00078023          	sb	zero,0(a5)
    159a:	00001517          	auipc	a0,0x1
    159e:	ae650513          	addi	a0,a0,-1306 # 2080 <nuclear+0x38>
    15a2:	c61ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15a6:	00001517          	auipc	a0,0x1
    15aa:	9c250513          	addi	a0,a0,-1598 # 1f68 <buf>
    15ae:	e4dff0ef          	jal	ra,13fa <_Z6strlenPc>
    15b2:	87aa                	mv	a5,a0
    15b4:	0017b793          	seqz	a5,a5
    15b8:	0ff7f793          	zext.b	a5,a5
    15bc:	ef85                	bnez	a5,15f4 <main+0x10c>
    15be:	00001597          	auipc	a1,0x1
    15c2:	aca58593          	addi	a1,a1,-1334 # 2088 <nuclear+0x40>
    15c6:	00001517          	auipc	a0,0x1
    15ca:	9a250513          	addi	a0,a0,-1630 # 1f68 <buf>
    15ce:	e6fff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    15d2:	87aa                	mv	a5,a0
    15d4:	0017b793          	seqz	a5,a5
    15d8:	0ff7f793          	zext.b	a5,a5
    15dc:	ef91                	bnez	a5,15f8 <main+0x110>
    15de:	00001597          	auipc	a1,0x1
    15e2:	98a58593          	addi	a1,a1,-1654 # 1f68 <buf>
    15e6:	00001517          	auipc	a0,0x1
    15ea:	aaa50513          	addi	a0,a0,-1366 # 2090 <nuclear+0x48>
    15ee:	c15ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15f2:	b729                	j	14fc <main+0x14>
    15f4:	0001                	nop
    15f6:	b719                	j	14fc <main+0x14>
    15f8:	0001                	nop
    15fa:	4501                	li	a0,0
    15fc:	2c4000ef          	jal	ra,18c0 <_Z4exiti>
    1600:	4781                	li	a5,0
    1602:	853e                	mv	a0,a5
    1604:	60e2                	ld	ra,24(sp)
    1606:	6442                	ld	s0,16(sp)
    1608:	6105                	addi	sp,sp,32
    160a:	8082                	ret

000000000000160c <_ZL10__syscall0l>:
    160c:	1101                	addi	sp,sp,-32
    160e:	ec22                	sd	s0,24(sp)
    1610:	1000                	addi	s0,sp,32
    1612:	fea43423          	sd	a0,-24(s0)
    1616:	fe843883          	ld	a7,-24(s0)
    161a:	00000073          	ecall
    161e:	87aa                	mv	a5,a0
    1620:	853e                	mv	a0,a5
    1622:	6462                	ld	s0,24(sp)
    1624:	6105                	addi	sp,sp,32
    1626:	8082                	ret

0000000000001628 <_ZL10__syscall1ll>:
    1628:	1101                	addi	sp,sp,-32
    162a:	ec22                	sd	s0,24(sp)
    162c:	1000                	addi	s0,sp,32
    162e:	fea43423          	sd	a0,-24(s0)
    1632:	feb43023          	sd	a1,-32(s0)
    1636:	fe843883          	ld	a7,-24(s0)
    163a:	fe043503          	ld	a0,-32(s0)
    163e:	00000073          	ecall
    1642:	87aa                	mv	a5,a0
    1644:	853e                	mv	a0,a5
    1646:	6462                	ld	s0,24(sp)
    1648:	6105                	addi	sp,sp,32
    164a:	8082                	ret

000000000000164c <_ZL10__syscall2lll>:
    164c:	7179                	addi	sp,sp,-48
    164e:	f422                	sd	s0,40(sp)
    1650:	1800                	addi	s0,sp,48
    1652:	fea43423          	sd	a0,-24(s0)
    1656:	feb43023          	sd	a1,-32(s0)
    165a:	fcc43c23          	sd	a2,-40(s0)
    165e:	fe843883          	ld	a7,-24(s0)
    1662:	fe043503          	ld	a0,-32(s0)
    1666:	fd843583          	ld	a1,-40(s0)
    166a:	00000073          	ecall
    166e:	87aa                	mv	a5,a0
    1670:	853e                	mv	a0,a5
    1672:	7422                	ld	s0,40(sp)
    1674:	6145                	addi	sp,sp,48
    1676:	8082                	ret

0000000000001678 <_ZL10__syscall3llll>:
    1678:	7179                	addi	sp,sp,-48
    167a:	f422                	sd	s0,40(sp)
    167c:	1800                	addi	s0,sp,48
    167e:	fea43423          	sd	a0,-24(s0)
    1682:	feb43023          	sd	a1,-32(s0)
    1686:	fcc43c23          	sd	a2,-40(s0)
    168a:	fcd43823          	sd	a3,-48(s0)
    168e:	fe843883          	ld	a7,-24(s0)
    1692:	fe043503          	ld	a0,-32(s0)
    1696:	fd843583          	ld	a1,-40(s0)
    169a:	fd043603          	ld	a2,-48(s0)
    169e:	00000073          	ecall
    16a2:	87aa                	mv	a5,a0
    16a4:	853e                	mv	a0,a5
    16a6:	7422                	ld	s0,40(sp)
    16a8:	6145                	addi	sp,sp,48
    16aa:	8082                	ret

00000000000016ac <_ZL10__syscall4lllll>:
    16ac:	7139                	addi	sp,sp,-64
    16ae:	fc22                	sd	s0,56(sp)
    16b0:	0080                	addi	s0,sp,64
    16b2:	fea43423          	sd	a0,-24(s0)
    16b6:	feb43023          	sd	a1,-32(s0)
    16ba:	fcc43c23          	sd	a2,-40(s0)
    16be:	fcd43823          	sd	a3,-48(s0)
    16c2:	fce43423          	sd	a4,-56(s0)
    16c6:	fe843883          	ld	a7,-24(s0)
    16ca:	fe043503          	ld	a0,-32(s0)
    16ce:	fd843583          	ld	a1,-40(s0)
    16d2:	fd043603          	ld	a2,-48(s0)
    16d6:	fc843683          	ld	a3,-56(s0)
    16da:	00000073          	ecall
    16de:	87aa                	mv	a5,a0
    16e0:	853e                	mv	a0,a5
    16e2:	7462                	ld	s0,56(sp)
    16e4:	6121                	addi	sp,sp,64
    16e6:	8082                	ret

00000000000016e8 <_ZL10__syscall5llllll>:
    16e8:	7139                	addi	sp,sp,-64
    16ea:	fc22                	sd	s0,56(sp)
    16ec:	0080                	addi	s0,sp,64
    16ee:	fea43423          	sd	a0,-24(s0)
    16f2:	feb43023          	sd	a1,-32(s0)
    16f6:	fcc43c23          	sd	a2,-40(s0)
    16fa:	fcd43823          	sd	a3,-48(s0)
    16fe:	fce43423          	sd	a4,-56(s0)
    1702:	fcf43023          	sd	a5,-64(s0)
    1706:	fe843883          	ld	a7,-24(s0)
    170a:	fe043503          	ld	a0,-32(s0)
    170e:	fd843583          	ld	a1,-40(s0)
    1712:	fd043603          	ld	a2,-48(s0)
    1716:	fc843683          	ld	a3,-56(s0)
    171a:	fc043703          	ld	a4,-64(s0)
    171e:	00000073          	ecall
    1722:	87aa                	mv	a5,a0
    1724:	853e                	mv	a0,a5
    1726:	7462                	ld	s0,56(sp)
    1728:	6121                	addi	sp,sp,64
    172a:	8082                	ret

000000000000172c <_Z4openPKci>:
    172c:	1101                	addi	sp,sp,-32
    172e:	ec06                	sd	ra,24(sp)
    1730:	e822                	sd	s0,16(sp)
    1732:	1000                	addi	s0,sp,32
    1734:	fea43423          	sd	a0,-24(s0)
    1738:	87ae                	mv	a5,a1
    173a:	fef42223          	sw	a5,-28(s0)
    173e:	fe843783          	ld	a5,-24(s0)
    1742:	fe442683          	lw	a3,-28(s0)
    1746:	4709                	li	a4,2
    1748:	863e                	mv	a2,a5
    174a:	f9c00593          	li	a1,-100
    174e:	03800513          	li	a0,56
    1752:	f5bff0ef          	jal	ra,16ac <_ZL10__syscall4lllll>
    1756:	87aa                	mv	a5,a0
    1758:	2781                	sext.w	a5,a5
    175a:	853e                	mv	a0,a5
    175c:	60e2                	ld	ra,24(sp)
    175e:	6442                	ld	s0,16(sp)
    1760:	6105                	addi	sp,sp,32
    1762:	8082                	ret

0000000000001764 <_Z6openatiPKci>:
    1764:	1101                	addi	sp,sp,-32
    1766:	ec06                	sd	ra,24(sp)
    1768:	e822                	sd	s0,16(sp)
    176a:	1000                	addi	s0,sp,32
    176c:	87aa                	mv	a5,a0
    176e:	feb43023          	sd	a1,-32(s0)
    1772:	8732                	mv	a4,a2
    1774:	fef42623          	sw	a5,-20(s0)
    1778:	87ba                	mv	a5,a4
    177a:	fef42423          	sw	a5,-24(s0)
    177e:	fec42783          	lw	a5,-20(s0)
    1782:	fe043603          	ld	a2,-32(s0)
    1786:	fe842683          	lw	a3,-24(s0)
    178a:	18000713          	li	a4,384
    178e:	85be                	mv	a1,a5
    1790:	03800513          	li	a0,56
    1794:	f19ff0ef          	jal	ra,16ac <_ZL10__syscall4lllll>
    1798:	87aa                	mv	a5,a0
    179a:	2781                	sext.w	a5,a5
    179c:	853e                	mv	a0,a5
    179e:	60e2                	ld	ra,24(sp)
    17a0:	6442                	ld	s0,16(sp)
    17a2:	6105                	addi	sp,sp,32
    17a4:	8082                	ret

00000000000017a6 <_Z5closei>:
    17a6:	1101                	addi	sp,sp,-32
    17a8:	ec06                	sd	ra,24(sp)
    17aa:	e822                	sd	s0,16(sp)
    17ac:	1000                	addi	s0,sp,32
    17ae:	87aa                	mv	a5,a0
    17b0:	fef42623          	sw	a5,-20(s0)
    17b4:	fec42783          	lw	a5,-20(s0)
    17b8:	85be                	mv	a1,a5
    17ba:	03900513          	li	a0,57
    17be:	e6bff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    17c2:	87aa                	mv	a5,a0
    17c4:	2781                	sext.w	a5,a5
    17c6:	853e                	mv	a0,a5
    17c8:	60e2                	ld	ra,24(sp)
    17ca:	6442                	ld	s0,16(sp)
    17cc:	6105                	addi	sp,sp,32
    17ce:	8082                	ret

00000000000017d0 <_Z4readiPvy>:
    17d0:	7179                	addi	sp,sp,-48
    17d2:	f406                	sd	ra,40(sp)
    17d4:	f022                	sd	s0,32(sp)
    17d6:	1800                	addi	s0,sp,48
    17d8:	87aa                	mv	a5,a0
    17da:	feb43023          	sd	a1,-32(s0)
    17de:	fcc43c23          	sd	a2,-40(s0)
    17e2:	fef42623          	sw	a5,-20(s0)
    17e6:	fec42783          	lw	a5,-20(s0)
    17ea:	fe043703          	ld	a4,-32(s0)
    17ee:	fd843683          	ld	a3,-40(s0)
    17f2:	863a                	mv	a2,a4
    17f4:	85be                	mv	a1,a5
    17f6:	03f00513          	li	a0,63
    17fa:	e7fff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    17fe:	87aa                	mv	a5,a0
    1800:	853e                	mv	a0,a5
    1802:	70a2                	ld	ra,40(sp)
    1804:	7402                	ld	s0,32(sp)
    1806:	6145                	addi	sp,sp,48
    1808:	8082                	ret

000000000000180a <_Z5writeiPKvy>:
    180a:	7179                	addi	sp,sp,-48
    180c:	f406                	sd	ra,40(sp)
    180e:	f022                	sd	s0,32(sp)
    1810:	1800                	addi	s0,sp,48
    1812:	87aa                	mv	a5,a0
    1814:	feb43023          	sd	a1,-32(s0)
    1818:	fcc43c23          	sd	a2,-40(s0)
    181c:	fef42623          	sw	a5,-20(s0)
    1820:	fec42783          	lw	a5,-20(s0)
    1824:	fe043703          	ld	a4,-32(s0)
    1828:	fd843683          	ld	a3,-40(s0)
    182c:	863a                	mv	a2,a4
    182e:	85be                	mv	a1,a5
    1830:	04000513          	li	a0,64
    1834:	e45ff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1838:	87aa                	mv	a5,a0
    183a:	853e                	mv	a0,a5
    183c:	70a2                	ld	ra,40(sp)
    183e:	7402                	ld	s0,32(sp)
    1840:	6145                	addi	sp,sp,48
    1842:	8082                	ret

0000000000001844 <_Z6getpidv>:
    1844:	1141                	addi	sp,sp,-16
    1846:	e406                	sd	ra,8(sp)
    1848:	e022                	sd	s0,0(sp)
    184a:	0800                	addi	s0,sp,16
    184c:	0ac00513          	li	a0,172
    1850:	dbdff0ef          	jal	ra,160c <_ZL10__syscall0l>
    1854:	87aa                	mv	a5,a0
    1856:	2781                	sext.w	a5,a5
    1858:	853e                	mv	a0,a5
    185a:	60a2                	ld	ra,8(sp)
    185c:	6402                	ld	s0,0(sp)
    185e:	0141                	addi	sp,sp,16
    1860:	8082                	ret

0000000000001862 <_Z7getppidv>:
    1862:	1141                	addi	sp,sp,-16
    1864:	e406                	sd	ra,8(sp)
    1866:	e022                	sd	s0,0(sp)
    1868:	0800                	addi	s0,sp,16
    186a:	0ad00513          	li	a0,173
    186e:	d9fff0ef          	jal	ra,160c <_ZL10__syscall0l>
    1872:	87aa                	mv	a5,a0
    1874:	2781                	sext.w	a5,a5
    1876:	853e                	mv	a0,a5
    1878:	60a2                	ld	ra,8(sp)
    187a:	6402                	ld	s0,0(sp)
    187c:	0141                	addi	sp,sp,16
    187e:	8082                	ret

0000000000001880 <_Z11sched_yieldv>:
    1880:	1141                	addi	sp,sp,-16
    1882:	e406                	sd	ra,8(sp)
    1884:	e022                	sd	s0,0(sp)
    1886:	0800                	addi	s0,sp,16
    1888:	07c00513          	li	a0,124
    188c:	d81ff0ef          	jal	ra,160c <_ZL10__syscall0l>
    1890:	87aa                	mv	a5,a0
    1892:	2781                	sext.w	a5,a5
    1894:	853e                	mv	a0,a5
    1896:	60a2                	ld	ra,8(sp)
    1898:	6402                	ld	s0,0(sp)
    189a:	0141                	addi	sp,sp,16
    189c:	8082                	ret

000000000000189e <_Z4forkv>:
    189e:	1141                	addi	sp,sp,-16
    18a0:	e406                	sd	ra,8(sp)
    18a2:	e022                	sd	s0,0(sp)
    18a4:	0800                	addi	s0,sp,16
    18a6:	4601                	li	a2,0
    18a8:	45c5                	li	a1,17
    18aa:	0dc00513          	li	a0,220
    18ae:	d9fff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    18b2:	87aa                	mv	a5,a0
    18b4:	2781                	sext.w	a5,a5
    18b6:	853e                	mv	a0,a5
    18b8:	60a2                	ld	ra,8(sp)
    18ba:	6402                	ld	s0,0(sp)
    18bc:	0141                	addi	sp,sp,16
    18be:	8082                	ret

00000000000018c0 <_Z4exiti>:
    18c0:	1101                	addi	sp,sp,-32
    18c2:	ec06                	sd	ra,24(sp)
    18c4:	e822                	sd	s0,16(sp)
    18c6:	1000                	addi	s0,sp,32
    18c8:	87aa                	mv	a5,a0
    18ca:	fef42623          	sw	a5,-20(s0)
    18ce:	fec42783          	lw	a5,-20(s0)
    18d2:	85be                	mv	a1,a5
    18d4:	05d00513          	li	a0,93
    18d8:	d51ff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    18dc:	0001                	nop
    18de:	60e2                	ld	ra,24(sp)
    18e0:	6442                	ld	s0,16(sp)
    18e2:	6105                	addi	sp,sp,32
    18e4:	8082                	ret

00000000000018e6 <_Z7waitpidiPii>:
    18e6:	1101                	addi	sp,sp,-32
    18e8:	ec06                	sd	ra,24(sp)
    18ea:	e822                	sd	s0,16(sp)
    18ec:	1000                	addi	s0,sp,32
    18ee:	87aa                	mv	a5,a0
    18f0:	feb43023          	sd	a1,-32(s0)
    18f4:	8732                	mv	a4,a2
    18f6:	fef42623          	sw	a5,-20(s0)
    18fa:	87ba                	mv	a5,a4
    18fc:	fef42423          	sw	a5,-24(s0)
    1900:	fec42783          	lw	a5,-20(s0)
    1904:	fe043603          	ld	a2,-32(s0)
    1908:	fe842683          	lw	a3,-24(s0)
    190c:	4701                	li	a4,0
    190e:	85be                	mv	a1,a5
    1910:	10400513          	li	a0,260
    1914:	d99ff0ef          	jal	ra,16ac <_ZL10__syscall4lllll>
    1918:	87aa                	mv	a5,a0
    191a:	2781                	sext.w	a5,a5
    191c:	853e                	mv	a0,a5
    191e:	60e2                	ld	ra,24(sp)
    1920:	6442                	ld	s0,16(sp)
    1922:	6105                	addi	sp,sp,32
    1924:	8082                	ret

0000000000001926 <_Z4execPc>:
    1926:	1101                	addi	sp,sp,-32
    1928:	ec06                	sd	ra,24(sp)
    192a:	e822                	sd	s0,16(sp)
    192c:	1000                	addi	s0,sp,32
    192e:	fea43423          	sd	a0,-24(s0)
    1932:	fe843783          	ld	a5,-24(s0)
    1936:	85be                	mv	a1,a5
    1938:	0dd00513          	li	a0,221
    193c:	cedff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1940:	87aa                	mv	a5,a0
    1942:	2781                	sext.w	a5,a5
    1944:	853e                	mv	a0,a5
    1946:	60e2                	ld	ra,24(sp)
    1948:	6442                	ld	s0,16(sp)
    194a:	6105                	addi	sp,sp,32
    194c:	8082                	ret

000000000000194e <_Z6execvePKcPKPcS3_>:
    194e:	7179                	addi	sp,sp,-48
    1950:	f406                	sd	ra,40(sp)
    1952:	f022                	sd	s0,32(sp)
    1954:	1800                	addi	s0,sp,48
    1956:	fea43423          	sd	a0,-24(s0)
    195a:	feb43023          	sd	a1,-32(s0)
    195e:	fcc43c23          	sd	a2,-40(s0)
    1962:	fe843783          	ld	a5,-24(s0)
    1966:	fe043703          	ld	a4,-32(s0)
    196a:	fd843683          	ld	a3,-40(s0)
    196e:	863a                	mv	a2,a4
    1970:	85be                	mv	a1,a5
    1972:	0dd00513          	li	a0,221
    1976:	d03ff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    197a:	87aa                	mv	a5,a0
    197c:	2781                	sext.w	a5,a5
    197e:	853e                	mv	a0,a5
    1980:	70a2                	ld	ra,40(sp)
    1982:	7402                	ld	s0,32(sp)
    1984:	6145                	addi	sp,sp,48
    1986:	8082                	ret

0000000000001988 <_Z5timesPv>:
    1988:	1101                	addi	sp,sp,-32
    198a:	ec06                	sd	ra,24(sp)
    198c:	e822                	sd	s0,16(sp)
    198e:	1000                	addi	s0,sp,32
    1990:	fea43423          	sd	a0,-24(s0)
    1994:	fe843783          	ld	a5,-24(s0)
    1998:	85be                	mv	a1,a5
    199a:	09900513          	li	a0,153
    199e:	c8bff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    19a2:	87aa                	mv	a5,a0
    19a4:	2781                	sext.w	a5,a5
    19a6:	853e                	mv	a0,a5
    19a8:	60e2                	ld	ra,24(sp)
    19aa:	6442                	ld	s0,16(sp)
    19ac:	6105                	addi	sp,sp,32
    19ae:	8082                	ret

00000000000019b0 <_Z8get_timev>:
    19b0:	7179                	addi	sp,sp,-48
    19b2:	f406                	sd	ra,40(sp)
    19b4:	f022                	sd	s0,32(sp)
    19b6:	1800                	addi	s0,sp,48
    19b8:	fd840793          	addi	a5,s0,-40
    19bc:	4581                	li	a1,0
    19be:	853e                	mv	a0,a5
    19c0:	040000ef          	jal	ra,1a00 <_Z12sys_get_timeP7TimeVali>
    19c4:	87aa                	mv	a5,a0
    19c6:	fef42623          	sw	a5,-20(s0)
    19ca:	fec42783          	lw	a5,-20(s0)
    19ce:	2781                	sext.w	a5,a5
    19d0:	e395                	bnez	a5,19f4 <_Z8get_timev+0x44>
    19d2:	fd843703          	ld	a4,-40(s0)
    19d6:	67c1                	lui	a5,0x10
    19d8:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xde47>
    19da:	8f7d                	and	a4,a4,a5
    19dc:	3e800793          	li	a5,1000
    19e0:	02f70733          	mul	a4,a4,a5
    19e4:	fe043683          	ld	a3,-32(s0)
    19e8:	3e800793          	li	a5,1000
    19ec:	02f6d7b3          	divu	a5,a3,a5
    19f0:	97ba                	add	a5,a5,a4
    19f2:	a011                	j	19f6 <_Z8get_timev+0x46>
    19f4:	57fd                	li	a5,-1
    19f6:	853e                	mv	a0,a5
    19f8:	70a2                	ld	ra,40(sp)
    19fa:	7402                	ld	s0,32(sp)
    19fc:	6145                	addi	sp,sp,48
    19fe:	8082                	ret

0000000000001a00 <_Z12sys_get_timeP7TimeVali>:
    1a00:	1101                	addi	sp,sp,-32
    1a02:	ec06                	sd	ra,24(sp)
    1a04:	e822                	sd	s0,16(sp)
    1a06:	1000                	addi	s0,sp,32
    1a08:	fea43423          	sd	a0,-24(s0)
    1a0c:	87ae                	mv	a5,a1
    1a0e:	fef42223          	sw	a5,-28(s0)
    1a12:	fe843783          	ld	a5,-24(s0)
    1a16:	fe442703          	lw	a4,-28(s0)
    1a1a:	863a                	mv	a2,a4
    1a1c:	85be                	mv	a1,a5
    1a1e:	0a900513          	li	a0,169
    1a22:	c2bff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1a26:	87aa                	mv	a5,a0
    1a28:	2781                	sext.w	a5,a5
    1a2a:	853e                	mv	a0,a5
    1a2c:	60e2                	ld	ra,24(sp)
    1a2e:	6442                	ld	s0,16(sp)
    1a30:	6105                	addi	sp,sp,32
    1a32:	8082                	ret

0000000000001a34 <_Z4timePm>:
    1a34:	1101                	addi	sp,sp,-32
    1a36:	ec06                	sd	ra,24(sp)
    1a38:	e822                	sd	s0,16(sp)
    1a3a:	1000                	addi	s0,sp,32
    1a3c:	fea43423          	sd	a0,-24(s0)
    1a40:	fe843783          	ld	a5,-24(s0)
    1a44:	85be                	mv	a1,a5
    1a46:	42600513          	li	a0,1062
    1a4a:	bdfff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1a4e:	87aa                	mv	a5,a0
    1a50:	2781                	sext.w	a5,a5
    1a52:	853e                	mv	a0,a5
    1a54:	60e2                	ld	ra,24(sp)
    1a56:	6442                	ld	s0,16(sp)
    1a58:	6105                	addi	sp,sp,32
    1a5a:	8082                	ret

0000000000001a5c <_Z5sleepy>:
    1a5c:	7179                	addi	sp,sp,-48
    1a5e:	f406                	sd	ra,40(sp)
    1a60:	f022                	sd	s0,32(sp)
    1a62:	1800                	addi	s0,sp,48
    1a64:	fca43c23          	sd	a0,-40(s0)
    1a68:	fe043023          	sd	zero,-32(s0)
    1a6c:	fe043423          	sd	zero,-24(s0)
    1a70:	fd843783          	ld	a5,-40(s0)
    1a74:	fef43023          	sd	a5,-32(s0)
    1a78:	fe040793          	addi	a5,s0,-32
    1a7c:	fe040713          	addi	a4,s0,-32
    1a80:	863a                	mv	a2,a4
    1a82:	85be                	mv	a1,a5
    1a84:	06500513          	li	a0,101
    1a88:	bc5ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1a8c:	87aa                	mv	a5,a0
    1a8e:	00f037b3          	snez	a5,a5
    1a92:	0ff7f793          	zext.b	a5,a5
    1a96:	c789                	beqz	a5,1aa0 <_Z5sleepy+0x44>
    1a98:	fe043783          	ld	a5,-32(s0)
    1a9c:	2781                	sext.w	a5,a5
    1a9e:	a011                	j	1aa2 <_Z5sleepy+0x46>
    1aa0:	4781                	li	a5,0
    1aa2:	853e                	mv	a0,a5
    1aa4:	70a2                	ld	ra,40(sp)
    1aa6:	7402                	ld	s0,32(sp)
    1aa8:	6145                	addi	sp,sp,48
    1aaa:	8082                	ret

0000000000001aac <_Z12set_priorityi>:
    1aac:	1101                	addi	sp,sp,-32
    1aae:	ec06                	sd	ra,24(sp)
    1ab0:	e822                	sd	s0,16(sp)
    1ab2:	1000                	addi	s0,sp,32
    1ab4:	87aa                	mv	a5,a0
    1ab6:	fef42623          	sw	a5,-20(s0)
    1aba:	fec42783          	lw	a5,-20(s0)
    1abe:	85be                	mv	a1,a5
    1ac0:	08c00513          	li	a0,140
    1ac4:	b65ff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1ac8:	87aa                	mv	a5,a0
    1aca:	2781                	sext.w	a5,a5
    1acc:	853e                	mv	a0,a5
    1ace:	60e2                	ld	ra,24(sp)
    1ad0:	6442                	ld	s0,16(sp)
    1ad2:	6105                	addi	sp,sp,32
    1ad4:	8082                	ret

0000000000001ad6 <_Z6munmapPvy>:
    1ad6:	1101                	addi	sp,sp,-32
    1ad8:	ec06                	sd	ra,24(sp)
    1ada:	e822                	sd	s0,16(sp)
    1adc:	1000                	addi	s0,sp,32
    1ade:	fea43423          	sd	a0,-24(s0)
    1ae2:	feb43023          	sd	a1,-32(s0)
    1ae6:	fe843783          	ld	a5,-24(s0)
    1aea:	fe043703          	ld	a4,-32(s0)
    1aee:	863a                	mv	a2,a4
    1af0:	85be                	mv	a1,a5
    1af2:	0d700513          	li	a0,215
    1af6:	b57ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1afa:	87aa                	mv	a5,a0
    1afc:	2781                	sext.w	a5,a5
    1afe:	853e                	mv	a0,a5
    1b00:	60e2                	ld	ra,24(sp)
    1b02:	6442                	ld	s0,16(sp)
    1b04:	6105                	addi	sp,sp,32
    1b06:	8082                	ret

0000000000001b08 <_Z4waitPi>:
    1b08:	1101                	addi	sp,sp,-32
    1b0a:	ec06                	sd	ra,24(sp)
    1b0c:	e822                	sd	s0,16(sp)
    1b0e:	1000                	addi	s0,sp,32
    1b10:	fea43423          	sd	a0,-24(s0)
    1b14:	4601                	li	a2,0
    1b16:	fe843583          	ld	a1,-24(s0)
    1b1a:	557d                	li	a0,-1
    1b1c:	dcbff0ef          	jal	ra,18e6 <_Z7waitpidiPii>
    1b20:	87aa                	mv	a5,a0
    1b22:	853e                	mv	a0,a5
    1b24:	60e2                	ld	ra,24(sp)
    1b26:	6442                	ld	s0,16(sp)
    1b28:	6105                	addi	sp,sp,32
    1b2a:	8082                	ret

0000000000001b2c <_Z5spawnPc>:
    1b2c:	1101                	addi	sp,sp,-32
    1b2e:	ec06                	sd	ra,24(sp)
    1b30:	e822                	sd	s0,16(sp)
    1b32:	1000                	addi	s0,sp,32
    1b34:	fea43423          	sd	a0,-24(s0)
    1b38:	fe843783          	ld	a5,-24(s0)
    1b3c:	85be                	mv	a1,a5
    1b3e:	19000513          	li	a0,400
    1b42:	ae7ff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1b46:	87aa                	mv	a5,a0
    1b48:	2781                	sext.w	a5,a5
    1b4a:	853e                	mv	a0,a5
    1b4c:	60e2                	ld	ra,24(sp)
    1b4e:	6442                	ld	s0,16(sp)
    1b50:	6105                	addi	sp,sp,32
    1b52:	8082                	ret

0000000000001b54 <_Z8mailreadPvi>:
    1b54:	1101                	addi	sp,sp,-32
    1b56:	ec06                	sd	ra,24(sp)
    1b58:	e822                	sd	s0,16(sp)
    1b5a:	1000                	addi	s0,sp,32
    1b5c:	fea43423          	sd	a0,-24(s0)
    1b60:	87ae                	mv	a5,a1
    1b62:	fef42223          	sw	a5,-28(s0)
    1b66:	fe843783          	ld	a5,-24(s0)
    1b6a:	fe442703          	lw	a4,-28(s0)
    1b6e:	863a                	mv	a2,a4
    1b70:	85be                	mv	a1,a5
    1b72:	19100513          	li	a0,401
    1b76:	ad7ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1b7a:	87aa                	mv	a5,a0
    1b7c:	2781                	sext.w	a5,a5
    1b7e:	853e                	mv	a0,a5
    1b80:	60e2                	ld	ra,24(sp)
    1b82:	6442                	ld	s0,16(sp)
    1b84:	6105                	addi	sp,sp,32
    1b86:	8082                	ret

0000000000001b88 <_Z9mailwriteiPvi>:
    1b88:	1101                	addi	sp,sp,-32
    1b8a:	ec06                	sd	ra,24(sp)
    1b8c:	e822                	sd	s0,16(sp)
    1b8e:	1000                	addi	s0,sp,32
    1b90:	87aa                	mv	a5,a0
    1b92:	feb43023          	sd	a1,-32(s0)
    1b96:	8732                	mv	a4,a2
    1b98:	fef42623          	sw	a5,-20(s0)
    1b9c:	87ba                	mv	a5,a4
    1b9e:	fef42423          	sw	a5,-24(s0)
    1ba2:	fec42783          	lw	a5,-20(s0)
    1ba6:	fe043703          	ld	a4,-32(s0)
    1baa:	fe842683          	lw	a3,-24(s0)
    1bae:	863a                	mv	a2,a4
    1bb0:	85be                	mv	a1,a5
    1bb2:	19200513          	li	a0,402
    1bb6:	ac3ff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1bba:	87aa                	mv	a5,a0
    1bbc:	2781                	sext.w	a5,a5
    1bbe:	853e                	mv	a0,a5
    1bc0:	60e2                	ld	ra,24(sp)
    1bc2:	6442                	ld	s0,16(sp)
    1bc4:	6105                	addi	sp,sp,32
    1bc6:	8082                	ret

0000000000001bc8 <_Z5fstatiP5kstat>:
    1bc8:	1101                	addi	sp,sp,-32
    1bca:	ec06                	sd	ra,24(sp)
    1bcc:	e822                	sd	s0,16(sp)
    1bce:	1000                	addi	s0,sp,32
    1bd0:	87aa                	mv	a5,a0
    1bd2:	feb43023          	sd	a1,-32(s0)
    1bd6:	fef42623          	sw	a5,-20(s0)
    1bda:	fec42783          	lw	a5,-20(s0)
    1bde:	fe043703          	ld	a4,-32(s0)
    1be2:	863a                	mv	a2,a4
    1be4:	85be                	mv	a1,a5
    1be6:	05000513          	li	a0,80
    1bea:	a63ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1bee:	87aa                	mv	a5,a0
    1bf0:	2781                	sext.w	a5,a5
    1bf2:	853e                	mv	a0,a5
    1bf4:	60e2                	ld	ra,24(sp)
    1bf6:	6442                	ld	s0,16(sp)
    1bf8:	6105                	addi	sp,sp,32
    1bfa:	8082                	ret

0000000000001bfc <_Z10sys_linkatiPciS_j>:
    1bfc:	7179                	addi	sp,sp,-48
    1bfe:	f406                	sd	ra,40(sp)
    1c00:	f022                	sd	s0,32(sp)
    1c02:	1800                	addi	s0,sp,48
    1c04:	87aa                	mv	a5,a0
    1c06:	feb43023          	sd	a1,-32(s0)
    1c0a:	fcd43c23          	sd	a3,-40(s0)
    1c0e:	fef42623          	sw	a5,-20(s0)
    1c12:	87b2                	mv	a5,a2
    1c14:	fef42423          	sw	a5,-24(s0)
    1c18:	87ba                	mv	a5,a4
    1c1a:	fcf42a23          	sw	a5,-44(s0)
    1c1e:	fec42583          	lw	a1,-20(s0)
    1c22:	fe043603          	ld	a2,-32(s0)
    1c26:	fe842683          	lw	a3,-24(s0)
    1c2a:	fd843703          	ld	a4,-40(s0)
    1c2e:	fd446783          	lwu	a5,-44(s0)
    1c32:	02500513          	li	a0,37
    1c36:	ab3ff0ef          	jal	ra,16e8 <_ZL10__syscall5llllll>
    1c3a:	87aa                	mv	a5,a0
    1c3c:	2781                	sext.w	a5,a5
    1c3e:	853e                	mv	a0,a5
    1c40:	70a2                	ld	ra,40(sp)
    1c42:	7402                	ld	s0,32(sp)
    1c44:	6145                	addi	sp,sp,48
    1c46:	8082                	ret

0000000000001c48 <_Z12sys_unlinkatiPcj>:
    1c48:	1101                	addi	sp,sp,-32
    1c4a:	ec06                	sd	ra,24(sp)
    1c4c:	e822                	sd	s0,16(sp)
    1c4e:	1000                	addi	s0,sp,32
    1c50:	87aa                	mv	a5,a0
    1c52:	feb43023          	sd	a1,-32(s0)
    1c56:	8732                	mv	a4,a2
    1c58:	fef42623          	sw	a5,-20(s0)
    1c5c:	87ba                	mv	a5,a4
    1c5e:	fef42423          	sw	a5,-24(s0)
    1c62:	fec42783          	lw	a5,-20(s0)
    1c66:	fe043703          	ld	a4,-32(s0)
    1c6a:	fe846683          	lwu	a3,-24(s0)
    1c6e:	863a                	mv	a2,a4
    1c70:	85be                	mv	a1,a5
    1c72:	02300513          	li	a0,35
    1c76:	a03ff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1c7a:	87aa                	mv	a5,a0
    1c7c:	2781                	sext.w	a5,a5
    1c7e:	853e                	mv	a0,a5
    1c80:	60e2                	ld	ra,24(sp)
    1c82:	6442                	ld	s0,16(sp)
    1c84:	6105                	addi	sp,sp,32
    1c86:	8082                	ret

0000000000001c88 <_Z4linkPcS_>:
    1c88:	1101                	addi	sp,sp,-32
    1c8a:	ec06                	sd	ra,24(sp)
    1c8c:	e822                	sd	s0,16(sp)
    1c8e:	1000                	addi	s0,sp,32
    1c90:	fea43423          	sd	a0,-24(s0)
    1c94:	feb43023          	sd	a1,-32(s0)
    1c98:	4701                	li	a4,0
    1c9a:	fe043683          	ld	a3,-32(s0)
    1c9e:	f9c00613          	li	a2,-100
    1ca2:	fe843583          	ld	a1,-24(s0)
    1ca6:	f9c00513          	li	a0,-100
    1caa:	f53ff0ef          	jal	ra,1bfc <_Z10sys_linkatiPciS_j>
    1cae:	87aa                	mv	a5,a0
    1cb0:	853e                	mv	a0,a5
    1cb2:	60e2                	ld	ra,24(sp)
    1cb4:	6442                	ld	s0,16(sp)
    1cb6:	6105                	addi	sp,sp,32
    1cb8:	8082                	ret

0000000000001cba <_Z6unlinkPc>:
    1cba:	1101                	addi	sp,sp,-32
    1cbc:	ec06                	sd	ra,24(sp)
    1cbe:	e822                	sd	s0,16(sp)
    1cc0:	1000                	addi	s0,sp,32
    1cc2:	fea43423          	sd	a0,-24(s0)
    1cc6:	4601                	li	a2,0
    1cc8:	fe843583          	ld	a1,-24(s0)
    1ccc:	f9c00513          	li	a0,-100
    1cd0:	f79ff0ef          	jal	ra,1c48 <_Z12sys_unlinkatiPcj>
    1cd4:	87aa                	mv	a5,a0
    1cd6:	853e                	mv	a0,a5
    1cd8:	60e2                	ld	ra,24(sp)
    1cda:	6442                	ld	s0,16(sp)
    1cdc:	6105                	addi	sp,sp,32
    1cde:	8082                	ret

0000000000001ce0 <_Z5unamePv>:
    1ce0:	1101                	addi	sp,sp,-32
    1ce2:	ec06                	sd	ra,24(sp)
    1ce4:	e822                	sd	s0,16(sp)
    1ce6:	1000                	addi	s0,sp,32
    1ce8:	fea43423          	sd	a0,-24(s0)
    1cec:	fe843783          	ld	a5,-24(s0)
    1cf0:	85be                	mv	a1,a5
    1cf2:	0a000513          	li	a0,160
    1cf6:	933ff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1cfa:	87aa                	mv	a5,a0
    1cfc:	2781                	sext.w	a5,a5
    1cfe:	853e                	mv	a0,a5
    1d00:	60e2                	ld	ra,24(sp)
    1d02:	6442                	ld	s0,16(sp)
    1d04:	6105                	addi	sp,sp,32
    1d06:	8082                	ret

0000000000001d08 <_Z3brkPv>:
    1d08:	1101                	addi	sp,sp,-32
    1d0a:	ec06                	sd	ra,24(sp)
    1d0c:	e822                	sd	s0,16(sp)
    1d0e:	1000                	addi	s0,sp,32
    1d10:	fea43423          	sd	a0,-24(s0)
    1d14:	fe843783          	ld	a5,-24(s0)
    1d18:	85be                	mv	a1,a5
    1d1a:	0d600513          	li	a0,214
    1d1e:	90bff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1d22:	87aa                	mv	a5,a0
    1d24:	2781                	sext.w	a5,a5
    1d26:	853e                	mv	a0,a5
    1d28:	60e2                	ld	ra,24(sp)
    1d2a:	6442                	ld	s0,16(sp)
    1d2c:	6105                	addi	sp,sp,32
    1d2e:	8082                	ret

0000000000001d30 <_Z5chdirPKc>:
    1d30:	1101                	addi	sp,sp,-32
    1d32:	ec06                	sd	ra,24(sp)
    1d34:	e822                	sd	s0,16(sp)
    1d36:	1000                	addi	s0,sp,32
    1d38:	fea43423          	sd	a0,-24(s0)
    1d3c:	fe843783          	ld	a5,-24(s0)
    1d40:	85be                	mv	a1,a5
    1d42:	03100513          	li	a0,49
    1d46:	8e3ff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1d4a:	87aa                	mv	a5,a0
    1d4c:	2781                	sext.w	a5,a5
    1d4e:	853e                	mv	a0,a5
    1d50:	60e2                	ld	ra,24(sp)
    1d52:	6442                	ld	s0,16(sp)
    1d54:	6105                	addi	sp,sp,32
    1d56:	8082                	ret

0000000000001d58 <_Z5mkdirPKcj>:
    1d58:	1101                	addi	sp,sp,-32
    1d5a:	ec06                	sd	ra,24(sp)
    1d5c:	e822                	sd	s0,16(sp)
    1d5e:	1000                	addi	s0,sp,32
    1d60:	fea43423          	sd	a0,-24(s0)
    1d64:	87ae                	mv	a5,a1
    1d66:	fef42223          	sw	a5,-28(s0)
    1d6a:	fe843783          	ld	a5,-24(s0)
    1d6e:	fe446703          	lwu	a4,-28(s0)
    1d72:	86ba                	mv	a3,a4
    1d74:	863e                	mv	a2,a5
    1d76:	f9c00593          	li	a1,-100
    1d7a:	02200513          	li	a0,34
    1d7e:	8fbff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1d82:	87aa                	mv	a5,a0
    1d84:	2781                	sext.w	a5,a5
    1d86:	853e                	mv	a0,a5
    1d88:	60e2                	ld	ra,24(sp)
    1d8a:	6442                	ld	s0,16(sp)
    1d8c:	6105                	addi	sp,sp,32
    1d8e:	8082                	ret

0000000000001d90 <_Z8getdentsiP14linux_dirent64m>:
    1d90:	7179                	addi	sp,sp,-48
    1d92:	f406                	sd	ra,40(sp)
    1d94:	f022                	sd	s0,32(sp)
    1d96:	1800                	addi	s0,sp,48
    1d98:	87aa                	mv	a5,a0
    1d9a:	feb43023          	sd	a1,-32(s0)
    1d9e:	fcc43c23          	sd	a2,-40(s0)
    1da2:	fef42623          	sw	a5,-20(s0)
    1da6:	fec42783          	lw	a5,-20(s0)
    1daa:	fe043703          	ld	a4,-32(s0)
    1dae:	fd843683          	ld	a3,-40(s0)
    1db2:	863a                	mv	a2,a4
    1db4:	85be                	mv	a1,a5
    1db6:	03d00513          	li	a0,61
    1dba:	8bfff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1dbe:	87aa                	mv	a5,a0
    1dc0:	2781                	sext.w	a5,a5
    1dc2:	853e                	mv	a0,a5
    1dc4:	70a2                	ld	ra,40(sp)
    1dc6:	7402                	ld	s0,32(sp)
    1dc8:	6145                	addi	sp,sp,48
    1dca:	8082                	ret

0000000000001dcc <_Z4pipePi>:
    1dcc:	1101                	addi	sp,sp,-32
    1dce:	ec06                	sd	ra,24(sp)
    1dd0:	e822                	sd	s0,16(sp)
    1dd2:	1000                	addi	s0,sp,32
    1dd4:	fea43423          	sd	a0,-24(s0)
    1dd8:	fe843783          	ld	a5,-24(s0)
    1ddc:	4601                	li	a2,0
    1dde:	85be                	mv	a1,a5
    1de0:	03b00513          	li	a0,59
    1de4:	869ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1de8:	87aa                	mv	a5,a0
    1dea:	2781                	sext.w	a5,a5
    1dec:	853e                	mv	a0,a5
    1dee:	60e2                	ld	ra,24(sp)
    1df0:	6442                	ld	s0,16(sp)
    1df2:	6105                	addi	sp,sp,32
    1df4:	8082                	ret

0000000000001df6 <_Z3dupi>:
    1df6:	1101                	addi	sp,sp,-32
    1df8:	ec06                	sd	ra,24(sp)
    1dfa:	e822                	sd	s0,16(sp)
    1dfc:	1000                	addi	s0,sp,32
    1dfe:	87aa                	mv	a5,a0
    1e00:	fef42623          	sw	a5,-20(s0)
    1e04:	fec42783          	lw	a5,-20(s0)
    1e08:	85be                	mv	a1,a5
    1e0a:	455d                	li	a0,23
    1e0c:	81dff0ef          	jal	ra,1628 <_ZL10__syscall1ll>
    1e10:	87aa                	mv	a5,a0
    1e12:	2781                	sext.w	a5,a5
    1e14:	853e                	mv	a0,a5
    1e16:	60e2                	ld	ra,24(sp)
    1e18:	6442                	ld	s0,16(sp)
    1e1a:	6105                	addi	sp,sp,32
    1e1c:	8082                	ret

0000000000001e1e <_Z4dup2ii>:
    1e1e:	1101                	addi	sp,sp,-32
    1e20:	ec06                	sd	ra,24(sp)
    1e22:	e822                	sd	s0,16(sp)
    1e24:	1000                	addi	s0,sp,32
    1e26:	87aa                	mv	a5,a0
    1e28:	872e                	mv	a4,a1
    1e2a:	fef42623          	sw	a5,-20(s0)
    1e2e:	87ba                	mv	a5,a4
    1e30:	fef42423          	sw	a5,-24(s0)
    1e34:	fec42783          	lw	a5,-20(s0)
    1e38:	fe842703          	lw	a4,-24(s0)
    1e3c:	4681                	li	a3,0
    1e3e:	863a                	mv	a2,a4
    1e40:	85be                	mv	a1,a5
    1e42:	4561                	li	a0,24
    1e44:	835ff0ef          	jal	ra,1678 <_ZL10__syscall3llll>
    1e48:	87aa                	mv	a5,a0
    1e4a:	2781                	sext.w	a5,a5
    1e4c:	853e                	mv	a0,a5
    1e4e:	60e2                	ld	ra,24(sp)
    1e50:	6442                	ld	s0,16(sp)
    1e52:	6105                	addi	sp,sp,32
    1e54:	8082                	ret

0000000000001e56 <_Z5mountPKcS0_S0_mPKv>:
    1e56:	7139                	addi	sp,sp,-64
    1e58:	fc06                	sd	ra,56(sp)
    1e5a:	f822                	sd	s0,48(sp)
    1e5c:	0080                	addi	s0,sp,64
    1e5e:	fea43423          	sd	a0,-24(s0)
    1e62:	feb43023          	sd	a1,-32(s0)
    1e66:	fcc43c23          	sd	a2,-40(s0)
    1e6a:	fcd43823          	sd	a3,-48(s0)
    1e6e:	fce43423          	sd	a4,-56(s0)
    1e72:	fe843583          	ld	a1,-24(s0)
    1e76:	fe043603          	ld	a2,-32(s0)
    1e7a:	fd843683          	ld	a3,-40(s0)
    1e7e:	fd043703          	ld	a4,-48(s0)
    1e82:	fc843783          	ld	a5,-56(s0)
    1e86:	02800513          	li	a0,40
    1e8a:	85fff0ef          	jal	ra,16e8 <_ZL10__syscall5llllll>
    1e8e:	87aa                	mv	a5,a0
    1e90:	2781                	sext.w	a5,a5
    1e92:	853e                	mv	a0,a5
    1e94:	70e2                	ld	ra,56(sp)
    1e96:	7442                	ld	s0,48(sp)
    1e98:	6121                	addi	sp,sp,64
    1e9a:	8082                	ret

0000000000001e9c <_Z6umountPKc>:
    1e9c:	1101                	addi	sp,sp,-32
    1e9e:	ec06                	sd	ra,24(sp)
    1ea0:	e822                	sd	s0,16(sp)
    1ea2:	1000                	addi	s0,sp,32
    1ea4:	fea43423          	sd	a0,-24(s0)
    1ea8:	fe843783          	ld	a5,-24(s0)
    1eac:	4601                	li	a2,0
    1eae:	85be                	mv	a1,a5
    1eb0:	02700513          	li	a0,39
    1eb4:	f98ff0ef          	jal	ra,164c <_ZL10__syscall2lll>
    1eb8:	87aa                	mv	a5,a0
    1eba:	2781                	sext.w	a5,a5
    1ebc:	853e                	mv	a0,a5
    1ebe:	60e2                	ld	ra,24(sp)
    1ec0:	6442                	ld	s0,16(sp)
    1ec2:	6105                	addi	sp,sp,32
    1ec4:	8082                	ret

Disassembly of section .interp:

0000000000001ec6 <.interp>:
    1ec6:	62696c2f          	.4byte	0x62696c2f
    1eca:	2d646c2f          	.4byte	0x2d646c2f
    1ece:	696c                	ld	a1,208(a0)
    1ed0:	756e                	ld	a0,248(sp)
    1ed2:	2d78                	fld	fa4,216(a0)
    1ed4:	6972                	ld	s2,280(sp)
    1ed6:	36766373          	csrrsi	t1,0x367,12
    1eda:	2d34                	fld	fa3,88(a0)
    1edc:	706c                	ld	a1,224(s0)
    1ede:	3436                	fld	fs0,360(sp)
    1ee0:	2e64                	fld	fs1,216(a2)
    1ee2:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001ee8 <.note.gnu.build-id>:
    1ee8:	0004                	.2byte	0x4
    1eea:	0000                	unimp
    1eec:	0014                	.2byte	0x14
    1eee:	0000                	unimp
    1ef0:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1ef4:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1ef8:	49d8                	lw	a4,20(a1)
    1efa:	0488                	addi	a0,sp,576
    1efc:	f9f5a11b          	.4byte	0xf9f5a11b
    1f00:	02a2                	slli	t0,t0,0x8
    1f02:	0e56de5b          	.4byte	0xe56de5b
    1f06:	4740                	lw	s0,12(a4)
    1f08:	5a557ed7          	.4byte	0x5a557ed7

Disassembly of section .dynsym:

0000000000001f10 <.dynsym>:
	...
    1f2c:	00010003          	lb	zero,0(sp)
    1f30:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001f40 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001f48 <.gnu.hash>:
    1f48:	0001                	nop
    1f4a:	0000                	unimp
    1f4c:	0001                	nop
    1f4e:	0000                	unimp
    1f50:	0001                	nop
	...

Disassembly of section .bss:

0000000000001f68 <buf>:
	...

Disassembly of section .data:

0000000000002030 <_ZL6digits>:
    2030:	3130                	fld	fa2,96(a0)
    2032:	3332                	fld	ft6,296(sp)
    2034:	3534                	fld	fa3,104(a0)
    2036:	3736                	fld	fa4,360(sp)
    2038:	3938                	fld	fa4,112(a0)
    203a:	6261                	lui	tp,0x18
    203c:	66656463          	bltu	a0,t1,26a4 <_GLOBAL_OFFSET_TABLE_+0x4ec>
	...

0000000000002048 <nuclear>:
    2048:	7566                	ld	a0,120(sp)
    204a:	6e6f6973          	csrrsi	s2,0x6e6,30
    204e:	000a                	c.slli	zero,0x2
    2050:	6e28                	ld	a0,88(a2)
    2052:	6c75                	lui	s8,0x1d
    2054:	296c                	fld	fa1,208(a0)
    2056:	0000                	unimp
    2058:	6572                	ld	a0,280(sp)
    205a:	6c61                	lui	s8,0x18
    205c:	7320                	ld	s0,96(a4)
    205e:	6568                	ld	a0,200(a0)
    2060:	6c6c                	ld	a1,216(s0)
    2062:	7320                	ld	s0,96(a4)
    2064:	6174                	ld	a3,192(a0)
    2066:	6572                	ld	a0,280(sp)
    2068:	2164                	fld	fs1,192(a0)
    206a:	000a                	c.slli	zero,0x2
    206c:	0000                	unimp
    206e:	0000                	unimp
    2070:	003e                	c.slli	zero,0xf
    2072:	0000                	unimp
    2074:	0000                	unimp
    2076:	0000                	unimp
    2078:	2008                	fld	fa0,0(s0)
    207a:	0008                	.2byte	0x8
    207c:	0000                	unimp
    207e:	0000                	unimp
    2080:	000a                	c.slli	zero,0x2
    2082:	0000                	unimp
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	7865                	lui	a6,0xffff9
    208a:	7469                	lui	s0,0xffffa
    208c:	0000                	unimp
    208e:	0000                	unimp
    2090:	6e6e6f63          	bltu	t3,t1,278e <_GLOBAL_OFFSET_TABLE_+0x5d6>
    2094:	6520746f          	jal	s0,96e6 <_GLOBAL_OFFSET_TABLE_+0x752e>
    2098:	6378                	ld	a4,192(a4)
    209a:	7475                	lui	s0,0xffffd
    209c:	2065                	.2byte	0x2065
    209e:	7325                	lui	t1,0xfffe9
    20a0:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

00000000000020a8 <.dynamic>:
    20a8:	fef5                	bnez	a3,20a4 <nuclear+0x5c>
    20aa:	6fff                	.2byte	0x6fff
    20ac:	0000                	unimp
    20ae:	0000                	unimp
    20b0:	1f48                	addi	a0,sp,948
    20b2:	0000                	unimp
    20b4:	0000                	unimp
    20b6:	0000                	unimp
    20b8:	0005                	c.nop	1
    20ba:	0000                	unimp
    20bc:	0000                	unimp
    20be:	0000                	unimp
    20c0:	1f40                	addi	s0,sp,948
    20c2:	0000                	unimp
    20c4:	0000                	unimp
    20c6:	0000                	unimp
    20c8:	0006                	c.slli	zero,0x1
    20ca:	0000                	unimp
    20cc:	0000                	unimp
    20ce:	0000                	unimp
    20d0:	1f10                	addi	a2,sp,944
    20d2:	0000                	unimp
    20d4:	0000                	unimp
    20d6:	0000                	unimp
    20d8:	000a                	c.slli	zero,0x2
    20da:	0000                	unimp
    20dc:	0000                	unimp
    20de:	0000                	unimp
    20e0:	0001                	nop
    20e2:	0000                	unimp
    20e4:	0000                	unimp
    20e6:	0000                	unimp
    20e8:	0000000b          	.4byte	0xb
    20ec:	0000                	unimp
    20ee:	0000                	unimp
    20f0:	0018                	.2byte	0x18
    20f2:	0000                	unimp
    20f4:	0000                	unimp
    20f6:	0000                	unimp
    20f8:	0015                	c.nop	5
	...
    2106:	0000                	unimp
    2108:	00000007          	.4byte	0x7
	...
    2118:	0008                	.2byte	0x8
	...
    2126:	0000                	unimp
    2128:	0009                	c.nop	2
    212a:	0000                	unimp
    212c:	0000                	unimp
    212e:	0000                	unimp
    2130:	0018                	.2byte	0x18
    2132:	0000                	unimp
    2134:	0000                	unimp
    2136:	0000                	unimp
    2138:	001e                	c.slli	zero,0x7
    213a:	0000                	unimp
    213c:	0000                	unimp
    213e:	0000                	unimp
    2140:	0008                	.2byte	0x8
    2142:	0000                	unimp
    2144:	0000                	unimp
    2146:	0000                	unimp
    2148:	6ffffffb          	.4byte	0x6ffffffb
    214c:	0000                	unimp
    214e:	0000                	unimp
    2150:	0001                	nop
    2152:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

00000000000021b8 <.got>:
    21b8:	20a8                	fld	fa0,64(s1)
    21ba:	0000                	unimp
    21bc:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1ae54>
  10:	2d302e33          	.4byte	0x2d302e33
  14:	7531                	lui	a0,0xfffec
  16:	7562                	ld	a0,56(sp)
  18:	746e                	ld	s0,248(sp)
  1a:	3175                	addiw	sp,sp,-3
  1c:	327e                	fld	ft4,504(sp)
  1e:	2e32                	fld	ft8,264(sp)
  20:	3430                	fld	fa2,104(s0)
  22:	2029                	.2byte	0x2029
  24:	3131                	addiw	sp,sp,-20
  26:	332e                	fld	ft6,232(sp)
  28:	302e                	fld	ft0,232(sp)
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12e38>
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <BASE_ADDRESS-0xfec>
   c:	0028                	addi	a0,sp,8
   e:	0000                	unimp
  10:	7205                	lui	tp,0xfffe1
  12:	3676                	fld	fa2,376(sp)
  14:	6934                	ld	a3,80(a0)
  16:	7032                	.2byte	0x7032
  18:	5f30                	lw	a2,120(a4)
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffdee43>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

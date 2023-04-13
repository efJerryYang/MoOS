
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
    1016:	7ca000ef          	jal	ra,17e0 <_Z4readiPvy>
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
    1040:	7da000ef          	jal	ra,181a <_Z5writeiPKvy>
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
    10fe:	f4670713          	addi	a4,a4,-186 # 2040 <_ZL6digits>
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
    11c8:	e7c70713          	addi	a4,a4,-388 # 2040 <_ZL6digits>
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
    136e:	cf678793          	addi	a5,a5,-778 # 2060 <nuclear+0x8>
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
    14f4:	b7850513          	addi	a0,a0,-1160 # 2068 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	00001517          	auipc	a0,0x1
    1500:	b8450513          	addi	a0,a0,-1148 # 2080 <nuclear+0x28>
    1504:	cffff0ef          	jal	ra,1202 <_Z6printfPcz>
    1508:	afbff0ef          	jal	ra,1002 <_Z7getcharv>
    150c:	87aa                	mv	a5,a0
    150e:	fef407a3          	sb	a5,-17(s0)
    1512:	00001797          	auipc	a5,0x1
    1516:	a6678793          	addi	a5,a5,-1434 # 1f78 <buf>
    151a:	fef43023          	sd	a5,-32(s0)
    151e:	a89d                	j	1594 <main+0xac>
    1520:	fef44783          	lbu	a5,-17(s0)
    1524:	0ff7f713          	zext.b	a4,a5
    1528:	47a1                	li	a5,8
    152a:	00f70a63          	beq	a4,a5,153e <main+0x56>
    152e:	fef44783          	lbu	a5,-17(s0)
    1532:	0ff7f713          	zext.b	a4,a5
    1536:	07f00793          	li	a5,127
    153a:	02f71963          	bne	a4,a5,156c <main+0x84>
    153e:	fe043703          	ld	a4,-32(s0)
    1542:	00001797          	auipc	a5,0x1
    1546:	a3678793          	addi	a5,a5,-1482 # 1f78 <buf>
    154a:	04f70063          	beq	a4,a5,158a <main+0xa2>
    154e:	00001517          	auipc	a0,0x1
    1552:	b3a50513          	addi	a0,a0,-1222 # 2088 <nuclear+0x30>
    1556:	cadff0ef          	jal	ra,1202 <_Z6printfPcz>
    155a:	fe043783          	ld	a5,-32(s0)
    155e:	fff78713          	addi	a4,a5,-1
    1562:	fee43023          	sd	a4,-32(s0)
    1566:	00078023          	sb	zero,0(a5)
    156a:	a005                	j	158a <main+0xa2>
    156c:	fef44783          	lbu	a5,-17(s0)
    1570:	853e                	mv	a0,a5
    1572:	ab7ff0ef          	jal	ra,1028 <_Z7putcharc>
    1576:	fef44703          	lbu	a4,-17(s0)
    157a:	fe043783          	ld	a5,-32(s0)
    157e:	00178693          	addi	a3,a5,1
    1582:	fed43023          	sd	a3,-32(s0)
    1586:	00e78023          	sb	a4,0(a5)
    158a:	a79ff0ef          	jal	ra,1002 <_Z7getcharv>
    158e:	87aa                	mv	a5,a0
    1590:	fef407a3          	sb	a5,-17(s0)
    1594:	fef44783          	lbu	a5,-17(s0)
    1598:	0ff7f713          	zext.b	a4,a5
    159c:	47b5                	li	a5,13
    159e:	f8f711e3          	bne	a4,a5,1520 <main+0x38>
    15a2:	fe043783          	ld	a5,-32(s0)
    15a6:	00078023          	sb	zero,0(a5)
    15aa:	00001517          	auipc	a0,0x1
    15ae:	ae650513          	addi	a0,a0,-1306 # 2090 <nuclear+0x38>
    15b2:	c51ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15b6:	00001517          	auipc	a0,0x1
    15ba:	9c250513          	addi	a0,a0,-1598 # 1f78 <buf>
    15be:	e3dff0ef          	jal	ra,13fa <_Z6strlenPc>
    15c2:	87aa                	mv	a5,a0
    15c4:	0017b793          	seqz	a5,a5
    15c8:	0ff7f793          	zext.b	a5,a5
    15cc:	ef85                	bnez	a5,1604 <main+0x11c>
    15ce:	00001597          	auipc	a1,0x1
    15d2:	aca58593          	addi	a1,a1,-1334 # 2098 <nuclear+0x40>
    15d6:	00001517          	auipc	a0,0x1
    15da:	9a250513          	addi	a0,a0,-1630 # 1f78 <buf>
    15de:	e5fff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    15e2:	87aa                	mv	a5,a0
    15e4:	0017b793          	seqz	a5,a5
    15e8:	0ff7f793          	zext.b	a5,a5
    15ec:	ef91                	bnez	a5,1608 <main+0x120>
    15ee:	00001597          	auipc	a1,0x1
    15f2:	98a58593          	addi	a1,a1,-1654 # 1f78 <buf>
    15f6:	00001517          	auipc	a0,0x1
    15fa:	aaa50513          	addi	a0,a0,-1366 # 20a0 <nuclear+0x48>
    15fe:	c05ff0ef          	jal	ra,1202 <_Z6printfPcz>
    1602:	bded                	j	14fc <main+0x14>
    1604:	0001                	nop
    1606:	bddd                	j	14fc <main+0x14>
    1608:	0001                	nop
    160a:	4501                	li	a0,0
    160c:	2c4000ef          	jal	ra,18d0 <_Z4exiti>
    1610:	4781                	li	a5,0
    1612:	853e                	mv	a0,a5
    1614:	60e2                	ld	ra,24(sp)
    1616:	6442                	ld	s0,16(sp)
    1618:	6105                	addi	sp,sp,32
    161a:	8082                	ret

000000000000161c <_ZL10__syscall0l>:
    161c:	1101                	addi	sp,sp,-32
    161e:	ec22                	sd	s0,24(sp)
    1620:	1000                	addi	s0,sp,32
    1622:	fea43423          	sd	a0,-24(s0)
    1626:	fe843883          	ld	a7,-24(s0)
    162a:	00000073          	ecall
    162e:	87aa                	mv	a5,a0
    1630:	853e                	mv	a0,a5
    1632:	6462                	ld	s0,24(sp)
    1634:	6105                	addi	sp,sp,32
    1636:	8082                	ret

0000000000001638 <_ZL10__syscall1ll>:
    1638:	1101                	addi	sp,sp,-32
    163a:	ec22                	sd	s0,24(sp)
    163c:	1000                	addi	s0,sp,32
    163e:	fea43423          	sd	a0,-24(s0)
    1642:	feb43023          	sd	a1,-32(s0)
    1646:	fe843883          	ld	a7,-24(s0)
    164a:	fe043503          	ld	a0,-32(s0)
    164e:	00000073          	ecall
    1652:	87aa                	mv	a5,a0
    1654:	853e                	mv	a0,a5
    1656:	6462                	ld	s0,24(sp)
    1658:	6105                	addi	sp,sp,32
    165a:	8082                	ret

000000000000165c <_ZL10__syscall2lll>:
    165c:	7179                	addi	sp,sp,-48
    165e:	f422                	sd	s0,40(sp)
    1660:	1800                	addi	s0,sp,48
    1662:	fea43423          	sd	a0,-24(s0)
    1666:	feb43023          	sd	a1,-32(s0)
    166a:	fcc43c23          	sd	a2,-40(s0)
    166e:	fe843883          	ld	a7,-24(s0)
    1672:	fe043503          	ld	a0,-32(s0)
    1676:	fd843583          	ld	a1,-40(s0)
    167a:	00000073          	ecall
    167e:	87aa                	mv	a5,a0
    1680:	853e                	mv	a0,a5
    1682:	7422                	ld	s0,40(sp)
    1684:	6145                	addi	sp,sp,48
    1686:	8082                	ret

0000000000001688 <_ZL10__syscall3llll>:
    1688:	7179                	addi	sp,sp,-48
    168a:	f422                	sd	s0,40(sp)
    168c:	1800                	addi	s0,sp,48
    168e:	fea43423          	sd	a0,-24(s0)
    1692:	feb43023          	sd	a1,-32(s0)
    1696:	fcc43c23          	sd	a2,-40(s0)
    169a:	fcd43823          	sd	a3,-48(s0)
    169e:	fe843883          	ld	a7,-24(s0)
    16a2:	fe043503          	ld	a0,-32(s0)
    16a6:	fd843583          	ld	a1,-40(s0)
    16aa:	fd043603          	ld	a2,-48(s0)
    16ae:	00000073          	ecall
    16b2:	87aa                	mv	a5,a0
    16b4:	853e                	mv	a0,a5
    16b6:	7422                	ld	s0,40(sp)
    16b8:	6145                	addi	sp,sp,48
    16ba:	8082                	ret

00000000000016bc <_ZL10__syscall4lllll>:
    16bc:	7139                	addi	sp,sp,-64
    16be:	fc22                	sd	s0,56(sp)
    16c0:	0080                	addi	s0,sp,64
    16c2:	fea43423          	sd	a0,-24(s0)
    16c6:	feb43023          	sd	a1,-32(s0)
    16ca:	fcc43c23          	sd	a2,-40(s0)
    16ce:	fcd43823          	sd	a3,-48(s0)
    16d2:	fce43423          	sd	a4,-56(s0)
    16d6:	fe843883          	ld	a7,-24(s0)
    16da:	fe043503          	ld	a0,-32(s0)
    16de:	fd843583          	ld	a1,-40(s0)
    16e2:	fd043603          	ld	a2,-48(s0)
    16e6:	fc843683          	ld	a3,-56(s0)
    16ea:	00000073          	ecall
    16ee:	87aa                	mv	a5,a0
    16f0:	853e                	mv	a0,a5
    16f2:	7462                	ld	s0,56(sp)
    16f4:	6121                	addi	sp,sp,64
    16f6:	8082                	ret

00000000000016f8 <_ZL10__syscall5llllll>:
    16f8:	7139                	addi	sp,sp,-64
    16fa:	fc22                	sd	s0,56(sp)
    16fc:	0080                	addi	s0,sp,64
    16fe:	fea43423          	sd	a0,-24(s0)
    1702:	feb43023          	sd	a1,-32(s0)
    1706:	fcc43c23          	sd	a2,-40(s0)
    170a:	fcd43823          	sd	a3,-48(s0)
    170e:	fce43423          	sd	a4,-56(s0)
    1712:	fcf43023          	sd	a5,-64(s0)
    1716:	fe843883          	ld	a7,-24(s0)
    171a:	fe043503          	ld	a0,-32(s0)
    171e:	fd843583          	ld	a1,-40(s0)
    1722:	fd043603          	ld	a2,-48(s0)
    1726:	fc843683          	ld	a3,-56(s0)
    172a:	fc043703          	ld	a4,-64(s0)
    172e:	00000073          	ecall
    1732:	87aa                	mv	a5,a0
    1734:	853e                	mv	a0,a5
    1736:	7462                	ld	s0,56(sp)
    1738:	6121                	addi	sp,sp,64
    173a:	8082                	ret

000000000000173c <_Z4openPKci>:
    173c:	1101                	addi	sp,sp,-32
    173e:	ec06                	sd	ra,24(sp)
    1740:	e822                	sd	s0,16(sp)
    1742:	1000                	addi	s0,sp,32
    1744:	fea43423          	sd	a0,-24(s0)
    1748:	87ae                	mv	a5,a1
    174a:	fef42223          	sw	a5,-28(s0)
    174e:	fe843783          	ld	a5,-24(s0)
    1752:	fe442683          	lw	a3,-28(s0)
    1756:	4709                	li	a4,2
    1758:	863e                	mv	a2,a5
    175a:	f9c00593          	li	a1,-100
    175e:	03800513          	li	a0,56
    1762:	f5bff0ef          	jal	ra,16bc <_ZL10__syscall4lllll>
    1766:	87aa                	mv	a5,a0
    1768:	2781                	sext.w	a5,a5
    176a:	853e                	mv	a0,a5
    176c:	60e2                	ld	ra,24(sp)
    176e:	6442                	ld	s0,16(sp)
    1770:	6105                	addi	sp,sp,32
    1772:	8082                	ret

0000000000001774 <_Z6openatiPKci>:
    1774:	1101                	addi	sp,sp,-32
    1776:	ec06                	sd	ra,24(sp)
    1778:	e822                	sd	s0,16(sp)
    177a:	1000                	addi	s0,sp,32
    177c:	87aa                	mv	a5,a0
    177e:	feb43023          	sd	a1,-32(s0)
    1782:	8732                	mv	a4,a2
    1784:	fef42623          	sw	a5,-20(s0)
    1788:	87ba                	mv	a5,a4
    178a:	fef42423          	sw	a5,-24(s0)
    178e:	fec42783          	lw	a5,-20(s0)
    1792:	fe043603          	ld	a2,-32(s0)
    1796:	fe842683          	lw	a3,-24(s0)
    179a:	18000713          	li	a4,384
    179e:	85be                	mv	a1,a5
    17a0:	03800513          	li	a0,56
    17a4:	f19ff0ef          	jal	ra,16bc <_ZL10__syscall4lllll>
    17a8:	87aa                	mv	a5,a0
    17aa:	2781                	sext.w	a5,a5
    17ac:	853e                	mv	a0,a5
    17ae:	60e2                	ld	ra,24(sp)
    17b0:	6442                	ld	s0,16(sp)
    17b2:	6105                	addi	sp,sp,32
    17b4:	8082                	ret

00000000000017b6 <_Z5closei>:
    17b6:	1101                	addi	sp,sp,-32
    17b8:	ec06                	sd	ra,24(sp)
    17ba:	e822                	sd	s0,16(sp)
    17bc:	1000                	addi	s0,sp,32
    17be:	87aa                	mv	a5,a0
    17c0:	fef42623          	sw	a5,-20(s0)
    17c4:	fec42783          	lw	a5,-20(s0)
    17c8:	85be                	mv	a1,a5
    17ca:	03900513          	li	a0,57
    17ce:	e6bff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    17d2:	87aa                	mv	a5,a0
    17d4:	2781                	sext.w	a5,a5
    17d6:	853e                	mv	a0,a5
    17d8:	60e2                	ld	ra,24(sp)
    17da:	6442                	ld	s0,16(sp)
    17dc:	6105                	addi	sp,sp,32
    17de:	8082                	ret

00000000000017e0 <_Z4readiPvy>:
    17e0:	7179                	addi	sp,sp,-48
    17e2:	f406                	sd	ra,40(sp)
    17e4:	f022                	sd	s0,32(sp)
    17e6:	1800                	addi	s0,sp,48
    17e8:	87aa                	mv	a5,a0
    17ea:	feb43023          	sd	a1,-32(s0)
    17ee:	fcc43c23          	sd	a2,-40(s0)
    17f2:	fef42623          	sw	a5,-20(s0)
    17f6:	fec42783          	lw	a5,-20(s0)
    17fa:	fe043703          	ld	a4,-32(s0)
    17fe:	fd843683          	ld	a3,-40(s0)
    1802:	863a                	mv	a2,a4
    1804:	85be                	mv	a1,a5
    1806:	03f00513          	li	a0,63
    180a:	e7fff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    180e:	87aa                	mv	a5,a0
    1810:	853e                	mv	a0,a5
    1812:	70a2                	ld	ra,40(sp)
    1814:	7402                	ld	s0,32(sp)
    1816:	6145                	addi	sp,sp,48
    1818:	8082                	ret

000000000000181a <_Z5writeiPKvy>:
    181a:	7179                	addi	sp,sp,-48
    181c:	f406                	sd	ra,40(sp)
    181e:	f022                	sd	s0,32(sp)
    1820:	1800                	addi	s0,sp,48
    1822:	87aa                	mv	a5,a0
    1824:	feb43023          	sd	a1,-32(s0)
    1828:	fcc43c23          	sd	a2,-40(s0)
    182c:	fef42623          	sw	a5,-20(s0)
    1830:	fec42783          	lw	a5,-20(s0)
    1834:	fe043703          	ld	a4,-32(s0)
    1838:	fd843683          	ld	a3,-40(s0)
    183c:	863a                	mv	a2,a4
    183e:	85be                	mv	a1,a5
    1840:	04000513          	li	a0,64
    1844:	e45ff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1848:	87aa                	mv	a5,a0
    184a:	853e                	mv	a0,a5
    184c:	70a2                	ld	ra,40(sp)
    184e:	7402                	ld	s0,32(sp)
    1850:	6145                	addi	sp,sp,48
    1852:	8082                	ret

0000000000001854 <_Z6getpidv>:
    1854:	1141                	addi	sp,sp,-16
    1856:	e406                	sd	ra,8(sp)
    1858:	e022                	sd	s0,0(sp)
    185a:	0800                	addi	s0,sp,16
    185c:	0ac00513          	li	a0,172
    1860:	dbdff0ef          	jal	ra,161c <_ZL10__syscall0l>
    1864:	87aa                	mv	a5,a0
    1866:	2781                	sext.w	a5,a5
    1868:	853e                	mv	a0,a5
    186a:	60a2                	ld	ra,8(sp)
    186c:	6402                	ld	s0,0(sp)
    186e:	0141                	addi	sp,sp,16
    1870:	8082                	ret

0000000000001872 <_Z7getppidv>:
    1872:	1141                	addi	sp,sp,-16
    1874:	e406                	sd	ra,8(sp)
    1876:	e022                	sd	s0,0(sp)
    1878:	0800                	addi	s0,sp,16
    187a:	0ad00513          	li	a0,173
    187e:	d9fff0ef          	jal	ra,161c <_ZL10__syscall0l>
    1882:	87aa                	mv	a5,a0
    1884:	2781                	sext.w	a5,a5
    1886:	853e                	mv	a0,a5
    1888:	60a2                	ld	ra,8(sp)
    188a:	6402                	ld	s0,0(sp)
    188c:	0141                	addi	sp,sp,16
    188e:	8082                	ret

0000000000001890 <_Z11sched_yieldv>:
    1890:	1141                	addi	sp,sp,-16
    1892:	e406                	sd	ra,8(sp)
    1894:	e022                	sd	s0,0(sp)
    1896:	0800                	addi	s0,sp,16
    1898:	07c00513          	li	a0,124
    189c:	d81ff0ef          	jal	ra,161c <_ZL10__syscall0l>
    18a0:	87aa                	mv	a5,a0
    18a2:	2781                	sext.w	a5,a5
    18a4:	853e                	mv	a0,a5
    18a6:	60a2                	ld	ra,8(sp)
    18a8:	6402                	ld	s0,0(sp)
    18aa:	0141                	addi	sp,sp,16
    18ac:	8082                	ret

00000000000018ae <_Z4forkv>:
    18ae:	1141                	addi	sp,sp,-16
    18b0:	e406                	sd	ra,8(sp)
    18b2:	e022                	sd	s0,0(sp)
    18b4:	0800                	addi	s0,sp,16
    18b6:	4601                	li	a2,0
    18b8:	45c5                	li	a1,17
    18ba:	0dc00513          	li	a0,220
    18be:	d9fff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    18c2:	87aa                	mv	a5,a0
    18c4:	2781                	sext.w	a5,a5
    18c6:	853e                	mv	a0,a5
    18c8:	60a2                	ld	ra,8(sp)
    18ca:	6402                	ld	s0,0(sp)
    18cc:	0141                	addi	sp,sp,16
    18ce:	8082                	ret

00000000000018d0 <_Z4exiti>:
    18d0:	1101                	addi	sp,sp,-32
    18d2:	ec06                	sd	ra,24(sp)
    18d4:	e822                	sd	s0,16(sp)
    18d6:	1000                	addi	s0,sp,32
    18d8:	87aa                	mv	a5,a0
    18da:	fef42623          	sw	a5,-20(s0)
    18de:	fec42783          	lw	a5,-20(s0)
    18e2:	85be                	mv	a1,a5
    18e4:	05d00513          	li	a0,93
    18e8:	d51ff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    18ec:	0001                	nop
    18ee:	60e2                	ld	ra,24(sp)
    18f0:	6442                	ld	s0,16(sp)
    18f2:	6105                	addi	sp,sp,32
    18f4:	8082                	ret

00000000000018f6 <_Z7waitpidiPii>:
    18f6:	1101                	addi	sp,sp,-32
    18f8:	ec06                	sd	ra,24(sp)
    18fa:	e822                	sd	s0,16(sp)
    18fc:	1000                	addi	s0,sp,32
    18fe:	87aa                	mv	a5,a0
    1900:	feb43023          	sd	a1,-32(s0)
    1904:	8732                	mv	a4,a2
    1906:	fef42623          	sw	a5,-20(s0)
    190a:	87ba                	mv	a5,a4
    190c:	fef42423          	sw	a5,-24(s0)
    1910:	fec42783          	lw	a5,-20(s0)
    1914:	fe043603          	ld	a2,-32(s0)
    1918:	fe842683          	lw	a3,-24(s0)
    191c:	4701                	li	a4,0
    191e:	85be                	mv	a1,a5
    1920:	10400513          	li	a0,260
    1924:	d99ff0ef          	jal	ra,16bc <_ZL10__syscall4lllll>
    1928:	87aa                	mv	a5,a0
    192a:	2781                	sext.w	a5,a5
    192c:	853e                	mv	a0,a5
    192e:	60e2                	ld	ra,24(sp)
    1930:	6442                	ld	s0,16(sp)
    1932:	6105                	addi	sp,sp,32
    1934:	8082                	ret

0000000000001936 <_Z4execPc>:
    1936:	1101                	addi	sp,sp,-32
    1938:	ec06                	sd	ra,24(sp)
    193a:	e822                	sd	s0,16(sp)
    193c:	1000                	addi	s0,sp,32
    193e:	fea43423          	sd	a0,-24(s0)
    1942:	fe843783          	ld	a5,-24(s0)
    1946:	85be                	mv	a1,a5
    1948:	0dd00513          	li	a0,221
    194c:	cedff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1950:	87aa                	mv	a5,a0
    1952:	2781                	sext.w	a5,a5
    1954:	853e                	mv	a0,a5
    1956:	60e2                	ld	ra,24(sp)
    1958:	6442                	ld	s0,16(sp)
    195a:	6105                	addi	sp,sp,32
    195c:	8082                	ret

000000000000195e <_Z6execvePKcPKPcS3_>:
    195e:	7179                	addi	sp,sp,-48
    1960:	f406                	sd	ra,40(sp)
    1962:	f022                	sd	s0,32(sp)
    1964:	1800                	addi	s0,sp,48
    1966:	fea43423          	sd	a0,-24(s0)
    196a:	feb43023          	sd	a1,-32(s0)
    196e:	fcc43c23          	sd	a2,-40(s0)
    1972:	fe843783          	ld	a5,-24(s0)
    1976:	fe043703          	ld	a4,-32(s0)
    197a:	fd843683          	ld	a3,-40(s0)
    197e:	863a                	mv	a2,a4
    1980:	85be                	mv	a1,a5
    1982:	0dd00513          	li	a0,221
    1986:	d03ff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    198a:	87aa                	mv	a5,a0
    198c:	2781                	sext.w	a5,a5
    198e:	853e                	mv	a0,a5
    1990:	70a2                	ld	ra,40(sp)
    1992:	7402                	ld	s0,32(sp)
    1994:	6145                	addi	sp,sp,48
    1996:	8082                	ret

0000000000001998 <_Z5timesPv>:
    1998:	1101                	addi	sp,sp,-32
    199a:	ec06                	sd	ra,24(sp)
    199c:	e822                	sd	s0,16(sp)
    199e:	1000                	addi	s0,sp,32
    19a0:	fea43423          	sd	a0,-24(s0)
    19a4:	fe843783          	ld	a5,-24(s0)
    19a8:	85be                	mv	a1,a5
    19aa:	09900513          	li	a0,153
    19ae:	c8bff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    19b2:	87aa                	mv	a5,a0
    19b4:	2781                	sext.w	a5,a5
    19b6:	853e                	mv	a0,a5
    19b8:	60e2                	ld	ra,24(sp)
    19ba:	6442                	ld	s0,16(sp)
    19bc:	6105                	addi	sp,sp,32
    19be:	8082                	ret

00000000000019c0 <_Z8get_timev>:
    19c0:	7179                	addi	sp,sp,-48
    19c2:	f406                	sd	ra,40(sp)
    19c4:	f022                	sd	s0,32(sp)
    19c6:	1800                	addi	s0,sp,48
    19c8:	fd840793          	addi	a5,s0,-40
    19cc:	4581                	li	a1,0
    19ce:	853e                	mv	a0,a5
    19d0:	040000ef          	jal	ra,1a10 <_Z12sys_get_timeP7TimeVali>
    19d4:	87aa                	mv	a5,a0
    19d6:	fef42623          	sw	a5,-20(s0)
    19da:	fec42783          	lw	a5,-20(s0)
    19de:	2781                	sext.w	a5,a5
    19e0:	e395                	bnez	a5,1a04 <_Z8get_timev+0x44>
    19e2:	fd843703          	ld	a4,-40(s0)
    19e6:	67c1                	lui	a5,0x10
    19e8:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xde37>
    19ea:	8f7d                	and	a4,a4,a5
    19ec:	3e800793          	li	a5,1000
    19f0:	02f70733          	mul	a4,a4,a5
    19f4:	fe043683          	ld	a3,-32(s0)
    19f8:	3e800793          	li	a5,1000
    19fc:	02f6d7b3          	divu	a5,a3,a5
    1a00:	97ba                	add	a5,a5,a4
    1a02:	a011                	j	1a06 <_Z8get_timev+0x46>
    1a04:	57fd                	li	a5,-1
    1a06:	853e                	mv	a0,a5
    1a08:	70a2                	ld	ra,40(sp)
    1a0a:	7402                	ld	s0,32(sp)
    1a0c:	6145                	addi	sp,sp,48
    1a0e:	8082                	ret

0000000000001a10 <_Z12sys_get_timeP7TimeVali>:
    1a10:	1101                	addi	sp,sp,-32
    1a12:	ec06                	sd	ra,24(sp)
    1a14:	e822                	sd	s0,16(sp)
    1a16:	1000                	addi	s0,sp,32
    1a18:	fea43423          	sd	a0,-24(s0)
    1a1c:	87ae                	mv	a5,a1
    1a1e:	fef42223          	sw	a5,-28(s0)
    1a22:	fe843783          	ld	a5,-24(s0)
    1a26:	fe442703          	lw	a4,-28(s0)
    1a2a:	863a                	mv	a2,a4
    1a2c:	85be                	mv	a1,a5
    1a2e:	0a900513          	li	a0,169
    1a32:	c2bff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1a36:	87aa                	mv	a5,a0
    1a38:	2781                	sext.w	a5,a5
    1a3a:	853e                	mv	a0,a5
    1a3c:	60e2                	ld	ra,24(sp)
    1a3e:	6442                	ld	s0,16(sp)
    1a40:	6105                	addi	sp,sp,32
    1a42:	8082                	ret

0000000000001a44 <_Z4timePm>:
    1a44:	1101                	addi	sp,sp,-32
    1a46:	ec06                	sd	ra,24(sp)
    1a48:	e822                	sd	s0,16(sp)
    1a4a:	1000                	addi	s0,sp,32
    1a4c:	fea43423          	sd	a0,-24(s0)
    1a50:	fe843783          	ld	a5,-24(s0)
    1a54:	85be                	mv	a1,a5
    1a56:	42600513          	li	a0,1062
    1a5a:	bdfff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1a5e:	87aa                	mv	a5,a0
    1a60:	2781                	sext.w	a5,a5
    1a62:	853e                	mv	a0,a5
    1a64:	60e2                	ld	ra,24(sp)
    1a66:	6442                	ld	s0,16(sp)
    1a68:	6105                	addi	sp,sp,32
    1a6a:	8082                	ret

0000000000001a6c <_Z5sleepy>:
    1a6c:	7179                	addi	sp,sp,-48
    1a6e:	f406                	sd	ra,40(sp)
    1a70:	f022                	sd	s0,32(sp)
    1a72:	1800                	addi	s0,sp,48
    1a74:	fca43c23          	sd	a0,-40(s0)
    1a78:	fe043023          	sd	zero,-32(s0)
    1a7c:	fe043423          	sd	zero,-24(s0)
    1a80:	fd843783          	ld	a5,-40(s0)
    1a84:	fef43023          	sd	a5,-32(s0)
    1a88:	fe040793          	addi	a5,s0,-32
    1a8c:	fe040713          	addi	a4,s0,-32
    1a90:	863a                	mv	a2,a4
    1a92:	85be                	mv	a1,a5
    1a94:	06500513          	li	a0,101
    1a98:	bc5ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1a9c:	87aa                	mv	a5,a0
    1a9e:	00f037b3          	snez	a5,a5
    1aa2:	0ff7f793          	zext.b	a5,a5
    1aa6:	c789                	beqz	a5,1ab0 <_Z5sleepy+0x44>
    1aa8:	fe043783          	ld	a5,-32(s0)
    1aac:	2781                	sext.w	a5,a5
    1aae:	a011                	j	1ab2 <_Z5sleepy+0x46>
    1ab0:	4781                	li	a5,0
    1ab2:	853e                	mv	a0,a5
    1ab4:	70a2                	ld	ra,40(sp)
    1ab6:	7402                	ld	s0,32(sp)
    1ab8:	6145                	addi	sp,sp,48
    1aba:	8082                	ret

0000000000001abc <_Z12set_priorityi>:
    1abc:	1101                	addi	sp,sp,-32
    1abe:	ec06                	sd	ra,24(sp)
    1ac0:	e822                	sd	s0,16(sp)
    1ac2:	1000                	addi	s0,sp,32
    1ac4:	87aa                	mv	a5,a0
    1ac6:	fef42623          	sw	a5,-20(s0)
    1aca:	fec42783          	lw	a5,-20(s0)
    1ace:	85be                	mv	a1,a5
    1ad0:	08c00513          	li	a0,140
    1ad4:	b65ff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1ad8:	87aa                	mv	a5,a0
    1ada:	2781                	sext.w	a5,a5
    1adc:	853e                	mv	a0,a5
    1ade:	60e2                	ld	ra,24(sp)
    1ae0:	6442                	ld	s0,16(sp)
    1ae2:	6105                	addi	sp,sp,32
    1ae4:	8082                	ret

0000000000001ae6 <_Z6munmapPvy>:
    1ae6:	1101                	addi	sp,sp,-32
    1ae8:	ec06                	sd	ra,24(sp)
    1aea:	e822                	sd	s0,16(sp)
    1aec:	1000                	addi	s0,sp,32
    1aee:	fea43423          	sd	a0,-24(s0)
    1af2:	feb43023          	sd	a1,-32(s0)
    1af6:	fe843783          	ld	a5,-24(s0)
    1afa:	fe043703          	ld	a4,-32(s0)
    1afe:	863a                	mv	a2,a4
    1b00:	85be                	mv	a1,a5
    1b02:	0d700513          	li	a0,215
    1b06:	b57ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1b0a:	87aa                	mv	a5,a0
    1b0c:	2781                	sext.w	a5,a5
    1b0e:	853e                	mv	a0,a5
    1b10:	60e2                	ld	ra,24(sp)
    1b12:	6442                	ld	s0,16(sp)
    1b14:	6105                	addi	sp,sp,32
    1b16:	8082                	ret

0000000000001b18 <_Z4waitPi>:
    1b18:	1101                	addi	sp,sp,-32
    1b1a:	ec06                	sd	ra,24(sp)
    1b1c:	e822                	sd	s0,16(sp)
    1b1e:	1000                	addi	s0,sp,32
    1b20:	fea43423          	sd	a0,-24(s0)
    1b24:	4601                	li	a2,0
    1b26:	fe843583          	ld	a1,-24(s0)
    1b2a:	557d                	li	a0,-1
    1b2c:	dcbff0ef          	jal	ra,18f6 <_Z7waitpidiPii>
    1b30:	87aa                	mv	a5,a0
    1b32:	853e                	mv	a0,a5
    1b34:	60e2                	ld	ra,24(sp)
    1b36:	6442                	ld	s0,16(sp)
    1b38:	6105                	addi	sp,sp,32
    1b3a:	8082                	ret

0000000000001b3c <_Z5spawnPc>:
    1b3c:	1101                	addi	sp,sp,-32
    1b3e:	ec06                	sd	ra,24(sp)
    1b40:	e822                	sd	s0,16(sp)
    1b42:	1000                	addi	s0,sp,32
    1b44:	fea43423          	sd	a0,-24(s0)
    1b48:	fe843783          	ld	a5,-24(s0)
    1b4c:	85be                	mv	a1,a5
    1b4e:	19000513          	li	a0,400
    1b52:	ae7ff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1b56:	87aa                	mv	a5,a0
    1b58:	2781                	sext.w	a5,a5
    1b5a:	853e                	mv	a0,a5
    1b5c:	60e2                	ld	ra,24(sp)
    1b5e:	6442                	ld	s0,16(sp)
    1b60:	6105                	addi	sp,sp,32
    1b62:	8082                	ret

0000000000001b64 <_Z8mailreadPvi>:
    1b64:	1101                	addi	sp,sp,-32
    1b66:	ec06                	sd	ra,24(sp)
    1b68:	e822                	sd	s0,16(sp)
    1b6a:	1000                	addi	s0,sp,32
    1b6c:	fea43423          	sd	a0,-24(s0)
    1b70:	87ae                	mv	a5,a1
    1b72:	fef42223          	sw	a5,-28(s0)
    1b76:	fe843783          	ld	a5,-24(s0)
    1b7a:	fe442703          	lw	a4,-28(s0)
    1b7e:	863a                	mv	a2,a4
    1b80:	85be                	mv	a1,a5
    1b82:	19100513          	li	a0,401
    1b86:	ad7ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1b8a:	87aa                	mv	a5,a0
    1b8c:	2781                	sext.w	a5,a5
    1b8e:	853e                	mv	a0,a5
    1b90:	60e2                	ld	ra,24(sp)
    1b92:	6442                	ld	s0,16(sp)
    1b94:	6105                	addi	sp,sp,32
    1b96:	8082                	ret

0000000000001b98 <_Z9mailwriteiPvi>:
    1b98:	1101                	addi	sp,sp,-32
    1b9a:	ec06                	sd	ra,24(sp)
    1b9c:	e822                	sd	s0,16(sp)
    1b9e:	1000                	addi	s0,sp,32
    1ba0:	87aa                	mv	a5,a0
    1ba2:	feb43023          	sd	a1,-32(s0)
    1ba6:	8732                	mv	a4,a2
    1ba8:	fef42623          	sw	a5,-20(s0)
    1bac:	87ba                	mv	a5,a4
    1bae:	fef42423          	sw	a5,-24(s0)
    1bb2:	fec42783          	lw	a5,-20(s0)
    1bb6:	fe043703          	ld	a4,-32(s0)
    1bba:	fe842683          	lw	a3,-24(s0)
    1bbe:	863a                	mv	a2,a4
    1bc0:	85be                	mv	a1,a5
    1bc2:	19200513          	li	a0,402
    1bc6:	ac3ff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1bca:	87aa                	mv	a5,a0
    1bcc:	2781                	sext.w	a5,a5
    1bce:	853e                	mv	a0,a5
    1bd0:	60e2                	ld	ra,24(sp)
    1bd2:	6442                	ld	s0,16(sp)
    1bd4:	6105                	addi	sp,sp,32
    1bd6:	8082                	ret

0000000000001bd8 <_Z5fstatiP5kstat>:
    1bd8:	1101                	addi	sp,sp,-32
    1bda:	ec06                	sd	ra,24(sp)
    1bdc:	e822                	sd	s0,16(sp)
    1bde:	1000                	addi	s0,sp,32
    1be0:	87aa                	mv	a5,a0
    1be2:	feb43023          	sd	a1,-32(s0)
    1be6:	fef42623          	sw	a5,-20(s0)
    1bea:	fec42783          	lw	a5,-20(s0)
    1bee:	fe043703          	ld	a4,-32(s0)
    1bf2:	863a                	mv	a2,a4
    1bf4:	85be                	mv	a1,a5
    1bf6:	05000513          	li	a0,80
    1bfa:	a63ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1bfe:	87aa                	mv	a5,a0
    1c00:	2781                	sext.w	a5,a5
    1c02:	853e                	mv	a0,a5
    1c04:	60e2                	ld	ra,24(sp)
    1c06:	6442                	ld	s0,16(sp)
    1c08:	6105                	addi	sp,sp,32
    1c0a:	8082                	ret

0000000000001c0c <_Z10sys_linkatiPciS_j>:
    1c0c:	7179                	addi	sp,sp,-48
    1c0e:	f406                	sd	ra,40(sp)
    1c10:	f022                	sd	s0,32(sp)
    1c12:	1800                	addi	s0,sp,48
    1c14:	87aa                	mv	a5,a0
    1c16:	feb43023          	sd	a1,-32(s0)
    1c1a:	fcd43c23          	sd	a3,-40(s0)
    1c1e:	fef42623          	sw	a5,-20(s0)
    1c22:	87b2                	mv	a5,a2
    1c24:	fef42423          	sw	a5,-24(s0)
    1c28:	87ba                	mv	a5,a4
    1c2a:	fcf42a23          	sw	a5,-44(s0)
    1c2e:	fec42583          	lw	a1,-20(s0)
    1c32:	fe043603          	ld	a2,-32(s0)
    1c36:	fe842683          	lw	a3,-24(s0)
    1c3a:	fd843703          	ld	a4,-40(s0)
    1c3e:	fd446783          	lwu	a5,-44(s0)
    1c42:	02500513          	li	a0,37
    1c46:	ab3ff0ef          	jal	ra,16f8 <_ZL10__syscall5llllll>
    1c4a:	87aa                	mv	a5,a0
    1c4c:	2781                	sext.w	a5,a5
    1c4e:	853e                	mv	a0,a5
    1c50:	70a2                	ld	ra,40(sp)
    1c52:	7402                	ld	s0,32(sp)
    1c54:	6145                	addi	sp,sp,48
    1c56:	8082                	ret

0000000000001c58 <_Z12sys_unlinkatiPcj>:
    1c58:	1101                	addi	sp,sp,-32
    1c5a:	ec06                	sd	ra,24(sp)
    1c5c:	e822                	sd	s0,16(sp)
    1c5e:	1000                	addi	s0,sp,32
    1c60:	87aa                	mv	a5,a0
    1c62:	feb43023          	sd	a1,-32(s0)
    1c66:	8732                	mv	a4,a2
    1c68:	fef42623          	sw	a5,-20(s0)
    1c6c:	87ba                	mv	a5,a4
    1c6e:	fef42423          	sw	a5,-24(s0)
    1c72:	fec42783          	lw	a5,-20(s0)
    1c76:	fe043703          	ld	a4,-32(s0)
    1c7a:	fe846683          	lwu	a3,-24(s0)
    1c7e:	863a                	mv	a2,a4
    1c80:	85be                	mv	a1,a5
    1c82:	02300513          	li	a0,35
    1c86:	a03ff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1c8a:	87aa                	mv	a5,a0
    1c8c:	2781                	sext.w	a5,a5
    1c8e:	853e                	mv	a0,a5
    1c90:	60e2                	ld	ra,24(sp)
    1c92:	6442                	ld	s0,16(sp)
    1c94:	6105                	addi	sp,sp,32
    1c96:	8082                	ret

0000000000001c98 <_Z4linkPcS_>:
    1c98:	1101                	addi	sp,sp,-32
    1c9a:	ec06                	sd	ra,24(sp)
    1c9c:	e822                	sd	s0,16(sp)
    1c9e:	1000                	addi	s0,sp,32
    1ca0:	fea43423          	sd	a0,-24(s0)
    1ca4:	feb43023          	sd	a1,-32(s0)
    1ca8:	4701                	li	a4,0
    1caa:	fe043683          	ld	a3,-32(s0)
    1cae:	f9c00613          	li	a2,-100
    1cb2:	fe843583          	ld	a1,-24(s0)
    1cb6:	f9c00513          	li	a0,-100
    1cba:	f53ff0ef          	jal	ra,1c0c <_Z10sys_linkatiPciS_j>
    1cbe:	87aa                	mv	a5,a0
    1cc0:	853e                	mv	a0,a5
    1cc2:	60e2                	ld	ra,24(sp)
    1cc4:	6442                	ld	s0,16(sp)
    1cc6:	6105                	addi	sp,sp,32
    1cc8:	8082                	ret

0000000000001cca <_Z6unlinkPc>:
    1cca:	1101                	addi	sp,sp,-32
    1ccc:	ec06                	sd	ra,24(sp)
    1cce:	e822                	sd	s0,16(sp)
    1cd0:	1000                	addi	s0,sp,32
    1cd2:	fea43423          	sd	a0,-24(s0)
    1cd6:	4601                	li	a2,0
    1cd8:	fe843583          	ld	a1,-24(s0)
    1cdc:	f9c00513          	li	a0,-100
    1ce0:	f79ff0ef          	jal	ra,1c58 <_Z12sys_unlinkatiPcj>
    1ce4:	87aa                	mv	a5,a0
    1ce6:	853e                	mv	a0,a5
    1ce8:	60e2                	ld	ra,24(sp)
    1cea:	6442                	ld	s0,16(sp)
    1cec:	6105                	addi	sp,sp,32
    1cee:	8082                	ret

0000000000001cf0 <_Z5unamePv>:
    1cf0:	1101                	addi	sp,sp,-32
    1cf2:	ec06                	sd	ra,24(sp)
    1cf4:	e822                	sd	s0,16(sp)
    1cf6:	1000                	addi	s0,sp,32
    1cf8:	fea43423          	sd	a0,-24(s0)
    1cfc:	fe843783          	ld	a5,-24(s0)
    1d00:	85be                	mv	a1,a5
    1d02:	0a000513          	li	a0,160
    1d06:	933ff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1d0a:	87aa                	mv	a5,a0
    1d0c:	2781                	sext.w	a5,a5
    1d0e:	853e                	mv	a0,a5
    1d10:	60e2                	ld	ra,24(sp)
    1d12:	6442                	ld	s0,16(sp)
    1d14:	6105                	addi	sp,sp,32
    1d16:	8082                	ret

0000000000001d18 <_Z3brkPv>:
    1d18:	1101                	addi	sp,sp,-32
    1d1a:	ec06                	sd	ra,24(sp)
    1d1c:	e822                	sd	s0,16(sp)
    1d1e:	1000                	addi	s0,sp,32
    1d20:	fea43423          	sd	a0,-24(s0)
    1d24:	fe843783          	ld	a5,-24(s0)
    1d28:	85be                	mv	a1,a5
    1d2a:	0d600513          	li	a0,214
    1d2e:	90bff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1d32:	87aa                	mv	a5,a0
    1d34:	2781                	sext.w	a5,a5
    1d36:	853e                	mv	a0,a5
    1d38:	60e2                	ld	ra,24(sp)
    1d3a:	6442                	ld	s0,16(sp)
    1d3c:	6105                	addi	sp,sp,32
    1d3e:	8082                	ret

0000000000001d40 <_Z5chdirPKc>:
    1d40:	1101                	addi	sp,sp,-32
    1d42:	ec06                	sd	ra,24(sp)
    1d44:	e822                	sd	s0,16(sp)
    1d46:	1000                	addi	s0,sp,32
    1d48:	fea43423          	sd	a0,-24(s0)
    1d4c:	fe843783          	ld	a5,-24(s0)
    1d50:	85be                	mv	a1,a5
    1d52:	03100513          	li	a0,49
    1d56:	8e3ff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1d5a:	87aa                	mv	a5,a0
    1d5c:	2781                	sext.w	a5,a5
    1d5e:	853e                	mv	a0,a5
    1d60:	60e2                	ld	ra,24(sp)
    1d62:	6442                	ld	s0,16(sp)
    1d64:	6105                	addi	sp,sp,32
    1d66:	8082                	ret

0000000000001d68 <_Z5mkdirPKcj>:
    1d68:	1101                	addi	sp,sp,-32
    1d6a:	ec06                	sd	ra,24(sp)
    1d6c:	e822                	sd	s0,16(sp)
    1d6e:	1000                	addi	s0,sp,32
    1d70:	fea43423          	sd	a0,-24(s0)
    1d74:	87ae                	mv	a5,a1
    1d76:	fef42223          	sw	a5,-28(s0)
    1d7a:	fe843783          	ld	a5,-24(s0)
    1d7e:	fe446703          	lwu	a4,-28(s0)
    1d82:	86ba                	mv	a3,a4
    1d84:	863e                	mv	a2,a5
    1d86:	f9c00593          	li	a1,-100
    1d8a:	02200513          	li	a0,34
    1d8e:	8fbff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1d92:	87aa                	mv	a5,a0
    1d94:	2781                	sext.w	a5,a5
    1d96:	853e                	mv	a0,a5
    1d98:	60e2                	ld	ra,24(sp)
    1d9a:	6442                	ld	s0,16(sp)
    1d9c:	6105                	addi	sp,sp,32
    1d9e:	8082                	ret

0000000000001da0 <_Z8getdentsiP14linux_dirent64m>:
    1da0:	7179                	addi	sp,sp,-48
    1da2:	f406                	sd	ra,40(sp)
    1da4:	f022                	sd	s0,32(sp)
    1da6:	1800                	addi	s0,sp,48
    1da8:	87aa                	mv	a5,a0
    1daa:	feb43023          	sd	a1,-32(s0)
    1dae:	fcc43c23          	sd	a2,-40(s0)
    1db2:	fef42623          	sw	a5,-20(s0)
    1db6:	fec42783          	lw	a5,-20(s0)
    1dba:	fe043703          	ld	a4,-32(s0)
    1dbe:	fd843683          	ld	a3,-40(s0)
    1dc2:	863a                	mv	a2,a4
    1dc4:	85be                	mv	a1,a5
    1dc6:	03d00513          	li	a0,61
    1dca:	8bfff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1dce:	87aa                	mv	a5,a0
    1dd0:	2781                	sext.w	a5,a5
    1dd2:	853e                	mv	a0,a5
    1dd4:	70a2                	ld	ra,40(sp)
    1dd6:	7402                	ld	s0,32(sp)
    1dd8:	6145                	addi	sp,sp,48
    1dda:	8082                	ret

0000000000001ddc <_Z4pipePi>:
    1ddc:	1101                	addi	sp,sp,-32
    1dde:	ec06                	sd	ra,24(sp)
    1de0:	e822                	sd	s0,16(sp)
    1de2:	1000                	addi	s0,sp,32
    1de4:	fea43423          	sd	a0,-24(s0)
    1de8:	fe843783          	ld	a5,-24(s0)
    1dec:	4601                	li	a2,0
    1dee:	85be                	mv	a1,a5
    1df0:	03b00513          	li	a0,59
    1df4:	869ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1df8:	87aa                	mv	a5,a0
    1dfa:	2781                	sext.w	a5,a5
    1dfc:	853e                	mv	a0,a5
    1dfe:	60e2                	ld	ra,24(sp)
    1e00:	6442                	ld	s0,16(sp)
    1e02:	6105                	addi	sp,sp,32
    1e04:	8082                	ret

0000000000001e06 <_Z3dupi>:
    1e06:	1101                	addi	sp,sp,-32
    1e08:	ec06                	sd	ra,24(sp)
    1e0a:	e822                	sd	s0,16(sp)
    1e0c:	1000                	addi	s0,sp,32
    1e0e:	87aa                	mv	a5,a0
    1e10:	fef42623          	sw	a5,-20(s0)
    1e14:	fec42783          	lw	a5,-20(s0)
    1e18:	85be                	mv	a1,a5
    1e1a:	455d                	li	a0,23
    1e1c:	81dff0ef          	jal	ra,1638 <_ZL10__syscall1ll>
    1e20:	87aa                	mv	a5,a0
    1e22:	2781                	sext.w	a5,a5
    1e24:	853e                	mv	a0,a5
    1e26:	60e2                	ld	ra,24(sp)
    1e28:	6442                	ld	s0,16(sp)
    1e2a:	6105                	addi	sp,sp,32
    1e2c:	8082                	ret

0000000000001e2e <_Z4dup2ii>:
    1e2e:	1101                	addi	sp,sp,-32
    1e30:	ec06                	sd	ra,24(sp)
    1e32:	e822                	sd	s0,16(sp)
    1e34:	1000                	addi	s0,sp,32
    1e36:	87aa                	mv	a5,a0
    1e38:	872e                	mv	a4,a1
    1e3a:	fef42623          	sw	a5,-20(s0)
    1e3e:	87ba                	mv	a5,a4
    1e40:	fef42423          	sw	a5,-24(s0)
    1e44:	fec42783          	lw	a5,-20(s0)
    1e48:	fe842703          	lw	a4,-24(s0)
    1e4c:	4681                	li	a3,0
    1e4e:	863a                	mv	a2,a4
    1e50:	85be                	mv	a1,a5
    1e52:	4561                	li	a0,24
    1e54:	835ff0ef          	jal	ra,1688 <_ZL10__syscall3llll>
    1e58:	87aa                	mv	a5,a0
    1e5a:	2781                	sext.w	a5,a5
    1e5c:	853e                	mv	a0,a5
    1e5e:	60e2                	ld	ra,24(sp)
    1e60:	6442                	ld	s0,16(sp)
    1e62:	6105                	addi	sp,sp,32
    1e64:	8082                	ret

0000000000001e66 <_Z5mountPKcS0_S0_mPKv>:
    1e66:	7139                	addi	sp,sp,-64
    1e68:	fc06                	sd	ra,56(sp)
    1e6a:	f822                	sd	s0,48(sp)
    1e6c:	0080                	addi	s0,sp,64
    1e6e:	fea43423          	sd	a0,-24(s0)
    1e72:	feb43023          	sd	a1,-32(s0)
    1e76:	fcc43c23          	sd	a2,-40(s0)
    1e7a:	fcd43823          	sd	a3,-48(s0)
    1e7e:	fce43423          	sd	a4,-56(s0)
    1e82:	fe843583          	ld	a1,-24(s0)
    1e86:	fe043603          	ld	a2,-32(s0)
    1e8a:	fd843683          	ld	a3,-40(s0)
    1e8e:	fd043703          	ld	a4,-48(s0)
    1e92:	fc843783          	ld	a5,-56(s0)
    1e96:	02800513          	li	a0,40
    1e9a:	85fff0ef          	jal	ra,16f8 <_ZL10__syscall5llllll>
    1e9e:	87aa                	mv	a5,a0
    1ea0:	2781                	sext.w	a5,a5
    1ea2:	853e                	mv	a0,a5
    1ea4:	70e2                	ld	ra,56(sp)
    1ea6:	7442                	ld	s0,48(sp)
    1ea8:	6121                	addi	sp,sp,64
    1eaa:	8082                	ret

0000000000001eac <_Z6umountPKc>:
    1eac:	1101                	addi	sp,sp,-32
    1eae:	ec06                	sd	ra,24(sp)
    1eb0:	e822                	sd	s0,16(sp)
    1eb2:	1000                	addi	s0,sp,32
    1eb4:	fea43423          	sd	a0,-24(s0)
    1eb8:	fe843783          	ld	a5,-24(s0)
    1ebc:	4601                	li	a2,0
    1ebe:	85be                	mv	a1,a5
    1ec0:	02700513          	li	a0,39
    1ec4:	f98ff0ef          	jal	ra,165c <_ZL10__syscall2lll>
    1ec8:	87aa                	mv	a5,a0
    1eca:	2781                	sext.w	a5,a5
    1ecc:	853e                	mv	a0,a5
    1ece:	60e2                	ld	ra,24(sp)
    1ed0:	6442                	ld	s0,16(sp)
    1ed2:	6105                	addi	sp,sp,32
    1ed4:	8082                	ret

Disassembly of section .interp:

0000000000001ed6 <.interp>:
    1ed6:	62696c2f          	.4byte	0x62696c2f
    1eda:	2d646c2f          	.4byte	0x2d646c2f
    1ede:	696c                	ld	a1,208(a0)
    1ee0:	756e                	ld	a0,248(sp)
    1ee2:	2d78                	fld	fa4,216(a0)
    1ee4:	6972                	ld	s2,280(sp)
    1ee6:	36766373          	csrrsi	t1,0x367,12
    1eea:	2d34                	fld	fa3,88(a0)
    1eec:	706c                	ld	a1,224(s0)
    1eee:	3436                	fld	fs0,360(sp)
    1ef0:	2e64                	fld	fs1,216(a2)
    1ef2:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001ef8 <.note.gnu.build-id>:
    1ef8:	0004                	.2byte	0x4
    1efa:	0000                	unimp
    1efc:	0014                	.2byte	0x14
    1efe:	0000                	unimp
    1f00:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1f04:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1f08:	c6eb6be7          	.4byte	0xc6eb6be7
    1f0c:	348c                	fld	fa1,40(s1)
    1f0e:	410a                	lw	sp,128(sp)
    1f10:	7c88                	ld	a0,56(s1)
    1f12:	915e                	add	sp,sp,s7
    1f14:	6f88                	ld	a0,24(a5)
    1f16:	7b6e                	ld	s6,248(sp)
    1f18:	eb977c83          	.4byte	0xeb977c83

Disassembly of section .dynsym:

0000000000001f20 <.dynsym>:
	...
    1f3c:	00010003          	lb	zero,0(sp)
    1f40:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001f50 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001f58 <.gnu.hash>:
    1f58:	0001                	nop
    1f5a:	0000                	unimp
    1f5c:	0001                	nop
    1f5e:	0000                	unimp
    1f60:	0001                	nop
	...

Disassembly of section .bss:

0000000000001f78 <buf>:
	...

Disassembly of section .data:

0000000000002040 <_ZL6digits>:
    2040:	3130                	fld	fa2,96(a0)
    2042:	3332                	fld	ft6,296(sp)
    2044:	3534                	fld	fa3,104(a0)
    2046:	3736                	fld	fa4,360(sp)
    2048:	3938                	fld	fa4,112(a0)
    204a:	6261                	lui	tp,0x18
    204c:	66656463          	bltu	a0,t1,26b4 <_GLOBAL_OFFSET_TABLE_+0x4ec>
	...

0000000000002058 <nuclear>:
    2058:	7566                	ld	a0,120(sp)
    205a:	6e6f6973          	csrrsi	s2,0x6e6,30
    205e:	000a                	c.slli	zero,0x2
    2060:	6e28                	ld	a0,88(a2)
    2062:	6c75                	lui	s8,0x1d
    2064:	296c                	fld	fa1,208(a0)
    2066:	0000                	unimp
    2068:	6572                	ld	a0,280(sp)
    206a:	6c61                	lui	s8,0x18
    206c:	7320                	ld	s0,96(a4)
    206e:	6568                	ld	a0,200(a0)
    2070:	6c6c                	ld	a1,216(s0)
    2072:	7320                	ld	s0,96(a4)
    2074:	6174                	ld	a3,192(a0)
    2076:	6572                	ld	a0,280(sp)
    2078:	2164                	fld	fs1,192(a0)
    207a:	000a                	c.slli	zero,0x2
    207c:	0000                	unimp
    207e:	0000                	unimp
    2080:	003e                	c.slli	zero,0xf
    2082:	0000                	unimp
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	2008                	fld	fa0,0(s0)
    208a:	0008                	.2byte	0x8
    208c:	0000                	unimp
    208e:	0000                	unimp
    2090:	000a                	c.slli	zero,0x2
    2092:	0000                	unimp
    2094:	0000                	unimp
    2096:	0000                	unimp
    2098:	7865                	lui	a6,0xffff9
    209a:	7469                	lui	s0,0xffffa
    209c:	0000                	unimp
    209e:	0000                	unimp
    20a0:	6e6e6f63          	bltu	t3,t1,279e <_GLOBAL_OFFSET_TABLE_+0x5d6>
    20a4:	6520746f          	jal	s0,96f6 <_GLOBAL_OFFSET_TABLE_+0x752e>
    20a8:	6378                	ld	a4,192(a4)
    20aa:	7475                	lui	s0,0xffffd
    20ac:	2065                	.2byte	0x2065
    20ae:	7325                	lui	t1,0xfffe9
    20b0:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

00000000000020b8 <.dynamic>:
    20b8:	fef5                	bnez	a3,20b4 <nuclear+0x5c>
    20ba:	6fff                	.2byte	0x6fff
    20bc:	0000                	unimp
    20be:	0000                	unimp
    20c0:	1f58                	addi	a4,sp,948
    20c2:	0000                	unimp
    20c4:	0000                	unimp
    20c6:	0000                	unimp
    20c8:	0005                	c.nop	1
    20ca:	0000                	unimp
    20cc:	0000                	unimp
    20ce:	0000                	unimp
    20d0:	1f50                	addi	a2,sp,948
    20d2:	0000                	unimp
    20d4:	0000                	unimp
    20d6:	0000                	unimp
    20d8:	0006                	c.slli	zero,0x1
    20da:	0000                	unimp
    20dc:	0000                	unimp
    20de:	0000                	unimp
    20e0:	1f20                	addi	s0,sp,952
    20e2:	0000                	unimp
    20e4:	0000                	unimp
    20e6:	0000                	unimp
    20e8:	000a                	c.slli	zero,0x2
    20ea:	0000                	unimp
    20ec:	0000                	unimp
    20ee:	0000                	unimp
    20f0:	0001                	nop
    20f2:	0000                	unimp
    20f4:	0000                	unimp
    20f6:	0000                	unimp
    20f8:	0000000b          	.4byte	0xb
    20fc:	0000                	unimp
    20fe:	0000                	unimp
    2100:	0018                	.2byte	0x18
    2102:	0000                	unimp
    2104:	0000                	unimp
    2106:	0000                	unimp
    2108:	0015                	c.nop	5
	...
    2116:	0000                	unimp
    2118:	00000007          	.4byte	0x7
	...
    2128:	0008                	.2byte	0x8
	...
    2136:	0000                	unimp
    2138:	0009                	c.nop	2
    213a:	0000                	unimp
    213c:	0000                	unimp
    213e:	0000                	unimp
    2140:	0018                	.2byte	0x18
    2142:	0000                	unimp
    2144:	0000                	unimp
    2146:	0000                	unimp
    2148:	001e                	c.slli	zero,0x7
    214a:	0000                	unimp
    214c:	0000                	unimp
    214e:	0000                	unimp
    2150:	0008                	.2byte	0x8
    2152:	0000                	unimp
    2154:	0000                	unimp
    2156:	0000                	unimp
    2158:	6ffffffb          	.4byte	0x6ffffffb
    215c:	0000                	unimp
    215e:	0000                	unimp
    2160:	0001                	nop
    2162:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

00000000000021c8 <.got>:
    21c8:	20b8                	fld	fa4,64(s1)
    21ca:	0000                	unimp
    21cc:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1ae44>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12e28>
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffdee33>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

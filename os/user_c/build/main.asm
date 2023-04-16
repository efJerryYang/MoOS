
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
    1016:	7f0000ef          	jal	ra,1806 <_Z4readiPvy>
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
    1040:	001000ef          	jal	ra,1840 <_Z5writeiPKvy>
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
    10fe:	f6e70713          	addi	a4,a4,-146 # 2068 <_ZL6digits>
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
    11c8:	ea470713          	addi	a4,a4,-348 # 2068 <_ZL6digits>
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
    136e:	d1e78793          	addi	a5,a5,-738 # 2088 <nuclear+0x8>
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
    14f4:	ba050513          	addi	a0,a0,-1120 # 2090 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	00001517          	auipc	a0,0x1
    1500:	bac50513          	addi	a0,a0,-1108 # 20a8 <nuclear+0x28>
    1504:	cffff0ef          	jal	ra,1202 <_Z6printfPcz>
    1508:	afbff0ef          	jal	ra,1002 <_Z7getcharv>
    150c:	87aa                	mv	a5,a0
    150e:	fef407a3          	sb	a5,-17(s0)
    1512:	00001797          	auipc	a5,0x1
    1516:	a8e78793          	addi	a5,a5,-1394 # 1fa0 <buf>
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
    1546:	a5e78793          	addi	a5,a5,-1442 # 1fa0 <buf>
    154a:	04f70063          	beq	a4,a5,158a <main+0xa2>
    154e:	00001517          	auipc	a0,0x1
    1552:	b6250513          	addi	a0,a0,-1182 # 20b0 <nuclear+0x30>
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
    15ae:	b0e50513          	addi	a0,a0,-1266 # 20b8 <nuclear+0x38>
    15b2:	c51ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15b6:	00001517          	auipc	a0,0x1
    15ba:	9ea50513          	addi	a0,a0,-1558 # 1fa0 <buf>
    15be:	e3dff0ef          	jal	ra,13fa <_Z6strlenPc>
    15c2:	87aa                	mv	a5,a0
    15c4:	0017b793          	seqz	a5,a5
    15c8:	0ff7f793          	zext.b	a5,a5
    15cc:	efb9                	bnez	a5,162a <main+0x142>
    15ce:	00001597          	auipc	a1,0x1
    15d2:	af258593          	addi	a1,a1,-1294 # 20c0 <nuclear+0x40>
    15d6:	00001517          	auipc	a0,0x1
    15da:	9ca50513          	addi	a0,a0,-1590 # 1fa0 <buf>
    15de:	e5fff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    15e2:	87aa                	mv	a5,a0
    15e4:	0017b793          	seqz	a5,a5
    15e8:	0ff7f793          	zext.b	a5,a5
    15ec:	e3a9                	bnez	a5,162e <main+0x146>
    15ee:	00001597          	auipc	a1,0x1
    15f2:	ada58593          	addi	a1,a1,-1318 # 20c8 <nuclear+0x48>
    15f6:	00001517          	auipc	a0,0x1
    15fa:	9aa50513          	addi	a0,a0,-1622 # 1fa0 <buf>
    15fe:	e3fff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1602:	87aa                	mv	a5,a0
    1604:	0017b793          	seqz	a5,a5
    1608:	0ff7f793          	zext.b	a5,a5
    160c:	c781                	beqz	a5,1614 <main+0x12c>
    160e:	2a8000ef          	jal	ra,18b6 <_Z11sched_yieldv>
    1612:	a829                	j	162c <main+0x144>
    1614:	00001597          	auipc	a1,0x1
    1618:	98c58593          	addi	a1,a1,-1652 # 1fa0 <buf>
    161c:	00001517          	auipc	a0,0x1
    1620:	ab450513          	addi	a0,a0,-1356 # 20d0 <nuclear+0x50>
    1624:	bdfff0ef          	jal	ra,1202 <_Z6printfPcz>
    1628:	bdd1                	j	14fc <main+0x14>
    162a:	0001                	nop
    162c:	bdc1                	j	14fc <main+0x14>
    162e:	0001                	nop
    1630:	4501                	li	a0,0
    1632:	2c4000ef          	jal	ra,18f6 <_Z4exiti>
    1636:	4781                	li	a5,0
    1638:	853e                	mv	a0,a5
    163a:	60e2                	ld	ra,24(sp)
    163c:	6442                	ld	s0,16(sp)
    163e:	6105                	addi	sp,sp,32
    1640:	8082                	ret

0000000000001642 <_ZL10__syscall0l>:
    1642:	1101                	addi	sp,sp,-32
    1644:	ec22                	sd	s0,24(sp)
    1646:	1000                	addi	s0,sp,32
    1648:	fea43423          	sd	a0,-24(s0)
    164c:	fe843883          	ld	a7,-24(s0)
    1650:	00000073          	ecall
    1654:	87aa                	mv	a5,a0
    1656:	853e                	mv	a0,a5
    1658:	6462                	ld	s0,24(sp)
    165a:	6105                	addi	sp,sp,32
    165c:	8082                	ret

000000000000165e <_ZL10__syscall1ll>:
    165e:	1101                	addi	sp,sp,-32
    1660:	ec22                	sd	s0,24(sp)
    1662:	1000                	addi	s0,sp,32
    1664:	fea43423          	sd	a0,-24(s0)
    1668:	feb43023          	sd	a1,-32(s0)
    166c:	fe843883          	ld	a7,-24(s0)
    1670:	fe043503          	ld	a0,-32(s0)
    1674:	00000073          	ecall
    1678:	87aa                	mv	a5,a0
    167a:	853e                	mv	a0,a5
    167c:	6462                	ld	s0,24(sp)
    167e:	6105                	addi	sp,sp,32
    1680:	8082                	ret

0000000000001682 <_ZL10__syscall2lll>:
    1682:	7179                	addi	sp,sp,-48
    1684:	f422                	sd	s0,40(sp)
    1686:	1800                	addi	s0,sp,48
    1688:	fea43423          	sd	a0,-24(s0)
    168c:	feb43023          	sd	a1,-32(s0)
    1690:	fcc43c23          	sd	a2,-40(s0)
    1694:	fe843883          	ld	a7,-24(s0)
    1698:	fe043503          	ld	a0,-32(s0)
    169c:	fd843583          	ld	a1,-40(s0)
    16a0:	00000073          	ecall
    16a4:	87aa                	mv	a5,a0
    16a6:	853e                	mv	a0,a5
    16a8:	7422                	ld	s0,40(sp)
    16aa:	6145                	addi	sp,sp,48
    16ac:	8082                	ret

00000000000016ae <_ZL10__syscall3llll>:
    16ae:	7179                	addi	sp,sp,-48
    16b0:	f422                	sd	s0,40(sp)
    16b2:	1800                	addi	s0,sp,48
    16b4:	fea43423          	sd	a0,-24(s0)
    16b8:	feb43023          	sd	a1,-32(s0)
    16bc:	fcc43c23          	sd	a2,-40(s0)
    16c0:	fcd43823          	sd	a3,-48(s0)
    16c4:	fe843883          	ld	a7,-24(s0)
    16c8:	fe043503          	ld	a0,-32(s0)
    16cc:	fd843583          	ld	a1,-40(s0)
    16d0:	fd043603          	ld	a2,-48(s0)
    16d4:	00000073          	ecall
    16d8:	87aa                	mv	a5,a0
    16da:	853e                	mv	a0,a5
    16dc:	7422                	ld	s0,40(sp)
    16de:	6145                	addi	sp,sp,48
    16e0:	8082                	ret

00000000000016e2 <_ZL10__syscall4lllll>:
    16e2:	7139                	addi	sp,sp,-64
    16e4:	fc22                	sd	s0,56(sp)
    16e6:	0080                	addi	s0,sp,64
    16e8:	fea43423          	sd	a0,-24(s0)
    16ec:	feb43023          	sd	a1,-32(s0)
    16f0:	fcc43c23          	sd	a2,-40(s0)
    16f4:	fcd43823          	sd	a3,-48(s0)
    16f8:	fce43423          	sd	a4,-56(s0)
    16fc:	fe843883          	ld	a7,-24(s0)
    1700:	fe043503          	ld	a0,-32(s0)
    1704:	fd843583          	ld	a1,-40(s0)
    1708:	fd043603          	ld	a2,-48(s0)
    170c:	fc843683          	ld	a3,-56(s0)
    1710:	00000073          	ecall
    1714:	87aa                	mv	a5,a0
    1716:	853e                	mv	a0,a5
    1718:	7462                	ld	s0,56(sp)
    171a:	6121                	addi	sp,sp,64
    171c:	8082                	ret

000000000000171e <_ZL10__syscall5llllll>:
    171e:	7139                	addi	sp,sp,-64
    1720:	fc22                	sd	s0,56(sp)
    1722:	0080                	addi	s0,sp,64
    1724:	fea43423          	sd	a0,-24(s0)
    1728:	feb43023          	sd	a1,-32(s0)
    172c:	fcc43c23          	sd	a2,-40(s0)
    1730:	fcd43823          	sd	a3,-48(s0)
    1734:	fce43423          	sd	a4,-56(s0)
    1738:	fcf43023          	sd	a5,-64(s0)
    173c:	fe843883          	ld	a7,-24(s0)
    1740:	fe043503          	ld	a0,-32(s0)
    1744:	fd843583          	ld	a1,-40(s0)
    1748:	fd043603          	ld	a2,-48(s0)
    174c:	fc843683          	ld	a3,-56(s0)
    1750:	fc043703          	ld	a4,-64(s0)
    1754:	00000073          	ecall
    1758:	87aa                	mv	a5,a0
    175a:	853e                	mv	a0,a5
    175c:	7462                	ld	s0,56(sp)
    175e:	6121                	addi	sp,sp,64
    1760:	8082                	ret

0000000000001762 <_Z4openPKci>:
    1762:	1101                	addi	sp,sp,-32
    1764:	ec06                	sd	ra,24(sp)
    1766:	e822                	sd	s0,16(sp)
    1768:	1000                	addi	s0,sp,32
    176a:	fea43423          	sd	a0,-24(s0)
    176e:	87ae                	mv	a5,a1
    1770:	fef42223          	sw	a5,-28(s0)
    1774:	fe843783          	ld	a5,-24(s0)
    1778:	fe442683          	lw	a3,-28(s0)
    177c:	4709                	li	a4,2
    177e:	863e                	mv	a2,a5
    1780:	f9c00593          	li	a1,-100
    1784:	03800513          	li	a0,56
    1788:	f5bff0ef          	jal	ra,16e2 <_ZL10__syscall4lllll>
    178c:	87aa                	mv	a5,a0
    178e:	2781                	sext.w	a5,a5
    1790:	853e                	mv	a0,a5
    1792:	60e2                	ld	ra,24(sp)
    1794:	6442                	ld	s0,16(sp)
    1796:	6105                	addi	sp,sp,32
    1798:	8082                	ret

000000000000179a <_Z6openatiPKci>:
    179a:	1101                	addi	sp,sp,-32
    179c:	ec06                	sd	ra,24(sp)
    179e:	e822                	sd	s0,16(sp)
    17a0:	1000                	addi	s0,sp,32
    17a2:	87aa                	mv	a5,a0
    17a4:	feb43023          	sd	a1,-32(s0)
    17a8:	8732                	mv	a4,a2
    17aa:	fef42623          	sw	a5,-20(s0)
    17ae:	87ba                	mv	a5,a4
    17b0:	fef42423          	sw	a5,-24(s0)
    17b4:	fec42783          	lw	a5,-20(s0)
    17b8:	fe043603          	ld	a2,-32(s0)
    17bc:	fe842683          	lw	a3,-24(s0)
    17c0:	18000713          	li	a4,384
    17c4:	85be                	mv	a1,a5
    17c6:	03800513          	li	a0,56
    17ca:	f19ff0ef          	jal	ra,16e2 <_ZL10__syscall4lllll>
    17ce:	87aa                	mv	a5,a0
    17d0:	2781                	sext.w	a5,a5
    17d2:	853e                	mv	a0,a5
    17d4:	60e2                	ld	ra,24(sp)
    17d6:	6442                	ld	s0,16(sp)
    17d8:	6105                	addi	sp,sp,32
    17da:	8082                	ret

00000000000017dc <_Z5closei>:
    17dc:	1101                	addi	sp,sp,-32
    17de:	ec06                	sd	ra,24(sp)
    17e0:	e822                	sd	s0,16(sp)
    17e2:	1000                	addi	s0,sp,32
    17e4:	87aa                	mv	a5,a0
    17e6:	fef42623          	sw	a5,-20(s0)
    17ea:	fec42783          	lw	a5,-20(s0)
    17ee:	85be                	mv	a1,a5
    17f0:	03900513          	li	a0,57
    17f4:	e6bff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    17f8:	87aa                	mv	a5,a0
    17fa:	2781                	sext.w	a5,a5
    17fc:	853e                	mv	a0,a5
    17fe:	60e2                	ld	ra,24(sp)
    1800:	6442                	ld	s0,16(sp)
    1802:	6105                	addi	sp,sp,32
    1804:	8082                	ret

0000000000001806 <_Z4readiPvy>:
    1806:	7179                	addi	sp,sp,-48
    1808:	f406                	sd	ra,40(sp)
    180a:	f022                	sd	s0,32(sp)
    180c:	1800                	addi	s0,sp,48
    180e:	87aa                	mv	a5,a0
    1810:	feb43023          	sd	a1,-32(s0)
    1814:	fcc43c23          	sd	a2,-40(s0)
    1818:	fef42623          	sw	a5,-20(s0)
    181c:	fec42783          	lw	a5,-20(s0)
    1820:	fe043703          	ld	a4,-32(s0)
    1824:	fd843683          	ld	a3,-40(s0)
    1828:	863a                	mv	a2,a4
    182a:	85be                	mv	a1,a5
    182c:	03f00513          	li	a0,63
    1830:	e7fff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1834:	87aa                	mv	a5,a0
    1836:	853e                	mv	a0,a5
    1838:	70a2                	ld	ra,40(sp)
    183a:	7402                	ld	s0,32(sp)
    183c:	6145                	addi	sp,sp,48
    183e:	8082                	ret

0000000000001840 <_Z5writeiPKvy>:
    1840:	7179                	addi	sp,sp,-48
    1842:	f406                	sd	ra,40(sp)
    1844:	f022                	sd	s0,32(sp)
    1846:	1800                	addi	s0,sp,48
    1848:	87aa                	mv	a5,a0
    184a:	feb43023          	sd	a1,-32(s0)
    184e:	fcc43c23          	sd	a2,-40(s0)
    1852:	fef42623          	sw	a5,-20(s0)
    1856:	fec42783          	lw	a5,-20(s0)
    185a:	fe043703          	ld	a4,-32(s0)
    185e:	fd843683          	ld	a3,-40(s0)
    1862:	863a                	mv	a2,a4
    1864:	85be                	mv	a1,a5
    1866:	04000513          	li	a0,64
    186a:	e45ff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    186e:	87aa                	mv	a5,a0
    1870:	853e                	mv	a0,a5
    1872:	70a2                	ld	ra,40(sp)
    1874:	7402                	ld	s0,32(sp)
    1876:	6145                	addi	sp,sp,48
    1878:	8082                	ret

000000000000187a <_Z6getpidv>:
    187a:	1141                	addi	sp,sp,-16
    187c:	e406                	sd	ra,8(sp)
    187e:	e022                	sd	s0,0(sp)
    1880:	0800                	addi	s0,sp,16
    1882:	0ac00513          	li	a0,172
    1886:	dbdff0ef          	jal	ra,1642 <_ZL10__syscall0l>
    188a:	87aa                	mv	a5,a0
    188c:	2781                	sext.w	a5,a5
    188e:	853e                	mv	a0,a5
    1890:	60a2                	ld	ra,8(sp)
    1892:	6402                	ld	s0,0(sp)
    1894:	0141                	addi	sp,sp,16
    1896:	8082                	ret

0000000000001898 <_Z7getppidv>:
    1898:	1141                	addi	sp,sp,-16
    189a:	e406                	sd	ra,8(sp)
    189c:	e022                	sd	s0,0(sp)
    189e:	0800                	addi	s0,sp,16
    18a0:	0ad00513          	li	a0,173
    18a4:	d9fff0ef          	jal	ra,1642 <_ZL10__syscall0l>
    18a8:	87aa                	mv	a5,a0
    18aa:	2781                	sext.w	a5,a5
    18ac:	853e                	mv	a0,a5
    18ae:	60a2                	ld	ra,8(sp)
    18b0:	6402                	ld	s0,0(sp)
    18b2:	0141                	addi	sp,sp,16
    18b4:	8082                	ret

00000000000018b6 <_Z11sched_yieldv>:
    18b6:	1141                	addi	sp,sp,-16
    18b8:	e406                	sd	ra,8(sp)
    18ba:	e022                	sd	s0,0(sp)
    18bc:	0800                	addi	s0,sp,16
    18be:	07c00513          	li	a0,124
    18c2:	d81ff0ef          	jal	ra,1642 <_ZL10__syscall0l>
    18c6:	87aa                	mv	a5,a0
    18c8:	2781                	sext.w	a5,a5
    18ca:	853e                	mv	a0,a5
    18cc:	60a2                	ld	ra,8(sp)
    18ce:	6402                	ld	s0,0(sp)
    18d0:	0141                	addi	sp,sp,16
    18d2:	8082                	ret

00000000000018d4 <_Z4forkv>:
    18d4:	1141                	addi	sp,sp,-16
    18d6:	e406                	sd	ra,8(sp)
    18d8:	e022                	sd	s0,0(sp)
    18da:	0800                	addi	s0,sp,16
    18dc:	4601                	li	a2,0
    18de:	45c5                	li	a1,17
    18e0:	0dc00513          	li	a0,220
    18e4:	d9fff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    18e8:	87aa                	mv	a5,a0
    18ea:	2781                	sext.w	a5,a5
    18ec:	853e                	mv	a0,a5
    18ee:	60a2                	ld	ra,8(sp)
    18f0:	6402                	ld	s0,0(sp)
    18f2:	0141                	addi	sp,sp,16
    18f4:	8082                	ret

00000000000018f6 <_Z4exiti>:
    18f6:	1101                	addi	sp,sp,-32
    18f8:	ec06                	sd	ra,24(sp)
    18fa:	e822                	sd	s0,16(sp)
    18fc:	1000                	addi	s0,sp,32
    18fe:	87aa                	mv	a5,a0
    1900:	fef42623          	sw	a5,-20(s0)
    1904:	fec42783          	lw	a5,-20(s0)
    1908:	85be                	mv	a1,a5
    190a:	05d00513          	li	a0,93
    190e:	d51ff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1912:	0001                	nop
    1914:	60e2                	ld	ra,24(sp)
    1916:	6442                	ld	s0,16(sp)
    1918:	6105                	addi	sp,sp,32
    191a:	8082                	ret

000000000000191c <_Z7waitpidiPii>:
    191c:	1101                	addi	sp,sp,-32
    191e:	ec06                	sd	ra,24(sp)
    1920:	e822                	sd	s0,16(sp)
    1922:	1000                	addi	s0,sp,32
    1924:	87aa                	mv	a5,a0
    1926:	feb43023          	sd	a1,-32(s0)
    192a:	8732                	mv	a4,a2
    192c:	fef42623          	sw	a5,-20(s0)
    1930:	87ba                	mv	a5,a4
    1932:	fef42423          	sw	a5,-24(s0)
    1936:	fec42783          	lw	a5,-20(s0)
    193a:	fe043603          	ld	a2,-32(s0)
    193e:	fe842683          	lw	a3,-24(s0)
    1942:	4701                	li	a4,0
    1944:	85be                	mv	a1,a5
    1946:	10400513          	li	a0,260
    194a:	d99ff0ef          	jal	ra,16e2 <_ZL10__syscall4lllll>
    194e:	87aa                	mv	a5,a0
    1950:	2781                	sext.w	a5,a5
    1952:	853e                	mv	a0,a5
    1954:	60e2                	ld	ra,24(sp)
    1956:	6442                	ld	s0,16(sp)
    1958:	6105                	addi	sp,sp,32
    195a:	8082                	ret

000000000000195c <_Z4execPc>:
    195c:	1101                	addi	sp,sp,-32
    195e:	ec06                	sd	ra,24(sp)
    1960:	e822                	sd	s0,16(sp)
    1962:	1000                	addi	s0,sp,32
    1964:	fea43423          	sd	a0,-24(s0)
    1968:	fe843783          	ld	a5,-24(s0)
    196c:	85be                	mv	a1,a5
    196e:	0dd00513          	li	a0,221
    1972:	cedff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1976:	87aa                	mv	a5,a0
    1978:	2781                	sext.w	a5,a5
    197a:	853e                	mv	a0,a5
    197c:	60e2                	ld	ra,24(sp)
    197e:	6442                	ld	s0,16(sp)
    1980:	6105                	addi	sp,sp,32
    1982:	8082                	ret

0000000000001984 <_Z6execvePKcPKPcS3_>:
    1984:	7179                	addi	sp,sp,-48
    1986:	f406                	sd	ra,40(sp)
    1988:	f022                	sd	s0,32(sp)
    198a:	1800                	addi	s0,sp,48
    198c:	fea43423          	sd	a0,-24(s0)
    1990:	feb43023          	sd	a1,-32(s0)
    1994:	fcc43c23          	sd	a2,-40(s0)
    1998:	fe843783          	ld	a5,-24(s0)
    199c:	fe043703          	ld	a4,-32(s0)
    19a0:	fd843683          	ld	a3,-40(s0)
    19a4:	863a                	mv	a2,a4
    19a6:	85be                	mv	a1,a5
    19a8:	0dd00513          	li	a0,221
    19ac:	d03ff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    19b0:	87aa                	mv	a5,a0
    19b2:	2781                	sext.w	a5,a5
    19b4:	853e                	mv	a0,a5
    19b6:	70a2                	ld	ra,40(sp)
    19b8:	7402                	ld	s0,32(sp)
    19ba:	6145                	addi	sp,sp,48
    19bc:	8082                	ret

00000000000019be <_Z5timesPv>:
    19be:	1101                	addi	sp,sp,-32
    19c0:	ec06                	sd	ra,24(sp)
    19c2:	e822                	sd	s0,16(sp)
    19c4:	1000                	addi	s0,sp,32
    19c6:	fea43423          	sd	a0,-24(s0)
    19ca:	fe843783          	ld	a5,-24(s0)
    19ce:	85be                	mv	a1,a5
    19d0:	09900513          	li	a0,153
    19d4:	c8bff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    19d8:	87aa                	mv	a5,a0
    19da:	2781                	sext.w	a5,a5
    19dc:	853e                	mv	a0,a5
    19de:	60e2                	ld	ra,24(sp)
    19e0:	6442                	ld	s0,16(sp)
    19e2:	6105                	addi	sp,sp,32
    19e4:	8082                	ret

00000000000019e6 <_Z8get_timev>:
    19e6:	7179                	addi	sp,sp,-48
    19e8:	f406                	sd	ra,40(sp)
    19ea:	f022                	sd	s0,32(sp)
    19ec:	1800                	addi	s0,sp,48
    19ee:	fd840793          	addi	a5,s0,-40
    19f2:	4581                	li	a1,0
    19f4:	853e                	mv	a0,a5
    19f6:	040000ef          	jal	ra,1a36 <_Z12sys_get_timeP7TimeVali>
    19fa:	87aa                	mv	a5,a0
    19fc:	fef42623          	sw	a5,-20(s0)
    1a00:	fec42783          	lw	a5,-20(s0)
    1a04:	2781                	sext.w	a5,a5
    1a06:	e395                	bnez	a5,1a2a <_Z8get_timev+0x44>
    1a08:	fd843703          	ld	a4,-40(s0)
    1a0c:	67c1                	lui	a5,0x10
    1a0e:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xde07>
    1a10:	8f7d                	and	a4,a4,a5
    1a12:	3e800793          	li	a5,1000
    1a16:	02f70733          	mul	a4,a4,a5
    1a1a:	fe043683          	ld	a3,-32(s0)
    1a1e:	3e800793          	li	a5,1000
    1a22:	02f6d7b3          	divu	a5,a3,a5
    1a26:	97ba                	add	a5,a5,a4
    1a28:	a011                	j	1a2c <_Z8get_timev+0x46>
    1a2a:	57fd                	li	a5,-1
    1a2c:	853e                	mv	a0,a5
    1a2e:	70a2                	ld	ra,40(sp)
    1a30:	7402                	ld	s0,32(sp)
    1a32:	6145                	addi	sp,sp,48
    1a34:	8082                	ret

0000000000001a36 <_Z12sys_get_timeP7TimeVali>:
    1a36:	1101                	addi	sp,sp,-32
    1a38:	ec06                	sd	ra,24(sp)
    1a3a:	e822                	sd	s0,16(sp)
    1a3c:	1000                	addi	s0,sp,32
    1a3e:	fea43423          	sd	a0,-24(s0)
    1a42:	87ae                	mv	a5,a1
    1a44:	fef42223          	sw	a5,-28(s0)
    1a48:	fe843783          	ld	a5,-24(s0)
    1a4c:	fe442703          	lw	a4,-28(s0)
    1a50:	863a                	mv	a2,a4
    1a52:	85be                	mv	a1,a5
    1a54:	0a900513          	li	a0,169
    1a58:	c2bff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1a5c:	87aa                	mv	a5,a0
    1a5e:	2781                	sext.w	a5,a5
    1a60:	853e                	mv	a0,a5
    1a62:	60e2                	ld	ra,24(sp)
    1a64:	6442                	ld	s0,16(sp)
    1a66:	6105                	addi	sp,sp,32
    1a68:	8082                	ret

0000000000001a6a <_Z4timePm>:
    1a6a:	1101                	addi	sp,sp,-32
    1a6c:	ec06                	sd	ra,24(sp)
    1a6e:	e822                	sd	s0,16(sp)
    1a70:	1000                	addi	s0,sp,32
    1a72:	fea43423          	sd	a0,-24(s0)
    1a76:	fe843783          	ld	a5,-24(s0)
    1a7a:	85be                	mv	a1,a5
    1a7c:	42600513          	li	a0,1062
    1a80:	bdfff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1a84:	87aa                	mv	a5,a0
    1a86:	2781                	sext.w	a5,a5
    1a88:	853e                	mv	a0,a5
    1a8a:	60e2                	ld	ra,24(sp)
    1a8c:	6442                	ld	s0,16(sp)
    1a8e:	6105                	addi	sp,sp,32
    1a90:	8082                	ret

0000000000001a92 <_Z5sleepy>:
    1a92:	7179                	addi	sp,sp,-48
    1a94:	f406                	sd	ra,40(sp)
    1a96:	f022                	sd	s0,32(sp)
    1a98:	1800                	addi	s0,sp,48
    1a9a:	fca43c23          	sd	a0,-40(s0)
    1a9e:	fe043023          	sd	zero,-32(s0)
    1aa2:	fe043423          	sd	zero,-24(s0)
    1aa6:	fd843783          	ld	a5,-40(s0)
    1aaa:	fef43023          	sd	a5,-32(s0)
    1aae:	fe040793          	addi	a5,s0,-32
    1ab2:	fe040713          	addi	a4,s0,-32
    1ab6:	863a                	mv	a2,a4
    1ab8:	85be                	mv	a1,a5
    1aba:	06500513          	li	a0,101
    1abe:	bc5ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1ac2:	87aa                	mv	a5,a0
    1ac4:	00f037b3          	snez	a5,a5
    1ac8:	0ff7f793          	zext.b	a5,a5
    1acc:	c789                	beqz	a5,1ad6 <_Z5sleepy+0x44>
    1ace:	fe043783          	ld	a5,-32(s0)
    1ad2:	2781                	sext.w	a5,a5
    1ad4:	a011                	j	1ad8 <_Z5sleepy+0x46>
    1ad6:	4781                	li	a5,0
    1ad8:	853e                	mv	a0,a5
    1ada:	70a2                	ld	ra,40(sp)
    1adc:	7402                	ld	s0,32(sp)
    1ade:	6145                	addi	sp,sp,48
    1ae0:	8082                	ret

0000000000001ae2 <_Z12set_priorityi>:
    1ae2:	1101                	addi	sp,sp,-32
    1ae4:	ec06                	sd	ra,24(sp)
    1ae6:	e822                	sd	s0,16(sp)
    1ae8:	1000                	addi	s0,sp,32
    1aea:	87aa                	mv	a5,a0
    1aec:	fef42623          	sw	a5,-20(s0)
    1af0:	fec42783          	lw	a5,-20(s0)
    1af4:	85be                	mv	a1,a5
    1af6:	08c00513          	li	a0,140
    1afa:	b65ff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1afe:	87aa                	mv	a5,a0
    1b00:	2781                	sext.w	a5,a5
    1b02:	853e                	mv	a0,a5
    1b04:	60e2                	ld	ra,24(sp)
    1b06:	6442                	ld	s0,16(sp)
    1b08:	6105                	addi	sp,sp,32
    1b0a:	8082                	ret

0000000000001b0c <_Z6munmapPvy>:
    1b0c:	1101                	addi	sp,sp,-32
    1b0e:	ec06                	sd	ra,24(sp)
    1b10:	e822                	sd	s0,16(sp)
    1b12:	1000                	addi	s0,sp,32
    1b14:	fea43423          	sd	a0,-24(s0)
    1b18:	feb43023          	sd	a1,-32(s0)
    1b1c:	fe843783          	ld	a5,-24(s0)
    1b20:	fe043703          	ld	a4,-32(s0)
    1b24:	863a                	mv	a2,a4
    1b26:	85be                	mv	a1,a5
    1b28:	0d700513          	li	a0,215
    1b2c:	b57ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1b30:	87aa                	mv	a5,a0
    1b32:	2781                	sext.w	a5,a5
    1b34:	853e                	mv	a0,a5
    1b36:	60e2                	ld	ra,24(sp)
    1b38:	6442                	ld	s0,16(sp)
    1b3a:	6105                	addi	sp,sp,32
    1b3c:	8082                	ret

0000000000001b3e <_Z4waitPi>:
    1b3e:	1101                	addi	sp,sp,-32
    1b40:	ec06                	sd	ra,24(sp)
    1b42:	e822                	sd	s0,16(sp)
    1b44:	1000                	addi	s0,sp,32
    1b46:	fea43423          	sd	a0,-24(s0)
    1b4a:	4601                	li	a2,0
    1b4c:	fe843583          	ld	a1,-24(s0)
    1b50:	557d                	li	a0,-1
    1b52:	dcbff0ef          	jal	ra,191c <_Z7waitpidiPii>
    1b56:	87aa                	mv	a5,a0
    1b58:	853e                	mv	a0,a5
    1b5a:	60e2                	ld	ra,24(sp)
    1b5c:	6442                	ld	s0,16(sp)
    1b5e:	6105                	addi	sp,sp,32
    1b60:	8082                	ret

0000000000001b62 <_Z5spawnPc>:
    1b62:	1101                	addi	sp,sp,-32
    1b64:	ec06                	sd	ra,24(sp)
    1b66:	e822                	sd	s0,16(sp)
    1b68:	1000                	addi	s0,sp,32
    1b6a:	fea43423          	sd	a0,-24(s0)
    1b6e:	fe843783          	ld	a5,-24(s0)
    1b72:	85be                	mv	a1,a5
    1b74:	19000513          	li	a0,400
    1b78:	ae7ff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1b7c:	87aa                	mv	a5,a0
    1b7e:	2781                	sext.w	a5,a5
    1b80:	853e                	mv	a0,a5
    1b82:	60e2                	ld	ra,24(sp)
    1b84:	6442                	ld	s0,16(sp)
    1b86:	6105                	addi	sp,sp,32
    1b88:	8082                	ret

0000000000001b8a <_Z8mailreadPvi>:
    1b8a:	1101                	addi	sp,sp,-32
    1b8c:	ec06                	sd	ra,24(sp)
    1b8e:	e822                	sd	s0,16(sp)
    1b90:	1000                	addi	s0,sp,32
    1b92:	fea43423          	sd	a0,-24(s0)
    1b96:	87ae                	mv	a5,a1
    1b98:	fef42223          	sw	a5,-28(s0)
    1b9c:	fe843783          	ld	a5,-24(s0)
    1ba0:	fe442703          	lw	a4,-28(s0)
    1ba4:	863a                	mv	a2,a4
    1ba6:	85be                	mv	a1,a5
    1ba8:	19100513          	li	a0,401
    1bac:	ad7ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1bb0:	87aa                	mv	a5,a0
    1bb2:	2781                	sext.w	a5,a5
    1bb4:	853e                	mv	a0,a5
    1bb6:	60e2                	ld	ra,24(sp)
    1bb8:	6442                	ld	s0,16(sp)
    1bba:	6105                	addi	sp,sp,32
    1bbc:	8082                	ret

0000000000001bbe <_Z9mailwriteiPvi>:
    1bbe:	1101                	addi	sp,sp,-32
    1bc0:	ec06                	sd	ra,24(sp)
    1bc2:	e822                	sd	s0,16(sp)
    1bc4:	1000                	addi	s0,sp,32
    1bc6:	87aa                	mv	a5,a0
    1bc8:	feb43023          	sd	a1,-32(s0)
    1bcc:	8732                	mv	a4,a2
    1bce:	fef42623          	sw	a5,-20(s0)
    1bd2:	87ba                	mv	a5,a4
    1bd4:	fef42423          	sw	a5,-24(s0)
    1bd8:	fec42783          	lw	a5,-20(s0)
    1bdc:	fe043703          	ld	a4,-32(s0)
    1be0:	fe842683          	lw	a3,-24(s0)
    1be4:	863a                	mv	a2,a4
    1be6:	85be                	mv	a1,a5
    1be8:	19200513          	li	a0,402
    1bec:	ac3ff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1bf0:	87aa                	mv	a5,a0
    1bf2:	2781                	sext.w	a5,a5
    1bf4:	853e                	mv	a0,a5
    1bf6:	60e2                	ld	ra,24(sp)
    1bf8:	6442                	ld	s0,16(sp)
    1bfa:	6105                	addi	sp,sp,32
    1bfc:	8082                	ret

0000000000001bfe <_Z5fstatiP5kstat>:
    1bfe:	1101                	addi	sp,sp,-32
    1c00:	ec06                	sd	ra,24(sp)
    1c02:	e822                	sd	s0,16(sp)
    1c04:	1000                	addi	s0,sp,32
    1c06:	87aa                	mv	a5,a0
    1c08:	feb43023          	sd	a1,-32(s0)
    1c0c:	fef42623          	sw	a5,-20(s0)
    1c10:	fec42783          	lw	a5,-20(s0)
    1c14:	fe043703          	ld	a4,-32(s0)
    1c18:	863a                	mv	a2,a4
    1c1a:	85be                	mv	a1,a5
    1c1c:	05000513          	li	a0,80
    1c20:	a63ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1c24:	87aa                	mv	a5,a0
    1c26:	2781                	sext.w	a5,a5
    1c28:	853e                	mv	a0,a5
    1c2a:	60e2                	ld	ra,24(sp)
    1c2c:	6442                	ld	s0,16(sp)
    1c2e:	6105                	addi	sp,sp,32
    1c30:	8082                	ret

0000000000001c32 <_Z10sys_linkatiPciS_j>:
    1c32:	7179                	addi	sp,sp,-48
    1c34:	f406                	sd	ra,40(sp)
    1c36:	f022                	sd	s0,32(sp)
    1c38:	1800                	addi	s0,sp,48
    1c3a:	87aa                	mv	a5,a0
    1c3c:	feb43023          	sd	a1,-32(s0)
    1c40:	fcd43c23          	sd	a3,-40(s0)
    1c44:	fef42623          	sw	a5,-20(s0)
    1c48:	87b2                	mv	a5,a2
    1c4a:	fef42423          	sw	a5,-24(s0)
    1c4e:	87ba                	mv	a5,a4
    1c50:	fcf42a23          	sw	a5,-44(s0)
    1c54:	fec42583          	lw	a1,-20(s0)
    1c58:	fe043603          	ld	a2,-32(s0)
    1c5c:	fe842683          	lw	a3,-24(s0)
    1c60:	fd843703          	ld	a4,-40(s0)
    1c64:	fd446783          	lwu	a5,-44(s0)
    1c68:	02500513          	li	a0,37
    1c6c:	ab3ff0ef          	jal	ra,171e <_ZL10__syscall5llllll>
    1c70:	87aa                	mv	a5,a0
    1c72:	2781                	sext.w	a5,a5
    1c74:	853e                	mv	a0,a5
    1c76:	70a2                	ld	ra,40(sp)
    1c78:	7402                	ld	s0,32(sp)
    1c7a:	6145                	addi	sp,sp,48
    1c7c:	8082                	ret

0000000000001c7e <_Z12sys_unlinkatiPcj>:
    1c7e:	1101                	addi	sp,sp,-32
    1c80:	ec06                	sd	ra,24(sp)
    1c82:	e822                	sd	s0,16(sp)
    1c84:	1000                	addi	s0,sp,32
    1c86:	87aa                	mv	a5,a0
    1c88:	feb43023          	sd	a1,-32(s0)
    1c8c:	8732                	mv	a4,a2
    1c8e:	fef42623          	sw	a5,-20(s0)
    1c92:	87ba                	mv	a5,a4
    1c94:	fef42423          	sw	a5,-24(s0)
    1c98:	fec42783          	lw	a5,-20(s0)
    1c9c:	fe043703          	ld	a4,-32(s0)
    1ca0:	fe846683          	lwu	a3,-24(s0)
    1ca4:	863a                	mv	a2,a4
    1ca6:	85be                	mv	a1,a5
    1ca8:	02300513          	li	a0,35
    1cac:	a03ff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1cb0:	87aa                	mv	a5,a0
    1cb2:	2781                	sext.w	a5,a5
    1cb4:	853e                	mv	a0,a5
    1cb6:	60e2                	ld	ra,24(sp)
    1cb8:	6442                	ld	s0,16(sp)
    1cba:	6105                	addi	sp,sp,32
    1cbc:	8082                	ret

0000000000001cbe <_Z4linkPcS_>:
    1cbe:	1101                	addi	sp,sp,-32
    1cc0:	ec06                	sd	ra,24(sp)
    1cc2:	e822                	sd	s0,16(sp)
    1cc4:	1000                	addi	s0,sp,32
    1cc6:	fea43423          	sd	a0,-24(s0)
    1cca:	feb43023          	sd	a1,-32(s0)
    1cce:	4701                	li	a4,0
    1cd0:	fe043683          	ld	a3,-32(s0)
    1cd4:	f9c00613          	li	a2,-100
    1cd8:	fe843583          	ld	a1,-24(s0)
    1cdc:	f9c00513          	li	a0,-100
    1ce0:	f53ff0ef          	jal	ra,1c32 <_Z10sys_linkatiPciS_j>
    1ce4:	87aa                	mv	a5,a0
    1ce6:	853e                	mv	a0,a5
    1ce8:	60e2                	ld	ra,24(sp)
    1cea:	6442                	ld	s0,16(sp)
    1cec:	6105                	addi	sp,sp,32
    1cee:	8082                	ret

0000000000001cf0 <_Z6unlinkPc>:
    1cf0:	1101                	addi	sp,sp,-32
    1cf2:	ec06                	sd	ra,24(sp)
    1cf4:	e822                	sd	s0,16(sp)
    1cf6:	1000                	addi	s0,sp,32
    1cf8:	fea43423          	sd	a0,-24(s0)
    1cfc:	4601                	li	a2,0
    1cfe:	fe843583          	ld	a1,-24(s0)
    1d02:	f9c00513          	li	a0,-100
    1d06:	f79ff0ef          	jal	ra,1c7e <_Z12sys_unlinkatiPcj>
    1d0a:	87aa                	mv	a5,a0
    1d0c:	853e                	mv	a0,a5
    1d0e:	60e2                	ld	ra,24(sp)
    1d10:	6442                	ld	s0,16(sp)
    1d12:	6105                	addi	sp,sp,32
    1d14:	8082                	ret

0000000000001d16 <_Z5unamePv>:
    1d16:	1101                	addi	sp,sp,-32
    1d18:	ec06                	sd	ra,24(sp)
    1d1a:	e822                	sd	s0,16(sp)
    1d1c:	1000                	addi	s0,sp,32
    1d1e:	fea43423          	sd	a0,-24(s0)
    1d22:	fe843783          	ld	a5,-24(s0)
    1d26:	85be                	mv	a1,a5
    1d28:	0a000513          	li	a0,160
    1d2c:	933ff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1d30:	87aa                	mv	a5,a0
    1d32:	2781                	sext.w	a5,a5
    1d34:	853e                	mv	a0,a5
    1d36:	60e2                	ld	ra,24(sp)
    1d38:	6442                	ld	s0,16(sp)
    1d3a:	6105                	addi	sp,sp,32
    1d3c:	8082                	ret

0000000000001d3e <_Z3brkPv>:
    1d3e:	1101                	addi	sp,sp,-32
    1d40:	ec06                	sd	ra,24(sp)
    1d42:	e822                	sd	s0,16(sp)
    1d44:	1000                	addi	s0,sp,32
    1d46:	fea43423          	sd	a0,-24(s0)
    1d4a:	fe843783          	ld	a5,-24(s0)
    1d4e:	85be                	mv	a1,a5
    1d50:	0d600513          	li	a0,214
    1d54:	90bff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1d58:	87aa                	mv	a5,a0
    1d5a:	2781                	sext.w	a5,a5
    1d5c:	853e                	mv	a0,a5
    1d5e:	60e2                	ld	ra,24(sp)
    1d60:	6442                	ld	s0,16(sp)
    1d62:	6105                	addi	sp,sp,32
    1d64:	8082                	ret

0000000000001d66 <_Z5chdirPKc>:
    1d66:	1101                	addi	sp,sp,-32
    1d68:	ec06                	sd	ra,24(sp)
    1d6a:	e822                	sd	s0,16(sp)
    1d6c:	1000                	addi	s0,sp,32
    1d6e:	fea43423          	sd	a0,-24(s0)
    1d72:	fe843783          	ld	a5,-24(s0)
    1d76:	85be                	mv	a1,a5
    1d78:	03100513          	li	a0,49
    1d7c:	8e3ff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1d80:	87aa                	mv	a5,a0
    1d82:	2781                	sext.w	a5,a5
    1d84:	853e                	mv	a0,a5
    1d86:	60e2                	ld	ra,24(sp)
    1d88:	6442                	ld	s0,16(sp)
    1d8a:	6105                	addi	sp,sp,32
    1d8c:	8082                	ret

0000000000001d8e <_Z5mkdirPKcj>:
    1d8e:	1101                	addi	sp,sp,-32
    1d90:	ec06                	sd	ra,24(sp)
    1d92:	e822                	sd	s0,16(sp)
    1d94:	1000                	addi	s0,sp,32
    1d96:	fea43423          	sd	a0,-24(s0)
    1d9a:	87ae                	mv	a5,a1
    1d9c:	fef42223          	sw	a5,-28(s0)
    1da0:	fe843783          	ld	a5,-24(s0)
    1da4:	fe446703          	lwu	a4,-28(s0)
    1da8:	86ba                	mv	a3,a4
    1daa:	863e                	mv	a2,a5
    1dac:	f9c00593          	li	a1,-100
    1db0:	02200513          	li	a0,34
    1db4:	8fbff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1db8:	87aa                	mv	a5,a0
    1dba:	2781                	sext.w	a5,a5
    1dbc:	853e                	mv	a0,a5
    1dbe:	60e2                	ld	ra,24(sp)
    1dc0:	6442                	ld	s0,16(sp)
    1dc2:	6105                	addi	sp,sp,32
    1dc4:	8082                	ret

0000000000001dc6 <_Z8getdentsiP14linux_dirent64m>:
    1dc6:	7179                	addi	sp,sp,-48
    1dc8:	f406                	sd	ra,40(sp)
    1dca:	f022                	sd	s0,32(sp)
    1dcc:	1800                	addi	s0,sp,48
    1dce:	87aa                	mv	a5,a0
    1dd0:	feb43023          	sd	a1,-32(s0)
    1dd4:	fcc43c23          	sd	a2,-40(s0)
    1dd8:	fef42623          	sw	a5,-20(s0)
    1ddc:	fec42783          	lw	a5,-20(s0)
    1de0:	fe043703          	ld	a4,-32(s0)
    1de4:	fd843683          	ld	a3,-40(s0)
    1de8:	863a                	mv	a2,a4
    1dea:	85be                	mv	a1,a5
    1dec:	03d00513          	li	a0,61
    1df0:	8bfff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1df4:	87aa                	mv	a5,a0
    1df6:	2781                	sext.w	a5,a5
    1df8:	853e                	mv	a0,a5
    1dfa:	70a2                	ld	ra,40(sp)
    1dfc:	7402                	ld	s0,32(sp)
    1dfe:	6145                	addi	sp,sp,48
    1e00:	8082                	ret

0000000000001e02 <_Z4pipePi>:
    1e02:	1101                	addi	sp,sp,-32
    1e04:	ec06                	sd	ra,24(sp)
    1e06:	e822                	sd	s0,16(sp)
    1e08:	1000                	addi	s0,sp,32
    1e0a:	fea43423          	sd	a0,-24(s0)
    1e0e:	fe843783          	ld	a5,-24(s0)
    1e12:	4601                	li	a2,0
    1e14:	85be                	mv	a1,a5
    1e16:	03b00513          	li	a0,59
    1e1a:	869ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1e1e:	87aa                	mv	a5,a0
    1e20:	2781                	sext.w	a5,a5
    1e22:	853e                	mv	a0,a5
    1e24:	60e2                	ld	ra,24(sp)
    1e26:	6442                	ld	s0,16(sp)
    1e28:	6105                	addi	sp,sp,32
    1e2a:	8082                	ret

0000000000001e2c <_Z3dupi>:
    1e2c:	1101                	addi	sp,sp,-32
    1e2e:	ec06                	sd	ra,24(sp)
    1e30:	e822                	sd	s0,16(sp)
    1e32:	1000                	addi	s0,sp,32
    1e34:	87aa                	mv	a5,a0
    1e36:	fef42623          	sw	a5,-20(s0)
    1e3a:	fec42783          	lw	a5,-20(s0)
    1e3e:	85be                	mv	a1,a5
    1e40:	455d                	li	a0,23
    1e42:	81dff0ef          	jal	ra,165e <_ZL10__syscall1ll>
    1e46:	87aa                	mv	a5,a0
    1e48:	2781                	sext.w	a5,a5
    1e4a:	853e                	mv	a0,a5
    1e4c:	60e2                	ld	ra,24(sp)
    1e4e:	6442                	ld	s0,16(sp)
    1e50:	6105                	addi	sp,sp,32
    1e52:	8082                	ret

0000000000001e54 <_Z4dup2ii>:
    1e54:	1101                	addi	sp,sp,-32
    1e56:	ec06                	sd	ra,24(sp)
    1e58:	e822                	sd	s0,16(sp)
    1e5a:	1000                	addi	s0,sp,32
    1e5c:	87aa                	mv	a5,a0
    1e5e:	872e                	mv	a4,a1
    1e60:	fef42623          	sw	a5,-20(s0)
    1e64:	87ba                	mv	a5,a4
    1e66:	fef42423          	sw	a5,-24(s0)
    1e6a:	fec42783          	lw	a5,-20(s0)
    1e6e:	fe842703          	lw	a4,-24(s0)
    1e72:	4681                	li	a3,0
    1e74:	863a                	mv	a2,a4
    1e76:	85be                	mv	a1,a5
    1e78:	4561                	li	a0,24
    1e7a:	835ff0ef          	jal	ra,16ae <_ZL10__syscall3llll>
    1e7e:	87aa                	mv	a5,a0
    1e80:	2781                	sext.w	a5,a5
    1e82:	853e                	mv	a0,a5
    1e84:	60e2                	ld	ra,24(sp)
    1e86:	6442                	ld	s0,16(sp)
    1e88:	6105                	addi	sp,sp,32
    1e8a:	8082                	ret

0000000000001e8c <_Z5mountPKcS0_S0_mPKv>:
    1e8c:	7139                	addi	sp,sp,-64
    1e8e:	fc06                	sd	ra,56(sp)
    1e90:	f822                	sd	s0,48(sp)
    1e92:	0080                	addi	s0,sp,64
    1e94:	fea43423          	sd	a0,-24(s0)
    1e98:	feb43023          	sd	a1,-32(s0)
    1e9c:	fcc43c23          	sd	a2,-40(s0)
    1ea0:	fcd43823          	sd	a3,-48(s0)
    1ea4:	fce43423          	sd	a4,-56(s0)
    1ea8:	fe843583          	ld	a1,-24(s0)
    1eac:	fe043603          	ld	a2,-32(s0)
    1eb0:	fd843683          	ld	a3,-40(s0)
    1eb4:	fd043703          	ld	a4,-48(s0)
    1eb8:	fc843783          	ld	a5,-56(s0)
    1ebc:	02800513          	li	a0,40
    1ec0:	85fff0ef          	jal	ra,171e <_ZL10__syscall5llllll>
    1ec4:	87aa                	mv	a5,a0
    1ec6:	2781                	sext.w	a5,a5
    1ec8:	853e                	mv	a0,a5
    1eca:	70e2                	ld	ra,56(sp)
    1ecc:	7442                	ld	s0,48(sp)
    1ece:	6121                	addi	sp,sp,64
    1ed0:	8082                	ret

0000000000001ed2 <_Z6umountPKc>:
    1ed2:	1101                	addi	sp,sp,-32
    1ed4:	ec06                	sd	ra,24(sp)
    1ed6:	e822                	sd	s0,16(sp)
    1ed8:	1000                	addi	s0,sp,32
    1eda:	fea43423          	sd	a0,-24(s0)
    1ede:	fe843783          	ld	a5,-24(s0)
    1ee2:	4601                	li	a2,0
    1ee4:	85be                	mv	a1,a5
    1ee6:	02700513          	li	a0,39
    1eea:	f98ff0ef          	jal	ra,1682 <_ZL10__syscall2lll>
    1eee:	87aa                	mv	a5,a0
    1ef0:	2781                	sext.w	a5,a5
    1ef2:	853e                	mv	a0,a5
    1ef4:	60e2                	ld	ra,24(sp)
    1ef6:	6442                	ld	s0,16(sp)
    1ef8:	6105                	addi	sp,sp,32
    1efa:	8082                	ret

Disassembly of section .interp:

0000000000001efc <.interp>:
    1efc:	62696c2f          	.4byte	0x62696c2f
    1f00:	2d646c2f          	.4byte	0x2d646c2f
    1f04:	696c                	ld	a1,208(a0)
    1f06:	756e                	ld	a0,248(sp)
    1f08:	2d78                	fld	fa4,216(a0)
    1f0a:	6972                	ld	s2,280(sp)
    1f0c:	36766373          	csrrsi	t1,0x367,12
    1f10:	2d34                	fld	fa3,88(a0)
    1f12:	706c                	ld	a1,224(s0)
    1f14:	3436                	fld	fs0,360(sp)
    1f16:	2e64                	fld	fs1,216(a2)
    1f18:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001f20 <.note.gnu.build-id>:
    1f20:	0004                	.2byte	0x4
    1f22:	0000                	unimp
    1f24:	0014                	.2byte	0x14
    1f26:	0000                	unimp
    1f28:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1f2c:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1f30:	11bcd423          	.4byte	0x11bcd423
    1f34:	37a2                	fld	fa5,40(sp)
    1f36:	2ead554b          	.4byte	0x2ead554b
    1f3a:	1b5a8273          	.4byte	0x1b5a8273
    1f3e:	de6c                	sw	a1,124(a2)
    1f40:	cf16                	sw	t0,156(sp)
    1f42:	fade                	sd	s7,368(sp)

Disassembly of section .dynsym:

0000000000001f48 <.dynsym>:
	...
    1f64:	00010003          	lb	zero,0(sp)
    1f68:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001f78 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001f80 <.gnu.hash>:
    1f80:	0001                	nop
    1f82:	0000                	unimp
    1f84:	0001                	nop
    1f86:	0000                	unimp
    1f88:	0001                	nop
	...

Disassembly of section .bss:

0000000000001fa0 <buf>:
	...

Disassembly of section .data:

0000000000002068 <_ZL6digits>:
    2068:	3130                	fld	fa2,96(a0)
    206a:	3332                	fld	ft6,296(sp)
    206c:	3534                	fld	fa3,104(a0)
    206e:	3736                	fld	fa4,360(sp)
    2070:	3938                	fld	fa4,112(a0)
    2072:	6261                	lui	tp,0x18
    2074:	66656463          	bltu	a0,t1,26dc <_GLOBAL_OFFSET_TABLE_+0x4e4>
	...

0000000000002080 <nuclear>:
    2080:	7566                	ld	a0,120(sp)
    2082:	6e6f6973          	csrrsi	s2,0x6e6,30
    2086:	000a                	c.slli	zero,0x2
    2088:	6e28                	ld	a0,88(a2)
    208a:	6c75                	lui	s8,0x1d
    208c:	296c                	fld	fa1,208(a0)
    208e:	0000                	unimp
    2090:	6572                	ld	a0,280(sp)
    2092:	6c61                	lui	s8,0x18
    2094:	7320                	ld	s0,96(a4)
    2096:	6568                	ld	a0,200(a0)
    2098:	6c6c                	ld	a1,216(s0)
    209a:	7320                	ld	s0,96(a4)
    209c:	6174                	ld	a3,192(a0)
    209e:	6572                	ld	a0,280(sp)
    20a0:	2164                	fld	fs1,192(a0)
    20a2:	000a                	c.slli	zero,0x2
    20a4:	0000                	unimp
    20a6:	0000                	unimp
    20a8:	003e                	c.slli	zero,0xf
    20aa:	0000                	unimp
    20ac:	0000                	unimp
    20ae:	0000                	unimp
    20b0:	2008                	fld	fa0,0(s0)
    20b2:	0008                	.2byte	0x8
    20b4:	0000                	unimp
    20b6:	0000                	unimp
    20b8:	000a                	c.slli	zero,0x2
    20ba:	0000                	unimp
    20bc:	0000                	unimp
    20be:	0000                	unimp
    20c0:	7865                	lui	a6,0xffff9
    20c2:	7469                	lui	s0,0xffffa
    20c4:	0000                	unimp
    20c6:	0000                	unimp
    20c8:	6979                	lui	s2,0x1e
    20ca:	6c65                	lui	s8,0x19
    20cc:	0064                	addi	s1,sp,12
    20ce:	0000                	unimp
    20d0:	6e6e6f63          	bltu	t3,t1,27ce <_GLOBAL_OFFSET_TABLE_+0x5d6>
    20d4:	6520746f          	jal	s0,9726 <_GLOBAL_OFFSET_TABLE_+0x752e>
    20d8:	6378                	ld	a4,192(a4)
    20da:	7475                	lui	s0,0xffffd
    20dc:	2065                	.2byte	0x2065
    20de:	7325                	lui	t1,0xfffe9
    20e0:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

00000000000020e8 <.dynamic>:
    20e8:	fef5                	bnez	a3,20e4 <nuclear+0x64>
    20ea:	6fff                	.2byte	0x6fff
    20ec:	0000                	unimp
    20ee:	0000                	unimp
    20f0:	1f80                	addi	s0,sp,1008
    20f2:	0000                	unimp
    20f4:	0000                	unimp
    20f6:	0000                	unimp
    20f8:	0005                	c.nop	1
    20fa:	0000                	unimp
    20fc:	0000                	unimp
    20fe:	0000                	unimp
    2100:	1f78                	addi	a4,sp,956
    2102:	0000                	unimp
    2104:	0000                	unimp
    2106:	0000                	unimp
    2108:	0006                	c.slli	zero,0x1
    210a:	0000                	unimp
    210c:	0000                	unimp
    210e:	0000                	unimp
    2110:	1f48                	addi	a0,sp,948
    2112:	0000                	unimp
    2114:	0000                	unimp
    2116:	0000                	unimp
    2118:	000a                	c.slli	zero,0x2
    211a:	0000                	unimp
    211c:	0000                	unimp
    211e:	0000                	unimp
    2120:	0001                	nop
    2122:	0000                	unimp
    2124:	0000                	unimp
    2126:	0000                	unimp
    2128:	0000000b          	.4byte	0xb
    212c:	0000                	unimp
    212e:	0000                	unimp
    2130:	0018                	.2byte	0x18
    2132:	0000                	unimp
    2134:	0000                	unimp
    2136:	0000                	unimp
    2138:	0015                	c.nop	5
	...
    2146:	0000                	unimp
    2148:	00000007          	.4byte	0x7
	...
    2158:	0008                	.2byte	0x8
	...
    2166:	0000                	unimp
    2168:	0009                	c.nop	2
    216a:	0000                	unimp
    216c:	0000                	unimp
    216e:	0000                	unimp
    2170:	0018                	.2byte	0x18
    2172:	0000                	unimp
    2174:	0000                	unimp
    2176:	0000                	unimp
    2178:	001e                	c.slli	zero,0x7
    217a:	0000                	unimp
    217c:	0000                	unimp
    217e:	0000                	unimp
    2180:	0008                	.2byte	0x8
    2182:	0000                	unimp
    2184:	0000                	unimp
    2186:	0000                	unimp
    2188:	6ffffffb          	.4byte	0x6ffffffb
    218c:	0000                	unimp
    218e:	0000                	unimp
    2190:	0001                	nop
    2192:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

00000000000021f8 <.got>:
    21f8:	20e8                	fld	fa0,192(s1)
    21fa:	0000                	unimp
    21fc:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1ae14>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12df8>
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffdee03>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

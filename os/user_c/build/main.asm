
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
    1016:	77e000ef          	jal	ra,1794 <_Z4readiPvy>
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
    1040:	78e000ef          	jal	ra,17ce <_Z5writeiPKvy>
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
    10fe:	ef670713          	addi	a4,a4,-266 # 1ff0 <_ZL6digits>
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
    11c8:	e2c70713          	addi	a4,a4,-468 # 1ff0 <_ZL6digits>
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
    136e:	ca678793          	addi	a5,a5,-858 # 2010 <nuclear+0x8>
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
    14f4:	b2850513          	addi	a0,a0,-1240 # 2018 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	00001517          	auipc	a0,0x1
    1500:	b3450513          	addi	a0,a0,-1228 # 2030 <nuclear+0x28>
    1504:	cffff0ef          	jal	ra,1202 <_Z6printfPcz>
    1508:	afbff0ef          	jal	ra,1002 <_Z7getcharv>
    150c:	87aa                	mv	a5,a0
    150e:	fef407a3          	sb	a5,-17(s0)
    1512:	00001797          	auipc	a5,0x1
    1516:	a1678793          	addi	a5,a5,-1514 # 1f28 <buf>
    151a:	fef43023          	sd	a5,-32(s0)
    151e:	a02d                	j	1548 <main+0x60>
    1520:	fef44783          	lbu	a5,-17(s0)
    1524:	853e                	mv	a0,a5
    1526:	b03ff0ef          	jal	ra,1028 <_Z7putcharc>
    152a:	fef44703          	lbu	a4,-17(s0)
    152e:	fe043783          	ld	a5,-32(s0)
    1532:	00178693          	addi	a3,a5,1
    1536:	fed43023          	sd	a3,-32(s0)
    153a:	00e78023          	sb	a4,0(a5)
    153e:	ac5ff0ef          	jal	ra,1002 <_Z7getcharv>
    1542:	87aa                	mv	a5,a0
    1544:	fef407a3          	sb	a5,-17(s0)
    1548:	fef44783          	lbu	a5,-17(s0)
    154c:	0ff7f713          	zext.b	a4,a5
    1550:	47b5                	li	a5,13
    1552:	fcf717e3          	bne	a4,a5,1520 <main+0x38>
    1556:	fe043783          	ld	a5,-32(s0)
    155a:	00078023          	sb	zero,0(a5)
    155e:	00001517          	auipc	a0,0x1
    1562:	ada50513          	addi	a0,a0,-1318 # 2038 <nuclear+0x30>
    1566:	c9dff0ef          	jal	ra,1202 <_Z6printfPcz>
    156a:	00001517          	auipc	a0,0x1
    156e:	9be50513          	addi	a0,a0,-1602 # 1f28 <buf>
    1572:	e89ff0ef          	jal	ra,13fa <_Z6strlenPc>
    1576:	87aa                	mv	a5,a0
    1578:	0017b793          	seqz	a5,a5
    157c:	0ff7f793          	zext.b	a5,a5
    1580:	ef85                	bnez	a5,15b8 <main+0xd0>
    1582:	00001597          	auipc	a1,0x1
    1586:	abe58593          	addi	a1,a1,-1346 # 2040 <nuclear+0x38>
    158a:	00001517          	auipc	a0,0x1
    158e:	99e50513          	addi	a0,a0,-1634 # 1f28 <buf>
    1592:	eabff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1596:	87aa                	mv	a5,a0
    1598:	0017b793          	seqz	a5,a5
    159c:	0ff7f793          	zext.b	a5,a5
    15a0:	ef91                	bnez	a5,15bc <main+0xd4>
    15a2:	00001597          	auipc	a1,0x1
    15a6:	98658593          	addi	a1,a1,-1658 # 1f28 <buf>
    15aa:	00001517          	auipc	a0,0x1
    15ae:	a9e50513          	addi	a0,a0,-1378 # 2048 <nuclear+0x40>
    15b2:	c51ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15b6:	b799                	j	14fc <main+0x14>
    15b8:	0001                	nop
    15ba:	b789                	j	14fc <main+0x14>
    15bc:	0001                	nop
    15be:	557d                	li	a0,-1
    15c0:	2c4000ef          	jal	ra,1884 <_Z4exiti>
    15c4:	4781                	li	a5,0
    15c6:	853e                	mv	a0,a5
    15c8:	60e2                	ld	ra,24(sp)
    15ca:	6442                	ld	s0,16(sp)
    15cc:	6105                	addi	sp,sp,32
    15ce:	8082                	ret

00000000000015d0 <_ZL10__syscall0l>:
    15d0:	1101                	addi	sp,sp,-32
    15d2:	ec22                	sd	s0,24(sp)
    15d4:	1000                	addi	s0,sp,32
    15d6:	fea43423          	sd	a0,-24(s0)
    15da:	fe843883          	ld	a7,-24(s0)
    15de:	00000073          	ecall
    15e2:	87aa                	mv	a5,a0
    15e4:	853e                	mv	a0,a5
    15e6:	6462                	ld	s0,24(sp)
    15e8:	6105                	addi	sp,sp,32
    15ea:	8082                	ret

00000000000015ec <_ZL10__syscall1ll>:
    15ec:	1101                	addi	sp,sp,-32
    15ee:	ec22                	sd	s0,24(sp)
    15f0:	1000                	addi	s0,sp,32
    15f2:	fea43423          	sd	a0,-24(s0)
    15f6:	feb43023          	sd	a1,-32(s0)
    15fa:	fe843883          	ld	a7,-24(s0)
    15fe:	fe043503          	ld	a0,-32(s0)
    1602:	00000073          	ecall
    1606:	87aa                	mv	a5,a0
    1608:	853e                	mv	a0,a5
    160a:	6462                	ld	s0,24(sp)
    160c:	6105                	addi	sp,sp,32
    160e:	8082                	ret

0000000000001610 <_ZL10__syscall2lll>:
    1610:	7179                	addi	sp,sp,-48
    1612:	f422                	sd	s0,40(sp)
    1614:	1800                	addi	s0,sp,48
    1616:	fea43423          	sd	a0,-24(s0)
    161a:	feb43023          	sd	a1,-32(s0)
    161e:	fcc43c23          	sd	a2,-40(s0)
    1622:	fe843883          	ld	a7,-24(s0)
    1626:	fe043503          	ld	a0,-32(s0)
    162a:	fd843583          	ld	a1,-40(s0)
    162e:	00000073          	ecall
    1632:	87aa                	mv	a5,a0
    1634:	853e                	mv	a0,a5
    1636:	7422                	ld	s0,40(sp)
    1638:	6145                	addi	sp,sp,48
    163a:	8082                	ret

000000000000163c <_ZL10__syscall3llll>:
    163c:	7179                	addi	sp,sp,-48
    163e:	f422                	sd	s0,40(sp)
    1640:	1800                	addi	s0,sp,48
    1642:	fea43423          	sd	a0,-24(s0)
    1646:	feb43023          	sd	a1,-32(s0)
    164a:	fcc43c23          	sd	a2,-40(s0)
    164e:	fcd43823          	sd	a3,-48(s0)
    1652:	fe843883          	ld	a7,-24(s0)
    1656:	fe043503          	ld	a0,-32(s0)
    165a:	fd843583          	ld	a1,-40(s0)
    165e:	fd043603          	ld	a2,-48(s0)
    1662:	00000073          	ecall
    1666:	87aa                	mv	a5,a0
    1668:	853e                	mv	a0,a5
    166a:	7422                	ld	s0,40(sp)
    166c:	6145                	addi	sp,sp,48
    166e:	8082                	ret

0000000000001670 <_ZL10__syscall4lllll>:
    1670:	7139                	addi	sp,sp,-64
    1672:	fc22                	sd	s0,56(sp)
    1674:	0080                	addi	s0,sp,64
    1676:	fea43423          	sd	a0,-24(s0)
    167a:	feb43023          	sd	a1,-32(s0)
    167e:	fcc43c23          	sd	a2,-40(s0)
    1682:	fcd43823          	sd	a3,-48(s0)
    1686:	fce43423          	sd	a4,-56(s0)
    168a:	fe843883          	ld	a7,-24(s0)
    168e:	fe043503          	ld	a0,-32(s0)
    1692:	fd843583          	ld	a1,-40(s0)
    1696:	fd043603          	ld	a2,-48(s0)
    169a:	fc843683          	ld	a3,-56(s0)
    169e:	00000073          	ecall
    16a2:	87aa                	mv	a5,a0
    16a4:	853e                	mv	a0,a5
    16a6:	7462                	ld	s0,56(sp)
    16a8:	6121                	addi	sp,sp,64
    16aa:	8082                	ret

00000000000016ac <_ZL10__syscall5llllll>:
    16ac:	7139                	addi	sp,sp,-64
    16ae:	fc22                	sd	s0,56(sp)
    16b0:	0080                	addi	s0,sp,64
    16b2:	fea43423          	sd	a0,-24(s0)
    16b6:	feb43023          	sd	a1,-32(s0)
    16ba:	fcc43c23          	sd	a2,-40(s0)
    16be:	fcd43823          	sd	a3,-48(s0)
    16c2:	fce43423          	sd	a4,-56(s0)
    16c6:	fcf43023          	sd	a5,-64(s0)
    16ca:	fe843883          	ld	a7,-24(s0)
    16ce:	fe043503          	ld	a0,-32(s0)
    16d2:	fd843583          	ld	a1,-40(s0)
    16d6:	fd043603          	ld	a2,-48(s0)
    16da:	fc843683          	ld	a3,-56(s0)
    16de:	fc043703          	ld	a4,-64(s0)
    16e2:	00000073          	ecall
    16e6:	87aa                	mv	a5,a0
    16e8:	853e                	mv	a0,a5
    16ea:	7462                	ld	s0,56(sp)
    16ec:	6121                	addi	sp,sp,64
    16ee:	8082                	ret

00000000000016f0 <_Z4openPKci>:
    16f0:	1101                	addi	sp,sp,-32
    16f2:	ec06                	sd	ra,24(sp)
    16f4:	e822                	sd	s0,16(sp)
    16f6:	1000                	addi	s0,sp,32
    16f8:	fea43423          	sd	a0,-24(s0)
    16fc:	87ae                	mv	a5,a1
    16fe:	fef42223          	sw	a5,-28(s0)
    1702:	fe843783          	ld	a5,-24(s0)
    1706:	fe442683          	lw	a3,-28(s0)
    170a:	4709                	li	a4,2
    170c:	863e                	mv	a2,a5
    170e:	f9c00593          	li	a1,-100
    1712:	03800513          	li	a0,56
    1716:	f5bff0ef          	jal	ra,1670 <_ZL10__syscall4lllll>
    171a:	87aa                	mv	a5,a0
    171c:	2781                	sext.w	a5,a5
    171e:	853e                	mv	a0,a5
    1720:	60e2                	ld	ra,24(sp)
    1722:	6442                	ld	s0,16(sp)
    1724:	6105                	addi	sp,sp,32
    1726:	8082                	ret

0000000000001728 <_Z6openatiPKci>:
    1728:	1101                	addi	sp,sp,-32
    172a:	ec06                	sd	ra,24(sp)
    172c:	e822                	sd	s0,16(sp)
    172e:	1000                	addi	s0,sp,32
    1730:	87aa                	mv	a5,a0
    1732:	feb43023          	sd	a1,-32(s0)
    1736:	8732                	mv	a4,a2
    1738:	fef42623          	sw	a5,-20(s0)
    173c:	87ba                	mv	a5,a4
    173e:	fef42423          	sw	a5,-24(s0)
    1742:	fec42783          	lw	a5,-20(s0)
    1746:	fe043603          	ld	a2,-32(s0)
    174a:	fe842683          	lw	a3,-24(s0)
    174e:	18000713          	li	a4,384
    1752:	85be                	mv	a1,a5
    1754:	03800513          	li	a0,56
    1758:	f19ff0ef          	jal	ra,1670 <_ZL10__syscall4lllll>
    175c:	87aa                	mv	a5,a0
    175e:	2781                	sext.w	a5,a5
    1760:	853e                	mv	a0,a5
    1762:	60e2                	ld	ra,24(sp)
    1764:	6442                	ld	s0,16(sp)
    1766:	6105                	addi	sp,sp,32
    1768:	8082                	ret

000000000000176a <_Z5closei>:
    176a:	1101                	addi	sp,sp,-32
    176c:	ec06                	sd	ra,24(sp)
    176e:	e822                	sd	s0,16(sp)
    1770:	1000                	addi	s0,sp,32
    1772:	87aa                	mv	a5,a0
    1774:	fef42623          	sw	a5,-20(s0)
    1778:	fec42783          	lw	a5,-20(s0)
    177c:	85be                	mv	a1,a5
    177e:	03900513          	li	a0,57
    1782:	e6bff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1786:	87aa                	mv	a5,a0
    1788:	2781                	sext.w	a5,a5
    178a:	853e                	mv	a0,a5
    178c:	60e2                	ld	ra,24(sp)
    178e:	6442                	ld	s0,16(sp)
    1790:	6105                	addi	sp,sp,32
    1792:	8082                	ret

0000000000001794 <_Z4readiPvy>:
    1794:	7179                	addi	sp,sp,-48
    1796:	f406                	sd	ra,40(sp)
    1798:	f022                	sd	s0,32(sp)
    179a:	1800                	addi	s0,sp,48
    179c:	87aa                	mv	a5,a0
    179e:	feb43023          	sd	a1,-32(s0)
    17a2:	fcc43c23          	sd	a2,-40(s0)
    17a6:	fef42623          	sw	a5,-20(s0)
    17aa:	fec42783          	lw	a5,-20(s0)
    17ae:	fe043703          	ld	a4,-32(s0)
    17b2:	fd843683          	ld	a3,-40(s0)
    17b6:	863a                	mv	a2,a4
    17b8:	85be                	mv	a1,a5
    17ba:	03f00513          	li	a0,63
    17be:	e7fff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    17c2:	87aa                	mv	a5,a0
    17c4:	853e                	mv	a0,a5
    17c6:	70a2                	ld	ra,40(sp)
    17c8:	7402                	ld	s0,32(sp)
    17ca:	6145                	addi	sp,sp,48
    17cc:	8082                	ret

00000000000017ce <_Z5writeiPKvy>:
    17ce:	7179                	addi	sp,sp,-48
    17d0:	f406                	sd	ra,40(sp)
    17d2:	f022                	sd	s0,32(sp)
    17d4:	1800                	addi	s0,sp,48
    17d6:	87aa                	mv	a5,a0
    17d8:	feb43023          	sd	a1,-32(s0)
    17dc:	fcc43c23          	sd	a2,-40(s0)
    17e0:	fef42623          	sw	a5,-20(s0)
    17e4:	fec42783          	lw	a5,-20(s0)
    17e8:	fe043703          	ld	a4,-32(s0)
    17ec:	fd843683          	ld	a3,-40(s0)
    17f0:	863a                	mv	a2,a4
    17f2:	85be                	mv	a1,a5
    17f4:	04000513          	li	a0,64
    17f8:	e45ff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    17fc:	87aa                	mv	a5,a0
    17fe:	853e                	mv	a0,a5
    1800:	70a2                	ld	ra,40(sp)
    1802:	7402                	ld	s0,32(sp)
    1804:	6145                	addi	sp,sp,48
    1806:	8082                	ret

0000000000001808 <_Z6getpidv>:
    1808:	1141                	addi	sp,sp,-16
    180a:	e406                	sd	ra,8(sp)
    180c:	e022                	sd	s0,0(sp)
    180e:	0800                	addi	s0,sp,16
    1810:	0ac00513          	li	a0,172
    1814:	dbdff0ef          	jal	ra,15d0 <_ZL10__syscall0l>
    1818:	87aa                	mv	a5,a0
    181a:	2781                	sext.w	a5,a5
    181c:	853e                	mv	a0,a5
    181e:	60a2                	ld	ra,8(sp)
    1820:	6402                	ld	s0,0(sp)
    1822:	0141                	addi	sp,sp,16
    1824:	8082                	ret

0000000000001826 <_Z7getppidv>:
    1826:	1141                	addi	sp,sp,-16
    1828:	e406                	sd	ra,8(sp)
    182a:	e022                	sd	s0,0(sp)
    182c:	0800                	addi	s0,sp,16
    182e:	0ad00513          	li	a0,173
    1832:	d9fff0ef          	jal	ra,15d0 <_ZL10__syscall0l>
    1836:	87aa                	mv	a5,a0
    1838:	2781                	sext.w	a5,a5
    183a:	853e                	mv	a0,a5
    183c:	60a2                	ld	ra,8(sp)
    183e:	6402                	ld	s0,0(sp)
    1840:	0141                	addi	sp,sp,16
    1842:	8082                	ret

0000000000001844 <_Z11sched_yieldv>:
    1844:	1141                	addi	sp,sp,-16
    1846:	e406                	sd	ra,8(sp)
    1848:	e022                	sd	s0,0(sp)
    184a:	0800                	addi	s0,sp,16
    184c:	07c00513          	li	a0,124
    1850:	d81ff0ef          	jal	ra,15d0 <_ZL10__syscall0l>
    1854:	87aa                	mv	a5,a0
    1856:	2781                	sext.w	a5,a5
    1858:	853e                	mv	a0,a5
    185a:	60a2                	ld	ra,8(sp)
    185c:	6402                	ld	s0,0(sp)
    185e:	0141                	addi	sp,sp,16
    1860:	8082                	ret

0000000000001862 <_Z4forkv>:
    1862:	1141                	addi	sp,sp,-16
    1864:	e406                	sd	ra,8(sp)
    1866:	e022                	sd	s0,0(sp)
    1868:	0800                	addi	s0,sp,16
    186a:	4601                	li	a2,0
    186c:	45c5                	li	a1,17
    186e:	0dc00513          	li	a0,220
    1872:	d9fff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1876:	87aa                	mv	a5,a0
    1878:	2781                	sext.w	a5,a5
    187a:	853e                	mv	a0,a5
    187c:	60a2                	ld	ra,8(sp)
    187e:	6402                	ld	s0,0(sp)
    1880:	0141                	addi	sp,sp,16
    1882:	8082                	ret

0000000000001884 <_Z4exiti>:
    1884:	1101                	addi	sp,sp,-32
    1886:	ec06                	sd	ra,24(sp)
    1888:	e822                	sd	s0,16(sp)
    188a:	1000                	addi	s0,sp,32
    188c:	87aa                	mv	a5,a0
    188e:	fef42623          	sw	a5,-20(s0)
    1892:	fec42783          	lw	a5,-20(s0)
    1896:	85be                	mv	a1,a5
    1898:	05d00513          	li	a0,93
    189c:	d51ff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    18a0:	0001                	nop
    18a2:	60e2                	ld	ra,24(sp)
    18a4:	6442                	ld	s0,16(sp)
    18a6:	6105                	addi	sp,sp,32
    18a8:	8082                	ret

00000000000018aa <_Z7waitpidiPii>:
    18aa:	1101                	addi	sp,sp,-32
    18ac:	ec06                	sd	ra,24(sp)
    18ae:	e822                	sd	s0,16(sp)
    18b0:	1000                	addi	s0,sp,32
    18b2:	87aa                	mv	a5,a0
    18b4:	feb43023          	sd	a1,-32(s0)
    18b8:	8732                	mv	a4,a2
    18ba:	fef42623          	sw	a5,-20(s0)
    18be:	87ba                	mv	a5,a4
    18c0:	fef42423          	sw	a5,-24(s0)
    18c4:	fec42783          	lw	a5,-20(s0)
    18c8:	fe043603          	ld	a2,-32(s0)
    18cc:	fe842683          	lw	a3,-24(s0)
    18d0:	4701                	li	a4,0
    18d2:	85be                	mv	a1,a5
    18d4:	10400513          	li	a0,260
    18d8:	d99ff0ef          	jal	ra,1670 <_ZL10__syscall4lllll>
    18dc:	87aa                	mv	a5,a0
    18de:	2781                	sext.w	a5,a5
    18e0:	853e                	mv	a0,a5
    18e2:	60e2                	ld	ra,24(sp)
    18e4:	6442                	ld	s0,16(sp)
    18e6:	6105                	addi	sp,sp,32
    18e8:	8082                	ret

00000000000018ea <_Z4execPc>:
    18ea:	1101                	addi	sp,sp,-32
    18ec:	ec06                	sd	ra,24(sp)
    18ee:	e822                	sd	s0,16(sp)
    18f0:	1000                	addi	s0,sp,32
    18f2:	fea43423          	sd	a0,-24(s0)
    18f6:	fe843783          	ld	a5,-24(s0)
    18fa:	85be                	mv	a1,a5
    18fc:	0dd00513          	li	a0,221
    1900:	cedff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1904:	87aa                	mv	a5,a0
    1906:	2781                	sext.w	a5,a5
    1908:	853e                	mv	a0,a5
    190a:	60e2                	ld	ra,24(sp)
    190c:	6442                	ld	s0,16(sp)
    190e:	6105                	addi	sp,sp,32
    1910:	8082                	ret

0000000000001912 <_Z6execvePKcPKPcS3_>:
    1912:	7179                	addi	sp,sp,-48
    1914:	f406                	sd	ra,40(sp)
    1916:	f022                	sd	s0,32(sp)
    1918:	1800                	addi	s0,sp,48
    191a:	fea43423          	sd	a0,-24(s0)
    191e:	feb43023          	sd	a1,-32(s0)
    1922:	fcc43c23          	sd	a2,-40(s0)
    1926:	fe843783          	ld	a5,-24(s0)
    192a:	fe043703          	ld	a4,-32(s0)
    192e:	fd843683          	ld	a3,-40(s0)
    1932:	863a                	mv	a2,a4
    1934:	85be                	mv	a1,a5
    1936:	0dd00513          	li	a0,221
    193a:	d03ff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    193e:	87aa                	mv	a5,a0
    1940:	2781                	sext.w	a5,a5
    1942:	853e                	mv	a0,a5
    1944:	70a2                	ld	ra,40(sp)
    1946:	7402                	ld	s0,32(sp)
    1948:	6145                	addi	sp,sp,48
    194a:	8082                	ret

000000000000194c <_Z5timesPv>:
    194c:	1101                	addi	sp,sp,-32
    194e:	ec06                	sd	ra,24(sp)
    1950:	e822                	sd	s0,16(sp)
    1952:	1000                	addi	s0,sp,32
    1954:	fea43423          	sd	a0,-24(s0)
    1958:	fe843783          	ld	a5,-24(s0)
    195c:	85be                	mv	a1,a5
    195e:	09900513          	li	a0,153
    1962:	c8bff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1966:	87aa                	mv	a5,a0
    1968:	2781                	sext.w	a5,a5
    196a:	853e                	mv	a0,a5
    196c:	60e2                	ld	ra,24(sp)
    196e:	6442                	ld	s0,16(sp)
    1970:	6105                	addi	sp,sp,32
    1972:	8082                	ret

0000000000001974 <_Z8get_timev>:
    1974:	7179                	addi	sp,sp,-48
    1976:	f406                	sd	ra,40(sp)
    1978:	f022                	sd	s0,32(sp)
    197a:	1800                	addi	s0,sp,48
    197c:	fd840793          	addi	a5,s0,-40
    1980:	4581                	li	a1,0
    1982:	853e                	mv	a0,a5
    1984:	040000ef          	jal	ra,19c4 <_Z12sys_get_timeP7TimeVali>
    1988:	87aa                	mv	a5,a0
    198a:	fef42623          	sw	a5,-20(s0)
    198e:	fec42783          	lw	a5,-20(s0)
    1992:	2781                	sext.w	a5,a5
    1994:	e395                	bnez	a5,19b8 <_Z8get_timev+0x44>
    1996:	fd843703          	ld	a4,-40(s0)
    199a:	67c1                	lui	a5,0x10
    199c:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xde8f>
    199e:	8f7d                	and	a4,a4,a5
    19a0:	3e800793          	li	a5,1000
    19a4:	02f70733          	mul	a4,a4,a5
    19a8:	fe043683          	ld	a3,-32(s0)
    19ac:	3e800793          	li	a5,1000
    19b0:	02f6d7b3          	divu	a5,a3,a5
    19b4:	97ba                	add	a5,a5,a4
    19b6:	a011                	j	19ba <_Z8get_timev+0x46>
    19b8:	57fd                	li	a5,-1
    19ba:	853e                	mv	a0,a5
    19bc:	70a2                	ld	ra,40(sp)
    19be:	7402                	ld	s0,32(sp)
    19c0:	6145                	addi	sp,sp,48
    19c2:	8082                	ret

00000000000019c4 <_Z12sys_get_timeP7TimeVali>:
    19c4:	1101                	addi	sp,sp,-32
    19c6:	ec06                	sd	ra,24(sp)
    19c8:	e822                	sd	s0,16(sp)
    19ca:	1000                	addi	s0,sp,32
    19cc:	fea43423          	sd	a0,-24(s0)
    19d0:	87ae                	mv	a5,a1
    19d2:	fef42223          	sw	a5,-28(s0)
    19d6:	fe843783          	ld	a5,-24(s0)
    19da:	fe442703          	lw	a4,-28(s0)
    19de:	863a                	mv	a2,a4
    19e0:	85be                	mv	a1,a5
    19e2:	0a900513          	li	a0,169
    19e6:	c2bff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    19ea:	87aa                	mv	a5,a0
    19ec:	2781                	sext.w	a5,a5
    19ee:	853e                	mv	a0,a5
    19f0:	60e2                	ld	ra,24(sp)
    19f2:	6442                	ld	s0,16(sp)
    19f4:	6105                	addi	sp,sp,32
    19f6:	8082                	ret

00000000000019f8 <_Z4timePm>:
    19f8:	1101                	addi	sp,sp,-32
    19fa:	ec06                	sd	ra,24(sp)
    19fc:	e822                	sd	s0,16(sp)
    19fe:	1000                	addi	s0,sp,32
    1a00:	fea43423          	sd	a0,-24(s0)
    1a04:	fe843783          	ld	a5,-24(s0)
    1a08:	85be                	mv	a1,a5
    1a0a:	42600513          	li	a0,1062
    1a0e:	bdfff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1a12:	87aa                	mv	a5,a0
    1a14:	2781                	sext.w	a5,a5
    1a16:	853e                	mv	a0,a5
    1a18:	60e2                	ld	ra,24(sp)
    1a1a:	6442                	ld	s0,16(sp)
    1a1c:	6105                	addi	sp,sp,32
    1a1e:	8082                	ret

0000000000001a20 <_Z5sleepy>:
    1a20:	7179                	addi	sp,sp,-48
    1a22:	f406                	sd	ra,40(sp)
    1a24:	f022                	sd	s0,32(sp)
    1a26:	1800                	addi	s0,sp,48
    1a28:	fca43c23          	sd	a0,-40(s0)
    1a2c:	fe043023          	sd	zero,-32(s0)
    1a30:	fe043423          	sd	zero,-24(s0)
    1a34:	fd843783          	ld	a5,-40(s0)
    1a38:	fef43023          	sd	a5,-32(s0)
    1a3c:	fe040793          	addi	a5,s0,-32
    1a40:	fe040713          	addi	a4,s0,-32
    1a44:	863a                	mv	a2,a4
    1a46:	85be                	mv	a1,a5
    1a48:	06500513          	li	a0,101
    1a4c:	bc5ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1a50:	87aa                	mv	a5,a0
    1a52:	00f037b3          	snez	a5,a5
    1a56:	0ff7f793          	zext.b	a5,a5
    1a5a:	c789                	beqz	a5,1a64 <_Z5sleepy+0x44>
    1a5c:	fe043783          	ld	a5,-32(s0)
    1a60:	2781                	sext.w	a5,a5
    1a62:	a011                	j	1a66 <_Z5sleepy+0x46>
    1a64:	4781                	li	a5,0
    1a66:	853e                	mv	a0,a5
    1a68:	70a2                	ld	ra,40(sp)
    1a6a:	7402                	ld	s0,32(sp)
    1a6c:	6145                	addi	sp,sp,48
    1a6e:	8082                	ret

0000000000001a70 <_Z12set_priorityi>:
    1a70:	1101                	addi	sp,sp,-32
    1a72:	ec06                	sd	ra,24(sp)
    1a74:	e822                	sd	s0,16(sp)
    1a76:	1000                	addi	s0,sp,32
    1a78:	87aa                	mv	a5,a0
    1a7a:	fef42623          	sw	a5,-20(s0)
    1a7e:	fec42783          	lw	a5,-20(s0)
    1a82:	85be                	mv	a1,a5
    1a84:	08c00513          	li	a0,140
    1a88:	b65ff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1a8c:	87aa                	mv	a5,a0
    1a8e:	2781                	sext.w	a5,a5
    1a90:	853e                	mv	a0,a5
    1a92:	60e2                	ld	ra,24(sp)
    1a94:	6442                	ld	s0,16(sp)
    1a96:	6105                	addi	sp,sp,32
    1a98:	8082                	ret

0000000000001a9a <_Z6munmapPvy>:
    1a9a:	1101                	addi	sp,sp,-32
    1a9c:	ec06                	sd	ra,24(sp)
    1a9e:	e822                	sd	s0,16(sp)
    1aa0:	1000                	addi	s0,sp,32
    1aa2:	fea43423          	sd	a0,-24(s0)
    1aa6:	feb43023          	sd	a1,-32(s0)
    1aaa:	fe843783          	ld	a5,-24(s0)
    1aae:	fe043703          	ld	a4,-32(s0)
    1ab2:	863a                	mv	a2,a4
    1ab4:	85be                	mv	a1,a5
    1ab6:	0d700513          	li	a0,215
    1aba:	b57ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1abe:	87aa                	mv	a5,a0
    1ac0:	2781                	sext.w	a5,a5
    1ac2:	853e                	mv	a0,a5
    1ac4:	60e2                	ld	ra,24(sp)
    1ac6:	6442                	ld	s0,16(sp)
    1ac8:	6105                	addi	sp,sp,32
    1aca:	8082                	ret

0000000000001acc <_Z4waitPi>:
    1acc:	1101                	addi	sp,sp,-32
    1ace:	ec06                	sd	ra,24(sp)
    1ad0:	e822                	sd	s0,16(sp)
    1ad2:	1000                	addi	s0,sp,32
    1ad4:	fea43423          	sd	a0,-24(s0)
    1ad8:	4601                	li	a2,0
    1ada:	fe843583          	ld	a1,-24(s0)
    1ade:	557d                	li	a0,-1
    1ae0:	dcbff0ef          	jal	ra,18aa <_Z7waitpidiPii>
    1ae4:	87aa                	mv	a5,a0
    1ae6:	853e                	mv	a0,a5
    1ae8:	60e2                	ld	ra,24(sp)
    1aea:	6442                	ld	s0,16(sp)
    1aec:	6105                	addi	sp,sp,32
    1aee:	8082                	ret

0000000000001af0 <_Z5spawnPc>:
    1af0:	1101                	addi	sp,sp,-32
    1af2:	ec06                	sd	ra,24(sp)
    1af4:	e822                	sd	s0,16(sp)
    1af6:	1000                	addi	s0,sp,32
    1af8:	fea43423          	sd	a0,-24(s0)
    1afc:	fe843783          	ld	a5,-24(s0)
    1b00:	85be                	mv	a1,a5
    1b02:	19000513          	li	a0,400
    1b06:	ae7ff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1b0a:	87aa                	mv	a5,a0
    1b0c:	2781                	sext.w	a5,a5
    1b0e:	853e                	mv	a0,a5
    1b10:	60e2                	ld	ra,24(sp)
    1b12:	6442                	ld	s0,16(sp)
    1b14:	6105                	addi	sp,sp,32
    1b16:	8082                	ret

0000000000001b18 <_Z8mailreadPvi>:
    1b18:	1101                	addi	sp,sp,-32
    1b1a:	ec06                	sd	ra,24(sp)
    1b1c:	e822                	sd	s0,16(sp)
    1b1e:	1000                	addi	s0,sp,32
    1b20:	fea43423          	sd	a0,-24(s0)
    1b24:	87ae                	mv	a5,a1
    1b26:	fef42223          	sw	a5,-28(s0)
    1b2a:	fe843783          	ld	a5,-24(s0)
    1b2e:	fe442703          	lw	a4,-28(s0)
    1b32:	863a                	mv	a2,a4
    1b34:	85be                	mv	a1,a5
    1b36:	19100513          	li	a0,401
    1b3a:	ad7ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1b3e:	87aa                	mv	a5,a0
    1b40:	2781                	sext.w	a5,a5
    1b42:	853e                	mv	a0,a5
    1b44:	60e2                	ld	ra,24(sp)
    1b46:	6442                	ld	s0,16(sp)
    1b48:	6105                	addi	sp,sp,32
    1b4a:	8082                	ret

0000000000001b4c <_Z9mailwriteiPvi>:
    1b4c:	1101                	addi	sp,sp,-32
    1b4e:	ec06                	sd	ra,24(sp)
    1b50:	e822                	sd	s0,16(sp)
    1b52:	1000                	addi	s0,sp,32
    1b54:	87aa                	mv	a5,a0
    1b56:	feb43023          	sd	a1,-32(s0)
    1b5a:	8732                	mv	a4,a2
    1b5c:	fef42623          	sw	a5,-20(s0)
    1b60:	87ba                	mv	a5,a4
    1b62:	fef42423          	sw	a5,-24(s0)
    1b66:	fec42783          	lw	a5,-20(s0)
    1b6a:	fe043703          	ld	a4,-32(s0)
    1b6e:	fe842683          	lw	a3,-24(s0)
    1b72:	863a                	mv	a2,a4
    1b74:	85be                	mv	a1,a5
    1b76:	19200513          	li	a0,402
    1b7a:	ac3ff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    1b7e:	87aa                	mv	a5,a0
    1b80:	2781                	sext.w	a5,a5
    1b82:	853e                	mv	a0,a5
    1b84:	60e2                	ld	ra,24(sp)
    1b86:	6442                	ld	s0,16(sp)
    1b88:	6105                	addi	sp,sp,32
    1b8a:	8082                	ret

0000000000001b8c <_Z5fstatiP5kstat>:
    1b8c:	1101                	addi	sp,sp,-32
    1b8e:	ec06                	sd	ra,24(sp)
    1b90:	e822                	sd	s0,16(sp)
    1b92:	1000                	addi	s0,sp,32
    1b94:	87aa                	mv	a5,a0
    1b96:	feb43023          	sd	a1,-32(s0)
    1b9a:	fef42623          	sw	a5,-20(s0)
    1b9e:	fec42783          	lw	a5,-20(s0)
    1ba2:	fe043703          	ld	a4,-32(s0)
    1ba6:	863a                	mv	a2,a4
    1ba8:	85be                	mv	a1,a5
    1baa:	05000513          	li	a0,80
    1bae:	a63ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1bb2:	87aa                	mv	a5,a0
    1bb4:	2781                	sext.w	a5,a5
    1bb6:	853e                	mv	a0,a5
    1bb8:	60e2                	ld	ra,24(sp)
    1bba:	6442                	ld	s0,16(sp)
    1bbc:	6105                	addi	sp,sp,32
    1bbe:	8082                	ret

0000000000001bc0 <_Z10sys_linkatiPciS_j>:
    1bc0:	7179                	addi	sp,sp,-48
    1bc2:	f406                	sd	ra,40(sp)
    1bc4:	f022                	sd	s0,32(sp)
    1bc6:	1800                	addi	s0,sp,48
    1bc8:	87aa                	mv	a5,a0
    1bca:	feb43023          	sd	a1,-32(s0)
    1bce:	fcd43c23          	sd	a3,-40(s0)
    1bd2:	fef42623          	sw	a5,-20(s0)
    1bd6:	87b2                	mv	a5,a2
    1bd8:	fef42423          	sw	a5,-24(s0)
    1bdc:	87ba                	mv	a5,a4
    1bde:	fcf42a23          	sw	a5,-44(s0)
    1be2:	fec42583          	lw	a1,-20(s0)
    1be6:	fe043603          	ld	a2,-32(s0)
    1bea:	fe842683          	lw	a3,-24(s0)
    1bee:	fd843703          	ld	a4,-40(s0)
    1bf2:	fd446783          	lwu	a5,-44(s0)
    1bf6:	02500513          	li	a0,37
    1bfa:	ab3ff0ef          	jal	ra,16ac <_ZL10__syscall5llllll>
    1bfe:	87aa                	mv	a5,a0
    1c00:	2781                	sext.w	a5,a5
    1c02:	853e                	mv	a0,a5
    1c04:	70a2                	ld	ra,40(sp)
    1c06:	7402                	ld	s0,32(sp)
    1c08:	6145                	addi	sp,sp,48
    1c0a:	8082                	ret

0000000000001c0c <_Z12sys_unlinkatiPcj>:
    1c0c:	1101                	addi	sp,sp,-32
    1c0e:	ec06                	sd	ra,24(sp)
    1c10:	e822                	sd	s0,16(sp)
    1c12:	1000                	addi	s0,sp,32
    1c14:	87aa                	mv	a5,a0
    1c16:	feb43023          	sd	a1,-32(s0)
    1c1a:	8732                	mv	a4,a2
    1c1c:	fef42623          	sw	a5,-20(s0)
    1c20:	87ba                	mv	a5,a4
    1c22:	fef42423          	sw	a5,-24(s0)
    1c26:	fec42783          	lw	a5,-20(s0)
    1c2a:	fe043703          	ld	a4,-32(s0)
    1c2e:	fe846683          	lwu	a3,-24(s0)
    1c32:	863a                	mv	a2,a4
    1c34:	85be                	mv	a1,a5
    1c36:	02300513          	li	a0,35
    1c3a:	a03ff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    1c3e:	87aa                	mv	a5,a0
    1c40:	2781                	sext.w	a5,a5
    1c42:	853e                	mv	a0,a5
    1c44:	60e2                	ld	ra,24(sp)
    1c46:	6442                	ld	s0,16(sp)
    1c48:	6105                	addi	sp,sp,32
    1c4a:	8082                	ret

0000000000001c4c <_Z4linkPcS_>:
    1c4c:	1101                	addi	sp,sp,-32
    1c4e:	ec06                	sd	ra,24(sp)
    1c50:	e822                	sd	s0,16(sp)
    1c52:	1000                	addi	s0,sp,32
    1c54:	fea43423          	sd	a0,-24(s0)
    1c58:	feb43023          	sd	a1,-32(s0)
    1c5c:	4701                	li	a4,0
    1c5e:	fe043683          	ld	a3,-32(s0)
    1c62:	f9c00613          	li	a2,-100
    1c66:	fe843583          	ld	a1,-24(s0)
    1c6a:	f9c00513          	li	a0,-100
    1c6e:	f53ff0ef          	jal	ra,1bc0 <_Z10sys_linkatiPciS_j>
    1c72:	87aa                	mv	a5,a0
    1c74:	853e                	mv	a0,a5
    1c76:	60e2                	ld	ra,24(sp)
    1c78:	6442                	ld	s0,16(sp)
    1c7a:	6105                	addi	sp,sp,32
    1c7c:	8082                	ret

0000000000001c7e <_Z6unlinkPc>:
    1c7e:	1101                	addi	sp,sp,-32
    1c80:	ec06                	sd	ra,24(sp)
    1c82:	e822                	sd	s0,16(sp)
    1c84:	1000                	addi	s0,sp,32
    1c86:	fea43423          	sd	a0,-24(s0)
    1c8a:	4601                	li	a2,0
    1c8c:	fe843583          	ld	a1,-24(s0)
    1c90:	f9c00513          	li	a0,-100
    1c94:	f79ff0ef          	jal	ra,1c0c <_Z12sys_unlinkatiPcj>
    1c98:	87aa                	mv	a5,a0
    1c9a:	853e                	mv	a0,a5
    1c9c:	60e2                	ld	ra,24(sp)
    1c9e:	6442                	ld	s0,16(sp)
    1ca0:	6105                	addi	sp,sp,32
    1ca2:	8082                	ret

0000000000001ca4 <_Z5unamePv>:
    1ca4:	1101                	addi	sp,sp,-32
    1ca6:	ec06                	sd	ra,24(sp)
    1ca8:	e822                	sd	s0,16(sp)
    1caa:	1000                	addi	s0,sp,32
    1cac:	fea43423          	sd	a0,-24(s0)
    1cb0:	fe843783          	ld	a5,-24(s0)
    1cb4:	85be                	mv	a1,a5
    1cb6:	0a000513          	li	a0,160
    1cba:	933ff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1cbe:	87aa                	mv	a5,a0
    1cc0:	2781                	sext.w	a5,a5
    1cc2:	853e                	mv	a0,a5
    1cc4:	60e2                	ld	ra,24(sp)
    1cc6:	6442                	ld	s0,16(sp)
    1cc8:	6105                	addi	sp,sp,32
    1cca:	8082                	ret

0000000000001ccc <_Z3brkPv>:
    1ccc:	1101                	addi	sp,sp,-32
    1cce:	ec06                	sd	ra,24(sp)
    1cd0:	e822                	sd	s0,16(sp)
    1cd2:	1000                	addi	s0,sp,32
    1cd4:	fea43423          	sd	a0,-24(s0)
    1cd8:	fe843783          	ld	a5,-24(s0)
    1cdc:	85be                	mv	a1,a5
    1cde:	0d600513          	li	a0,214
    1ce2:	90bff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1ce6:	87aa                	mv	a5,a0
    1ce8:	2781                	sext.w	a5,a5
    1cea:	853e                	mv	a0,a5
    1cec:	60e2                	ld	ra,24(sp)
    1cee:	6442                	ld	s0,16(sp)
    1cf0:	6105                	addi	sp,sp,32
    1cf2:	8082                	ret

0000000000001cf4 <_Z5chdirPKc>:
    1cf4:	1101                	addi	sp,sp,-32
    1cf6:	ec06                	sd	ra,24(sp)
    1cf8:	e822                	sd	s0,16(sp)
    1cfa:	1000                	addi	s0,sp,32
    1cfc:	fea43423          	sd	a0,-24(s0)
    1d00:	fe843783          	ld	a5,-24(s0)
    1d04:	85be                	mv	a1,a5
    1d06:	03100513          	li	a0,49
    1d0a:	8e3ff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1d0e:	87aa                	mv	a5,a0
    1d10:	2781                	sext.w	a5,a5
    1d12:	853e                	mv	a0,a5
    1d14:	60e2                	ld	ra,24(sp)
    1d16:	6442                	ld	s0,16(sp)
    1d18:	6105                	addi	sp,sp,32
    1d1a:	8082                	ret

0000000000001d1c <_Z5mkdirPKcj>:
    1d1c:	1101                	addi	sp,sp,-32
    1d1e:	ec06                	sd	ra,24(sp)
    1d20:	e822                	sd	s0,16(sp)
    1d22:	1000                	addi	s0,sp,32
    1d24:	fea43423          	sd	a0,-24(s0)
    1d28:	87ae                	mv	a5,a1
    1d2a:	fef42223          	sw	a5,-28(s0)
    1d2e:	fe843783          	ld	a5,-24(s0)
    1d32:	fe446703          	lwu	a4,-28(s0)
    1d36:	86ba                	mv	a3,a4
    1d38:	863e                	mv	a2,a5
    1d3a:	f9c00593          	li	a1,-100
    1d3e:	02200513          	li	a0,34
    1d42:	8fbff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    1d46:	87aa                	mv	a5,a0
    1d48:	2781                	sext.w	a5,a5
    1d4a:	853e                	mv	a0,a5
    1d4c:	60e2                	ld	ra,24(sp)
    1d4e:	6442                	ld	s0,16(sp)
    1d50:	6105                	addi	sp,sp,32
    1d52:	8082                	ret

0000000000001d54 <_Z8getdentsiP14linux_dirent64m>:
    1d54:	7179                	addi	sp,sp,-48
    1d56:	f406                	sd	ra,40(sp)
    1d58:	f022                	sd	s0,32(sp)
    1d5a:	1800                	addi	s0,sp,48
    1d5c:	87aa                	mv	a5,a0
    1d5e:	feb43023          	sd	a1,-32(s0)
    1d62:	fcc43c23          	sd	a2,-40(s0)
    1d66:	fef42623          	sw	a5,-20(s0)
    1d6a:	fec42783          	lw	a5,-20(s0)
    1d6e:	fe043703          	ld	a4,-32(s0)
    1d72:	fd843683          	ld	a3,-40(s0)
    1d76:	863a                	mv	a2,a4
    1d78:	85be                	mv	a1,a5
    1d7a:	03d00513          	li	a0,61
    1d7e:	8bfff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    1d82:	87aa                	mv	a5,a0
    1d84:	2781                	sext.w	a5,a5
    1d86:	853e                	mv	a0,a5
    1d88:	70a2                	ld	ra,40(sp)
    1d8a:	7402                	ld	s0,32(sp)
    1d8c:	6145                	addi	sp,sp,48
    1d8e:	8082                	ret

0000000000001d90 <_Z4pipePi>:
    1d90:	1101                	addi	sp,sp,-32
    1d92:	ec06                	sd	ra,24(sp)
    1d94:	e822                	sd	s0,16(sp)
    1d96:	1000                	addi	s0,sp,32
    1d98:	fea43423          	sd	a0,-24(s0)
    1d9c:	fe843783          	ld	a5,-24(s0)
    1da0:	4601                	li	a2,0
    1da2:	85be                	mv	a1,a5
    1da4:	03b00513          	li	a0,59
    1da8:	869ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1dac:	87aa                	mv	a5,a0
    1dae:	2781                	sext.w	a5,a5
    1db0:	853e                	mv	a0,a5
    1db2:	60e2                	ld	ra,24(sp)
    1db4:	6442                	ld	s0,16(sp)
    1db6:	6105                	addi	sp,sp,32
    1db8:	8082                	ret

0000000000001dba <_Z3dupi>:
    1dba:	1101                	addi	sp,sp,-32
    1dbc:	ec06                	sd	ra,24(sp)
    1dbe:	e822                	sd	s0,16(sp)
    1dc0:	1000                	addi	s0,sp,32
    1dc2:	87aa                	mv	a5,a0
    1dc4:	fef42623          	sw	a5,-20(s0)
    1dc8:	fec42783          	lw	a5,-20(s0)
    1dcc:	85be                	mv	a1,a5
    1dce:	455d                	li	a0,23
    1dd0:	81dff0ef          	jal	ra,15ec <_ZL10__syscall1ll>
    1dd4:	87aa                	mv	a5,a0
    1dd6:	2781                	sext.w	a5,a5
    1dd8:	853e                	mv	a0,a5
    1dda:	60e2                	ld	ra,24(sp)
    1ddc:	6442                	ld	s0,16(sp)
    1dde:	6105                	addi	sp,sp,32
    1de0:	8082                	ret

0000000000001de2 <_Z4dup2ii>:
    1de2:	1101                	addi	sp,sp,-32
    1de4:	ec06                	sd	ra,24(sp)
    1de6:	e822                	sd	s0,16(sp)
    1de8:	1000                	addi	s0,sp,32
    1dea:	87aa                	mv	a5,a0
    1dec:	872e                	mv	a4,a1
    1dee:	fef42623          	sw	a5,-20(s0)
    1df2:	87ba                	mv	a5,a4
    1df4:	fef42423          	sw	a5,-24(s0)
    1df8:	fec42783          	lw	a5,-20(s0)
    1dfc:	fe842703          	lw	a4,-24(s0)
    1e00:	4681                	li	a3,0
    1e02:	863a                	mv	a2,a4
    1e04:	85be                	mv	a1,a5
    1e06:	4561                	li	a0,24
    1e08:	835ff0ef          	jal	ra,163c <_ZL10__syscall3llll>
    1e0c:	87aa                	mv	a5,a0
    1e0e:	2781                	sext.w	a5,a5
    1e10:	853e                	mv	a0,a5
    1e12:	60e2                	ld	ra,24(sp)
    1e14:	6442                	ld	s0,16(sp)
    1e16:	6105                	addi	sp,sp,32
    1e18:	8082                	ret

0000000000001e1a <_Z5mountPKcS0_S0_mPKv>:
    1e1a:	7139                	addi	sp,sp,-64
    1e1c:	fc06                	sd	ra,56(sp)
    1e1e:	f822                	sd	s0,48(sp)
    1e20:	0080                	addi	s0,sp,64
    1e22:	fea43423          	sd	a0,-24(s0)
    1e26:	feb43023          	sd	a1,-32(s0)
    1e2a:	fcc43c23          	sd	a2,-40(s0)
    1e2e:	fcd43823          	sd	a3,-48(s0)
    1e32:	fce43423          	sd	a4,-56(s0)
    1e36:	fe843583          	ld	a1,-24(s0)
    1e3a:	fe043603          	ld	a2,-32(s0)
    1e3e:	fd843683          	ld	a3,-40(s0)
    1e42:	fd043703          	ld	a4,-48(s0)
    1e46:	fc843783          	ld	a5,-56(s0)
    1e4a:	02800513          	li	a0,40
    1e4e:	85fff0ef          	jal	ra,16ac <_ZL10__syscall5llllll>
    1e52:	87aa                	mv	a5,a0
    1e54:	2781                	sext.w	a5,a5
    1e56:	853e                	mv	a0,a5
    1e58:	70e2                	ld	ra,56(sp)
    1e5a:	7442                	ld	s0,48(sp)
    1e5c:	6121                	addi	sp,sp,64
    1e5e:	8082                	ret

0000000000001e60 <_Z6umountPKc>:
    1e60:	1101                	addi	sp,sp,-32
    1e62:	ec06                	sd	ra,24(sp)
    1e64:	e822                	sd	s0,16(sp)
    1e66:	1000                	addi	s0,sp,32
    1e68:	fea43423          	sd	a0,-24(s0)
    1e6c:	fe843783          	ld	a5,-24(s0)
    1e70:	4601                	li	a2,0
    1e72:	85be                	mv	a1,a5
    1e74:	02700513          	li	a0,39
    1e78:	f98ff0ef          	jal	ra,1610 <_ZL10__syscall2lll>
    1e7c:	87aa                	mv	a5,a0
    1e7e:	2781                	sext.w	a5,a5
    1e80:	853e                	mv	a0,a5
    1e82:	60e2                	ld	ra,24(sp)
    1e84:	6442                	ld	s0,16(sp)
    1e86:	6105                	addi	sp,sp,32
    1e88:	8082                	ret

Disassembly of section .interp:

0000000000001e8a <.interp>:
    1e8a:	62696c2f          	.4byte	0x62696c2f
    1e8e:	2d646c2f          	.4byte	0x2d646c2f
    1e92:	696c                	ld	a1,208(a0)
    1e94:	756e                	ld	a0,248(sp)
    1e96:	2d78                	fld	fa4,216(a0)
    1e98:	6972                	ld	s2,280(sp)
    1e9a:	36766373          	csrrsi	t1,0x367,12
    1e9e:	2d34                	fld	fa3,88(a0)
    1ea0:	706c                	ld	a1,224(s0)
    1ea2:	3436                	fld	fs0,360(sp)
    1ea4:	2e64                	fld	fs1,216(a2)
    1ea6:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001eac <.note.gnu.build-id>:
    1eac:	0004                	.2byte	0x4
    1eae:	0000                	unimp
    1eb0:	0014                	.2byte	0x14
    1eb2:	0000                	unimp
    1eb4:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1eb8:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1ebc:	e87e                	sd	t6,16(sp)
    1ebe:	d3da                	sw	s6,228(sp)
    1ec0:	7551                	lui	a0,0xffff4
    1ec2:	c9ac                	sw	a1,80(a1)
    1ec4:	89b6                	mv	s3,a3
    1ec6:	d78c                	sw	a1,40(a5)
    1ec8:	3bff                	.2byte	0x3bff
    1eca:	7dec                	ld	a1,248(a1)
    1ecc:	67b1                	lui	a5,0xc
    1ece:	7a58                	ld	a4,176(a2)

Disassembly of section .dynsym:

0000000000001ed0 <.dynsym>:
	...
    1eec:	00010003          	lb	zero,0(sp)
    1ef0:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001f00 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001f08 <.gnu.hash>:
    1f08:	0001                	nop
    1f0a:	0000                	unimp
    1f0c:	0001                	nop
    1f0e:	0000                	unimp
    1f10:	0001                	nop
	...

Disassembly of section .bss:

0000000000001f28 <buf>:
	...

Disassembly of section .data:

0000000000001ff0 <_ZL6digits>:
    1ff0:	3130                	fld	fa2,96(a0)
    1ff2:	3332                	fld	ft6,296(sp)
    1ff4:	3534                	fld	fa3,104(a0)
    1ff6:	3736                	fld	fa4,360(sp)
    1ff8:	3938                	fld	fa4,112(a0)
    1ffa:	6261                	lui	tp,0x18
    1ffc:	66656463          	bltu	a0,t1,2664 <_GLOBAL_OFFSET_TABLE_+0x4f4>
	...

0000000000002008 <nuclear>:
    2008:	7566                	ld	a0,120(sp)
    200a:	6e6f6973          	csrrsi	s2,0x6e6,30
    200e:	000a                	c.slli	zero,0x2
    2010:	6e28                	ld	a0,88(a2)
    2012:	6c75                	lui	s8,0x1d
    2014:	296c                	fld	fa1,208(a0)
    2016:	0000                	unimp
    2018:	6572                	ld	a0,280(sp)
    201a:	6c61                	lui	s8,0x18
    201c:	7320                	ld	s0,96(a4)
    201e:	6568                	ld	a0,200(a0)
    2020:	6c6c                	ld	a1,216(s0)
    2022:	7320                	ld	s0,96(a4)
    2024:	6174                	ld	a3,192(a0)
    2026:	6572                	ld	a0,280(sp)
    2028:	2164                	fld	fs1,192(a0)
    202a:	000a                	c.slli	zero,0x2
    202c:	0000                	unimp
    202e:	0000                	unimp
    2030:	003e                	c.slli	zero,0xf
    2032:	0000                	unimp
    2034:	0000                	unimp
    2036:	0000                	unimp
    2038:	000a                	c.slli	zero,0x2
    203a:	0000                	unimp
    203c:	0000                	unimp
    203e:	0000                	unimp
    2040:	7865                	lui	a6,0xffff9
    2042:	7469                	lui	s0,0xffffa
    2044:	0000                	unimp
    2046:	0000                	unimp
    2048:	6e6e6f63          	bltu	t3,t1,2746 <_GLOBAL_OFFSET_TABLE_+0x5d6>
    204c:	6520746f          	jal	s0,969e <_GLOBAL_OFFSET_TABLE_+0x752e>
    2050:	6378                	ld	a4,192(a4)
    2052:	7475                	lui	s0,0xffffd
    2054:	2065                	.2byte	0x2065
    2056:	7325                	lui	t1,0xfffe9
    2058:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

0000000000002060 <.dynamic>:
    2060:	fef5                	bnez	a3,205c <nuclear+0x54>
    2062:	6fff                	.2byte	0x6fff
    2064:	0000                	unimp
    2066:	0000                	unimp
    2068:	1f08                	addi	a0,sp,944
    206a:	0000                	unimp
    206c:	0000                	unimp
    206e:	0000                	unimp
    2070:	0005                	c.nop	1
    2072:	0000                	unimp
    2074:	0000                	unimp
    2076:	0000                	unimp
    2078:	1f00                	addi	s0,sp,944
    207a:	0000                	unimp
    207c:	0000                	unimp
    207e:	0000                	unimp
    2080:	0006                	c.slli	zero,0x1
    2082:	0000                	unimp
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	1ed0                	addi	a2,sp,884
    208a:	0000                	unimp
    208c:	0000                	unimp
    208e:	0000                	unimp
    2090:	000a                	c.slli	zero,0x2
    2092:	0000                	unimp
    2094:	0000                	unimp
    2096:	0000                	unimp
    2098:	0001                	nop
    209a:	0000                	unimp
    209c:	0000                	unimp
    209e:	0000                	unimp
    20a0:	0000000b          	.4byte	0xb
    20a4:	0000                	unimp
    20a6:	0000                	unimp
    20a8:	0018                	.2byte	0x18
    20aa:	0000                	unimp
    20ac:	0000                	unimp
    20ae:	0000                	unimp
    20b0:	0015                	c.nop	5
	...
    20be:	0000                	unimp
    20c0:	00000007          	.4byte	0x7
	...
    20d0:	0008                	.2byte	0x8
	...
    20de:	0000                	unimp
    20e0:	0009                	c.nop	2
    20e2:	0000                	unimp
    20e4:	0000                	unimp
    20e6:	0000                	unimp
    20e8:	0018                	.2byte	0x18
    20ea:	0000                	unimp
    20ec:	0000                	unimp
    20ee:	0000                	unimp
    20f0:	001e                	c.slli	zero,0x7
    20f2:	0000                	unimp
    20f4:	0000                	unimp
    20f6:	0000                	unimp
    20f8:	0008                	.2byte	0x8
    20fa:	0000                	unimp
    20fc:	0000                	unimp
    20fe:	0000                	unimp
    2100:	6ffffffb          	.4byte	0x6ffffffb
    2104:	0000                	unimp
    2106:	0000                	unimp
    2108:	0001                	nop
    210a:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000000002170 <.got>:
    2170:	2060                	fld	fs0,192(s0)
    2172:	0000                	unimp
    2174:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1ae9c>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12e80>
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffdee8b>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

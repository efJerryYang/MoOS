
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
    1016:	035000ef          	jal	ra,184a <_Z4readiPvy>
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
    1040:	045000ef          	jal	ra,1884 <_Z5writeiPKvy>
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
    10fe:	fae70713          	addi	a4,a4,-82 # 20a8 <_ZL6digits>
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
    11c8:	ee470713          	addi	a4,a4,-284 # 20a8 <_ZL6digits>
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
    136e:	d5e78793          	addi	a5,a5,-674 # 20c8 <nuclear+0x8>
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
    14f4:	be050513          	addi	a0,a0,-1056 # 20d0 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	fe042623          	sw	zero,-20(s0)
    1500:	3be000ef          	jal	ra,18be <_Z6getpidv>
    1504:	87aa                	mv	a5,a0
    1506:	873e                	mv	a4,a5
    1508:	fec42783          	lw	a5,-20(s0)
    150c:	2785                	addiw	a5,a5,1
    150e:	fef42623          	sw	a5,-20(s0)
    1512:	fec42783          	lw	a5,-20(s0)
    1516:	863e                	mv	a2,a5
    1518:	85ba                	mv	a1,a4
    151a:	00001517          	auipc	a0,0x1
    151e:	bde50513          	addi	a0,a0,-1058 # 20f8 <nuclear+0x38>
    1522:	ce1ff0ef          	jal	ra,1202 <_Z6printfPcz>
    1526:	addff0ef          	jal	ra,1002 <_Z7getcharv>
    152a:	87aa                	mv	a5,a0
    152c:	fef405a3          	sb	a5,-21(s0)
    1530:	00001797          	auipc	a5,0x1
    1534:	ab078793          	addi	a5,a5,-1360 # 1fe0 <buf>
    1538:	fef43023          	sd	a5,-32(s0)
    153c:	a89d                	j	15b2 <main+0xca>
    153e:	feb44783          	lbu	a5,-21(s0)
    1542:	0ff7f713          	zext.b	a4,a5
    1546:	47a1                	li	a5,8
    1548:	00f70a63          	beq	a4,a5,155c <main+0x74>
    154c:	feb44783          	lbu	a5,-21(s0)
    1550:	0ff7f713          	zext.b	a4,a5
    1554:	07f00793          	li	a5,127
    1558:	02f71963          	bne	a4,a5,158a <main+0xa2>
    155c:	fe043703          	ld	a4,-32(s0)
    1560:	00001797          	auipc	a5,0x1
    1564:	a8078793          	addi	a5,a5,-1408 # 1fe0 <buf>
    1568:	04f70063          	beq	a4,a5,15a8 <main+0xc0>
    156c:	00001517          	auipc	a0,0x1
    1570:	ba450513          	addi	a0,a0,-1116 # 2110 <nuclear+0x50>
    1574:	c8fff0ef          	jal	ra,1202 <_Z6printfPcz>
    1578:	fe043783          	ld	a5,-32(s0)
    157c:	fff78713          	addi	a4,a5,-1
    1580:	fee43023          	sd	a4,-32(s0)
    1584:	00078023          	sb	zero,0(a5)
    1588:	a005                	j	15a8 <main+0xc0>
    158a:	feb44783          	lbu	a5,-21(s0)
    158e:	853e                	mv	a0,a5
    1590:	a99ff0ef          	jal	ra,1028 <_Z7putcharc>
    1594:	feb44703          	lbu	a4,-21(s0)
    1598:	fe043783          	ld	a5,-32(s0)
    159c:	00178693          	addi	a3,a5,1
    15a0:	fed43023          	sd	a3,-32(s0)
    15a4:	00e78023          	sb	a4,0(a5)
    15a8:	a5bff0ef          	jal	ra,1002 <_Z7getcharv>
    15ac:	87aa                	mv	a5,a0
    15ae:	fef405a3          	sb	a5,-21(s0)
    15b2:	feb44783          	lbu	a5,-21(s0)
    15b6:	0ff7f713          	zext.b	a4,a5
    15ba:	47b5                	li	a5,13
    15bc:	f8f711e3          	bne	a4,a5,153e <main+0x56>
    15c0:	fe043783          	ld	a5,-32(s0)
    15c4:	00078023          	sb	zero,0(a5)
    15c8:	00001517          	auipc	a0,0x1
    15cc:	b5050513          	addi	a0,a0,-1200 # 2118 <nuclear+0x58>
    15d0:	c33ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15d4:	00001517          	auipc	a0,0x1
    15d8:	a0c50513          	addi	a0,a0,-1524 # 1fe0 <buf>
    15dc:	e1fff0ef          	jal	ra,13fa <_Z6strlenPc>
    15e0:	87aa                	mv	a5,a0
    15e2:	0017b793          	seqz	a5,a5
    15e6:	0ff7f793          	zext.b	a5,a5
    15ea:	e3d1                	bnez	a5,166e <main+0x186>
    15ec:	00001597          	auipc	a1,0x1
    15f0:	b3458593          	addi	a1,a1,-1228 # 2120 <nuclear+0x60>
    15f4:	00001517          	auipc	a0,0x1
    15f8:	9ec50513          	addi	a0,a0,-1556 # 1fe0 <buf>
    15fc:	e41ff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1600:	87aa                	mv	a5,a0
    1602:	0017b793          	seqz	a5,a5
    1606:	0ff7f793          	zext.b	a5,a5
    160a:	e7a5                	bnez	a5,1672 <main+0x18a>
    160c:	00001597          	auipc	a1,0x1
    1610:	b1c58593          	addi	a1,a1,-1252 # 2128 <nuclear+0x68>
    1614:	00001517          	auipc	a0,0x1
    1618:	9cc50513          	addi	a0,a0,-1588 # 1fe0 <buf>
    161c:	e21ff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1620:	87aa                	mv	a5,a0
    1622:	0017b793          	seqz	a5,a5
    1626:	0ff7f793          	zext.b	a5,a5
    162a:	c781                	beqz	a5,1632 <main+0x14a>
    162c:	2ce000ef          	jal	ra,18fa <_Z11sched_yieldv>
    1630:	a081                	j	1670 <main+0x188>
    1632:	00001597          	auipc	a1,0x1
    1636:	afe58593          	addi	a1,a1,-1282 # 2130 <nuclear+0x70>
    163a:	00001517          	auipc	a0,0x1
    163e:	9a650513          	addi	a0,a0,-1626 # 1fe0 <buf>
    1642:	dfbff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1646:	87aa                	mv	a5,a0
    1648:	0017b793          	seqz	a5,a5
    164c:	0ff7f793          	zext.b	a5,a5
    1650:	c781                	beqz	a5,1658 <main+0x170>
    1652:	2c6000ef          	jal	ra,1918 <_Z4forkv>
    1656:	a829                	j	1670 <main+0x188>
    1658:	00001597          	auipc	a1,0x1
    165c:	98858593          	addi	a1,a1,-1656 # 1fe0 <buf>
    1660:	00001517          	auipc	a0,0x1
    1664:	ad850513          	addi	a0,a0,-1320 # 2138 <nuclear+0x78>
    1668:	b9bff0ef          	jal	ra,1202 <_Z6printfPcz>
    166c:	bd51                	j	1500 <main+0x18>
    166e:	0001                	nop
    1670:	bd41                	j	1500 <main+0x18>
    1672:	0001                	nop
    1674:	4501                	li	a0,0
    1676:	2c4000ef          	jal	ra,193a <_Z4exiti>
    167a:	4781                	li	a5,0
    167c:	853e                	mv	a0,a5
    167e:	60e2                	ld	ra,24(sp)
    1680:	6442                	ld	s0,16(sp)
    1682:	6105                	addi	sp,sp,32
    1684:	8082                	ret

0000000000001686 <_ZL10__syscall0l>:
    1686:	1101                	addi	sp,sp,-32
    1688:	ec22                	sd	s0,24(sp)
    168a:	1000                	addi	s0,sp,32
    168c:	fea43423          	sd	a0,-24(s0)
    1690:	fe843883          	ld	a7,-24(s0)
    1694:	00000073          	ecall
    1698:	87aa                	mv	a5,a0
    169a:	853e                	mv	a0,a5
    169c:	6462                	ld	s0,24(sp)
    169e:	6105                	addi	sp,sp,32
    16a0:	8082                	ret

00000000000016a2 <_ZL10__syscall1ll>:
    16a2:	1101                	addi	sp,sp,-32
    16a4:	ec22                	sd	s0,24(sp)
    16a6:	1000                	addi	s0,sp,32
    16a8:	fea43423          	sd	a0,-24(s0)
    16ac:	feb43023          	sd	a1,-32(s0)
    16b0:	fe843883          	ld	a7,-24(s0)
    16b4:	fe043503          	ld	a0,-32(s0)
    16b8:	00000073          	ecall
    16bc:	87aa                	mv	a5,a0
    16be:	853e                	mv	a0,a5
    16c0:	6462                	ld	s0,24(sp)
    16c2:	6105                	addi	sp,sp,32
    16c4:	8082                	ret

00000000000016c6 <_ZL10__syscall2lll>:
    16c6:	7179                	addi	sp,sp,-48
    16c8:	f422                	sd	s0,40(sp)
    16ca:	1800                	addi	s0,sp,48
    16cc:	fea43423          	sd	a0,-24(s0)
    16d0:	feb43023          	sd	a1,-32(s0)
    16d4:	fcc43c23          	sd	a2,-40(s0)
    16d8:	fe843883          	ld	a7,-24(s0)
    16dc:	fe043503          	ld	a0,-32(s0)
    16e0:	fd843583          	ld	a1,-40(s0)
    16e4:	00000073          	ecall
    16e8:	87aa                	mv	a5,a0
    16ea:	853e                	mv	a0,a5
    16ec:	7422                	ld	s0,40(sp)
    16ee:	6145                	addi	sp,sp,48
    16f0:	8082                	ret

00000000000016f2 <_ZL10__syscall3llll>:
    16f2:	7179                	addi	sp,sp,-48
    16f4:	f422                	sd	s0,40(sp)
    16f6:	1800                	addi	s0,sp,48
    16f8:	fea43423          	sd	a0,-24(s0)
    16fc:	feb43023          	sd	a1,-32(s0)
    1700:	fcc43c23          	sd	a2,-40(s0)
    1704:	fcd43823          	sd	a3,-48(s0)
    1708:	fe843883          	ld	a7,-24(s0)
    170c:	fe043503          	ld	a0,-32(s0)
    1710:	fd843583          	ld	a1,-40(s0)
    1714:	fd043603          	ld	a2,-48(s0)
    1718:	00000073          	ecall
    171c:	87aa                	mv	a5,a0
    171e:	853e                	mv	a0,a5
    1720:	7422                	ld	s0,40(sp)
    1722:	6145                	addi	sp,sp,48
    1724:	8082                	ret

0000000000001726 <_ZL10__syscall4lllll>:
    1726:	7139                	addi	sp,sp,-64
    1728:	fc22                	sd	s0,56(sp)
    172a:	0080                	addi	s0,sp,64
    172c:	fea43423          	sd	a0,-24(s0)
    1730:	feb43023          	sd	a1,-32(s0)
    1734:	fcc43c23          	sd	a2,-40(s0)
    1738:	fcd43823          	sd	a3,-48(s0)
    173c:	fce43423          	sd	a4,-56(s0)
    1740:	fe843883          	ld	a7,-24(s0)
    1744:	fe043503          	ld	a0,-32(s0)
    1748:	fd843583          	ld	a1,-40(s0)
    174c:	fd043603          	ld	a2,-48(s0)
    1750:	fc843683          	ld	a3,-56(s0)
    1754:	00000073          	ecall
    1758:	87aa                	mv	a5,a0
    175a:	853e                	mv	a0,a5
    175c:	7462                	ld	s0,56(sp)
    175e:	6121                	addi	sp,sp,64
    1760:	8082                	ret

0000000000001762 <_ZL10__syscall5llllll>:
    1762:	7139                	addi	sp,sp,-64
    1764:	fc22                	sd	s0,56(sp)
    1766:	0080                	addi	s0,sp,64
    1768:	fea43423          	sd	a0,-24(s0)
    176c:	feb43023          	sd	a1,-32(s0)
    1770:	fcc43c23          	sd	a2,-40(s0)
    1774:	fcd43823          	sd	a3,-48(s0)
    1778:	fce43423          	sd	a4,-56(s0)
    177c:	fcf43023          	sd	a5,-64(s0)
    1780:	fe843883          	ld	a7,-24(s0)
    1784:	fe043503          	ld	a0,-32(s0)
    1788:	fd843583          	ld	a1,-40(s0)
    178c:	fd043603          	ld	a2,-48(s0)
    1790:	fc843683          	ld	a3,-56(s0)
    1794:	fc043703          	ld	a4,-64(s0)
    1798:	00000073          	ecall
    179c:	87aa                	mv	a5,a0
    179e:	853e                	mv	a0,a5
    17a0:	7462                	ld	s0,56(sp)
    17a2:	6121                	addi	sp,sp,64
    17a4:	8082                	ret

00000000000017a6 <_Z4openPKci>:
    17a6:	1101                	addi	sp,sp,-32
    17a8:	ec06                	sd	ra,24(sp)
    17aa:	e822                	sd	s0,16(sp)
    17ac:	1000                	addi	s0,sp,32
    17ae:	fea43423          	sd	a0,-24(s0)
    17b2:	87ae                	mv	a5,a1
    17b4:	fef42223          	sw	a5,-28(s0)
    17b8:	fe843783          	ld	a5,-24(s0)
    17bc:	fe442683          	lw	a3,-28(s0)
    17c0:	4709                	li	a4,2
    17c2:	863e                	mv	a2,a5
    17c4:	f9c00593          	li	a1,-100
    17c8:	03800513          	li	a0,56
    17cc:	f5bff0ef          	jal	ra,1726 <_ZL10__syscall4lllll>
    17d0:	87aa                	mv	a5,a0
    17d2:	2781                	sext.w	a5,a5
    17d4:	853e                	mv	a0,a5
    17d6:	60e2                	ld	ra,24(sp)
    17d8:	6442                	ld	s0,16(sp)
    17da:	6105                	addi	sp,sp,32
    17dc:	8082                	ret

00000000000017de <_Z6openatiPKci>:
    17de:	1101                	addi	sp,sp,-32
    17e0:	ec06                	sd	ra,24(sp)
    17e2:	e822                	sd	s0,16(sp)
    17e4:	1000                	addi	s0,sp,32
    17e6:	87aa                	mv	a5,a0
    17e8:	feb43023          	sd	a1,-32(s0)
    17ec:	8732                	mv	a4,a2
    17ee:	fef42623          	sw	a5,-20(s0)
    17f2:	87ba                	mv	a5,a4
    17f4:	fef42423          	sw	a5,-24(s0)
    17f8:	fec42783          	lw	a5,-20(s0)
    17fc:	fe043603          	ld	a2,-32(s0)
    1800:	fe842683          	lw	a3,-24(s0)
    1804:	18000713          	li	a4,384
    1808:	85be                	mv	a1,a5
    180a:	03800513          	li	a0,56
    180e:	f19ff0ef          	jal	ra,1726 <_ZL10__syscall4lllll>
    1812:	87aa                	mv	a5,a0
    1814:	2781                	sext.w	a5,a5
    1816:	853e                	mv	a0,a5
    1818:	60e2                	ld	ra,24(sp)
    181a:	6442                	ld	s0,16(sp)
    181c:	6105                	addi	sp,sp,32
    181e:	8082                	ret

0000000000001820 <_Z5closei>:
    1820:	1101                	addi	sp,sp,-32
    1822:	ec06                	sd	ra,24(sp)
    1824:	e822                	sd	s0,16(sp)
    1826:	1000                	addi	s0,sp,32
    1828:	87aa                	mv	a5,a0
    182a:	fef42623          	sw	a5,-20(s0)
    182e:	fec42783          	lw	a5,-20(s0)
    1832:	85be                	mv	a1,a5
    1834:	03900513          	li	a0,57
    1838:	e6bff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    183c:	87aa                	mv	a5,a0
    183e:	2781                	sext.w	a5,a5
    1840:	853e                	mv	a0,a5
    1842:	60e2                	ld	ra,24(sp)
    1844:	6442                	ld	s0,16(sp)
    1846:	6105                	addi	sp,sp,32
    1848:	8082                	ret

000000000000184a <_Z4readiPvy>:
    184a:	7179                	addi	sp,sp,-48
    184c:	f406                	sd	ra,40(sp)
    184e:	f022                	sd	s0,32(sp)
    1850:	1800                	addi	s0,sp,48
    1852:	87aa                	mv	a5,a0
    1854:	feb43023          	sd	a1,-32(s0)
    1858:	fcc43c23          	sd	a2,-40(s0)
    185c:	fef42623          	sw	a5,-20(s0)
    1860:	fec42783          	lw	a5,-20(s0)
    1864:	fe043703          	ld	a4,-32(s0)
    1868:	fd843683          	ld	a3,-40(s0)
    186c:	863a                	mv	a2,a4
    186e:	85be                	mv	a1,a5
    1870:	03f00513          	li	a0,63
    1874:	e7fff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1878:	87aa                	mv	a5,a0
    187a:	853e                	mv	a0,a5
    187c:	70a2                	ld	ra,40(sp)
    187e:	7402                	ld	s0,32(sp)
    1880:	6145                	addi	sp,sp,48
    1882:	8082                	ret

0000000000001884 <_Z5writeiPKvy>:
    1884:	7179                	addi	sp,sp,-48
    1886:	f406                	sd	ra,40(sp)
    1888:	f022                	sd	s0,32(sp)
    188a:	1800                	addi	s0,sp,48
    188c:	87aa                	mv	a5,a0
    188e:	feb43023          	sd	a1,-32(s0)
    1892:	fcc43c23          	sd	a2,-40(s0)
    1896:	fef42623          	sw	a5,-20(s0)
    189a:	fec42783          	lw	a5,-20(s0)
    189e:	fe043703          	ld	a4,-32(s0)
    18a2:	fd843683          	ld	a3,-40(s0)
    18a6:	863a                	mv	a2,a4
    18a8:	85be                	mv	a1,a5
    18aa:	04000513          	li	a0,64
    18ae:	e45ff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    18b2:	87aa                	mv	a5,a0
    18b4:	853e                	mv	a0,a5
    18b6:	70a2                	ld	ra,40(sp)
    18b8:	7402                	ld	s0,32(sp)
    18ba:	6145                	addi	sp,sp,48
    18bc:	8082                	ret

00000000000018be <_Z6getpidv>:
    18be:	1141                	addi	sp,sp,-16
    18c0:	e406                	sd	ra,8(sp)
    18c2:	e022                	sd	s0,0(sp)
    18c4:	0800                	addi	s0,sp,16
    18c6:	0ac00513          	li	a0,172
    18ca:	dbdff0ef          	jal	ra,1686 <_ZL10__syscall0l>
    18ce:	87aa                	mv	a5,a0
    18d0:	2781                	sext.w	a5,a5
    18d2:	853e                	mv	a0,a5
    18d4:	60a2                	ld	ra,8(sp)
    18d6:	6402                	ld	s0,0(sp)
    18d8:	0141                	addi	sp,sp,16
    18da:	8082                	ret

00000000000018dc <_Z7getppidv>:
    18dc:	1141                	addi	sp,sp,-16
    18de:	e406                	sd	ra,8(sp)
    18e0:	e022                	sd	s0,0(sp)
    18e2:	0800                	addi	s0,sp,16
    18e4:	0ad00513          	li	a0,173
    18e8:	d9fff0ef          	jal	ra,1686 <_ZL10__syscall0l>
    18ec:	87aa                	mv	a5,a0
    18ee:	2781                	sext.w	a5,a5
    18f0:	853e                	mv	a0,a5
    18f2:	60a2                	ld	ra,8(sp)
    18f4:	6402                	ld	s0,0(sp)
    18f6:	0141                	addi	sp,sp,16
    18f8:	8082                	ret

00000000000018fa <_Z11sched_yieldv>:
    18fa:	1141                	addi	sp,sp,-16
    18fc:	e406                	sd	ra,8(sp)
    18fe:	e022                	sd	s0,0(sp)
    1900:	0800                	addi	s0,sp,16
    1902:	07c00513          	li	a0,124
    1906:	d81ff0ef          	jal	ra,1686 <_ZL10__syscall0l>
    190a:	87aa                	mv	a5,a0
    190c:	2781                	sext.w	a5,a5
    190e:	853e                	mv	a0,a5
    1910:	60a2                	ld	ra,8(sp)
    1912:	6402                	ld	s0,0(sp)
    1914:	0141                	addi	sp,sp,16
    1916:	8082                	ret

0000000000001918 <_Z4forkv>:
    1918:	1141                	addi	sp,sp,-16
    191a:	e406                	sd	ra,8(sp)
    191c:	e022                	sd	s0,0(sp)
    191e:	0800                	addi	s0,sp,16
    1920:	4601                	li	a2,0
    1922:	45c5                	li	a1,17
    1924:	0dc00513          	li	a0,220
    1928:	d9fff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    192c:	87aa                	mv	a5,a0
    192e:	2781                	sext.w	a5,a5
    1930:	853e                	mv	a0,a5
    1932:	60a2                	ld	ra,8(sp)
    1934:	6402                	ld	s0,0(sp)
    1936:	0141                	addi	sp,sp,16
    1938:	8082                	ret

000000000000193a <_Z4exiti>:
    193a:	1101                	addi	sp,sp,-32
    193c:	ec06                	sd	ra,24(sp)
    193e:	e822                	sd	s0,16(sp)
    1940:	1000                	addi	s0,sp,32
    1942:	87aa                	mv	a5,a0
    1944:	fef42623          	sw	a5,-20(s0)
    1948:	fec42783          	lw	a5,-20(s0)
    194c:	85be                	mv	a1,a5
    194e:	05d00513          	li	a0,93
    1952:	d51ff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1956:	0001                	nop
    1958:	60e2                	ld	ra,24(sp)
    195a:	6442                	ld	s0,16(sp)
    195c:	6105                	addi	sp,sp,32
    195e:	8082                	ret

0000000000001960 <_Z7waitpidiPii>:
    1960:	1101                	addi	sp,sp,-32
    1962:	ec06                	sd	ra,24(sp)
    1964:	e822                	sd	s0,16(sp)
    1966:	1000                	addi	s0,sp,32
    1968:	87aa                	mv	a5,a0
    196a:	feb43023          	sd	a1,-32(s0)
    196e:	8732                	mv	a4,a2
    1970:	fef42623          	sw	a5,-20(s0)
    1974:	87ba                	mv	a5,a4
    1976:	fef42423          	sw	a5,-24(s0)
    197a:	fec42783          	lw	a5,-20(s0)
    197e:	fe043603          	ld	a2,-32(s0)
    1982:	fe842683          	lw	a3,-24(s0)
    1986:	4701                	li	a4,0
    1988:	85be                	mv	a1,a5
    198a:	10400513          	li	a0,260
    198e:	d99ff0ef          	jal	ra,1726 <_ZL10__syscall4lllll>
    1992:	87aa                	mv	a5,a0
    1994:	2781                	sext.w	a5,a5
    1996:	853e                	mv	a0,a5
    1998:	60e2                	ld	ra,24(sp)
    199a:	6442                	ld	s0,16(sp)
    199c:	6105                	addi	sp,sp,32
    199e:	8082                	ret

00000000000019a0 <_Z4execPc>:
    19a0:	1101                	addi	sp,sp,-32
    19a2:	ec06                	sd	ra,24(sp)
    19a4:	e822                	sd	s0,16(sp)
    19a6:	1000                	addi	s0,sp,32
    19a8:	fea43423          	sd	a0,-24(s0)
    19ac:	fe843783          	ld	a5,-24(s0)
    19b0:	85be                	mv	a1,a5
    19b2:	0dd00513          	li	a0,221
    19b6:	cedff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    19ba:	87aa                	mv	a5,a0
    19bc:	2781                	sext.w	a5,a5
    19be:	853e                	mv	a0,a5
    19c0:	60e2                	ld	ra,24(sp)
    19c2:	6442                	ld	s0,16(sp)
    19c4:	6105                	addi	sp,sp,32
    19c6:	8082                	ret

00000000000019c8 <_Z6execvePKcPKPcS3_>:
    19c8:	7179                	addi	sp,sp,-48
    19ca:	f406                	sd	ra,40(sp)
    19cc:	f022                	sd	s0,32(sp)
    19ce:	1800                	addi	s0,sp,48
    19d0:	fea43423          	sd	a0,-24(s0)
    19d4:	feb43023          	sd	a1,-32(s0)
    19d8:	fcc43c23          	sd	a2,-40(s0)
    19dc:	fe843783          	ld	a5,-24(s0)
    19e0:	fe043703          	ld	a4,-32(s0)
    19e4:	fd843683          	ld	a3,-40(s0)
    19e8:	863a                	mv	a2,a4
    19ea:	85be                	mv	a1,a5
    19ec:	0dd00513          	li	a0,221
    19f0:	d03ff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    19f4:	87aa                	mv	a5,a0
    19f6:	2781                	sext.w	a5,a5
    19f8:	853e                	mv	a0,a5
    19fa:	70a2                	ld	ra,40(sp)
    19fc:	7402                	ld	s0,32(sp)
    19fe:	6145                	addi	sp,sp,48
    1a00:	8082                	ret

0000000000001a02 <_Z5timesPv>:
    1a02:	1101                	addi	sp,sp,-32
    1a04:	ec06                	sd	ra,24(sp)
    1a06:	e822                	sd	s0,16(sp)
    1a08:	1000                	addi	s0,sp,32
    1a0a:	fea43423          	sd	a0,-24(s0)
    1a0e:	fe843783          	ld	a5,-24(s0)
    1a12:	85be                	mv	a1,a5
    1a14:	09900513          	li	a0,153
    1a18:	c8bff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1a1c:	87aa                	mv	a5,a0
    1a1e:	2781                	sext.w	a5,a5
    1a20:	853e                	mv	a0,a5
    1a22:	60e2                	ld	ra,24(sp)
    1a24:	6442                	ld	s0,16(sp)
    1a26:	6105                	addi	sp,sp,32
    1a28:	8082                	ret

0000000000001a2a <_Z8get_timev>:
    1a2a:	7179                	addi	sp,sp,-48
    1a2c:	f406                	sd	ra,40(sp)
    1a2e:	f022                	sd	s0,32(sp)
    1a30:	1800                	addi	s0,sp,48
    1a32:	fd840793          	addi	a5,s0,-40
    1a36:	4581                	li	a1,0
    1a38:	853e                	mv	a0,a5
    1a3a:	040000ef          	jal	ra,1a7a <_Z12sys_get_timeP7TimeVali>
    1a3e:	87aa                	mv	a5,a0
    1a40:	fef42623          	sw	a5,-20(s0)
    1a44:	fec42783          	lw	a5,-20(s0)
    1a48:	2781                	sext.w	a5,a5
    1a4a:	e395                	bnez	a5,1a6e <_Z8get_timev+0x44>
    1a4c:	fd843703          	ld	a4,-40(s0)
    1a50:	67c1                	lui	a5,0x10
    1a52:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xdd9f>
    1a54:	8f7d                	and	a4,a4,a5
    1a56:	3e800793          	li	a5,1000
    1a5a:	02f70733          	mul	a4,a4,a5
    1a5e:	fe043683          	ld	a3,-32(s0)
    1a62:	3e800793          	li	a5,1000
    1a66:	02f6d7b3          	divu	a5,a3,a5
    1a6a:	97ba                	add	a5,a5,a4
    1a6c:	a011                	j	1a70 <_Z8get_timev+0x46>
    1a6e:	57fd                	li	a5,-1
    1a70:	853e                	mv	a0,a5
    1a72:	70a2                	ld	ra,40(sp)
    1a74:	7402                	ld	s0,32(sp)
    1a76:	6145                	addi	sp,sp,48
    1a78:	8082                	ret

0000000000001a7a <_Z12sys_get_timeP7TimeVali>:
    1a7a:	1101                	addi	sp,sp,-32
    1a7c:	ec06                	sd	ra,24(sp)
    1a7e:	e822                	sd	s0,16(sp)
    1a80:	1000                	addi	s0,sp,32
    1a82:	fea43423          	sd	a0,-24(s0)
    1a86:	87ae                	mv	a5,a1
    1a88:	fef42223          	sw	a5,-28(s0)
    1a8c:	fe843783          	ld	a5,-24(s0)
    1a90:	fe442703          	lw	a4,-28(s0)
    1a94:	863a                	mv	a2,a4
    1a96:	85be                	mv	a1,a5
    1a98:	0a900513          	li	a0,169
    1a9c:	c2bff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1aa0:	87aa                	mv	a5,a0
    1aa2:	2781                	sext.w	a5,a5
    1aa4:	853e                	mv	a0,a5
    1aa6:	60e2                	ld	ra,24(sp)
    1aa8:	6442                	ld	s0,16(sp)
    1aaa:	6105                	addi	sp,sp,32
    1aac:	8082                	ret

0000000000001aae <_Z4timePm>:
    1aae:	1101                	addi	sp,sp,-32
    1ab0:	ec06                	sd	ra,24(sp)
    1ab2:	e822                	sd	s0,16(sp)
    1ab4:	1000                	addi	s0,sp,32
    1ab6:	fea43423          	sd	a0,-24(s0)
    1aba:	fe843783          	ld	a5,-24(s0)
    1abe:	85be                	mv	a1,a5
    1ac0:	42600513          	li	a0,1062
    1ac4:	bdfff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1ac8:	87aa                	mv	a5,a0
    1aca:	2781                	sext.w	a5,a5
    1acc:	853e                	mv	a0,a5
    1ace:	60e2                	ld	ra,24(sp)
    1ad0:	6442                	ld	s0,16(sp)
    1ad2:	6105                	addi	sp,sp,32
    1ad4:	8082                	ret

0000000000001ad6 <_Z5sleepy>:
    1ad6:	7179                	addi	sp,sp,-48
    1ad8:	f406                	sd	ra,40(sp)
    1ada:	f022                	sd	s0,32(sp)
    1adc:	1800                	addi	s0,sp,48
    1ade:	fca43c23          	sd	a0,-40(s0)
    1ae2:	fe043023          	sd	zero,-32(s0)
    1ae6:	fe043423          	sd	zero,-24(s0)
    1aea:	fd843783          	ld	a5,-40(s0)
    1aee:	fef43023          	sd	a5,-32(s0)
    1af2:	fe040793          	addi	a5,s0,-32
    1af6:	fe040713          	addi	a4,s0,-32
    1afa:	863a                	mv	a2,a4
    1afc:	85be                	mv	a1,a5
    1afe:	06500513          	li	a0,101
    1b02:	bc5ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1b06:	87aa                	mv	a5,a0
    1b08:	00f037b3          	snez	a5,a5
    1b0c:	0ff7f793          	zext.b	a5,a5
    1b10:	c789                	beqz	a5,1b1a <_Z5sleepy+0x44>
    1b12:	fe043783          	ld	a5,-32(s0)
    1b16:	2781                	sext.w	a5,a5
    1b18:	a011                	j	1b1c <_Z5sleepy+0x46>
    1b1a:	4781                	li	a5,0
    1b1c:	853e                	mv	a0,a5
    1b1e:	70a2                	ld	ra,40(sp)
    1b20:	7402                	ld	s0,32(sp)
    1b22:	6145                	addi	sp,sp,48
    1b24:	8082                	ret

0000000000001b26 <_Z12set_priorityi>:
    1b26:	1101                	addi	sp,sp,-32
    1b28:	ec06                	sd	ra,24(sp)
    1b2a:	e822                	sd	s0,16(sp)
    1b2c:	1000                	addi	s0,sp,32
    1b2e:	87aa                	mv	a5,a0
    1b30:	fef42623          	sw	a5,-20(s0)
    1b34:	fec42783          	lw	a5,-20(s0)
    1b38:	85be                	mv	a1,a5
    1b3a:	08c00513          	li	a0,140
    1b3e:	b65ff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1b42:	87aa                	mv	a5,a0
    1b44:	2781                	sext.w	a5,a5
    1b46:	853e                	mv	a0,a5
    1b48:	60e2                	ld	ra,24(sp)
    1b4a:	6442                	ld	s0,16(sp)
    1b4c:	6105                	addi	sp,sp,32
    1b4e:	8082                	ret

0000000000001b50 <_Z6munmapPvy>:
    1b50:	1101                	addi	sp,sp,-32
    1b52:	ec06                	sd	ra,24(sp)
    1b54:	e822                	sd	s0,16(sp)
    1b56:	1000                	addi	s0,sp,32
    1b58:	fea43423          	sd	a0,-24(s0)
    1b5c:	feb43023          	sd	a1,-32(s0)
    1b60:	fe843783          	ld	a5,-24(s0)
    1b64:	fe043703          	ld	a4,-32(s0)
    1b68:	863a                	mv	a2,a4
    1b6a:	85be                	mv	a1,a5
    1b6c:	0d700513          	li	a0,215
    1b70:	b57ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1b74:	87aa                	mv	a5,a0
    1b76:	2781                	sext.w	a5,a5
    1b78:	853e                	mv	a0,a5
    1b7a:	60e2                	ld	ra,24(sp)
    1b7c:	6442                	ld	s0,16(sp)
    1b7e:	6105                	addi	sp,sp,32
    1b80:	8082                	ret

0000000000001b82 <_Z4waitPi>:
    1b82:	1101                	addi	sp,sp,-32
    1b84:	ec06                	sd	ra,24(sp)
    1b86:	e822                	sd	s0,16(sp)
    1b88:	1000                	addi	s0,sp,32
    1b8a:	fea43423          	sd	a0,-24(s0)
    1b8e:	4601                	li	a2,0
    1b90:	fe843583          	ld	a1,-24(s0)
    1b94:	557d                	li	a0,-1
    1b96:	dcbff0ef          	jal	ra,1960 <_Z7waitpidiPii>
    1b9a:	87aa                	mv	a5,a0
    1b9c:	853e                	mv	a0,a5
    1b9e:	60e2                	ld	ra,24(sp)
    1ba0:	6442                	ld	s0,16(sp)
    1ba2:	6105                	addi	sp,sp,32
    1ba4:	8082                	ret

0000000000001ba6 <_Z5spawnPc>:
    1ba6:	1101                	addi	sp,sp,-32
    1ba8:	ec06                	sd	ra,24(sp)
    1baa:	e822                	sd	s0,16(sp)
    1bac:	1000                	addi	s0,sp,32
    1bae:	fea43423          	sd	a0,-24(s0)
    1bb2:	fe843783          	ld	a5,-24(s0)
    1bb6:	85be                	mv	a1,a5
    1bb8:	19000513          	li	a0,400
    1bbc:	ae7ff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1bc0:	87aa                	mv	a5,a0
    1bc2:	2781                	sext.w	a5,a5
    1bc4:	853e                	mv	a0,a5
    1bc6:	60e2                	ld	ra,24(sp)
    1bc8:	6442                	ld	s0,16(sp)
    1bca:	6105                	addi	sp,sp,32
    1bcc:	8082                	ret

0000000000001bce <_Z8mailreadPvi>:
    1bce:	1101                	addi	sp,sp,-32
    1bd0:	ec06                	sd	ra,24(sp)
    1bd2:	e822                	sd	s0,16(sp)
    1bd4:	1000                	addi	s0,sp,32
    1bd6:	fea43423          	sd	a0,-24(s0)
    1bda:	87ae                	mv	a5,a1
    1bdc:	fef42223          	sw	a5,-28(s0)
    1be0:	fe843783          	ld	a5,-24(s0)
    1be4:	fe442703          	lw	a4,-28(s0)
    1be8:	863a                	mv	a2,a4
    1bea:	85be                	mv	a1,a5
    1bec:	19100513          	li	a0,401
    1bf0:	ad7ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1bf4:	87aa                	mv	a5,a0
    1bf6:	2781                	sext.w	a5,a5
    1bf8:	853e                	mv	a0,a5
    1bfa:	60e2                	ld	ra,24(sp)
    1bfc:	6442                	ld	s0,16(sp)
    1bfe:	6105                	addi	sp,sp,32
    1c00:	8082                	ret

0000000000001c02 <_Z9mailwriteiPvi>:
    1c02:	1101                	addi	sp,sp,-32
    1c04:	ec06                	sd	ra,24(sp)
    1c06:	e822                	sd	s0,16(sp)
    1c08:	1000                	addi	s0,sp,32
    1c0a:	87aa                	mv	a5,a0
    1c0c:	feb43023          	sd	a1,-32(s0)
    1c10:	8732                	mv	a4,a2
    1c12:	fef42623          	sw	a5,-20(s0)
    1c16:	87ba                	mv	a5,a4
    1c18:	fef42423          	sw	a5,-24(s0)
    1c1c:	fec42783          	lw	a5,-20(s0)
    1c20:	fe043703          	ld	a4,-32(s0)
    1c24:	fe842683          	lw	a3,-24(s0)
    1c28:	863a                	mv	a2,a4
    1c2a:	85be                	mv	a1,a5
    1c2c:	19200513          	li	a0,402
    1c30:	ac3ff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1c34:	87aa                	mv	a5,a0
    1c36:	2781                	sext.w	a5,a5
    1c38:	853e                	mv	a0,a5
    1c3a:	60e2                	ld	ra,24(sp)
    1c3c:	6442                	ld	s0,16(sp)
    1c3e:	6105                	addi	sp,sp,32
    1c40:	8082                	ret

0000000000001c42 <_Z5fstatiP5kstat>:
    1c42:	1101                	addi	sp,sp,-32
    1c44:	ec06                	sd	ra,24(sp)
    1c46:	e822                	sd	s0,16(sp)
    1c48:	1000                	addi	s0,sp,32
    1c4a:	87aa                	mv	a5,a0
    1c4c:	feb43023          	sd	a1,-32(s0)
    1c50:	fef42623          	sw	a5,-20(s0)
    1c54:	fec42783          	lw	a5,-20(s0)
    1c58:	fe043703          	ld	a4,-32(s0)
    1c5c:	863a                	mv	a2,a4
    1c5e:	85be                	mv	a1,a5
    1c60:	05000513          	li	a0,80
    1c64:	a63ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1c68:	87aa                	mv	a5,a0
    1c6a:	2781                	sext.w	a5,a5
    1c6c:	853e                	mv	a0,a5
    1c6e:	60e2                	ld	ra,24(sp)
    1c70:	6442                	ld	s0,16(sp)
    1c72:	6105                	addi	sp,sp,32
    1c74:	8082                	ret

0000000000001c76 <_Z10sys_linkatiPciS_j>:
    1c76:	7179                	addi	sp,sp,-48
    1c78:	f406                	sd	ra,40(sp)
    1c7a:	f022                	sd	s0,32(sp)
    1c7c:	1800                	addi	s0,sp,48
    1c7e:	87aa                	mv	a5,a0
    1c80:	feb43023          	sd	a1,-32(s0)
    1c84:	fcd43c23          	sd	a3,-40(s0)
    1c88:	fef42623          	sw	a5,-20(s0)
    1c8c:	87b2                	mv	a5,a2
    1c8e:	fef42423          	sw	a5,-24(s0)
    1c92:	87ba                	mv	a5,a4
    1c94:	fcf42a23          	sw	a5,-44(s0)
    1c98:	fec42583          	lw	a1,-20(s0)
    1c9c:	fe043603          	ld	a2,-32(s0)
    1ca0:	fe842683          	lw	a3,-24(s0)
    1ca4:	fd843703          	ld	a4,-40(s0)
    1ca8:	fd446783          	lwu	a5,-44(s0)
    1cac:	02500513          	li	a0,37
    1cb0:	ab3ff0ef          	jal	ra,1762 <_ZL10__syscall5llllll>
    1cb4:	87aa                	mv	a5,a0
    1cb6:	2781                	sext.w	a5,a5
    1cb8:	853e                	mv	a0,a5
    1cba:	70a2                	ld	ra,40(sp)
    1cbc:	7402                	ld	s0,32(sp)
    1cbe:	6145                	addi	sp,sp,48
    1cc0:	8082                	ret

0000000000001cc2 <_Z12sys_unlinkatiPcj>:
    1cc2:	1101                	addi	sp,sp,-32
    1cc4:	ec06                	sd	ra,24(sp)
    1cc6:	e822                	sd	s0,16(sp)
    1cc8:	1000                	addi	s0,sp,32
    1cca:	87aa                	mv	a5,a0
    1ccc:	feb43023          	sd	a1,-32(s0)
    1cd0:	8732                	mv	a4,a2
    1cd2:	fef42623          	sw	a5,-20(s0)
    1cd6:	87ba                	mv	a5,a4
    1cd8:	fef42423          	sw	a5,-24(s0)
    1cdc:	fec42783          	lw	a5,-20(s0)
    1ce0:	fe043703          	ld	a4,-32(s0)
    1ce4:	fe846683          	lwu	a3,-24(s0)
    1ce8:	863a                	mv	a2,a4
    1cea:	85be                	mv	a1,a5
    1cec:	02300513          	li	a0,35
    1cf0:	a03ff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1cf4:	87aa                	mv	a5,a0
    1cf6:	2781                	sext.w	a5,a5
    1cf8:	853e                	mv	a0,a5
    1cfa:	60e2                	ld	ra,24(sp)
    1cfc:	6442                	ld	s0,16(sp)
    1cfe:	6105                	addi	sp,sp,32
    1d00:	8082                	ret

0000000000001d02 <_Z4linkPcS_>:
    1d02:	1101                	addi	sp,sp,-32
    1d04:	ec06                	sd	ra,24(sp)
    1d06:	e822                	sd	s0,16(sp)
    1d08:	1000                	addi	s0,sp,32
    1d0a:	fea43423          	sd	a0,-24(s0)
    1d0e:	feb43023          	sd	a1,-32(s0)
    1d12:	4701                	li	a4,0
    1d14:	fe043683          	ld	a3,-32(s0)
    1d18:	f9c00613          	li	a2,-100
    1d1c:	fe843583          	ld	a1,-24(s0)
    1d20:	f9c00513          	li	a0,-100
    1d24:	f53ff0ef          	jal	ra,1c76 <_Z10sys_linkatiPciS_j>
    1d28:	87aa                	mv	a5,a0
    1d2a:	853e                	mv	a0,a5
    1d2c:	60e2                	ld	ra,24(sp)
    1d2e:	6442                	ld	s0,16(sp)
    1d30:	6105                	addi	sp,sp,32
    1d32:	8082                	ret

0000000000001d34 <_Z6unlinkPc>:
    1d34:	1101                	addi	sp,sp,-32
    1d36:	ec06                	sd	ra,24(sp)
    1d38:	e822                	sd	s0,16(sp)
    1d3a:	1000                	addi	s0,sp,32
    1d3c:	fea43423          	sd	a0,-24(s0)
    1d40:	4601                	li	a2,0
    1d42:	fe843583          	ld	a1,-24(s0)
    1d46:	f9c00513          	li	a0,-100
    1d4a:	f79ff0ef          	jal	ra,1cc2 <_Z12sys_unlinkatiPcj>
    1d4e:	87aa                	mv	a5,a0
    1d50:	853e                	mv	a0,a5
    1d52:	60e2                	ld	ra,24(sp)
    1d54:	6442                	ld	s0,16(sp)
    1d56:	6105                	addi	sp,sp,32
    1d58:	8082                	ret

0000000000001d5a <_Z5unamePv>:
    1d5a:	1101                	addi	sp,sp,-32
    1d5c:	ec06                	sd	ra,24(sp)
    1d5e:	e822                	sd	s0,16(sp)
    1d60:	1000                	addi	s0,sp,32
    1d62:	fea43423          	sd	a0,-24(s0)
    1d66:	fe843783          	ld	a5,-24(s0)
    1d6a:	85be                	mv	a1,a5
    1d6c:	0a000513          	li	a0,160
    1d70:	933ff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1d74:	87aa                	mv	a5,a0
    1d76:	2781                	sext.w	a5,a5
    1d78:	853e                	mv	a0,a5
    1d7a:	60e2                	ld	ra,24(sp)
    1d7c:	6442                	ld	s0,16(sp)
    1d7e:	6105                	addi	sp,sp,32
    1d80:	8082                	ret

0000000000001d82 <_Z3brkPv>:
    1d82:	1101                	addi	sp,sp,-32
    1d84:	ec06                	sd	ra,24(sp)
    1d86:	e822                	sd	s0,16(sp)
    1d88:	1000                	addi	s0,sp,32
    1d8a:	fea43423          	sd	a0,-24(s0)
    1d8e:	fe843783          	ld	a5,-24(s0)
    1d92:	85be                	mv	a1,a5
    1d94:	0d600513          	li	a0,214
    1d98:	90bff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1d9c:	87aa                	mv	a5,a0
    1d9e:	2781                	sext.w	a5,a5
    1da0:	853e                	mv	a0,a5
    1da2:	60e2                	ld	ra,24(sp)
    1da4:	6442                	ld	s0,16(sp)
    1da6:	6105                	addi	sp,sp,32
    1da8:	8082                	ret

0000000000001daa <_Z5chdirPKc>:
    1daa:	1101                	addi	sp,sp,-32
    1dac:	ec06                	sd	ra,24(sp)
    1dae:	e822                	sd	s0,16(sp)
    1db0:	1000                	addi	s0,sp,32
    1db2:	fea43423          	sd	a0,-24(s0)
    1db6:	fe843783          	ld	a5,-24(s0)
    1dba:	85be                	mv	a1,a5
    1dbc:	03100513          	li	a0,49
    1dc0:	8e3ff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1dc4:	87aa                	mv	a5,a0
    1dc6:	2781                	sext.w	a5,a5
    1dc8:	853e                	mv	a0,a5
    1dca:	60e2                	ld	ra,24(sp)
    1dcc:	6442                	ld	s0,16(sp)
    1dce:	6105                	addi	sp,sp,32
    1dd0:	8082                	ret

0000000000001dd2 <_Z5mkdirPKcj>:
    1dd2:	1101                	addi	sp,sp,-32
    1dd4:	ec06                	sd	ra,24(sp)
    1dd6:	e822                	sd	s0,16(sp)
    1dd8:	1000                	addi	s0,sp,32
    1dda:	fea43423          	sd	a0,-24(s0)
    1dde:	87ae                	mv	a5,a1
    1de0:	fef42223          	sw	a5,-28(s0)
    1de4:	fe843783          	ld	a5,-24(s0)
    1de8:	fe446703          	lwu	a4,-28(s0)
    1dec:	86ba                	mv	a3,a4
    1dee:	863e                	mv	a2,a5
    1df0:	f9c00593          	li	a1,-100
    1df4:	02200513          	li	a0,34
    1df8:	8fbff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1dfc:	87aa                	mv	a5,a0
    1dfe:	2781                	sext.w	a5,a5
    1e00:	853e                	mv	a0,a5
    1e02:	60e2                	ld	ra,24(sp)
    1e04:	6442                	ld	s0,16(sp)
    1e06:	6105                	addi	sp,sp,32
    1e08:	8082                	ret

0000000000001e0a <_Z8getdentsiP14linux_dirent64m>:
    1e0a:	7179                	addi	sp,sp,-48
    1e0c:	f406                	sd	ra,40(sp)
    1e0e:	f022                	sd	s0,32(sp)
    1e10:	1800                	addi	s0,sp,48
    1e12:	87aa                	mv	a5,a0
    1e14:	feb43023          	sd	a1,-32(s0)
    1e18:	fcc43c23          	sd	a2,-40(s0)
    1e1c:	fef42623          	sw	a5,-20(s0)
    1e20:	fec42783          	lw	a5,-20(s0)
    1e24:	fe043703          	ld	a4,-32(s0)
    1e28:	fd843683          	ld	a3,-40(s0)
    1e2c:	863a                	mv	a2,a4
    1e2e:	85be                	mv	a1,a5
    1e30:	03d00513          	li	a0,61
    1e34:	8bfff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1e38:	87aa                	mv	a5,a0
    1e3a:	2781                	sext.w	a5,a5
    1e3c:	853e                	mv	a0,a5
    1e3e:	70a2                	ld	ra,40(sp)
    1e40:	7402                	ld	s0,32(sp)
    1e42:	6145                	addi	sp,sp,48
    1e44:	8082                	ret

0000000000001e46 <_Z4pipePi>:
    1e46:	1101                	addi	sp,sp,-32
    1e48:	ec06                	sd	ra,24(sp)
    1e4a:	e822                	sd	s0,16(sp)
    1e4c:	1000                	addi	s0,sp,32
    1e4e:	fea43423          	sd	a0,-24(s0)
    1e52:	fe843783          	ld	a5,-24(s0)
    1e56:	4601                	li	a2,0
    1e58:	85be                	mv	a1,a5
    1e5a:	03b00513          	li	a0,59
    1e5e:	869ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1e62:	87aa                	mv	a5,a0
    1e64:	2781                	sext.w	a5,a5
    1e66:	853e                	mv	a0,a5
    1e68:	60e2                	ld	ra,24(sp)
    1e6a:	6442                	ld	s0,16(sp)
    1e6c:	6105                	addi	sp,sp,32
    1e6e:	8082                	ret

0000000000001e70 <_Z3dupi>:
    1e70:	1101                	addi	sp,sp,-32
    1e72:	ec06                	sd	ra,24(sp)
    1e74:	e822                	sd	s0,16(sp)
    1e76:	1000                	addi	s0,sp,32
    1e78:	87aa                	mv	a5,a0
    1e7a:	fef42623          	sw	a5,-20(s0)
    1e7e:	fec42783          	lw	a5,-20(s0)
    1e82:	85be                	mv	a1,a5
    1e84:	455d                	li	a0,23
    1e86:	81dff0ef          	jal	ra,16a2 <_ZL10__syscall1ll>
    1e8a:	87aa                	mv	a5,a0
    1e8c:	2781                	sext.w	a5,a5
    1e8e:	853e                	mv	a0,a5
    1e90:	60e2                	ld	ra,24(sp)
    1e92:	6442                	ld	s0,16(sp)
    1e94:	6105                	addi	sp,sp,32
    1e96:	8082                	ret

0000000000001e98 <_Z4dup2ii>:
    1e98:	1101                	addi	sp,sp,-32
    1e9a:	ec06                	sd	ra,24(sp)
    1e9c:	e822                	sd	s0,16(sp)
    1e9e:	1000                	addi	s0,sp,32
    1ea0:	87aa                	mv	a5,a0
    1ea2:	872e                	mv	a4,a1
    1ea4:	fef42623          	sw	a5,-20(s0)
    1ea8:	87ba                	mv	a5,a4
    1eaa:	fef42423          	sw	a5,-24(s0)
    1eae:	fec42783          	lw	a5,-20(s0)
    1eb2:	fe842703          	lw	a4,-24(s0)
    1eb6:	4681                	li	a3,0
    1eb8:	863a                	mv	a2,a4
    1eba:	85be                	mv	a1,a5
    1ebc:	4561                	li	a0,24
    1ebe:	835ff0ef          	jal	ra,16f2 <_ZL10__syscall3llll>
    1ec2:	87aa                	mv	a5,a0
    1ec4:	2781                	sext.w	a5,a5
    1ec6:	853e                	mv	a0,a5
    1ec8:	60e2                	ld	ra,24(sp)
    1eca:	6442                	ld	s0,16(sp)
    1ecc:	6105                	addi	sp,sp,32
    1ece:	8082                	ret

0000000000001ed0 <_Z5mountPKcS0_S0_mPKv>:
    1ed0:	7139                	addi	sp,sp,-64
    1ed2:	fc06                	sd	ra,56(sp)
    1ed4:	f822                	sd	s0,48(sp)
    1ed6:	0080                	addi	s0,sp,64
    1ed8:	fea43423          	sd	a0,-24(s0)
    1edc:	feb43023          	sd	a1,-32(s0)
    1ee0:	fcc43c23          	sd	a2,-40(s0)
    1ee4:	fcd43823          	sd	a3,-48(s0)
    1ee8:	fce43423          	sd	a4,-56(s0)
    1eec:	fe843583          	ld	a1,-24(s0)
    1ef0:	fe043603          	ld	a2,-32(s0)
    1ef4:	fd843683          	ld	a3,-40(s0)
    1ef8:	fd043703          	ld	a4,-48(s0)
    1efc:	fc843783          	ld	a5,-56(s0)
    1f00:	02800513          	li	a0,40
    1f04:	85fff0ef          	jal	ra,1762 <_ZL10__syscall5llllll>
    1f08:	87aa                	mv	a5,a0
    1f0a:	2781                	sext.w	a5,a5
    1f0c:	853e                	mv	a0,a5
    1f0e:	70e2                	ld	ra,56(sp)
    1f10:	7442                	ld	s0,48(sp)
    1f12:	6121                	addi	sp,sp,64
    1f14:	8082                	ret

0000000000001f16 <_Z6umountPKc>:
    1f16:	1101                	addi	sp,sp,-32
    1f18:	ec06                	sd	ra,24(sp)
    1f1a:	e822                	sd	s0,16(sp)
    1f1c:	1000                	addi	s0,sp,32
    1f1e:	fea43423          	sd	a0,-24(s0)
    1f22:	fe843783          	ld	a5,-24(s0)
    1f26:	4601                	li	a2,0
    1f28:	85be                	mv	a1,a5
    1f2a:	02700513          	li	a0,39
    1f2e:	f98ff0ef          	jal	ra,16c6 <_ZL10__syscall2lll>
    1f32:	87aa                	mv	a5,a0
    1f34:	2781                	sext.w	a5,a5
    1f36:	853e                	mv	a0,a5
    1f38:	60e2                	ld	ra,24(sp)
    1f3a:	6442                	ld	s0,16(sp)
    1f3c:	6105                	addi	sp,sp,32
    1f3e:	8082                	ret

Disassembly of section .interp:

0000000000001f40 <.interp>:
    1f40:	62696c2f          	.4byte	0x62696c2f
    1f44:	2d646c2f          	.4byte	0x2d646c2f
    1f48:	696c                	ld	a1,208(a0)
    1f4a:	756e                	ld	a0,248(sp)
    1f4c:	2d78                	fld	fa4,216(a0)
    1f4e:	6972                	ld	s2,280(sp)
    1f50:	36766373          	csrrsi	t1,0x367,12
    1f54:	2d34                	fld	fa3,88(a0)
    1f56:	706c                	ld	a1,224(s0)
    1f58:	3436                	fld	fs0,360(sp)
    1f5a:	2e64                	fld	fs1,216(a2)
    1f5c:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001f64 <.note.gnu.build-id>:
    1f64:	0004                	.2byte	0x4
    1f66:	0000                	unimp
    1f68:	0014                	.2byte	0x14
    1f6a:	0000                	unimp
    1f6c:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1f70:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1f74:	4208                	lw	a0,0(a2)
    1f76:	59733043          	fmadd.s	ft0,ft6,fs7,fa1,rup
    1f7a:	a6c07a2f          	.4byte	0xa6c07a2f
    1f7e:	b304                	fsd	fs1,32(a4)
    1f80:	1865                	addi	a6,a6,-7
    1f82:	a1a2                	fsd	fs0,192(sp)
    1f84:	5075                	c.li	zero,-3
    1f86:	a169                	j	2410 <_GLOBAL_OFFSET_TABLE_+0x1b0>

Disassembly of section .dynsym:

0000000000001f88 <.dynsym>:
	...
    1fa4:	00010003          	lb	zero,0(sp)
    1fa8:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001fb8 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001fc0 <.gnu.hash>:
    1fc0:	0001                	nop
    1fc2:	0000                	unimp
    1fc4:	0001                	nop
    1fc6:	0000                	unimp
    1fc8:	0001                	nop
	...

Disassembly of section .bss:

0000000000001fe0 <buf>:
	...

Disassembly of section .data:

00000000000020a8 <_ZL6digits>:
    20a8:	3130                	fld	fa2,96(a0)
    20aa:	3332                	fld	ft6,296(sp)
    20ac:	3534                	fld	fa3,104(a0)
    20ae:	3736                	fld	fa4,360(sp)
    20b0:	3938                	fld	fa4,112(a0)
    20b2:	6261                	lui	tp,0x18
    20b4:	66656463          	bltu	a0,t1,271c <_GLOBAL_OFFSET_TABLE_+0x4bc>
	...

00000000000020c0 <nuclear>:
    20c0:	7566                	ld	a0,120(sp)
    20c2:	6e6f6973          	csrrsi	s2,0x6e6,30
    20c6:	000a                	c.slli	zero,0x2
    20c8:	6e28                	ld	a0,88(a2)
    20ca:	6c75                	lui	s8,0x1d
    20cc:	296c                	fld	fa1,208(a0)
    20ce:	0000                	unimp
    20d0:	2d2d                	addiw	s10,s10,11
    20d2:	2d2d                	addiw	s10,s10,11
    20d4:	2d2d                	addiw	s10,s10,11
    20d6:	2d2d                	addiw	s10,s10,11
    20d8:	2d2d                	addiw	s10,s10,11
    20da:	6572                	ld	a0,280(sp)
    20dc:	6c61                	lui	s8,0x18
    20de:	7320                	ld	s0,96(a4)
    20e0:	6568                	ld	a0,200(a0)
    20e2:	6c6c                	ld	a1,216(s0)
    20e4:	7320                	ld	s0,96(a4)
    20e6:	6174                	ld	a3,192(a0)
    20e8:	6572                	ld	a0,280(sp)
    20ea:	2164                	fld	fs1,192(a0)
    20ec:	2d2d                	addiw	s10,s10,11
    20ee:	2d2d                	addiw	s10,s10,11
    20f0:	2d2d                	addiw	s10,s10,11
    20f2:	2d2d                	addiw	s10,s10,11
    20f4:	0a2d                	addi	s4,s4,11
    20f6:	0000                	unimp
    20f8:	6c656873          	csrrsi	a6,0x6c6,10
    20fc:	206c                	fld	fa1,192(s0)
    20fe:	6425                	lui	s0,0x9
    2100:	6c2c                	ld	a1,88(s0)
    2102:	6e69                	lui	t3,0x1a
    2104:	2065                	.2byte	0x2065
    2106:	6425                	lui	s0,0x9
    2108:	003e                	c.slli	zero,0xf
    210a:	0000                	unimp
    210c:	0000                	unimp
    210e:	0000                	unimp
    2110:	2008                	fld	fa0,0(s0)
    2112:	0008                	.2byte	0x8
    2114:	0000                	unimp
    2116:	0000                	unimp
    2118:	000a                	c.slli	zero,0x2
    211a:	0000                	unimp
    211c:	0000                	unimp
    211e:	0000                	unimp
    2120:	7865                	lui	a6,0xffff9
    2122:	7469                	lui	s0,0xffffa
    2124:	0000                	unimp
    2126:	0000                	unimp
    2128:	6979                	lui	s2,0x1e
    212a:	6c65                	lui	s8,0x19
    212c:	0064                	addi	s1,sp,12
    212e:	0000                	unimp
    2130:	6f66                	ld	t5,88(sp)
    2132:	6b72                	ld	s6,280(sp)
    2134:	0000                	unimp
    2136:	0000                	unimp
    2138:	6e6e6f63          	bltu	t3,t1,2836 <_GLOBAL_OFFSET_TABLE_+0x5d6>
    213c:	6520746f          	jal	s0,978e <_GLOBAL_OFFSET_TABLE_+0x752e>
    2140:	6378                	ld	a4,192(a4)
    2142:	7475                	lui	s0,0xffffd
    2144:	2065                	.2byte	0x2065
    2146:	7325                	lui	t1,0xfffe9
    2148:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

0000000000002150 <.dynamic>:
    2150:	fef5                	bnez	a3,214c <nuclear+0x8c>
    2152:	6fff                	.2byte	0x6fff
    2154:	0000                	unimp
    2156:	0000                	unimp
    2158:	1fc0                	addi	s0,sp,1012
    215a:	0000                	unimp
    215c:	0000                	unimp
    215e:	0000                	unimp
    2160:	0005                	c.nop	1
    2162:	0000                	unimp
    2164:	0000                	unimp
    2166:	0000                	unimp
    2168:	1fb8                	addi	a4,sp,1016
    216a:	0000                	unimp
    216c:	0000                	unimp
    216e:	0000                	unimp
    2170:	0006                	c.slli	zero,0x1
    2172:	0000                	unimp
    2174:	0000                	unimp
    2176:	0000                	unimp
    2178:	1f88                	addi	a0,sp,1008
    217a:	0000                	unimp
    217c:	0000                	unimp
    217e:	0000                	unimp
    2180:	000a                	c.slli	zero,0x2
    2182:	0000                	unimp
    2184:	0000                	unimp
    2186:	0000                	unimp
    2188:	0001                	nop
    218a:	0000                	unimp
    218c:	0000                	unimp
    218e:	0000                	unimp
    2190:	0000000b          	.4byte	0xb
    2194:	0000                	unimp
    2196:	0000                	unimp
    2198:	0018                	.2byte	0x18
    219a:	0000                	unimp
    219c:	0000                	unimp
    219e:	0000                	unimp
    21a0:	0015                	c.nop	5
	...
    21ae:	0000                	unimp
    21b0:	00000007          	.4byte	0x7
	...
    21c0:	0008                	.2byte	0x8
	...
    21ce:	0000                	unimp
    21d0:	0009                	c.nop	2
    21d2:	0000                	unimp
    21d4:	0000                	unimp
    21d6:	0000                	unimp
    21d8:	0018                	.2byte	0x18
    21da:	0000                	unimp
    21dc:	0000                	unimp
    21de:	0000                	unimp
    21e0:	001e                	c.slli	zero,0x7
    21e2:	0000                	unimp
    21e4:	0000                	unimp
    21e6:	0000                	unimp
    21e8:	0008                	.2byte	0x8
    21ea:	0000                	unimp
    21ec:	0000                	unimp
    21ee:	0000                	unimp
    21f0:	6ffffffb          	.4byte	0x6ffffffb
    21f4:	0000                	unimp
    21f6:	0000                	unimp
    21f8:	0001                	nop
    21fa:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000000002260 <.got>:
    2260:	2150                	fld	fa2,128(a0)
    2262:	0000                	unimp
    2264:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1adac>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12d90>
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffded9b>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

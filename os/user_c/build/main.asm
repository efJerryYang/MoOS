
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
    1016:	00f000ef          	jal	ra,1824 <_Z4readiPvy>
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
    1040:	01f000ef          	jal	ra,185e <_Z5writeiPKvy>
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
    10fe:	f8670713          	addi	a4,a4,-122 # 2080 <_ZL6digits>
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
    11c8:	ebc70713          	addi	a4,a4,-324 # 2080 <_ZL6digits>
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
    136e:	d3678793          	addi	a5,a5,-714 # 20a0 <nuclear+0x8>
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
    14f4:	bb850513          	addi	a0,a0,-1096 # 20a8 <nuclear+0x10>
    14f8:	d0bff0ef          	jal	ra,1202 <_Z6printfPcz>
    14fc:	fe042623          	sw	zero,-20(s0)
    1500:	398000ef          	jal	ra,1898 <_Z6getpidv>
    1504:	87aa                	mv	a5,a0
    1506:	873e                	mv	a4,a5
    1508:	fec42783          	lw	a5,-20(s0)
    150c:	2785                	addiw	a5,a5,1
    150e:	fef42623          	sw	a5,-20(s0)
    1512:	fec42783          	lw	a5,-20(s0)
    1516:	863e                	mv	a2,a5
    1518:	85ba                	mv	a1,a4
    151a:	00001517          	auipc	a0,0x1
    151e:	ba650513          	addi	a0,a0,-1114 # 20c0 <nuclear+0x28>
    1522:	ce1ff0ef          	jal	ra,1202 <_Z6printfPcz>
    1526:	addff0ef          	jal	ra,1002 <_Z7getcharv>
    152a:	87aa                	mv	a5,a0
    152c:	fef405a3          	sb	a5,-21(s0)
    1530:	00001797          	auipc	a5,0x1
    1534:	a8878793          	addi	a5,a5,-1400 # 1fb8 <buf>
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
    1564:	a5878793          	addi	a5,a5,-1448 # 1fb8 <buf>
    1568:	04f70063          	beq	a4,a5,15a8 <main+0xc0>
    156c:	00001517          	auipc	a0,0x1
    1570:	b6c50513          	addi	a0,a0,-1172 # 20d8 <nuclear+0x40>
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
    15cc:	b1850513          	addi	a0,a0,-1256 # 20e0 <nuclear+0x48>
    15d0:	c33ff0ef          	jal	ra,1202 <_Z6printfPcz>
    15d4:	00001517          	auipc	a0,0x1
    15d8:	9e450513          	addi	a0,a0,-1564 # 1fb8 <buf>
    15dc:	e1fff0ef          	jal	ra,13fa <_Z6strlenPc>
    15e0:	87aa                	mv	a5,a0
    15e2:	0017b793          	seqz	a5,a5
    15e6:	0ff7f793          	zext.b	a5,a5
    15ea:	efb9                	bnez	a5,1648 <main+0x160>
    15ec:	00001597          	auipc	a1,0x1
    15f0:	afc58593          	addi	a1,a1,-1284 # 20e8 <nuclear+0x50>
    15f4:	00001517          	auipc	a0,0x1
    15f8:	9c450513          	addi	a0,a0,-1596 # 1fb8 <buf>
    15fc:	e41ff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1600:	87aa                	mv	a5,a0
    1602:	0017b793          	seqz	a5,a5
    1606:	0ff7f793          	zext.b	a5,a5
    160a:	e3a9                	bnez	a5,164c <main+0x164>
    160c:	00001597          	auipc	a1,0x1
    1610:	ae458593          	addi	a1,a1,-1308 # 20f0 <nuclear+0x58>
    1614:	00001517          	auipc	a0,0x1
    1618:	9a450513          	addi	a0,a0,-1628 # 1fb8 <buf>
    161c:	e21ff0ef          	jal	ra,143c <_Z6strcmpPcS_>
    1620:	87aa                	mv	a5,a0
    1622:	0017b793          	seqz	a5,a5
    1626:	0ff7f793          	zext.b	a5,a5
    162a:	c781                	beqz	a5,1632 <main+0x14a>
    162c:	2a8000ef          	jal	ra,18d4 <_Z11sched_yieldv>
    1630:	a829                	j	164a <main+0x162>
    1632:	00001597          	auipc	a1,0x1
    1636:	98658593          	addi	a1,a1,-1658 # 1fb8 <buf>
    163a:	00001517          	auipc	a0,0x1
    163e:	abe50513          	addi	a0,a0,-1346 # 20f8 <nuclear+0x60>
    1642:	bc1ff0ef          	jal	ra,1202 <_Z6printfPcz>
    1646:	bd6d                	j	1500 <main+0x18>
    1648:	0001                	nop
    164a:	bd5d                	j	1500 <main+0x18>
    164c:	0001                	nop
    164e:	4501                	li	a0,0
    1650:	2c4000ef          	jal	ra,1914 <_Z4exiti>
    1654:	4781                	li	a5,0
    1656:	853e                	mv	a0,a5
    1658:	60e2                	ld	ra,24(sp)
    165a:	6442                	ld	s0,16(sp)
    165c:	6105                	addi	sp,sp,32
    165e:	8082                	ret

0000000000001660 <_ZL10__syscall0l>:
    1660:	1101                	addi	sp,sp,-32
    1662:	ec22                	sd	s0,24(sp)
    1664:	1000                	addi	s0,sp,32
    1666:	fea43423          	sd	a0,-24(s0)
    166a:	fe843883          	ld	a7,-24(s0)
    166e:	00000073          	ecall
    1672:	87aa                	mv	a5,a0
    1674:	853e                	mv	a0,a5
    1676:	6462                	ld	s0,24(sp)
    1678:	6105                	addi	sp,sp,32
    167a:	8082                	ret

000000000000167c <_ZL10__syscall1ll>:
    167c:	1101                	addi	sp,sp,-32
    167e:	ec22                	sd	s0,24(sp)
    1680:	1000                	addi	s0,sp,32
    1682:	fea43423          	sd	a0,-24(s0)
    1686:	feb43023          	sd	a1,-32(s0)
    168a:	fe843883          	ld	a7,-24(s0)
    168e:	fe043503          	ld	a0,-32(s0)
    1692:	00000073          	ecall
    1696:	87aa                	mv	a5,a0
    1698:	853e                	mv	a0,a5
    169a:	6462                	ld	s0,24(sp)
    169c:	6105                	addi	sp,sp,32
    169e:	8082                	ret

00000000000016a0 <_ZL10__syscall2lll>:
    16a0:	7179                	addi	sp,sp,-48
    16a2:	f422                	sd	s0,40(sp)
    16a4:	1800                	addi	s0,sp,48
    16a6:	fea43423          	sd	a0,-24(s0)
    16aa:	feb43023          	sd	a1,-32(s0)
    16ae:	fcc43c23          	sd	a2,-40(s0)
    16b2:	fe843883          	ld	a7,-24(s0)
    16b6:	fe043503          	ld	a0,-32(s0)
    16ba:	fd843583          	ld	a1,-40(s0)
    16be:	00000073          	ecall
    16c2:	87aa                	mv	a5,a0
    16c4:	853e                	mv	a0,a5
    16c6:	7422                	ld	s0,40(sp)
    16c8:	6145                	addi	sp,sp,48
    16ca:	8082                	ret

00000000000016cc <_ZL10__syscall3llll>:
    16cc:	7179                	addi	sp,sp,-48
    16ce:	f422                	sd	s0,40(sp)
    16d0:	1800                	addi	s0,sp,48
    16d2:	fea43423          	sd	a0,-24(s0)
    16d6:	feb43023          	sd	a1,-32(s0)
    16da:	fcc43c23          	sd	a2,-40(s0)
    16de:	fcd43823          	sd	a3,-48(s0)
    16e2:	fe843883          	ld	a7,-24(s0)
    16e6:	fe043503          	ld	a0,-32(s0)
    16ea:	fd843583          	ld	a1,-40(s0)
    16ee:	fd043603          	ld	a2,-48(s0)
    16f2:	00000073          	ecall
    16f6:	87aa                	mv	a5,a0
    16f8:	853e                	mv	a0,a5
    16fa:	7422                	ld	s0,40(sp)
    16fc:	6145                	addi	sp,sp,48
    16fe:	8082                	ret

0000000000001700 <_ZL10__syscall4lllll>:
    1700:	7139                	addi	sp,sp,-64
    1702:	fc22                	sd	s0,56(sp)
    1704:	0080                	addi	s0,sp,64
    1706:	fea43423          	sd	a0,-24(s0)
    170a:	feb43023          	sd	a1,-32(s0)
    170e:	fcc43c23          	sd	a2,-40(s0)
    1712:	fcd43823          	sd	a3,-48(s0)
    1716:	fce43423          	sd	a4,-56(s0)
    171a:	fe843883          	ld	a7,-24(s0)
    171e:	fe043503          	ld	a0,-32(s0)
    1722:	fd843583          	ld	a1,-40(s0)
    1726:	fd043603          	ld	a2,-48(s0)
    172a:	fc843683          	ld	a3,-56(s0)
    172e:	00000073          	ecall
    1732:	87aa                	mv	a5,a0
    1734:	853e                	mv	a0,a5
    1736:	7462                	ld	s0,56(sp)
    1738:	6121                	addi	sp,sp,64
    173a:	8082                	ret

000000000000173c <_ZL10__syscall5llllll>:
    173c:	7139                	addi	sp,sp,-64
    173e:	fc22                	sd	s0,56(sp)
    1740:	0080                	addi	s0,sp,64
    1742:	fea43423          	sd	a0,-24(s0)
    1746:	feb43023          	sd	a1,-32(s0)
    174a:	fcc43c23          	sd	a2,-40(s0)
    174e:	fcd43823          	sd	a3,-48(s0)
    1752:	fce43423          	sd	a4,-56(s0)
    1756:	fcf43023          	sd	a5,-64(s0)
    175a:	fe843883          	ld	a7,-24(s0)
    175e:	fe043503          	ld	a0,-32(s0)
    1762:	fd843583          	ld	a1,-40(s0)
    1766:	fd043603          	ld	a2,-48(s0)
    176a:	fc843683          	ld	a3,-56(s0)
    176e:	fc043703          	ld	a4,-64(s0)
    1772:	00000073          	ecall
    1776:	87aa                	mv	a5,a0
    1778:	853e                	mv	a0,a5
    177a:	7462                	ld	s0,56(sp)
    177c:	6121                	addi	sp,sp,64
    177e:	8082                	ret

0000000000001780 <_Z4openPKci>:
    1780:	1101                	addi	sp,sp,-32
    1782:	ec06                	sd	ra,24(sp)
    1784:	e822                	sd	s0,16(sp)
    1786:	1000                	addi	s0,sp,32
    1788:	fea43423          	sd	a0,-24(s0)
    178c:	87ae                	mv	a5,a1
    178e:	fef42223          	sw	a5,-28(s0)
    1792:	fe843783          	ld	a5,-24(s0)
    1796:	fe442683          	lw	a3,-28(s0)
    179a:	4709                	li	a4,2
    179c:	863e                	mv	a2,a5
    179e:	f9c00593          	li	a1,-100
    17a2:	03800513          	li	a0,56
    17a6:	f5bff0ef          	jal	ra,1700 <_ZL10__syscall4lllll>
    17aa:	87aa                	mv	a5,a0
    17ac:	2781                	sext.w	a5,a5
    17ae:	853e                	mv	a0,a5
    17b0:	60e2                	ld	ra,24(sp)
    17b2:	6442                	ld	s0,16(sp)
    17b4:	6105                	addi	sp,sp,32
    17b6:	8082                	ret

00000000000017b8 <_Z6openatiPKci>:
    17b8:	1101                	addi	sp,sp,-32
    17ba:	ec06                	sd	ra,24(sp)
    17bc:	e822                	sd	s0,16(sp)
    17be:	1000                	addi	s0,sp,32
    17c0:	87aa                	mv	a5,a0
    17c2:	feb43023          	sd	a1,-32(s0)
    17c6:	8732                	mv	a4,a2
    17c8:	fef42623          	sw	a5,-20(s0)
    17cc:	87ba                	mv	a5,a4
    17ce:	fef42423          	sw	a5,-24(s0)
    17d2:	fec42783          	lw	a5,-20(s0)
    17d6:	fe043603          	ld	a2,-32(s0)
    17da:	fe842683          	lw	a3,-24(s0)
    17de:	18000713          	li	a4,384
    17e2:	85be                	mv	a1,a5
    17e4:	03800513          	li	a0,56
    17e8:	f19ff0ef          	jal	ra,1700 <_ZL10__syscall4lllll>
    17ec:	87aa                	mv	a5,a0
    17ee:	2781                	sext.w	a5,a5
    17f0:	853e                	mv	a0,a5
    17f2:	60e2                	ld	ra,24(sp)
    17f4:	6442                	ld	s0,16(sp)
    17f6:	6105                	addi	sp,sp,32
    17f8:	8082                	ret

00000000000017fa <_Z5closei>:
    17fa:	1101                	addi	sp,sp,-32
    17fc:	ec06                	sd	ra,24(sp)
    17fe:	e822                	sd	s0,16(sp)
    1800:	1000                	addi	s0,sp,32
    1802:	87aa                	mv	a5,a0
    1804:	fef42623          	sw	a5,-20(s0)
    1808:	fec42783          	lw	a5,-20(s0)
    180c:	85be                	mv	a1,a5
    180e:	03900513          	li	a0,57
    1812:	e6bff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1816:	87aa                	mv	a5,a0
    1818:	2781                	sext.w	a5,a5
    181a:	853e                	mv	a0,a5
    181c:	60e2                	ld	ra,24(sp)
    181e:	6442                	ld	s0,16(sp)
    1820:	6105                	addi	sp,sp,32
    1822:	8082                	ret

0000000000001824 <_Z4readiPvy>:
    1824:	7179                	addi	sp,sp,-48
    1826:	f406                	sd	ra,40(sp)
    1828:	f022                	sd	s0,32(sp)
    182a:	1800                	addi	s0,sp,48
    182c:	87aa                	mv	a5,a0
    182e:	feb43023          	sd	a1,-32(s0)
    1832:	fcc43c23          	sd	a2,-40(s0)
    1836:	fef42623          	sw	a5,-20(s0)
    183a:	fec42783          	lw	a5,-20(s0)
    183e:	fe043703          	ld	a4,-32(s0)
    1842:	fd843683          	ld	a3,-40(s0)
    1846:	863a                	mv	a2,a4
    1848:	85be                	mv	a1,a5
    184a:	03f00513          	li	a0,63
    184e:	e7fff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1852:	87aa                	mv	a5,a0
    1854:	853e                	mv	a0,a5
    1856:	70a2                	ld	ra,40(sp)
    1858:	7402                	ld	s0,32(sp)
    185a:	6145                	addi	sp,sp,48
    185c:	8082                	ret

000000000000185e <_Z5writeiPKvy>:
    185e:	7179                	addi	sp,sp,-48
    1860:	f406                	sd	ra,40(sp)
    1862:	f022                	sd	s0,32(sp)
    1864:	1800                	addi	s0,sp,48
    1866:	87aa                	mv	a5,a0
    1868:	feb43023          	sd	a1,-32(s0)
    186c:	fcc43c23          	sd	a2,-40(s0)
    1870:	fef42623          	sw	a5,-20(s0)
    1874:	fec42783          	lw	a5,-20(s0)
    1878:	fe043703          	ld	a4,-32(s0)
    187c:	fd843683          	ld	a3,-40(s0)
    1880:	863a                	mv	a2,a4
    1882:	85be                	mv	a1,a5
    1884:	04000513          	li	a0,64
    1888:	e45ff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    188c:	87aa                	mv	a5,a0
    188e:	853e                	mv	a0,a5
    1890:	70a2                	ld	ra,40(sp)
    1892:	7402                	ld	s0,32(sp)
    1894:	6145                	addi	sp,sp,48
    1896:	8082                	ret

0000000000001898 <_Z6getpidv>:
    1898:	1141                	addi	sp,sp,-16
    189a:	e406                	sd	ra,8(sp)
    189c:	e022                	sd	s0,0(sp)
    189e:	0800                	addi	s0,sp,16
    18a0:	0ac00513          	li	a0,172
    18a4:	dbdff0ef          	jal	ra,1660 <_ZL10__syscall0l>
    18a8:	87aa                	mv	a5,a0
    18aa:	2781                	sext.w	a5,a5
    18ac:	853e                	mv	a0,a5
    18ae:	60a2                	ld	ra,8(sp)
    18b0:	6402                	ld	s0,0(sp)
    18b2:	0141                	addi	sp,sp,16
    18b4:	8082                	ret

00000000000018b6 <_Z7getppidv>:
    18b6:	1141                	addi	sp,sp,-16
    18b8:	e406                	sd	ra,8(sp)
    18ba:	e022                	sd	s0,0(sp)
    18bc:	0800                	addi	s0,sp,16
    18be:	0ad00513          	li	a0,173
    18c2:	d9fff0ef          	jal	ra,1660 <_ZL10__syscall0l>
    18c6:	87aa                	mv	a5,a0
    18c8:	2781                	sext.w	a5,a5
    18ca:	853e                	mv	a0,a5
    18cc:	60a2                	ld	ra,8(sp)
    18ce:	6402                	ld	s0,0(sp)
    18d0:	0141                	addi	sp,sp,16
    18d2:	8082                	ret

00000000000018d4 <_Z11sched_yieldv>:
    18d4:	1141                	addi	sp,sp,-16
    18d6:	e406                	sd	ra,8(sp)
    18d8:	e022                	sd	s0,0(sp)
    18da:	0800                	addi	s0,sp,16
    18dc:	07c00513          	li	a0,124
    18e0:	d81ff0ef          	jal	ra,1660 <_ZL10__syscall0l>
    18e4:	87aa                	mv	a5,a0
    18e6:	2781                	sext.w	a5,a5
    18e8:	853e                	mv	a0,a5
    18ea:	60a2                	ld	ra,8(sp)
    18ec:	6402                	ld	s0,0(sp)
    18ee:	0141                	addi	sp,sp,16
    18f0:	8082                	ret

00000000000018f2 <_Z4forkv>:
    18f2:	1141                	addi	sp,sp,-16
    18f4:	e406                	sd	ra,8(sp)
    18f6:	e022                	sd	s0,0(sp)
    18f8:	0800                	addi	s0,sp,16
    18fa:	4601                	li	a2,0
    18fc:	45c5                	li	a1,17
    18fe:	0dc00513          	li	a0,220
    1902:	d9fff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1906:	87aa                	mv	a5,a0
    1908:	2781                	sext.w	a5,a5
    190a:	853e                	mv	a0,a5
    190c:	60a2                	ld	ra,8(sp)
    190e:	6402                	ld	s0,0(sp)
    1910:	0141                	addi	sp,sp,16
    1912:	8082                	ret

0000000000001914 <_Z4exiti>:
    1914:	1101                	addi	sp,sp,-32
    1916:	ec06                	sd	ra,24(sp)
    1918:	e822                	sd	s0,16(sp)
    191a:	1000                	addi	s0,sp,32
    191c:	87aa                	mv	a5,a0
    191e:	fef42623          	sw	a5,-20(s0)
    1922:	fec42783          	lw	a5,-20(s0)
    1926:	85be                	mv	a1,a5
    1928:	05d00513          	li	a0,93
    192c:	d51ff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1930:	0001                	nop
    1932:	60e2                	ld	ra,24(sp)
    1934:	6442                	ld	s0,16(sp)
    1936:	6105                	addi	sp,sp,32
    1938:	8082                	ret

000000000000193a <_Z7waitpidiPii>:
    193a:	1101                	addi	sp,sp,-32
    193c:	ec06                	sd	ra,24(sp)
    193e:	e822                	sd	s0,16(sp)
    1940:	1000                	addi	s0,sp,32
    1942:	87aa                	mv	a5,a0
    1944:	feb43023          	sd	a1,-32(s0)
    1948:	8732                	mv	a4,a2
    194a:	fef42623          	sw	a5,-20(s0)
    194e:	87ba                	mv	a5,a4
    1950:	fef42423          	sw	a5,-24(s0)
    1954:	fec42783          	lw	a5,-20(s0)
    1958:	fe043603          	ld	a2,-32(s0)
    195c:	fe842683          	lw	a3,-24(s0)
    1960:	4701                	li	a4,0
    1962:	85be                	mv	a1,a5
    1964:	10400513          	li	a0,260
    1968:	d99ff0ef          	jal	ra,1700 <_ZL10__syscall4lllll>
    196c:	87aa                	mv	a5,a0
    196e:	2781                	sext.w	a5,a5
    1970:	853e                	mv	a0,a5
    1972:	60e2                	ld	ra,24(sp)
    1974:	6442                	ld	s0,16(sp)
    1976:	6105                	addi	sp,sp,32
    1978:	8082                	ret

000000000000197a <_Z4execPc>:
    197a:	1101                	addi	sp,sp,-32
    197c:	ec06                	sd	ra,24(sp)
    197e:	e822                	sd	s0,16(sp)
    1980:	1000                	addi	s0,sp,32
    1982:	fea43423          	sd	a0,-24(s0)
    1986:	fe843783          	ld	a5,-24(s0)
    198a:	85be                	mv	a1,a5
    198c:	0dd00513          	li	a0,221
    1990:	cedff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1994:	87aa                	mv	a5,a0
    1996:	2781                	sext.w	a5,a5
    1998:	853e                	mv	a0,a5
    199a:	60e2                	ld	ra,24(sp)
    199c:	6442                	ld	s0,16(sp)
    199e:	6105                	addi	sp,sp,32
    19a0:	8082                	ret

00000000000019a2 <_Z6execvePKcPKPcS3_>:
    19a2:	7179                	addi	sp,sp,-48
    19a4:	f406                	sd	ra,40(sp)
    19a6:	f022                	sd	s0,32(sp)
    19a8:	1800                	addi	s0,sp,48
    19aa:	fea43423          	sd	a0,-24(s0)
    19ae:	feb43023          	sd	a1,-32(s0)
    19b2:	fcc43c23          	sd	a2,-40(s0)
    19b6:	fe843783          	ld	a5,-24(s0)
    19ba:	fe043703          	ld	a4,-32(s0)
    19be:	fd843683          	ld	a3,-40(s0)
    19c2:	863a                	mv	a2,a4
    19c4:	85be                	mv	a1,a5
    19c6:	0dd00513          	li	a0,221
    19ca:	d03ff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    19ce:	87aa                	mv	a5,a0
    19d0:	2781                	sext.w	a5,a5
    19d2:	853e                	mv	a0,a5
    19d4:	70a2                	ld	ra,40(sp)
    19d6:	7402                	ld	s0,32(sp)
    19d8:	6145                	addi	sp,sp,48
    19da:	8082                	ret

00000000000019dc <_Z5timesPv>:
    19dc:	1101                	addi	sp,sp,-32
    19de:	ec06                	sd	ra,24(sp)
    19e0:	e822                	sd	s0,16(sp)
    19e2:	1000                	addi	s0,sp,32
    19e4:	fea43423          	sd	a0,-24(s0)
    19e8:	fe843783          	ld	a5,-24(s0)
    19ec:	85be                	mv	a1,a5
    19ee:	09900513          	li	a0,153
    19f2:	c8bff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    19f6:	87aa                	mv	a5,a0
    19f8:	2781                	sext.w	a5,a5
    19fa:	853e                	mv	a0,a5
    19fc:	60e2                	ld	ra,24(sp)
    19fe:	6442                	ld	s0,16(sp)
    1a00:	6105                	addi	sp,sp,32
    1a02:	8082                	ret

0000000000001a04 <_Z8get_timev>:
    1a04:	7179                	addi	sp,sp,-48
    1a06:	f406                	sd	ra,40(sp)
    1a08:	f022                	sd	s0,32(sp)
    1a0a:	1800                	addi	s0,sp,48
    1a0c:	fd840793          	addi	a5,s0,-40
    1a10:	4581                	li	a1,0
    1a12:	853e                	mv	a0,a5
    1a14:	040000ef          	jal	ra,1a54 <_Z12sys_get_timeP7TimeVali>
    1a18:	87aa                	mv	a5,a0
    1a1a:	fef42623          	sw	a5,-20(s0)
    1a1e:	fec42783          	lw	a5,-20(s0)
    1a22:	2781                	sext.w	a5,a5
    1a24:	e395                	bnez	a5,1a48 <_Z8get_timev+0x44>
    1a26:	fd843703          	ld	a4,-40(s0)
    1a2a:	67c1                	lui	a5,0x10
    1a2c:	17fd                	addi	a5,a5,-1 # ffff <_GLOBAL_OFFSET_TABLE_+0xdddf>
    1a2e:	8f7d                	and	a4,a4,a5
    1a30:	3e800793          	li	a5,1000
    1a34:	02f70733          	mul	a4,a4,a5
    1a38:	fe043683          	ld	a3,-32(s0)
    1a3c:	3e800793          	li	a5,1000
    1a40:	02f6d7b3          	divu	a5,a3,a5
    1a44:	97ba                	add	a5,a5,a4
    1a46:	a011                	j	1a4a <_Z8get_timev+0x46>
    1a48:	57fd                	li	a5,-1
    1a4a:	853e                	mv	a0,a5
    1a4c:	70a2                	ld	ra,40(sp)
    1a4e:	7402                	ld	s0,32(sp)
    1a50:	6145                	addi	sp,sp,48
    1a52:	8082                	ret

0000000000001a54 <_Z12sys_get_timeP7TimeVali>:
    1a54:	1101                	addi	sp,sp,-32
    1a56:	ec06                	sd	ra,24(sp)
    1a58:	e822                	sd	s0,16(sp)
    1a5a:	1000                	addi	s0,sp,32
    1a5c:	fea43423          	sd	a0,-24(s0)
    1a60:	87ae                	mv	a5,a1
    1a62:	fef42223          	sw	a5,-28(s0)
    1a66:	fe843783          	ld	a5,-24(s0)
    1a6a:	fe442703          	lw	a4,-28(s0)
    1a6e:	863a                	mv	a2,a4
    1a70:	85be                	mv	a1,a5
    1a72:	0a900513          	li	a0,169
    1a76:	c2bff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1a7a:	87aa                	mv	a5,a0
    1a7c:	2781                	sext.w	a5,a5
    1a7e:	853e                	mv	a0,a5
    1a80:	60e2                	ld	ra,24(sp)
    1a82:	6442                	ld	s0,16(sp)
    1a84:	6105                	addi	sp,sp,32
    1a86:	8082                	ret

0000000000001a88 <_Z4timePm>:
    1a88:	1101                	addi	sp,sp,-32
    1a8a:	ec06                	sd	ra,24(sp)
    1a8c:	e822                	sd	s0,16(sp)
    1a8e:	1000                	addi	s0,sp,32
    1a90:	fea43423          	sd	a0,-24(s0)
    1a94:	fe843783          	ld	a5,-24(s0)
    1a98:	85be                	mv	a1,a5
    1a9a:	42600513          	li	a0,1062
    1a9e:	bdfff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1aa2:	87aa                	mv	a5,a0
    1aa4:	2781                	sext.w	a5,a5
    1aa6:	853e                	mv	a0,a5
    1aa8:	60e2                	ld	ra,24(sp)
    1aaa:	6442                	ld	s0,16(sp)
    1aac:	6105                	addi	sp,sp,32
    1aae:	8082                	ret

0000000000001ab0 <_Z5sleepy>:
    1ab0:	7179                	addi	sp,sp,-48
    1ab2:	f406                	sd	ra,40(sp)
    1ab4:	f022                	sd	s0,32(sp)
    1ab6:	1800                	addi	s0,sp,48
    1ab8:	fca43c23          	sd	a0,-40(s0)
    1abc:	fe043023          	sd	zero,-32(s0)
    1ac0:	fe043423          	sd	zero,-24(s0)
    1ac4:	fd843783          	ld	a5,-40(s0)
    1ac8:	fef43023          	sd	a5,-32(s0)
    1acc:	fe040793          	addi	a5,s0,-32
    1ad0:	fe040713          	addi	a4,s0,-32
    1ad4:	863a                	mv	a2,a4
    1ad6:	85be                	mv	a1,a5
    1ad8:	06500513          	li	a0,101
    1adc:	bc5ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1ae0:	87aa                	mv	a5,a0
    1ae2:	00f037b3          	snez	a5,a5
    1ae6:	0ff7f793          	zext.b	a5,a5
    1aea:	c789                	beqz	a5,1af4 <_Z5sleepy+0x44>
    1aec:	fe043783          	ld	a5,-32(s0)
    1af0:	2781                	sext.w	a5,a5
    1af2:	a011                	j	1af6 <_Z5sleepy+0x46>
    1af4:	4781                	li	a5,0
    1af6:	853e                	mv	a0,a5
    1af8:	70a2                	ld	ra,40(sp)
    1afa:	7402                	ld	s0,32(sp)
    1afc:	6145                	addi	sp,sp,48
    1afe:	8082                	ret

0000000000001b00 <_Z12set_priorityi>:
    1b00:	1101                	addi	sp,sp,-32
    1b02:	ec06                	sd	ra,24(sp)
    1b04:	e822                	sd	s0,16(sp)
    1b06:	1000                	addi	s0,sp,32
    1b08:	87aa                	mv	a5,a0
    1b0a:	fef42623          	sw	a5,-20(s0)
    1b0e:	fec42783          	lw	a5,-20(s0)
    1b12:	85be                	mv	a1,a5
    1b14:	08c00513          	li	a0,140
    1b18:	b65ff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1b1c:	87aa                	mv	a5,a0
    1b1e:	2781                	sext.w	a5,a5
    1b20:	853e                	mv	a0,a5
    1b22:	60e2                	ld	ra,24(sp)
    1b24:	6442                	ld	s0,16(sp)
    1b26:	6105                	addi	sp,sp,32
    1b28:	8082                	ret

0000000000001b2a <_Z6munmapPvy>:
    1b2a:	1101                	addi	sp,sp,-32
    1b2c:	ec06                	sd	ra,24(sp)
    1b2e:	e822                	sd	s0,16(sp)
    1b30:	1000                	addi	s0,sp,32
    1b32:	fea43423          	sd	a0,-24(s0)
    1b36:	feb43023          	sd	a1,-32(s0)
    1b3a:	fe843783          	ld	a5,-24(s0)
    1b3e:	fe043703          	ld	a4,-32(s0)
    1b42:	863a                	mv	a2,a4
    1b44:	85be                	mv	a1,a5
    1b46:	0d700513          	li	a0,215
    1b4a:	b57ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1b4e:	87aa                	mv	a5,a0
    1b50:	2781                	sext.w	a5,a5
    1b52:	853e                	mv	a0,a5
    1b54:	60e2                	ld	ra,24(sp)
    1b56:	6442                	ld	s0,16(sp)
    1b58:	6105                	addi	sp,sp,32
    1b5a:	8082                	ret

0000000000001b5c <_Z4waitPi>:
    1b5c:	1101                	addi	sp,sp,-32
    1b5e:	ec06                	sd	ra,24(sp)
    1b60:	e822                	sd	s0,16(sp)
    1b62:	1000                	addi	s0,sp,32
    1b64:	fea43423          	sd	a0,-24(s0)
    1b68:	4601                	li	a2,0
    1b6a:	fe843583          	ld	a1,-24(s0)
    1b6e:	557d                	li	a0,-1
    1b70:	dcbff0ef          	jal	ra,193a <_Z7waitpidiPii>
    1b74:	87aa                	mv	a5,a0
    1b76:	853e                	mv	a0,a5
    1b78:	60e2                	ld	ra,24(sp)
    1b7a:	6442                	ld	s0,16(sp)
    1b7c:	6105                	addi	sp,sp,32
    1b7e:	8082                	ret

0000000000001b80 <_Z5spawnPc>:
    1b80:	1101                	addi	sp,sp,-32
    1b82:	ec06                	sd	ra,24(sp)
    1b84:	e822                	sd	s0,16(sp)
    1b86:	1000                	addi	s0,sp,32
    1b88:	fea43423          	sd	a0,-24(s0)
    1b8c:	fe843783          	ld	a5,-24(s0)
    1b90:	85be                	mv	a1,a5
    1b92:	19000513          	li	a0,400
    1b96:	ae7ff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1b9a:	87aa                	mv	a5,a0
    1b9c:	2781                	sext.w	a5,a5
    1b9e:	853e                	mv	a0,a5
    1ba0:	60e2                	ld	ra,24(sp)
    1ba2:	6442                	ld	s0,16(sp)
    1ba4:	6105                	addi	sp,sp,32
    1ba6:	8082                	ret

0000000000001ba8 <_Z8mailreadPvi>:
    1ba8:	1101                	addi	sp,sp,-32
    1baa:	ec06                	sd	ra,24(sp)
    1bac:	e822                	sd	s0,16(sp)
    1bae:	1000                	addi	s0,sp,32
    1bb0:	fea43423          	sd	a0,-24(s0)
    1bb4:	87ae                	mv	a5,a1
    1bb6:	fef42223          	sw	a5,-28(s0)
    1bba:	fe843783          	ld	a5,-24(s0)
    1bbe:	fe442703          	lw	a4,-28(s0)
    1bc2:	863a                	mv	a2,a4
    1bc4:	85be                	mv	a1,a5
    1bc6:	19100513          	li	a0,401
    1bca:	ad7ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1bce:	87aa                	mv	a5,a0
    1bd0:	2781                	sext.w	a5,a5
    1bd2:	853e                	mv	a0,a5
    1bd4:	60e2                	ld	ra,24(sp)
    1bd6:	6442                	ld	s0,16(sp)
    1bd8:	6105                	addi	sp,sp,32
    1bda:	8082                	ret

0000000000001bdc <_Z9mailwriteiPvi>:
    1bdc:	1101                	addi	sp,sp,-32
    1bde:	ec06                	sd	ra,24(sp)
    1be0:	e822                	sd	s0,16(sp)
    1be2:	1000                	addi	s0,sp,32
    1be4:	87aa                	mv	a5,a0
    1be6:	feb43023          	sd	a1,-32(s0)
    1bea:	8732                	mv	a4,a2
    1bec:	fef42623          	sw	a5,-20(s0)
    1bf0:	87ba                	mv	a5,a4
    1bf2:	fef42423          	sw	a5,-24(s0)
    1bf6:	fec42783          	lw	a5,-20(s0)
    1bfa:	fe043703          	ld	a4,-32(s0)
    1bfe:	fe842683          	lw	a3,-24(s0)
    1c02:	863a                	mv	a2,a4
    1c04:	85be                	mv	a1,a5
    1c06:	19200513          	li	a0,402
    1c0a:	ac3ff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1c0e:	87aa                	mv	a5,a0
    1c10:	2781                	sext.w	a5,a5
    1c12:	853e                	mv	a0,a5
    1c14:	60e2                	ld	ra,24(sp)
    1c16:	6442                	ld	s0,16(sp)
    1c18:	6105                	addi	sp,sp,32
    1c1a:	8082                	ret

0000000000001c1c <_Z5fstatiP5kstat>:
    1c1c:	1101                	addi	sp,sp,-32
    1c1e:	ec06                	sd	ra,24(sp)
    1c20:	e822                	sd	s0,16(sp)
    1c22:	1000                	addi	s0,sp,32
    1c24:	87aa                	mv	a5,a0
    1c26:	feb43023          	sd	a1,-32(s0)
    1c2a:	fef42623          	sw	a5,-20(s0)
    1c2e:	fec42783          	lw	a5,-20(s0)
    1c32:	fe043703          	ld	a4,-32(s0)
    1c36:	863a                	mv	a2,a4
    1c38:	85be                	mv	a1,a5
    1c3a:	05000513          	li	a0,80
    1c3e:	a63ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1c42:	87aa                	mv	a5,a0
    1c44:	2781                	sext.w	a5,a5
    1c46:	853e                	mv	a0,a5
    1c48:	60e2                	ld	ra,24(sp)
    1c4a:	6442                	ld	s0,16(sp)
    1c4c:	6105                	addi	sp,sp,32
    1c4e:	8082                	ret

0000000000001c50 <_Z10sys_linkatiPciS_j>:
    1c50:	7179                	addi	sp,sp,-48
    1c52:	f406                	sd	ra,40(sp)
    1c54:	f022                	sd	s0,32(sp)
    1c56:	1800                	addi	s0,sp,48
    1c58:	87aa                	mv	a5,a0
    1c5a:	feb43023          	sd	a1,-32(s0)
    1c5e:	fcd43c23          	sd	a3,-40(s0)
    1c62:	fef42623          	sw	a5,-20(s0)
    1c66:	87b2                	mv	a5,a2
    1c68:	fef42423          	sw	a5,-24(s0)
    1c6c:	87ba                	mv	a5,a4
    1c6e:	fcf42a23          	sw	a5,-44(s0)
    1c72:	fec42583          	lw	a1,-20(s0)
    1c76:	fe043603          	ld	a2,-32(s0)
    1c7a:	fe842683          	lw	a3,-24(s0)
    1c7e:	fd843703          	ld	a4,-40(s0)
    1c82:	fd446783          	lwu	a5,-44(s0)
    1c86:	02500513          	li	a0,37
    1c8a:	ab3ff0ef          	jal	ra,173c <_ZL10__syscall5llllll>
    1c8e:	87aa                	mv	a5,a0
    1c90:	2781                	sext.w	a5,a5
    1c92:	853e                	mv	a0,a5
    1c94:	70a2                	ld	ra,40(sp)
    1c96:	7402                	ld	s0,32(sp)
    1c98:	6145                	addi	sp,sp,48
    1c9a:	8082                	ret

0000000000001c9c <_Z12sys_unlinkatiPcj>:
    1c9c:	1101                	addi	sp,sp,-32
    1c9e:	ec06                	sd	ra,24(sp)
    1ca0:	e822                	sd	s0,16(sp)
    1ca2:	1000                	addi	s0,sp,32
    1ca4:	87aa                	mv	a5,a0
    1ca6:	feb43023          	sd	a1,-32(s0)
    1caa:	8732                	mv	a4,a2
    1cac:	fef42623          	sw	a5,-20(s0)
    1cb0:	87ba                	mv	a5,a4
    1cb2:	fef42423          	sw	a5,-24(s0)
    1cb6:	fec42783          	lw	a5,-20(s0)
    1cba:	fe043703          	ld	a4,-32(s0)
    1cbe:	fe846683          	lwu	a3,-24(s0)
    1cc2:	863a                	mv	a2,a4
    1cc4:	85be                	mv	a1,a5
    1cc6:	02300513          	li	a0,35
    1cca:	a03ff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1cce:	87aa                	mv	a5,a0
    1cd0:	2781                	sext.w	a5,a5
    1cd2:	853e                	mv	a0,a5
    1cd4:	60e2                	ld	ra,24(sp)
    1cd6:	6442                	ld	s0,16(sp)
    1cd8:	6105                	addi	sp,sp,32
    1cda:	8082                	ret

0000000000001cdc <_Z4linkPcS_>:
    1cdc:	1101                	addi	sp,sp,-32
    1cde:	ec06                	sd	ra,24(sp)
    1ce0:	e822                	sd	s0,16(sp)
    1ce2:	1000                	addi	s0,sp,32
    1ce4:	fea43423          	sd	a0,-24(s0)
    1ce8:	feb43023          	sd	a1,-32(s0)
    1cec:	4701                	li	a4,0
    1cee:	fe043683          	ld	a3,-32(s0)
    1cf2:	f9c00613          	li	a2,-100
    1cf6:	fe843583          	ld	a1,-24(s0)
    1cfa:	f9c00513          	li	a0,-100
    1cfe:	f53ff0ef          	jal	ra,1c50 <_Z10sys_linkatiPciS_j>
    1d02:	87aa                	mv	a5,a0
    1d04:	853e                	mv	a0,a5
    1d06:	60e2                	ld	ra,24(sp)
    1d08:	6442                	ld	s0,16(sp)
    1d0a:	6105                	addi	sp,sp,32
    1d0c:	8082                	ret

0000000000001d0e <_Z6unlinkPc>:
    1d0e:	1101                	addi	sp,sp,-32
    1d10:	ec06                	sd	ra,24(sp)
    1d12:	e822                	sd	s0,16(sp)
    1d14:	1000                	addi	s0,sp,32
    1d16:	fea43423          	sd	a0,-24(s0)
    1d1a:	4601                	li	a2,0
    1d1c:	fe843583          	ld	a1,-24(s0)
    1d20:	f9c00513          	li	a0,-100
    1d24:	f79ff0ef          	jal	ra,1c9c <_Z12sys_unlinkatiPcj>
    1d28:	87aa                	mv	a5,a0
    1d2a:	853e                	mv	a0,a5
    1d2c:	60e2                	ld	ra,24(sp)
    1d2e:	6442                	ld	s0,16(sp)
    1d30:	6105                	addi	sp,sp,32
    1d32:	8082                	ret

0000000000001d34 <_Z5unamePv>:
    1d34:	1101                	addi	sp,sp,-32
    1d36:	ec06                	sd	ra,24(sp)
    1d38:	e822                	sd	s0,16(sp)
    1d3a:	1000                	addi	s0,sp,32
    1d3c:	fea43423          	sd	a0,-24(s0)
    1d40:	fe843783          	ld	a5,-24(s0)
    1d44:	85be                	mv	a1,a5
    1d46:	0a000513          	li	a0,160
    1d4a:	933ff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1d4e:	87aa                	mv	a5,a0
    1d50:	2781                	sext.w	a5,a5
    1d52:	853e                	mv	a0,a5
    1d54:	60e2                	ld	ra,24(sp)
    1d56:	6442                	ld	s0,16(sp)
    1d58:	6105                	addi	sp,sp,32
    1d5a:	8082                	ret

0000000000001d5c <_Z3brkPv>:
    1d5c:	1101                	addi	sp,sp,-32
    1d5e:	ec06                	sd	ra,24(sp)
    1d60:	e822                	sd	s0,16(sp)
    1d62:	1000                	addi	s0,sp,32
    1d64:	fea43423          	sd	a0,-24(s0)
    1d68:	fe843783          	ld	a5,-24(s0)
    1d6c:	85be                	mv	a1,a5
    1d6e:	0d600513          	li	a0,214
    1d72:	90bff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1d76:	87aa                	mv	a5,a0
    1d78:	2781                	sext.w	a5,a5
    1d7a:	853e                	mv	a0,a5
    1d7c:	60e2                	ld	ra,24(sp)
    1d7e:	6442                	ld	s0,16(sp)
    1d80:	6105                	addi	sp,sp,32
    1d82:	8082                	ret

0000000000001d84 <_Z5chdirPKc>:
    1d84:	1101                	addi	sp,sp,-32
    1d86:	ec06                	sd	ra,24(sp)
    1d88:	e822                	sd	s0,16(sp)
    1d8a:	1000                	addi	s0,sp,32
    1d8c:	fea43423          	sd	a0,-24(s0)
    1d90:	fe843783          	ld	a5,-24(s0)
    1d94:	85be                	mv	a1,a5
    1d96:	03100513          	li	a0,49
    1d9a:	8e3ff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1d9e:	87aa                	mv	a5,a0
    1da0:	2781                	sext.w	a5,a5
    1da2:	853e                	mv	a0,a5
    1da4:	60e2                	ld	ra,24(sp)
    1da6:	6442                	ld	s0,16(sp)
    1da8:	6105                	addi	sp,sp,32
    1daa:	8082                	ret

0000000000001dac <_Z5mkdirPKcj>:
    1dac:	1101                	addi	sp,sp,-32
    1dae:	ec06                	sd	ra,24(sp)
    1db0:	e822                	sd	s0,16(sp)
    1db2:	1000                	addi	s0,sp,32
    1db4:	fea43423          	sd	a0,-24(s0)
    1db8:	87ae                	mv	a5,a1
    1dba:	fef42223          	sw	a5,-28(s0)
    1dbe:	fe843783          	ld	a5,-24(s0)
    1dc2:	fe446703          	lwu	a4,-28(s0)
    1dc6:	86ba                	mv	a3,a4
    1dc8:	863e                	mv	a2,a5
    1dca:	f9c00593          	li	a1,-100
    1dce:	02200513          	li	a0,34
    1dd2:	8fbff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1dd6:	87aa                	mv	a5,a0
    1dd8:	2781                	sext.w	a5,a5
    1dda:	853e                	mv	a0,a5
    1ddc:	60e2                	ld	ra,24(sp)
    1dde:	6442                	ld	s0,16(sp)
    1de0:	6105                	addi	sp,sp,32
    1de2:	8082                	ret

0000000000001de4 <_Z8getdentsiP14linux_dirent64m>:
    1de4:	7179                	addi	sp,sp,-48
    1de6:	f406                	sd	ra,40(sp)
    1de8:	f022                	sd	s0,32(sp)
    1dea:	1800                	addi	s0,sp,48
    1dec:	87aa                	mv	a5,a0
    1dee:	feb43023          	sd	a1,-32(s0)
    1df2:	fcc43c23          	sd	a2,-40(s0)
    1df6:	fef42623          	sw	a5,-20(s0)
    1dfa:	fec42783          	lw	a5,-20(s0)
    1dfe:	fe043703          	ld	a4,-32(s0)
    1e02:	fd843683          	ld	a3,-40(s0)
    1e06:	863a                	mv	a2,a4
    1e08:	85be                	mv	a1,a5
    1e0a:	03d00513          	li	a0,61
    1e0e:	8bfff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1e12:	87aa                	mv	a5,a0
    1e14:	2781                	sext.w	a5,a5
    1e16:	853e                	mv	a0,a5
    1e18:	70a2                	ld	ra,40(sp)
    1e1a:	7402                	ld	s0,32(sp)
    1e1c:	6145                	addi	sp,sp,48
    1e1e:	8082                	ret

0000000000001e20 <_Z4pipePi>:
    1e20:	1101                	addi	sp,sp,-32
    1e22:	ec06                	sd	ra,24(sp)
    1e24:	e822                	sd	s0,16(sp)
    1e26:	1000                	addi	s0,sp,32
    1e28:	fea43423          	sd	a0,-24(s0)
    1e2c:	fe843783          	ld	a5,-24(s0)
    1e30:	4601                	li	a2,0
    1e32:	85be                	mv	a1,a5
    1e34:	03b00513          	li	a0,59
    1e38:	869ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1e3c:	87aa                	mv	a5,a0
    1e3e:	2781                	sext.w	a5,a5
    1e40:	853e                	mv	a0,a5
    1e42:	60e2                	ld	ra,24(sp)
    1e44:	6442                	ld	s0,16(sp)
    1e46:	6105                	addi	sp,sp,32
    1e48:	8082                	ret

0000000000001e4a <_Z3dupi>:
    1e4a:	1101                	addi	sp,sp,-32
    1e4c:	ec06                	sd	ra,24(sp)
    1e4e:	e822                	sd	s0,16(sp)
    1e50:	1000                	addi	s0,sp,32
    1e52:	87aa                	mv	a5,a0
    1e54:	fef42623          	sw	a5,-20(s0)
    1e58:	fec42783          	lw	a5,-20(s0)
    1e5c:	85be                	mv	a1,a5
    1e5e:	455d                	li	a0,23
    1e60:	81dff0ef          	jal	ra,167c <_ZL10__syscall1ll>
    1e64:	87aa                	mv	a5,a0
    1e66:	2781                	sext.w	a5,a5
    1e68:	853e                	mv	a0,a5
    1e6a:	60e2                	ld	ra,24(sp)
    1e6c:	6442                	ld	s0,16(sp)
    1e6e:	6105                	addi	sp,sp,32
    1e70:	8082                	ret

0000000000001e72 <_Z4dup2ii>:
    1e72:	1101                	addi	sp,sp,-32
    1e74:	ec06                	sd	ra,24(sp)
    1e76:	e822                	sd	s0,16(sp)
    1e78:	1000                	addi	s0,sp,32
    1e7a:	87aa                	mv	a5,a0
    1e7c:	872e                	mv	a4,a1
    1e7e:	fef42623          	sw	a5,-20(s0)
    1e82:	87ba                	mv	a5,a4
    1e84:	fef42423          	sw	a5,-24(s0)
    1e88:	fec42783          	lw	a5,-20(s0)
    1e8c:	fe842703          	lw	a4,-24(s0)
    1e90:	4681                	li	a3,0
    1e92:	863a                	mv	a2,a4
    1e94:	85be                	mv	a1,a5
    1e96:	4561                	li	a0,24
    1e98:	835ff0ef          	jal	ra,16cc <_ZL10__syscall3llll>
    1e9c:	87aa                	mv	a5,a0
    1e9e:	2781                	sext.w	a5,a5
    1ea0:	853e                	mv	a0,a5
    1ea2:	60e2                	ld	ra,24(sp)
    1ea4:	6442                	ld	s0,16(sp)
    1ea6:	6105                	addi	sp,sp,32
    1ea8:	8082                	ret

0000000000001eaa <_Z5mountPKcS0_S0_mPKv>:
    1eaa:	7139                	addi	sp,sp,-64
    1eac:	fc06                	sd	ra,56(sp)
    1eae:	f822                	sd	s0,48(sp)
    1eb0:	0080                	addi	s0,sp,64
    1eb2:	fea43423          	sd	a0,-24(s0)
    1eb6:	feb43023          	sd	a1,-32(s0)
    1eba:	fcc43c23          	sd	a2,-40(s0)
    1ebe:	fcd43823          	sd	a3,-48(s0)
    1ec2:	fce43423          	sd	a4,-56(s0)
    1ec6:	fe843583          	ld	a1,-24(s0)
    1eca:	fe043603          	ld	a2,-32(s0)
    1ece:	fd843683          	ld	a3,-40(s0)
    1ed2:	fd043703          	ld	a4,-48(s0)
    1ed6:	fc843783          	ld	a5,-56(s0)
    1eda:	02800513          	li	a0,40
    1ede:	85fff0ef          	jal	ra,173c <_ZL10__syscall5llllll>
    1ee2:	87aa                	mv	a5,a0
    1ee4:	2781                	sext.w	a5,a5
    1ee6:	853e                	mv	a0,a5
    1ee8:	70e2                	ld	ra,56(sp)
    1eea:	7442                	ld	s0,48(sp)
    1eec:	6121                	addi	sp,sp,64
    1eee:	8082                	ret

0000000000001ef0 <_Z6umountPKc>:
    1ef0:	1101                	addi	sp,sp,-32
    1ef2:	ec06                	sd	ra,24(sp)
    1ef4:	e822                	sd	s0,16(sp)
    1ef6:	1000                	addi	s0,sp,32
    1ef8:	fea43423          	sd	a0,-24(s0)
    1efc:	fe843783          	ld	a5,-24(s0)
    1f00:	4601                	li	a2,0
    1f02:	85be                	mv	a1,a5
    1f04:	02700513          	li	a0,39
    1f08:	f98ff0ef          	jal	ra,16a0 <_ZL10__syscall2lll>
    1f0c:	87aa                	mv	a5,a0
    1f0e:	2781                	sext.w	a5,a5
    1f10:	853e                	mv	a0,a5
    1f12:	60e2                	ld	ra,24(sp)
    1f14:	6442                	ld	s0,16(sp)
    1f16:	6105                	addi	sp,sp,32
    1f18:	8082                	ret

Disassembly of section .interp:

0000000000001f1a <.interp>:
    1f1a:	62696c2f          	.4byte	0x62696c2f
    1f1e:	2d646c2f          	.4byte	0x2d646c2f
    1f22:	696c                	ld	a1,208(a0)
    1f24:	756e                	ld	a0,248(sp)
    1f26:	2d78                	fld	fa4,216(a0)
    1f28:	6972                	ld	s2,280(sp)
    1f2a:	36766373          	csrrsi	t1,0x367,12
    1f2e:	2d34                	fld	fa3,88(a0)
    1f30:	706c                	ld	a1,224(s0)
    1f32:	3436                	fld	fs0,360(sp)
    1f34:	2e64                	fld	fs1,216(a2)
    1f36:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000000001f3c <.note.gnu.build-id>:
    1f3c:	0004                	.2byte	0x4
    1f3e:	0000                	unimp
    1f40:	0014                	.2byte	0x14
    1f42:	0000                	unimp
    1f44:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x1000>
    1f48:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    1f4c:	afdd                	j	2742 <_GLOBAL_OFFSET_TABLE_+0x522>
    1f4e:	d122                	sw	s0,160(sp)
    1f50:	53d73a1b          	.4byte	0x53d73a1b
    1f54:	896e                	mv	s2,s11
    1f56:	d5c2                	sw	a6,232(sp)
    1f58:	d4779f37          	lui	t5,0xd4779
    1f5c:	e74c                	sd	a1,136(a4)
    1f5e:	3941                	addiw	s2,s2,-16

Disassembly of section .dynsym:

0000000000001f60 <.dynsym>:
	...
    1f7c:	00010003          	lb	zero,0(sp)
    1f80:	1000                	addi	s0,sp,32
	...

Disassembly of section .dynstr:

0000000000001f90 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000000001f98 <.gnu.hash>:
    1f98:	0001                	nop
    1f9a:	0000                	unimp
    1f9c:	0001                	nop
    1f9e:	0000                	unimp
    1fa0:	0001                	nop
	...

Disassembly of section .bss:

0000000000001fb8 <buf>:
	...

Disassembly of section .data:

0000000000002080 <_ZL6digits>:
    2080:	3130                	fld	fa2,96(a0)
    2082:	3332                	fld	ft6,296(sp)
    2084:	3534                	fld	fa3,104(a0)
    2086:	3736                	fld	fa4,360(sp)
    2088:	3938                	fld	fa4,112(a0)
    208a:	6261                	lui	tp,0x18
    208c:	66656463          	bltu	a0,t1,26f4 <_GLOBAL_OFFSET_TABLE_+0x4d4>
	...

0000000000002098 <nuclear>:
    2098:	7566                	ld	a0,120(sp)
    209a:	6e6f6973          	csrrsi	s2,0x6e6,30
    209e:	000a                	c.slli	zero,0x2
    20a0:	6e28                	ld	a0,88(a2)
    20a2:	6c75                	lui	s8,0x1d
    20a4:	296c                	fld	fa1,208(a0)
    20a6:	0000                	unimp
    20a8:	6572                	ld	a0,280(sp)
    20aa:	6c61                	lui	s8,0x18
    20ac:	7320                	ld	s0,96(a4)
    20ae:	6568                	ld	a0,200(a0)
    20b0:	6c6c                	ld	a1,216(s0)
    20b2:	7320                	ld	s0,96(a4)
    20b4:	6174                	ld	a3,192(a0)
    20b6:	6572                	ld	a0,280(sp)
    20b8:	2164                	fld	fs1,192(a0)
    20ba:	000a                	c.slli	zero,0x2
    20bc:	0000                	unimp
    20be:	0000                	unimp
    20c0:	6c656873          	csrrsi	a6,0x6c6,10
    20c4:	206c                	fld	fa1,192(s0)
    20c6:	6425                	lui	s0,0x9
    20c8:	6c2c                	ld	a1,88(s0)
    20ca:	6e69                	lui	t3,0x1a
    20cc:	2065                	.2byte	0x2065
    20ce:	6425                	lui	s0,0x9
    20d0:	003e                	c.slli	zero,0xf
    20d2:	0000                	unimp
    20d4:	0000                	unimp
    20d6:	0000                	unimp
    20d8:	2008                	fld	fa0,0(s0)
    20da:	0008                	.2byte	0x8
    20dc:	0000                	unimp
    20de:	0000                	unimp
    20e0:	000a                	c.slli	zero,0x2
    20e2:	0000                	unimp
    20e4:	0000                	unimp
    20e6:	0000                	unimp
    20e8:	7865                	lui	a6,0xffff9
    20ea:	7469                	lui	s0,0xffffa
    20ec:	0000                	unimp
    20ee:	0000                	unimp
    20f0:	6979                	lui	s2,0x1e
    20f2:	6c65                	lui	s8,0x19
    20f4:	0064                	addi	s1,sp,12
    20f6:	0000                	unimp
    20f8:	6e6e6f63          	bltu	t3,t1,27f6 <_GLOBAL_OFFSET_TABLE_+0x5d6>
    20fc:	6520746f          	jal	s0,974e <_GLOBAL_OFFSET_TABLE_+0x752e>
    2100:	6378                	ld	a4,192(a4)
    2102:	7475                	lui	s0,0xffffd
    2104:	2065                	.2byte	0x2065
    2106:	7325                	lui	t1,0xfffe9
    2108:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

0000000000002110 <.dynamic>:
    2110:	fef5                	bnez	a3,210c <nuclear+0x74>
    2112:	6fff                	.2byte	0x6fff
    2114:	0000                	unimp
    2116:	0000                	unimp
    2118:	1f98                	addi	a4,sp,1008
    211a:	0000                	unimp
    211c:	0000                	unimp
    211e:	0000                	unimp
    2120:	0005                	c.nop	1
    2122:	0000                	unimp
    2124:	0000                	unimp
    2126:	0000                	unimp
    2128:	1f90                	addi	a2,sp,1008
    212a:	0000                	unimp
    212c:	0000                	unimp
    212e:	0000                	unimp
    2130:	0006                	c.slli	zero,0x1
    2132:	0000                	unimp
    2134:	0000                	unimp
    2136:	0000                	unimp
    2138:	1f60                	addi	s0,sp,956
    213a:	0000                	unimp
    213c:	0000                	unimp
    213e:	0000                	unimp
    2140:	000a                	c.slli	zero,0x2
    2142:	0000                	unimp
    2144:	0000                	unimp
    2146:	0000                	unimp
    2148:	0001                	nop
    214a:	0000                	unimp
    214c:	0000                	unimp
    214e:	0000                	unimp
    2150:	0000000b          	.4byte	0xb
    2154:	0000                	unimp
    2156:	0000                	unimp
    2158:	0018                	.2byte	0x18
    215a:	0000                	unimp
    215c:	0000                	unimp
    215e:	0000                	unimp
    2160:	0015                	c.nop	5
	...
    216e:	0000                	unimp
    2170:	00000007          	.4byte	0x7
	...
    2180:	0008                	.2byte	0x8
	...
    218e:	0000                	unimp
    2190:	0009                	c.nop	2
    2192:	0000                	unimp
    2194:	0000                	unimp
    2196:	0000                	unimp
    2198:	0018                	.2byte	0x18
    219a:	0000                	unimp
    219c:	0000                	unimp
    219e:	0000                	unimp
    21a0:	001e                	c.slli	zero,0x7
    21a2:	0000                	unimp
    21a4:	0000                	unimp
    21a6:	0000                	unimp
    21a8:	0008                	.2byte	0x8
    21aa:	0000                	unimp
    21ac:	0000                	unimp
    21ae:	0000                	unimp
    21b0:	6ffffffb          	.4byte	0x6ffffffb
    21b4:	0000                	unimp
    21b6:	0000                	unimp
    21b8:	0001                	nop
    21ba:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000000002220 <.got>:
    2220:	2110                	fld	fa2,0(a0)
    2222:	0000                	unimp
    2224:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_GLOBAL_OFFSET_TABLE_+0x1adec>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_GLOBAL_OFFSET_TABLE_+0x12dd0>
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xfffffffffffdeddb>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

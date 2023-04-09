
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000080400000 <_start>:
    80400000:	a1e5                	j	804004e8 <main>

0000000080400002 <_Z7getcharv>:
    80400002:	1101                	addi	sp,sp,-32
    80400004:	ec06                	sd	ra,24(sp)
    80400006:	e822                	sd	s0,16(sp)
    80400008:	1000                	addi	s0,sp,32
    8040000a:	fef40793          	addi	a5,s0,-17
    8040000e:	0e900613          	li	a2,233
    80400012:	85be                	mv	a1,a5
    80400014:	4501                	li	a0,0
    80400016:	00d000ef          	jal	ra,80400822 <_Z4readiPvy>
    8040001a:	fef44783          	lbu	a5,-17(s0)
    8040001e:	853e                	mv	a0,a5
    80400020:	60e2                	ld	ra,24(sp)
    80400022:	6442                	ld	s0,16(sp)
    80400024:	6105                	addi	sp,sp,32
    80400026:	8082                	ret

0000000080400028 <_Z7putcharc>:
    80400028:	1101                	addi	sp,sp,-32
    8040002a:	ec06                	sd	ra,24(sp)
    8040002c:	e822                	sd	s0,16(sp)
    8040002e:	1000                	addi	s0,sp,32
    80400030:	87aa                	mv	a5,a0
    80400032:	fef407a3          	sb	a5,-17(s0)
    80400036:	fef40793          	addi	a5,s0,-17
    8040003a:	4605                	li	a2,1
    8040003c:	85be                	mv	a1,a5
    8040003e:	4505                	li	a0,1
    80400040:	01d000ef          	jal	ra,8040085c <_Z5writeiPKvy>
    80400044:	0001                	nop
    80400046:	60e2                	ld	ra,24(sp)
    80400048:	6442                	ld	s0,16(sp)
    8040004a:	6105                	addi	sp,sp,32
    8040004c:	8082                	ret

000000008040004e <_Z6putstrPc>:
    8040004e:	1101                	addi	sp,sp,-32
    80400050:	ec06                	sd	ra,24(sp)
    80400052:	e822                	sd	s0,16(sp)
    80400054:	1000                	addi	s0,sp,32
    80400056:	fea43423          	sd	a0,-24(s0)
    8040005a:	a829                	j	80400074 <_Z6putstrPc+0x26>
    8040005c:	fe843783          	ld	a5,-24(s0)
    80400060:	0007c783          	lbu	a5,0(a5)
    80400064:	853e                	mv	a0,a5
    80400066:	fc3ff0ef          	jal	ra,80400028 <_Z7putcharc>
    8040006a:	fe843783          	ld	a5,-24(s0)
    8040006e:	0785                	addi	a5,a5,1
    80400070:	fef43423          	sd	a5,-24(s0)
    80400074:	fe843783          	ld	a5,-24(s0)
    80400078:	0007c783          	lbu	a5,0(a5)
    8040007c:	f3e5                	bnez	a5,8040005c <_Z6putstrPc+0xe>
    8040007e:	0001                	nop
    80400080:	0001                	nop
    80400082:	60e2                	ld	ra,24(sp)
    80400084:	6442                	ld	s0,16(sp)
    80400086:	6105                	addi	sp,sp,32
    80400088:	8082                	ret

000000008040008a <_ZL8printintiii>:
    8040008a:	7139                	addi	sp,sp,-64
    8040008c:	fc06                	sd	ra,56(sp)
    8040008e:	f822                	sd	s0,48(sp)
    80400090:	0080                	addi	s0,sp,64
    80400092:	87aa                	mv	a5,a0
    80400094:	86ae                	mv	a3,a1
    80400096:	8732                	mv	a4,a2
    80400098:	fcf42623          	sw	a5,-52(s0)
    8040009c:	87b6                	mv	a5,a3
    8040009e:	fcf42423          	sw	a5,-56(s0)
    804000a2:	87ba                	mv	a5,a4
    804000a4:	fcf42223          	sw	a5,-60(s0)
    804000a8:	fc442783          	lw	a5,-60(s0)
    804000ac:	2781                	sext.w	a5,a5
    804000ae:	cf99                	beqz	a5,804000cc <_ZL8printintiii+0x42>
    804000b0:	fcc42783          	lw	a5,-52(s0)
    804000b4:	01f7d79b          	srliw	a5,a5,0x1f
    804000b8:	0ff7f793          	zext.b	a5,a5
    804000bc:	fcf42223          	sw	a5,-60(s0)
    804000c0:	fc442783          	lw	a5,-60(s0)
    804000c4:	2781                	sext.w	a5,a5
    804000c6:	c399                	beqz	a5,804000cc <_ZL8printintiii+0x42>
    804000c8:	4785                	li	a5,1
    804000ca:	a011                	j	804000ce <_ZL8printintiii+0x44>
    804000cc:	4781                	li	a5,0
    804000ce:	cb89                	beqz	a5,804000e0 <_ZL8printintiii+0x56>
    804000d0:	fcc42783          	lw	a5,-52(s0)
    804000d4:	40f007bb          	negw	a5,a5
    804000d8:	2781                	sext.w	a5,a5
    804000da:	fef42423          	sw	a5,-24(s0)
    804000de:	a029                	j	804000e8 <_ZL8printintiii+0x5e>
    804000e0:	fcc42783          	lw	a5,-52(s0)
    804000e4:	fef42423          	sw	a5,-24(s0)
    804000e8:	fe042623          	sw	zero,-20(s0)
    804000ec:	fc842783          	lw	a5,-56(s0)
    804000f0:	fe842703          	lw	a4,-24(s0)
    804000f4:	02f777bb          	remuw	a5,a4,a5
    804000f8:	2781                	sext.w	a5,a5
    804000fa:	00001717          	auipc	a4,0x1
    804000fe:	f9670713          	addi	a4,a4,-106 # 80401090 <_ZL6digits>
    80400102:	1782                	slli	a5,a5,0x20
    80400104:	9381                	srli	a5,a5,0x20
    80400106:	97ba                	add	a5,a5,a4
    80400108:	0007c703          	lbu	a4,0(a5)
    8040010c:	fec42783          	lw	a5,-20(s0)
    80400110:	0017869b          	addiw	a3,a5,1
    80400114:	fed42623          	sw	a3,-20(s0)
    80400118:	17c1                	addi	a5,a5,-16
    8040011a:	97a2                	add	a5,a5,s0
    8040011c:	fee78423          	sb	a4,-24(a5)
    80400120:	fc842783          	lw	a5,-56(s0)
    80400124:	fe842703          	lw	a4,-24(s0)
    80400128:	02f757bb          	divuw	a5,a4,a5
    8040012c:	fef42423          	sw	a5,-24(s0)
    80400130:	fe842783          	lw	a5,-24(s0)
    80400134:	2781                	sext.w	a5,a5
    80400136:	00f037b3          	snez	a5,a5
    8040013a:	0ff7f793          	zext.b	a5,a5
    8040013e:	f7dd                	bnez	a5,804000ec <_ZL8printintiii+0x62>
    80400140:	fc442783          	lw	a5,-60(s0)
    80400144:	2781                	sext.w	a5,a5
    80400146:	c79d                	beqz	a5,80400174 <_ZL8printintiii+0xea>
    80400148:	fec42783          	lw	a5,-20(s0)
    8040014c:	0017871b          	addiw	a4,a5,1
    80400150:	fee42623          	sw	a4,-20(s0)
    80400154:	17c1                	addi	a5,a5,-16
    80400156:	97a2                	add	a5,a5,s0
    80400158:	02d00713          	li	a4,45
    8040015c:	fee78423          	sb	a4,-24(a5)
    80400160:	a811                	j	80400174 <_ZL8printintiii+0xea>
    80400162:	fec42783          	lw	a5,-20(s0)
    80400166:	17c1                	addi	a5,a5,-16
    80400168:	97a2                	add	a5,a5,s0
    8040016a:	fe87c783          	lbu	a5,-24(a5)
    8040016e:	853e                	mv	a0,a5
    80400170:	eb9ff0ef          	jal	ra,80400028 <_Z7putcharc>
    80400174:	fec42783          	lw	a5,-20(s0)
    80400178:	37fd                	addiw	a5,a5,-1
    8040017a:	fef42623          	sw	a5,-20(s0)
    8040017e:	fec42783          	lw	a5,-20(s0)
    80400182:	fff7c793          	not	a5,a5
    80400186:	01f7d79b          	srliw	a5,a5,0x1f
    8040018a:	0ff7f793          	zext.b	a5,a5
    8040018e:	fbf1                	bnez	a5,80400162 <_ZL8printintiii+0xd8>
    80400190:	0001                	nop
    80400192:	0001                	nop
    80400194:	70e2                	ld	ra,56(sp)
    80400196:	7442                	ld	s0,48(sp)
    80400198:	6121                	addi	sp,sp,64
    8040019a:	8082                	ret

000000008040019c <_ZL8printptry>:
    8040019c:	7179                	addi	sp,sp,-48
    8040019e:	f406                	sd	ra,40(sp)
    804001a0:	f022                	sd	s0,32(sp)
    804001a2:	1800                	addi	s0,sp,48
    804001a4:	fca43c23          	sd	a0,-40(s0)
    804001a8:	03000513          	li	a0,48
    804001ac:	e7dff0ef          	jal	ra,80400028 <_Z7putcharc>
    804001b0:	07800513          	li	a0,120
    804001b4:	e75ff0ef          	jal	ra,80400028 <_Z7putcharc>
    804001b8:	fe042623          	sw	zero,-20(s0)
    804001bc:	a805                	j	804001ec <_ZL8printptry+0x50>
    804001be:	fd843783          	ld	a5,-40(s0)
    804001c2:	93f1                	srli	a5,a5,0x3c
    804001c4:	00001717          	auipc	a4,0x1
    804001c8:	ecc70713          	addi	a4,a4,-308 # 80401090 <_ZL6digits>
    804001cc:	97ba                	add	a5,a5,a4
    804001ce:	0007c783          	lbu	a5,0(a5)
    804001d2:	853e                	mv	a0,a5
    804001d4:	e55ff0ef          	jal	ra,80400028 <_Z7putcharc>
    804001d8:	fec42783          	lw	a5,-20(s0)
    804001dc:	2785                	addiw	a5,a5,1
    804001de:	fef42623          	sw	a5,-20(s0)
    804001e2:	fd843783          	ld	a5,-40(s0)
    804001e6:	0792                	slli	a5,a5,0x4
    804001e8:	fcf43c23          	sd	a5,-40(s0)
    804001ec:	fec42703          	lw	a4,-20(s0)
    804001f0:	47bd                	li	a5,15
    804001f2:	fce7f6e3          	bgeu	a5,a4,804001be <_ZL8printptry+0x22>
    804001f6:	0001                	nop
    804001f8:	0001                	nop
    804001fa:	70a2                	ld	ra,40(sp)
    804001fc:	7402                	ld	s0,32(sp)
    804001fe:	6145                	addi	sp,sp,48
    80400200:	8082                	ret

0000000080400202 <_Z6printfPcz>:
    80400202:	7119                	addi	sp,sp,-128
    80400204:	fc06                	sd	ra,56(sp)
    80400206:	f822                	sd	s0,48(sp)
    80400208:	0080                	addi	s0,sp,64
    8040020a:	fca43423          	sd	a0,-56(s0)
    8040020e:	e40c                	sd	a1,8(s0)
    80400210:	e810                	sd	a2,16(s0)
    80400212:	ec14                	sd	a3,24(s0)
    80400214:	f018                	sd	a4,32(s0)
    80400216:	f41c                	sd	a5,40(s0)
    80400218:	03043823          	sd	a6,48(s0)
    8040021c:	03143c23          	sd	a7,56(s0)
    80400220:	04040793          	addi	a5,s0,64
    80400224:	fcf43023          	sd	a5,-64(s0)
    80400228:	fc043783          	ld	a5,-64(s0)
    8040022c:	fc878793          	addi	a5,a5,-56
    80400230:	fcf43823          	sd	a5,-48(s0)
    80400234:	fe042623          	sw	zero,-20(s0)
    80400238:	aa41                	j	804003c8 <_Z6printfPcz+0x1c6>
    8040023a:	fdc42783          	lw	a5,-36(s0)
    8040023e:	0007871b          	sext.w	a4,a5
    80400242:	02500793          	li	a5,37
    80400246:	00f70a63          	beq	a4,a5,8040025a <_Z6printfPcz+0x58>
    8040024a:	fdc42783          	lw	a5,-36(s0)
    8040024e:	0ff7f793          	zext.b	a5,a5
    80400252:	853e                	mv	a0,a5
    80400254:	dd5ff0ef          	jal	ra,80400028 <_Z7putcharc>
    80400258:	a29d                	j	804003be <_Z6printfPcz+0x1bc>
    8040025a:	fc843703          	ld	a4,-56(s0)
    8040025e:	fec42783          	lw	a5,-20(s0)
    80400262:	2785                	addiw	a5,a5,1
    80400264:	fef42623          	sw	a5,-20(s0)
    80400268:	fec42783          	lw	a5,-20(s0)
    8040026c:	97ba                	add	a5,a5,a4
    8040026e:	0007c783          	lbu	a5,0(a5)
    80400272:	fcf42e23          	sw	a5,-36(s0)
    80400276:	fdc42783          	lw	a5,-36(s0)
    8040027a:	2781                	sext.w	a5,a5
    8040027c:	16078963          	beqz	a5,804003ee <_Z6printfPcz+0x1ec>
    80400280:	fdc42783          	lw	a5,-36(s0)
    80400284:	0007871b          	sext.w	a4,a5
    80400288:	07800793          	li	a5,120
    8040028c:	08f70763          	beq	a4,a5,8040031a <_Z6printfPcz+0x118>
    80400290:	fdc42783          	lw	a5,-36(s0)
    80400294:	0007871b          	sext.w	a4,a5
    80400298:	07800793          	li	a5,120
    8040029c:	10e7c563          	blt	a5,a4,804003a6 <_Z6printfPcz+0x1a4>
    804002a0:	fdc42783          	lw	a5,-36(s0)
    804002a4:	0007871b          	sext.w	a4,a5
    804002a8:	07300793          	li	a5,115
    804002ac:	08f70f63          	beq	a4,a5,8040034a <_Z6printfPcz+0x148>
    804002b0:	fdc42783          	lw	a5,-36(s0)
    804002b4:	0007871b          	sext.w	a4,a5
    804002b8:	07300793          	li	a5,115
    804002bc:	0ee7c563          	blt	a5,a4,804003a6 <_Z6printfPcz+0x1a4>
    804002c0:	fdc42783          	lw	a5,-36(s0)
    804002c4:	0007871b          	sext.w	a4,a5
    804002c8:	07000793          	li	a5,112
    804002cc:	06f70463          	beq	a4,a5,80400334 <_Z6printfPcz+0x132>
    804002d0:	fdc42783          	lw	a5,-36(s0)
    804002d4:	0007871b          	sext.w	a4,a5
    804002d8:	07000793          	li	a5,112
    804002dc:	0ce7c563          	blt	a5,a4,804003a6 <_Z6printfPcz+0x1a4>
    804002e0:	fdc42783          	lw	a5,-36(s0)
    804002e4:	0007871b          	sext.w	a4,a5
    804002e8:	02500793          	li	a5,37
    804002ec:	0af70863          	beq	a4,a5,8040039c <_Z6printfPcz+0x19a>
    804002f0:	fdc42783          	lw	a5,-36(s0)
    804002f4:	0007871b          	sext.w	a4,a5
    804002f8:	06400793          	li	a5,100
    804002fc:	0af71563          	bne	a4,a5,804003a6 <_Z6printfPcz+0x1a4>
    80400300:	fd043783          	ld	a5,-48(s0)
    80400304:	00878713          	addi	a4,a5,8
    80400308:	fce43823          	sd	a4,-48(s0)
    8040030c:	439c                	lw	a5,0(a5)
    8040030e:	4605                	li	a2,1
    80400310:	45a9                	li	a1,10
    80400312:	853e                	mv	a0,a5
    80400314:	d77ff0ef          	jal	ra,8040008a <_ZL8printintiii>
    80400318:	a05d                	j	804003be <_Z6printfPcz+0x1bc>
    8040031a:	fd043783          	ld	a5,-48(s0)
    8040031e:	00878713          	addi	a4,a5,8
    80400322:	fce43823          	sd	a4,-48(s0)
    80400326:	439c                	lw	a5,0(a5)
    80400328:	4605                	li	a2,1
    8040032a:	45c1                	li	a1,16
    8040032c:	853e                	mv	a0,a5
    8040032e:	d5dff0ef          	jal	ra,8040008a <_ZL8printintiii>
    80400332:	a071                	j	804003be <_Z6printfPcz+0x1bc>
    80400334:	fd043783          	ld	a5,-48(s0)
    80400338:	00878713          	addi	a4,a5,8
    8040033c:	fce43823          	sd	a4,-48(s0)
    80400340:	639c                	ld	a5,0(a5)
    80400342:	853e                	mv	a0,a5
    80400344:	e59ff0ef          	jal	ra,8040019c <_ZL8printptry>
    80400348:	a89d                	j	804003be <_Z6printfPcz+0x1bc>
    8040034a:	fd043783          	ld	a5,-48(s0)
    8040034e:	00878713          	addi	a4,a5,8
    80400352:	fce43823          	sd	a4,-48(s0)
    80400356:	639c                	ld	a5,0(a5)
    80400358:	fef43023          	sd	a5,-32(s0)
    8040035c:	fe043783          	ld	a5,-32(s0)
    80400360:	0017b793          	seqz	a5,a5
    80400364:	0ff7f793          	zext.b	a5,a5
    80400368:	c785                	beqz	a5,80400390 <_Z6printfPcz+0x18e>
    8040036a:	00001797          	auipc	a5,0x1
    8040036e:	d4e78793          	addi	a5,a5,-690 # 804010b8 <b+0x4>
    80400372:	fef43023          	sd	a5,-32(s0)
    80400376:	a829                	j	80400390 <_Z6printfPcz+0x18e>
    80400378:	fe043783          	ld	a5,-32(s0)
    8040037c:	0007c783          	lbu	a5,0(a5)
    80400380:	853e                	mv	a0,a5
    80400382:	ca7ff0ef          	jal	ra,80400028 <_Z7putcharc>
    80400386:	fe043783          	ld	a5,-32(s0)
    8040038a:	0785                	addi	a5,a5,1
    8040038c:	fef43023          	sd	a5,-32(s0)
    80400390:	fe043783          	ld	a5,-32(s0)
    80400394:	0007c783          	lbu	a5,0(a5)
    80400398:	f3e5                	bnez	a5,80400378 <_Z6printfPcz+0x176>
    8040039a:	a015                	j	804003be <_Z6printfPcz+0x1bc>
    8040039c:	02500513          	li	a0,37
    804003a0:	c89ff0ef          	jal	ra,80400028 <_Z7putcharc>
    804003a4:	a829                	j	804003be <_Z6printfPcz+0x1bc>
    804003a6:	02500513          	li	a0,37
    804003aa:	c7fff0ef          	jal	ra,80400028 <_Z7putcharc>
    804003ae:	fdc42783          	lw	a5,-36(s0)
    804003b2:	0ff7f793          	zext.b	a5,a5
    804003b6:	853e                	mv	a0,a5
    804003b8:	c71ff0ef          	jal	ra,80400028 <_Z7putcharc>
    804003bc:	0001                	nop
    804003be:	fec42783          	lw	a5,-20(s0)
    804003c2:	2785                	addiw	a5,a5,1
    804003c4:	fef42623          	sw	a5,-20(s0)
    804003c8:	fec42783          	lw	a5,-20(s0)
    804003cc:	fc843703          	ld	a4,-56(s0)
    804003d0:	97ba                	add	a5,a5,a4
    804003d2:	0007c783          	lbu	a5,0(a5)
    804003d6:	fcf42e23          	sw	a5,-36(s0)
    804003da:	fdc42783          	lw	a5,-36(s0)
    804003de:	2781                	sext.w	a5,a5
    804003e0:	00f037b3          	snez	a5,a5
    804003e4:	0ff7f793          	zext.b	a5,a5
    804003e8:	e40799e3          	bnez	a5,8040023a <_Z6printfPcz+0x38>
    804003ec:	a011                	j	804003f0 <_Z6printfPcz+0x1ee>
    804003ee:	0001                	nop
    804003f0:	0001                	nop
    804003f2:	70e2                	ld	ra,56(sp)
    804003f4:	7442                	ld	s0,48(sp)
    804003f6:	6109                	addi	sp,sp,128
    804003f8:	8082                	ret

00000000804003fa <_Z6strlenPc>:
    804003fa:	7179                	addi	sp,sp,-48
    804003fc:	f422                	sd	s0,40(sp)
    804003fe:	1800                	addi	s0,sp,48
    80400400:	fca43c23          	sd	a0,-40(s0)
    80400404:	fe042623          	sw	zero,-20(s0)
    80400408:	fd843783          	ld	a5,-40(s0)
    8040040c:	fef43023          	sd	a5,-32(s0)
    80400410:	a819                	j	80400426 <_Z6strlenPc+0x2c>
    80400412:	fec42783          	lw	a5,-20(s0)
    80400416:	2785                	addiw	a5,a5,1
    80400418:	fef42623          	sw	a5,-20(s0)
    8040041c:	fe043783          	ld	a5,-32(s0)
    80400420:	0785                	addi	a5,a5,1
    80400422:	fef43023          	sd	a5,-32(s0)
    80400426:	fe043783          	ld	a5,-32(s0)
    8040042a:	0007c783          	lbu	a5,0(a5)
    8040042e:	f3f5                	bnez	a5,80400412 <_Z6strlenPc+0x18>
    80400430:	fec42783          	lw	a5,-20(s0)
    80400434:	853e                	mv	a0,a5
    80400436:	7422                	ld	s0,40(sp)
    80400438:	6145                	addi	sp,sp,48
    8040043a:	8082                	ret

000000008040043c <_Z6strcmpPcS_>:
    8040043c:	7179                	addi	sp,sp,-48
    8040043e:	f422                	sd	s0,40(sp)
    80400440:	1800                	addi	s0,sp,48
    80400442:	fca43c23          	sd	a0,-40(s0)
    80400446:	fcb43823          	sd	a1,-48(s0)
    8040044a:	fd843783          	ld	a5,-40(s0)
    8040044e:	fef43423          	sd	a5,-24(s0)
    80400452:	fd043783          	ld	a5,-48(s0)
    80400456:	fef43023          	sd	a5,-32(s0)
    8040045a:	a099                	j	804004a0 <_Z6strcmpPcS_+0x64>
    8040045c:	fe843783          	ld	a5,-24(s0)
    80400460:	0007c703          	lbu	a4,0(a5)
    80400464:	fe043783          	ld	a5,-32(s0)
    80400468:	0007c783          	lbu	a5,0(a5)
    8040046c:	02f70063          	beq	a4,a5,8040048c <_Z6strcmpPcS_+0x50>
    80400470:	fe843783          	ld	a5,-24(s0)
    80400474:	0007c703          	lbu	a4,0(a5)
    80400478:	fe043783          	ld	a5,-32(s0)
    8040047c:	0007c783          	lbu	a5,0(a5)
    80400480:	00e7f463          	bgeu	a5,a4,80400488 <_Z6strcmpPcS_+0x4c>
    80400484:	4785                	li	a5,1
    80400486:	a805                	j	804004b6 <_Z6strcmpPcS_+0x7a>
    80400488:	57fd                	li	a5,-1
    8040048a:	a035                	j	804004b6 <_Z6strcmpPcS_+0x7a>
    8040048c:	fe843783          	ld	a5,-24(s0)
    80400490:	0785                	addi	a5,a5,1
    80400492:	fef43423          	sd	a5,-24(s0)
    80400496:	fe043783          	ld	a5,-32(s0)
    8040049a:	0785                	addi	a5,a5,1
    8040049c:	fef43023          	sd	a5,-32(s0)
    804004a0:	fe843783          	ld	a5,-24(s0)
    804004a4:	0007c783          	lbu	a5,0(a5)
    804004a8:	fbd5                	bnez	a5,8040045c <_Z6strcmpPcS_+0x20>
    804004aa:	fe043783          	ld	a5,-32(s0)
    804004ae:	0007c783          	lbu	a5,0(a5)
    804004b2:	f7cd                	bnez	a5,8040045c <_Z6strcmpPcS_+0x20>
    804004b4:	4781                	li	a5,0
    804004b6:	853e                	mv	a0,a5
    804004b8:	7422                	ld	s0,40(sp)
    804004ba:	6145                	addi	sp,sp,48
    804004bc:	8082                	ret

00000000804004be <_Z4plusii>:
    804004be:	1101                	addi	sp,sp,-32
    804004c0:	ec22                	sd	s0,24(sp)
    804004c2:	1000                	addi	s0,sp,32
    804004c4:	87aa                	mv	a5,a0
    804004c6:	872e                	mv	a4,a1
    804004c8:	fef42623          	sw	a5,-20(s0)
    804004cc:	87ba                	mv	a5,a4
    804004ce:	fef42423          	sw	a5,-24(s0)
    804004d2:	fec42783          	lw	a5,-20(s0)
    804004d6:	873e                	mv	a4,a5
    804004d8:	fe842783          	lw	a5,-24(s0)
    804004dc:	9fb9                	addw	a5,a5,a4
    804004de:	2781                	sext.w	a5,a5
    804004e0:	853e                	mv	a0,a5
    804004e2:	6462                	ld	s0,24(sp)
    804004e4:	6105                	addi	sp,sp,32
    804004e6:	8082                	ret

00000000804004e8 <main>:
    804004e8:	7179                	addi	sp,sp,-48
    804004ea:	f406                	sd	ra,40(sp)
    804004ec:	f022                	sd	s0,32(sp)
    804004ee:	1800                	addi	s0,sp,48
    804004f0:	00001517          	auipc	a0,0x1
    804004f4:	bd050513          	addi	a0,a0,-1072 # 804010c0 <b+0xc>
    804004f8:	d0bff0ef          	jal	ra,80400202 <_Z6printfPcz>
    804004fc:	00001517          	auipc	a0,0x1
    80400500:	bdc50513          	addi	a0,a0,-1060 # 804010d8 <b+0x24>
    80400504:	cffff0ef          	jal	ra,80400202 <_Z6printfPcz>
    80400508:	afbff0ef          	jal	ra,80400002 <_Z7getcharv>
    8040050c:	87aa                	mv	a5,a0
    8040050e:	fef407a3          	sb	a5,-17(s0)
    80400512:	00001797          	auipc	a5,0x1
    80400516:	ab678793          	addi	a5,a5,-1354 # 80400fc8 <buf>
    8040051a:	fef43023          	sd	a5,-32(s0)
    8040051e:	a02d                	j	80400548 <main+0x60>
    80400520:	fef44783          	lbu	a5,-17(s0)
    80400524:	853e                	mv	a0,a5
    80400526:	b03ff0ef          	jal	ra,80400028 <_Z7putcharc>
    8040052a:	fef44703          	lbu	a4,-17(s0)
    8040052e:	fe043783          	ld	a5,-32(s0)
    80400532:	00178693          	addi	a3,a5,1
    80400536:	fed43023          	sd	a3,-32(s0)
    8040053a:	00e78023          	sb	a4,0(a5)
    8040053e:	ac5ff0ef          	jal	ra,80400002 <_Z7getcharv>
    80400542:	87aa                	mv	a5,a0
    80400544:	fef407a3          	sb	a5,-17(s0)
    80400548:	fef44783          	lbu	a5,-17(s0)
    8040054c:	0ff7f713          	zext.b	a4,a5
    80400550:	47b5                	li	a5,13
    80400552:	fcf717e3          	bne	a4,a5,80400520 <main+0x38>
    80400556:	fe043783          	ld	a5,-32(s0)
    8040055a:	00078023          	sb	zero,0(a5)
    8040055e:	00001517          	auipc	a0,0x1
    80400562:	b8250513          	addi	a0,a0,-1150 # 804010e0 <b+0x2c>
    80400566:	c9dff0ef          	jal	ra,80400202 <_Z6printfPcz>
    8040056a:	00001517          	auipc	a0,0x1
    8040056e:	a5e50513          	addi	a0,a0,-1442 # 80400fc8 <buf>
    80400572:	e89ff0ef          	jal	ra,804003fa <_Z6strlenPc>
    80400576:	87aa                	mv	a5,a0
    80400578:	0017b793          	seqz	a5,a5
    8040057c:	0ff7f793          	zext.b	a5,a5
    80400580:	ef85                	bnez	a5,804005b8 <main+0xd0>
    80400582:	00001597          	auipc	a1,0x1
    80400586:	b6658593          	addi	a1,a1,-1178 # 804010e8 <b+0x34>
    8040058a:	00001517          	auipc	a0,0x1
    8040058e:	a3e50513          	addi	a0,a0,-1474 # 80400fc8 <buf>
    80400592:	eabff0ef          	jal	ra,8040043c <_Z6strcmpPcS_>
    80400596:	87aa                	mv	a5,a0
    80400598:	0017b793          	seqz	a5,a5
    8040059c:	0ff7f793          	zext.b	a5,a5
    804005a0:	ef91                	bnez	a5,804005bc <main+0xd4>
    804005a2:	00001597          	auipc	a1,0x1
    804005a6:	a2658593          	addi	a1,a1,-1498 # 80400fc8 <buf>
    804005aa:	00001517          	auipc	a0,0x1
    804005ae:	b4650513          	addi	a0,a0,-1210 # 804010f0 <b+0x3c>
    804005b2:	c51ff0ef          	jal	ra,80400202 <_Z6printfPcz>
    804005b6:	b799                	j	804004fc <main+0x14>
    804005b8:	0001                	nop
    804005ba:	b789                	j	804004fc <main+0x14>
    804005bc:	0001                	nop
    804005be:	478d                	li	a5,3
    804005c0:	fcf42e23          	sw	a5,-36(s0)
    804005c4:	00001797          	auipc	a5,0x1
    804005c8:	aec78793          	addi	a5,a5,-1300 # 804010b0 <a>
    804005cc:	439c                	lw	a5,0(a5)
    804005ce:	2785                	addiw	a5,a5,1
    804005d0:	0007871b          	sext.w	a4,a5
    804005d4:	00001797          	auipc	a5,0x1
    804005d8:	adc78793          	addi	a5,a5,-1316 # 804010b0 <a>
    804005dc:	c398                	sw	a4,0(a5)
    804005de:	00001797          	auipc	a5,0x1
    804005e2:	ad278793          	addi	a5,a5,-1326 # 804010b0 <a>
    804005e6:	439c                	lw	a5,0(a5)
    804005e8:	fdc42703          	lw	a4,-36(s0)
    804005ec:	02f707bb          	mulw	a5,a4,a5
    804005f0:	0007871b          	sext.w	a4,a5
    804005f4:	00001797          	auipc	a5,0x1
    804005f8:	ac078793          	addi	a5,a5,-1344 # 804010b4 <b>
    804005fc:	439c                	lw	a5,0(a5)
    804005fe:	85be                	mv	a1,a5
    80400600:	853a                	mv	a0,a4
    80400602:	ebdff0ef          	jal	ra,804004be <_Z4plusii>
    80400606:	87aa                	mv	a5,a0
    80400608:	873e                	mv	a4,a5
    8040060a:	00001797          	auipc	a5,0x1
    8040060e:	aa678793          	addi	a5,a5,-1370 # 804010b0 <a>
    80400612:	c398                	sw	a4,0(a5)
    80400614:	00001797          	auipc	a5,0x1
    80400618:	a9c78793          	addi	a5,a5,-1380 # 804010b0 <a>
    8040061c:	4398                	lw	a4,0(a5)
    8040061e:	00001797          	auipc	a5,0x1
    80400622:	a9278793          	addi	a5,a5,-1390 # 804010b0 <a>
    80400626:	439c                	lw	a5,0(a5)
    80400628:	02f707bb          	mulw	a5,a4,a5
    8040062c:	0007871b          	sext.w	a4,a5
    80400630:	00001797          	auipc	a5,0x1
    80400634:	a8478793          	addi	a5,a5,-1404 # 804010b4 <b>
    80400638:	c398                	sw	a4,0(a5)
    8040063a:	00001797          	auipc	a5,0x1
    8040063e:	a7a78793          	addi	a5,a5,-1414 # 804010b4 <b>
    80400642:	439c                	lw	a5,0(a5)
    80400644:	85be                	mv	a1,a5
    80400646:	00001517          	auipc	a0,0x1
    8040064a:	ac250513          	addi	a0,a0,-1342 # 80401108 <b+0x54>
    8040064e:	bb5ff0ef          	jal	ra,80400202 <_Z6printfPcz>
    80400652:	4781                	li	a5,0
    80400654:	853e                	mv	a0,a5
    80400656:	70a2                	ld	ra,40(sp)
    80400658:	7402                	ld	s0,32(sp)
    8040065a:	6145                	addi	sp,sp,48
    8040065c:	8082                	ret

000000008040065e <_ZL10__syscall0l>:
    8040065e:	1101                	addi	sp,sp,-32
    80400660:	ec22                	sd	s0,24(sp)
    80400662:	1000                	addi	s0,sp,32
    80400664:	fea43423          	sd	a0,-24(s0)
    80400668:	fe843883          	ld	a7,-24(s0)
    8040066c:	00000073          	ecall
    80400670:	87aa                	mv	a5,a0
    80400672:	853e                	mv	a0,a5
    80400674:	6462                	ld	s0,24(sp)
    80400676:	6105                	addi	sp,sp,32
    80400678:	8082                	ret

000000008040067a <_ZL10__syscall1ll>:
    8040067a:	1101                	addi	sp,sp,-32
    8040067c:	ec22                	sd	s0,24(sp)
    8040067e:	1000                	addi	s0,sp,32
    80400680:	fea43423          	sd	a0,-24(s0)
    80400684:	feb43023          	sd	a1,-32(s0)
    80400688:	fe843883          	ld	a7,-24(s0)
    8040068c:	fe043503          	ld	a0,-32(s0)
    80400690:	00000073          	ecall
    80400694:	87aa                	mv	a5,a0
    80400696:	853e                	mv	a0,a5
    80400698:	6462                	ld	s0,24(sp)
    8040069a:	6105                	addi	sp,sp,32
    8040069c:	8082                	ret

000000008040069e <_ZL10__syscall2lll>:
    8040069e:	7179                	addi	sp,sp,-48
    804006a0:	f422                	sd	s0,40(sp)
    804006a2:	1800                	addi	s0,sp,48
    804006a4:	fea43423          	sd	a0,-24(s0)
    804006a8:	feb43023          	sd	a1,-32(s0)
    804006ac:	fcc43c23          	sd	a2,-40(s0)
    804006b0:	fe843883          	ld	a7,-24(s0)
    804006b4:	fe043503          	ld	a0,-32(s0)
    804006b8:	fd843583          	ld	a1,-40(s0)
    804006bc:	00000073          	ecall
    804006c0:	87aa                	mv	a5,a0
    804006c2:	853e                	mv	a0,a5
    804006c4:	7422                	ld	s0,40(sp)
    804006c6:	6145                	addi	sp,sp,48
    804006c8:	8082                	ret

00000000804006ca <_ZL10__syscall3llll>:
    804006ca:	7179                	addi	sp,sp,-48
    804006cc:	f422                	sd	s0,40(sp)
    804006ce:	1800                	addi	s0,sp,48
    804006d0:	fea43423          	sd	a0,-24(s0)
    804006d4:	feb43023          	sd	a1,-32(s0)
    804006d8:	fcc43c23          	sd	a2,-40(s0)
    804006dc:	fcd43823          	sd	a3,-48(s0)
    804006e0:	fe843883          	ld	a7,-24(s0)
    804006e4:	fe043503          	ld	a0,-32(s0)
    804006e8:	fd843583          	ld	a1,-40(s0)
    804006ec:	fd043603          	ld	a2,-48(s0)
    804006f0:	00000073          	ecall
    804006f4:	87aa                	mv	a5,a0
    804006f6:	853e                	mv	a0,a5
    804006f8:	7422                	ld	s0,40(sp)
    804006fa:	6145                	addi	sp,sp,48
    804006fc:	8082                	ret

00000000804006fe <_ZL10__syscall4lllll>:
    804006fe:	7139                	addi	sp,sp,-64
    80400700:	fc22                	sd	s0,56(sp)
    80400702:	0080                	addi	s0,sp,64
    80400704:	fea43423          	sd	a0,-24(s0)
    80400708:	feb43023          	sd	a1,-32(s0)
    8040070c:	fcc43c23          	sd	a2,-40(s0)
    80400710:	fcd43823          	sd	a3,-48(s0)
    80400714:	fce43423          	sd	a4,-56(s0)
    80400718:	fe843883          	ld	a7,-24(s0)
    8040071c:	fe043503          	ld	a0,-32(s0)
    80400720:	fd843583          	ld	a1,-40(s0)
    80400724:	fd043603          	ld	a2,-48(s0)
    80400728:	fc843683          	ld	a3,-56(s0)
    8040072c:	00000073          	ecall
    80400730:	87aa                	mv	a5,a0
    80400732:	853e                	mv	a0,a5
    80400734:	7462                	ld	s0,56(sp)
    80400736:	6121                	addi	sp,sp,64
    80400738:	8082                	ret

000000008040073a <_ZL10__syscall5llllll>:
    8040073a:	7139                	addi	sp,sp,-64
    8040073c:	fc22                	sd	s0,56(sp)
    8040073e:	0080                	addi	s0,sp,64
    80400740:	fea43423          	sd	a0,-24(s0)
    80400744:	feb43023          	sd	a1,-32(s0)
    80400748:	fcc43c23          	sd	a2,-40(s0)
    8040074c:	fcd43823          	sd	a3,-48(s0)
    80400750:	fce43423          	sd	a4,-56(s0)
    80400754:	fcf43023          	sd	a5,-64(s0)
    80400758:	fe843883          	ld	a7,-24(s0)
    8040075c:	fe043503          	ld	a0,-32(s0)
    80400760:	fd843583          	ld	a1,-40(s0)
    80400764:	fd043603          	ld	a2,-48(s0)
    80400768:	fc843683          	ld	a3,-56(s0)
    8040076c:	fc043703          	ld	a4,-64(s0)
    80400770:	00000073          	ecall
    80400774:	87aa                	mv	a5,a0
    80400776:	853e                	mv	a0,a5
    80400778:	7462                	ld	s0,56(sp)
    8040077a:	6121                	addi	sp,sp,64
    8040077c:	8082                	ret

000000008040077e <_Z4openPKci>:
    8040077e:	1101                	addi	sp,sp,-32
    80400780:	ec06                	sd	ra,24(sp)
    80400782:	e822                	sd	s0,16(sp)
    80400784:	1000                	addi	s0,sp,32
    80400786:	fea43423          	sd	a0,-24(s0)
    8040078a:	87ae                	mv	a5,a1
    8040078c:	fef42223          	sw	a5,-28(s0)
    80400790:	fe843783          	ld	a5,-24(s0)
    80400794:	fe442683          	lw	a3,-28(s0)
    80400798:	4709                	li	a4,2
    8040079a:	863e                	mv	a2,a5
    8040079c:	f9c00593          	li	a1,-100
    804007a0:	03800513          	li	a0,56
    804007a4:	f5bff0ef          	jal	ra,804006fe <_ZL10__syscall4lllll>
    804007a8:	87aa                	mv	a5,a0
    804007aa:	2781                	sext.w	a5,a5
    804007ac:	853e                	mv	a0,a5
    804007ae:	60e2                	ld	ra,24(sp)
    804007b0:	6442                	ld	s0,16(sp)
    804007b2:	6105                	addi	sp,sp,32
    804007b4:	8082                	ret

00000000804007b6 <_Z6openatiPKci>:
    804007b6:	1101                	addi	sp,sp,-32
    804007b8:	ec06                	sd	ra,24(sp)
    804007ba:	e822                	sd	s0,16(sp)
    804007bc:	1000                	addi	s0,sp,32
    804007be:	87aa                	mv	a5,a0
    804007c0:	feb43023          	sd	a1,-32(s0)
    804007c4:	8732                	mv	a4,a2
    804007c6:	fef42623          	sw	a5,-20(s0)
    804007ca:	87ba                	mv	a5,a4
    804007cc:	fef42423          	sw	a5,-24(s0)
    804007d0:	fec42783          	lw	a5,-20(s0)
    804007d4:	fe043603          	ld	a2,-32(s0)
    804007d8:	fe842683          	lw	a3,-24(s0)
    804007dc:	18000713          	li	a4,384
    804007e0:	85be                	mv	a1,a5
    804007e2:	03800513          	li	a0,56
    804007e6:	f19ff0ef          	jal	ra,804006fe <_ZL10__syscall4lllll>
    804007ea:	87aa                	mv	a5,a0
    804007ec:	2781                	sext.w	a5,a5
    804007ee:	853e                	mv	a0,a5
    804007f0:	60e2                	ld	ra,24(sp)
    804007f2:	6442                	ld	s0,16(sp)
    804007f4:	6105                	addi	sp,sp,32
    804007f6:	8082                	ret

00000000804007f8 <_Z5closei>:
    804007f8:	1101                	addi	sp,sp,-32
    804007fa:	ec06                	sd	ra,24(sp)
    804007fc:	e822                	sd	s0,16(sp)
    804007fe:	1000                	addi	s0,sp,32
    80400800:	87aa                	mv	a5,a0
    80400802:	fef42623          	sw	a5,-20(s0)
    80400806:	fec42783          	lw	a5,-20(s0)
    8040080a:	85be                	mv	a1,a5
    8040080c:	03900513          	li	a0,57
    80400810:	e6bff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400814:	87aa                	mv	a5,a0
    80400816:	2781                	sext.w	a5,a5
    80400818:	853e                	mv	a0,a5
    8040081a:	60e2                	ld	ra,24(sp)
    8040081c:	6442                	ld	s0,16(sp)
    8040081e:	6105                	addi	sp,sp,32
    80400820:	8082                	ret

0000000080400822 <_Z4readiPvy>:
    80400822:	7179                	addi	sp,sp,-48
    80400824:	f406                	sd	ra,40(sp)
    80400826:	f022                	sd	s0,32(sp)
    80400828:	1800                	addi	s0,sp,48
    8040082a:	87aa                	mv	a5,a0
    8040082c:	feb43023          	sd	a1,-32(s0)
    80400830:	fcc43c23          	sd	a2,-40(s0)
    80400834:	fef42623          	sw	a5,-20(s0)
    80400838:	fec42783          	lw	a5,-20(s0)
    8040083c:	fe043703          	ld	a4,-32(s0)
    80400840:	fd843683          	ld	a3,-40(s0)
    80400844:	863a                	mv	a2,a4
    80400846:	85be                	mv	a1,a5
    80400848:	03f00513          	li	a0,63
    8040084c:	e7fff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400850:	87aa                	mv	a5,a0
    80400852:	853e                	mv	a0,a5
    80400854:	70a2                	ld	ra,40(sp)
    80400856:	7402                	ld	s0,32(sp)
    80400858:	6145                	addi	sp,sp,48
    8040085a:	8082                	ret

000000008040085c <_Z5writeiPKvy>:
    8040085c:	7179                	addi	sp,sp,-48
    8040085e:	f406                	sd	ra,40(sp)
    80400860:	f022                	sd	s0,32(sp)
    80400862:	1800                	addi	s0,sp,48
    80400864:	87aa                	mv	a5,a0
    80400866:	feb43023          	sd	a1,-32(s0)
    8040086a:	fcc43c23          	sd	a2,-40(s0)
    8040086e:	fef42623          	sw	a5,-20(s0)
    80400872:	fec42783          	lw	a5,-20(s0)
    80400876:	fe043703          	ld	a4,-32(s0)
    8040087a:	fd843683          	ld	a3,-40(s0)
    8040087e:	863a                	mv	a2,a4
    80400880:	85be                	mv	a1,a5
    80400882:	04000513          	li	a0,64
    80400886:	e45ff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    8040088a:	87aa                	mv	a5,a0
    8040088c:	853e                	mv	a0,a5
    8040088e:	70a2                	ld	ra,40(sp)
    80400890:	7402                	ld	s0,32(sp)
    80400892:	6145                	addi	sp,sp,48
    80400894:	8082                	ret

0000000080400896 <_Z6getpidv>:
    80400896:	1141                	addi	sp,sp,-16
    80400898:	e406                	sd	ra,8(sp)
    8040089a:	e022                	sd	s0,0(sp)
    8040089c:	0800                	addi	s0,sp,16
    8040089e:	0ac00513          	li	a0,172
    804008a2:	dbdff0ef          	jal	ra,8040065e <_ZL10__syscall0l>
    804008a6:	87aa                	mv	a5,a0
    804008a8:	2781                	sext.w	a5,a5
    804008aa:	853e                	mv	a0,a5
    804008ac:	60a2                	ld	ra,8(sp)
    804008ae:	6402                	ld	s0,0(sp)
    804008b0:	0141                	addi	sp,sp,16
    804008b2:	8082                	ret

00000000804008b4 <_Z7getppidv>:
    804008b4:	1141                	addi	sp,sp,-16
    804008b6:	e406                	sd	ra,8(sp)
    804008b8:	e022                	sd	s0,0(sp)
    804008ba:	0800                	addi	s0,sp,16
    804008bc:	0ad00513          	li	a0,173
    804008c0:	d9fff0ef          	jal	ra,8040065e <_ZL10__syscall0l>
    804008c4:	87aa                	mv	a5,a0
    804008c6:	2781                	sext.w	a5,a5
    804008c8:	853e                	mv	a0,a5
    804008ca:	60a2                	ld	ra,8(sp)
    804008cc:	6402                	ld	s0,0(sp)
    804008ce:	0141                	addi	sp,sp,16
    804008d0:	8082                	ret

00000000804008d2 <_Z11sched_yieldv>:
    804008d2:	1141                	addi	sp,sp,-16
    804008d4:	e406                	sd	ra,8(sp)
    804008d6:	e022                	sd	s0,0(sp)
    804008d8:	0800                	addi	s0,sp,16
    804008da:	07c00513          	li	a0,124
    804008de:	d81ff0ef          	jal	ra,8040065e <_ZL10__syscall0l>
    804008e2:	87aa                	mv	a5,a0
    804008e4:	2781                	sext.w	a5,a5
    804008e6:	853e                	mv	a0,a5
    804008e8:	60a2                	ld	ra,8(sp)
    804008ea:	6402                	ld	s0,0(sp)
    804008ec:	0141                	addi	sp,sp,16
    804008ee:	8082                	ret

00000000804008f0 <_Z4forkv>:
    804008f0:	1141                	addi	sp,sp,-16
    804008f2:	e406                	sd	ra,8(sp)
    804008f4:	e022                	sd	s0,0(sp)
    804008f6:	0800                	addi	s0,sp,16
    804008f8:	4601                	li	a2,0
    804008fa:	45c5                	li	a1,17
    804008fc:	0dc00513          	li	a0,220
    80400900:	d9fff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400904:	87aa                	mv	a5,a0
    80400906:	2781                	sext.w	a5,a5
    80400908:	853e                	mv	a0,a5
    8040090a:	60a2                	ld	ra,8(sp)
    8040090c:	6402                	ld	s0,0(sp)
    8040090e:	0141                	addi	sp,sp,16
    80400910:	8082                	ret

0000000080400912 <_Z4exiti>:
    80400912:	1101                	addi	sp,sp,-32
    80400914:	ec06                	sd	ra,24(sp)
    80400916:	e822                	sd	s0,16(sp)
    80400918:	1000                	addi	s0,sp,32
    8040091a:	87aa                	mv	a5,a0
    8040091c:	fef42623          	sw	a5,-20(s0)
    80400920:	fec42783          	lw	a5,-20(s0)
    80400924:	85be                	mv	a1,a5
    80400926:	05d00513          	li	a0,93
    8040092a:	d51ff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    8040092e:	0001                	nop
    80400930:	60e2                	ld	ra,24(sp)
    80400932:	6442                	ld	s0,16(sp)
    80400934:	6105                	addi	sp,sp,32
    80400936:	8082                	ret

0000000080400938 <_Z7waitpidiPii>:
    80400938:	1101                	addi	sp,sp,-32
    8040093a:	ec06                	sd	ra,24(sp)
    8040093c:	e822                	sd	s0,16(sp)
    8040093e:	1000                	addi	s0,sp,32
    80400940:	87aa                	mv	a5,a0
    80400942:	feb43023          	sd	a1,-32(s0)
    80400946:	8732                	mv	a4,a2
    80400948:	fef42623          	sw	a5,-20(s0)
    8040094c:	87ba                	mv	a5,a4
    8040094e:	fef42423          	sw	a5,-24(s0)
    80400952:	fec42783          	lw	a5,-20(s0)
    80400956:	fe043603          	ld	a2,-32(s0)
    8040095a:	fe842683          	lw	a3,-24(s0)
    8040095e:	4701                	li	a4,0
    80400960:	85be                	mv	a1,a5
    80400962:	10400513          	li	a0,260
    80400966:	d99ff0ef          	jal	ra,804006fe <_ZL10__syscall4lllll>
    8040096a:	87aa                	mv	a5,a0
    8040096c:	2781                	sext.w	a5,a5
    8040096e:	853e                	mv	a0,a5
    80400970:	60e2                	ld	ra,24(sp)
    80400972:	6442                	ld	s0,16(sp)
    80400974:	6105                	addi	sp,sp,32
    80400976:	8082                	ret

0000000080400978 <_Z4execPc>:
    80400978:	1101                	addi	sp,sp,-32
    8040097a:	ec06                	sd	ra,24(sp)
    8040097c:	e822                	sd	s0,16(sp)
    8040097e:	1000                	addi	s0,sp,32
    80400980:	fea43423          	sd	a0,-24(s0)
    80400984:	fe843783          	ld	a5,-24(s0)
    80400988:	85be                	mv	a1,a5
    8040098a:	0dd00513          	li	a0,221
    8040098e:	cedff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400992:	87aa                	mv	a5,a0
    80400994:	2781                	sext.w	a5,a5
    80400996:	853e                	mv	a0,a5
    80400998:	60e2                	ld	ra,24(sp)
    8040099a:	6442                	ld	s0,16(sp)
    8040099c:	6105                	addi	sp,sp,32
    8040099e:	8082                	ret

00000000804009a0 <_Z6execvePKcPKPcS3_>:
    804009a0:	7179                	addi	sp,sp,-48
    804009a2:	f406                	sd	ra,40(sp)
    804009a4:	f022                	sd	s0,32(sp)
    804009a6:	1800                	addi	s0,sp,48
    804009a8:	fea43423          	sd	a0,-24(s0)
    804009ac:	feb43023          	sd	a1,-32(s0)
    804009b0:	fcc43c23          	sd	a2,-40(s0)
    804009b4:	fe843783          	ld	a5,-24(s0)
    804009b8:	fe043703          	ld	a4,-32(s0)
    804009bc:	fd843683          	ld	a3,-40(s0)
    804009c0:	863a                	mv	a2,a4
    804009c2:	85be                	mv	a1,a5
    804009c4:	0dd00513          	li	a0,221
    804009c8:	d03ff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    804009cc:	87aa                	mv	a5,a0
    804009ce:	2781                	sext.w	a5,a5
    804009d0:	853e                	mv	a0,a5
    804009d2:	70a2                	ld	ra,40(sp)
    804009d4:	7402                	ld	s0,32(sp)
    804009d6:	6145                	addi	sp,sp,48
    804009d8:	8082                	ret

00000000804009da <_Z5timesPv>:
    804009da:	1101                	addi	sp,sp,-32
    804009dc:	ec06                	sd	ra,24(sp)
    804009de:	e822                	sd	s0,16(sp)
    804009e0:	1000                	addi	s0,sp,32
    804009e2:	fea43423          	sd	a0,-24(s0)
    804009e6:	fe843783          	ld	a5,-24(s0)
    804009ea:	85be                	mv	a1,a5
    804009ec:	09900513          	li	a0,153
    804009f0:	c8bff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    804009f4:	87aa                	mv	a5,a0
    804009f6:	2781                	sext.w	a5,a5
    804009f8:	853e                	mv	a0,a5
    804009fa:	60e2                	ld	ra,24(sp)
    804009fc:	6442                	ld	s0,16(sp)
    804009fe:	6105                	addi	sp,sp,32
    80400a00:	8082                	ret

0000000080400a02 <_Z8get_timev>:
    80400a02:	7179                	addi	sp,sp,-48
    80400a04:	f406                	sd	ra,40(sp)
    80400a06:	f022                	sd	s0,32(sp)
    80400a08:	1800                	addi	s0,sp,48
    80400a0a:	fd840793          	addi	a5,s0,-40
    80400a0e:	4581                	li	a1,0
    80400a10:	853e                	mv	a0,a5
    80400a12:	040000ef          	jal	ra,80400a52 <_Z12sys_get_timeP7TimeVali>
    80400a16:	87aa                	mv	a5,a0
    80400a18:	fef42623          	sw	a5,-20(s0)
    80400a1c:	fec42783          	lw	a5,-20(s0)
    80400a20:	2781                	sext.w	a5,a5
    80400a22:	e395                	bnez	a5,80400a46 <_Z8get_timev+0x44>
    80400a24:	fd843703          	ld	a4,-40(s0)
    80400a28:	67c1                	lui	a5,0x10
    80400a2a:	17fd                	addi	a5,a5,-1 # ffff <_start-0x803f0001>
    80400a2c:	8f7d                	and	a4,a4,a5
    80400a2e:	3e800793          	li	a5,1000
    80400a32:	02f70733          	mul	a4,a4,a5
    80400a36:	fe043683          	ld	a3,-32(s0)
    80400a3a:	3e800793          	li	a5,1000
    80400a3e:	02f6d7b3          	divu	a5,a3,a5
    80400a42:	97ba                	add	a5,a5,a4
    80400a44:	a011                	j	80400a48 <_Z8get_timev+0x46>
    80400a46:	57fd                	li	a5,-1
    80400a48:	853e                	mv	a0,a5
    80400a4a:	70a2                	ld	ra,40(sp)
    80400a4c:	7402                	ld	s0,32(sp)
    80400a4e:	6145                	addi	sp,sp,48
    80400a50:	8082                	ret

0000000080400a52 <_Z12sys_get_timeP7TimeVali>:
    80400a52:	1101                	addi	sp,sp,-32
    80400a54:	ec06                	sd	ra,24(sp)
    80400a56:	e822                	sd	s0,16(sp)
    80400a58:	1000                	addi	s0,sp,32
    80400a5a:	fea43423          	sd	a0,-24(s0)
    80400a5e:	87ae                	mv	a5,a1
    80400a60:	fef42223          	sw	a5,-28(s0)
    80400a64:	fe843783          	ld	a5,-24(s0)
    80400a68:	fe442703          	lw	a4,-28(s0)
    80400a6c:	863a                	mv	a2,a4
    80400a6e:	85be                	mv	a1,a5
    80400a70:	0a900513          	li	a0,169
    80400a74:	c2bff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400a78:	87aa                	mv	a5,a0
    80400a7a:	2781                	sext.w	a5,a5
    80400a7c:	853e                	mv	a0,a5
    80400a7e:	60e2                	ld	ra,24(sp)
    80400a80:	6442                	ld	s0,16(sp)
    80400a82:	6105                	addi	sp,sp,32
    80400a84:	8082                	ret

0000000080400a86 <_Z4timePm>:
    80400a86:	1101                	addi	sp,sp,-32
    80400a88:	ec06                	sd	ra,24(sp)
    80400a8a:	e822                	sd	s0,16(sp)
    80400a8c:	1000                	addi	s0,sp,32
    80400a8e:	fea43423          	sd	a0,-24(s0)
    80400a92:	fe843783          	ld	a5,-24(s0)
    80400a96:	85be                	mv	a1,a5
    80400a98:	42600513          	li	a0,1062
    80400a9c:	bdfff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400aa0:	87aa                	mv	a5,a0
    80400aa2:	2781                	sext.w	a5,a5
    80400aa4:	853e                	mv	a0,a5
    80400aa6:	60e2                	ld	ra,24(sp)
    80400aa8:	6442                	ld	s0,16(sp)
    80400aaa:	6105                	addi	sp,sp,32
    80400aac:	8082                	ret

0000000080400aae <_Z5sleepy>:
    80400aae:	7179                	addi	sp,sp,-48
    80400ab0:	f406                	sd	ra,40(sp)
    80400ab2:	f022                	sd	s0,32(sp)
    80400ab4:	1800                	addi	s0,sp,48
    80400ab6:	fca43c23          	sd	a0,-40(s0)
    80400aba:	fe043023          	sd	zero,-32(s0)
    80400abe:	fe043423          	sd	zero,-24(s0)
    80400ac2:	fd843783          	ld	a5,-40(s0)
    80400ac6:	fef43023          	sd	a5,-32(s0)
    80400aca:	fe040793          	addi	a5,s0,-32
    80400ace:	fe040713          	addi	a4,s0,-32
    80400ad2:	863a                	mv	a2,a4
    80400ad4:	85be                	mv	a1,a5
    80400ad6:	06500513          	li	a0,101
    80400ada:	bc5ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400ade:	87aa                	mv	a5,a0
    80400ae0:	00f037b3          	snez	a5,a5
    80400ae4:	0ff7f793          	zext.b	a5,a5
    80400ae8:	c789                	beqz	a5,80400af2 <_Z5sleepy+0x44>
    80400aea:	fe043783          	ld	a5,-32(s0)
    80400aee:	2781                	sext.w	a5,a5
    80400af0:	a011                	j	80400af4 <_Z5sleepy+0x46>
    80400af2:	4781                	li	a5,0
    80400af4:	853e                	mv	a0,a5
    80400af6:	70a2                	ld	ra,40(sp)
    80400af8:	7402                	ld	s0,32(sp)
    80400afa:	6145                	addi	sp,sp,48
    80400afc:	8082                	ret

0000000080400afe <_Z12set_priorityi>:
    80400afe:	1101                	addi	sp,sp,-32
    80400b00:	ec06                	sd	ra,24(sp)
    80400b02:	e822                	sd	s0,16(sp)
    80400b04:	1000                	addi	s0,sp,32
    80400b06:	87aa                	mv	a5,a0
    80400b08:	fef42623          	sw	a5,-20(s0)
    80400b0c:	fec42783          	lw	a5,-20(s0)
    80400b10:	85be                	mv	a1,a5
    80400b12:	08c00513          	li	a0,140
    80400b16:	b65ff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400b1a:	87aa                	mv	a5,a0
    80400b1c:	2781                	sext.w	a5,a5
    80400b1e:	853e                	mv	a0,a5
    80400b20:	60e2                	ld	ra,24(sp)
    80400b22:	6442                	ld	s0,16(sp)
    80400b24:	6105                	addi	sp,sp,32
    80400b26:	8082                	ret

0000000080400b28 <_Z6munmapPvy>:
    80400b28:	1101                	addi	sp,sp,-32
    80400b2a:	ec06                	sd	ra,24(sp)
    80400b2c:	e822                	sd	s0,16(sp)
    80400b2e:	1000                	addi	s0,sp,32
    80400b30:	fea43423          	sd	a0,-24(s0)
    80400b34:	feb43023          	sd	a1,-32(s0)
    80400b38:	fe843783          	ld	a5,-24(s0)
    80400b3c:	fe043703          	ld	a4,-32(s0)
    80400b40:	863a                	mv	a2,a4
    80400b42:	85be                	mv	a1,a5
    80400b44:	0d700513          	li	a0,215
    80400b48:	b57ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400b4c:	87aa                	mv	a5,a0
    80400b4e:	2781                	sext.w	a5,a5
    80400b50:	853e                	mv	a0,a5
    80400b52:	60e2                	ld	ra,24(sp)
    80400b54:	6442                	ld	s0,16(sp)
    80400b56:	6105                	addi	sp,sp,32
    80400b58:	8082                	ret

0000000080400b5a <_Z4waitPi>:
    80400b5a:	1101                	addi	sp,sp,-32
    80400b5c:	ec06                	sd	ra,24(sp)
    80400b5e:	e822                	sd	s0,16(sp)
    80400b60:	1000                	addi	s0,sp,32
    80400b62:	fea43423          	sd	a0,-24(s0)
    80400b66:	4601                	li	a2,0
    80400b68:	fe843583          	ld	a1,-24(s0)
    80400b6c:	557d                	li	a0,-1
    80400b6e:	dcbff0ef          	jal	ra,80400938 <_Z7waitpidiPii>
    80400b72:	87aa                	mv	a5,a0
    80400b74:	853e                	mv	a0,a5
    80400b76:	60e2                	ld	ra,24(sp)
    80400b78:	6442                	ld	s0,16(sp)
    80400b7a:	6105                	addi	sp,sp,32
    80400b7c:	8082                	ret

0000000080400b7e <_Z5spawnPc>:
    80400b7e:	1101                	addi	sp,sp,-32
    80400b80:	ec06                	sd	ra,24(sp)
    80400b82:	e822                	sd	s0,16(sp)
    80400b84:	1000                	addi	s0,sp,32
    80400b86:	fea43423          	sd	a0,-24(s0)
    80400b8a:	fe843783          	ld	a5,-24(s0)
    80400b8e:	85be                	mv	a1,a5
    80400b90:	19000513          	li	a0,400
    80400b94:	ae7ff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400b98:	87aa                	mv	a5,a0
    80400b9a:	2781                	sext.w	a5,a5
    80400b9c:	853e                	mv	a0,a5
    80400b9e:	60e2                	ld	ra,24(sp)
    80400ba0:	6442                	ld	s0,16(sp)
    80400ba2:	6105                	addi	sp,sp,32
    80400ba4:	8082                	ret

0000000080400ba6 <_Z8mailreadPvi>:
    80400ba6:	1101                	addi	sp,sp,-32
    80400ba8:	ec06                	sd	ra,24(sp)
    80400baa:	e822                	sd	s0,16(sp)
    80400bac:	1000                	addi	s0,sp,32
    80400bae:	fea43423          	sd	a0,-24(s0)
    80400bb2:	87ae                	mv	a5,a1
    80400bb4:	fef42223          	sw	a5,-28(s0)
    80400bb8:	fe843783          	ld	a5,-24(s0)
    80400bbc:	fe442703          	lw	a4,-28(s0)
    80400bc0:	863a                	mv	a2,a4
    80400bc2:	85be                	mv	a1,a5
    80400bc4:	19100513          	li	a0,401
    80400bc8:	ad7ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400bcc:	87aa                	mv	a5,a0
    80400bce:	2781                	sext.w	a5,a5
    80400bd0:	853e                	mv	a0,a5
    80400bd2:	60e2                	ld	ra,24(sp)
    80400bd4:	6442                	ld	s0,16(sp)
    80400bd6:	6105                	addi	sp,sp,32
    80400bd8:	8082                	ret

0000000080400bda <_Z9mailwriteiPvi>:
    80400bda:	1101                	addi	sp,sp,-32
    80400bdc:	ec06                	sd	ra,24(sp)
    80400bde:	e822                	sd	s0,16(sp)
    80400be0:	1000                	addi	s0,sp,32
    80400be2:	87aa                	mv	a5,a0
    80400be4:	feb43023          	sd	a1,-32(s0)
    80400be8:	8732                	mv	a4,a2
    80400bea:	fef42623          	sw	a5,-20(s0)
    80400bee:	87ba                	mv	a5,a4
    80400bf0:	fef42423          	sw	a5,-24(s0)
    80400bf4:	fec42783          	lw	a5,-20(s0)
    80400bf8:	fe043703          	ld	a4,-32(s0)
    80400bfc:	fe842683          	lw	a3,-24(s0)
    80400c00:	863a                	mv	a2,a4
    80400c02:	85be                	mv	a1,a5
    80400c04:	19200513          	li	a0,402
    80400c08:	ac3ff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400c0c:	87aa                	mv	a5,a0
    80400c0e:	2781                	sext.w	a5,a5
    80400c10:	853e                	mv	a0,a5
    80400c12:	60e2                	ld	ra,24(sp)
    80400c14:	6442                	ld	s0,16(sp)
    80400c16:	6105                	addi	sp,sp,32
    80400c18:	8082                	ret

0000000080400c1a <_Z5fstatiP5kstat>:
    80400c1a:	1101                	addi	sp,sp,-32
    80400c1c:	ec06                	sd	ra,24(sp)
    80400c1e:	e822                	sd	s0,16(sp)
    80400c20:	1000                	addi	s0,sp,32
    80400c22:	87aa                	mv	a5,a0
    80400c24:	feb43023          	sd	a1,-32(s0)
    80400c28:	fef42623          	sw	a5,-20(s0)
    80400c2c:	fec42783          	lw	a5,-20(s0)
    80400c30:	fe043703          	ld	a4,-32(s0)
    80400c34:	863a                	mv	a2,a4
    80400c36:	85be                	mv	a1,a5
    80400c38:	05000513          	li	a0,80
    80400c3c:	a63ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400c40:	87aa                	mv	a5,a0
    80400c42:	2781                	sext.w	a5,a5
    80400c44:	853e                	mv	a0,a5
    80400c46:	60e2                	ld	ra,24(sp)
    80400c48:	6442                	ld	s0,16(sp)
    80400c4a:	6105                	addi	sp,sp,32
    80400c4c:	8082                	ret

0000000080400c4e <_Z10sys_linkatiPciS_j>:
    80400c4e:	7179                	addi	sp,sp,-48
    80400c50:	f406                	sd	ra,40(sp)
    80400c52:	f022                	sd	s0,32(sp)
    80400c54:	1800                	addi	s0,sp,48
    80400c56:	87aa                	mv	a5,a0
    80400c58:	feb43023          	sd	a1,-32(s0)
    80400c5c:	fcd43c23          	sd	a3,-40(s0)
    80400c60:	fef42623          	sw	a5,-20(s0)
    80400c64:	87b2                	mv	a5,a2
    80400c66:	fef42423          	sw	a5,-24(s0)
    80400c6a:	87ba                	mv	a5,a4
    80400c6c:	fcf42a23          	sw	a5,-44(s0)
    80400c70:	fec42583          	lw	a1,-20(s0)
    80400c74:	fe043603          	ld	a2,-32(s0)
    80400c78:	fe842683          	lw	a3,-24(s0)
    80400c7c:	fd843703          	ld	a4,-40(s0)
    80400c80:	fd446783          	lwu	a5,-44(s0)
    80400c84:	02500513          	li	a0,37
    80400c88:	ab3ff0ef          	jal	ra,8040073a <_ZL10__syscall5llllll>
    80400c8c:	87aa                	mv	a5,a0
    80400c8e:	2781                	sext.w	a5,a5
    80400c90:	853e                	mv	a0,a5
    80400c92:	70a2                	ld	ra,40(sp)
    80400c94:	7402                	ld	s0,32(sp)
    80400c96:	6145                	addi	sp,sp,48
    80400c98:	8082                	ret

0000000080400c9a <_Z12sys_unlinkatiPcj>:
    80400c9a:	1101                	addi	sp,sp,-32
    80400c9c:	ec06                	sd	ra,24(sp)
    80400c9e:	e822                	sd	s0,16(sp)
    80400ca0:	1000                	addi	s0,sp,32
    80400ca2:	87aa                	mv	a5,a0
    80400ca4:	feb43023          	sd	a1,-32(s0)
    80400ca8:	8732                	mv	a4,a2
    80400caa:	fef42623          	sw	a5,-20(s0)
    80400cae:	87ba                	mv	a5,a4
    80400cb0:	fef42423          	sw	a5,-24(s0)
    80400cb4:	fec42783          	lw	a5,-20(s0)
    80400cb8:	fe043703          	ld	a4,-32(s0)
    80400cbc:	fe846683          	lwu	a3,-24(s0)
    80400cc0:	863a                	mv	a2,a4
    80400cc2:	85be                	mv	a1,a5
    80400cc4:	02300513          	li	a0,35
    80400cc8:	a03ff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400ccc:	87aa                	mv	a5,a0
    80400cce:	2781                	sext.w	a5,a5
    80400cd0:	853e                	mv	a0,a5
    80400cd2:	60e2                	ld	ra,24(sp)
    80400cd4:	6442                	ld	s0,16(sp)
    80400cd6:	6105                	addi	sp,sp,32
    80400cd8:	8082                	ret

0000000080400cda <_Z4linkPcS_>:
    80400cda:	1101                	addi	sp,sp,-32
    80400cdc:	ec06                	sd	ra,24(sp)
    80400cde:	e822                	sd	s0,16(sp)
    80400ce0:	1000                	addi	s0,sp,32
    80400ce2:	fea43423          	sd	a0,-24(s0)
    80400ce6:	feb43023          	sd	a1,-32(s0)
    80400cea:	4701                	li	a4,0
    80400cec:	fe043683          	ld	a3,-32(s0)
    80400cf0:	f9c00613          	li	a2,-100
    80400cf4:	fe843583          	ld	a1,-24(s0)
    80400cf8:	f9c00513          	li	a0,-100
    80400cfc:	f53ff0ef          	jal	ra,80400c4e <_Z10sys_linkatiPciS_j>
    80400d00:	87aa                	mv	a5,a0
    80400d02:	853e                	mv	a0,a5
    80400d04:	60e2                	ld	ra,24(sp)
    80400d06:	6442                	ld	s0,16(sp)
    80400d08:	6105                	addi	sp,sp,32
    80400d0a:	8082                	ret

0000000080400d0c <_Z6unlinkPc>:
    80400d0c:	1101                	addi	sp,sp,-32
    80400d0e:	ec06                	sd	ra,24(sp)
    80400d10:	e822                	sd	s0,16(sp)
    80400d12:	1000                	addi	s0,sp,32
    80400d14:	fea43423          	sd	a0,-24(s0)
    80400d18:	4601                	li	a2,0
    80400d1a:	fe843583          	ld	a1,-24(s0)
    80400d1e:	f9c00513          	li	a0,-100
    80400d22:	f79ff0ef          	jal	ra,80400c9a <_Z12sys_unlinkatiPcj>
    80400d26:	87aa                	mv	a5,a0
    80400d28:	853e                	mv	a0,a5
    80400d2a:	60e2                	ld	ra,24(sp)
    80400d2c:	6442                	ld	s0,16(sp)
    80400d2e:	6105                	addi	sp,sp,32
    80400d30:	8082                	ret

0000000080400d32 <_Z5unamePv>:
    80400d32:	1101                	addi	sp,sp,-32
    80400d34:	ec06                	sd	ra,24(sp)
    80400d36:	e822                	sd	s0,16(sp)
    80400d38:	1000                	addi	s0,sp,32
    80400d3a:	fea43423          	sd	a0,-24(s0)
    80400d3e:	fe843783          	ld	a5,-24(s0)
    80400d42:	85be                	mv	a1,a5
    80400d44:	0a000513          	li	a0,160
    80400d48:	933ff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400d4c:	87aa                	mv	a5,a0
    80400d4e:	2781                	sext.w	a5,a5
    80400d50:	853e                	mv	a0,a5
    80400d52:	60e2                	ld	ra,24(sp)
    80400d54:	6442                	ld	s0,16(sp)
    80400d56:	6105                	addi	sp,sp,32
    80400d58:	8082                	ret

0000000080400d5a <_Z3brkPv>:
    80400d5a:	1101                	addi	sp,sp,-32
    80400d5c:	ec06                	sd	ra,24(sp)
    80400d5e:	e822                	sd	s0,16(sp)
    80400d60:	1000                	addi	s0,sp,32
    80400d62:	fea43423          	sd	a0,-24(s0)
    80400d66:	fe843783          	ld	a5,-24(s0)
    80400d6a:	85be                	mv	a1,a5
    80400d6c:	0d600513          	li	a0,214
    80400d70:	90bff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400d74:	87aa                	mv	a5,a0
    80400d76:	2781                	sext.w	a5,a5
    80400d78:	853e                	mv	a0,a5
    80400d7a:	60e2                	ld	ra,24(sp)
    80400d7c:	6442                	ld	s0,16(sp)
    80400d7e:	6105                	addi	sp,sp,32
    80400d80:	8082                	ret

0000000080400d82 <_Z5chdirPKc>:
    80400d82:	1101                	addi	sp,sp,-32
    80400d84:	ec06                	sd	ra,24(sp)
    80400d86:	e822                	sd	s0,16(sp)
    80400d88:	1000                	addi	s0,sp,32
    80400d8a:	fea43423          	sd	a0,-24(s0)
    80400d8e:	fe843783          	ld	a5,-24(s0)
    80400d92:	85be                	mv	a1,a5
    80400d94:	03100513          	li	a0,49
    80400d98:	8e3ff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400d9c:	87aa                	mv	a5,a0
    80400d9e:	2781                	sext.w	a5,a5
    80400da0:	853e                	mv	a0,a5
    80400da2:	60e2                	ld	ra,24(sp)
    80400da4:	6442                	ld	s0,16(sp)
    80400da6:	6105                	addi	sp,sp,32
    80400da8:	8082                	ret

0000000080400daa <_Z5mkdirPKcj>:
    80400daa:	1101                	addi	sp,sp,-32
    80400dac:	ec06                	sd	ra,24(sp)
    80400dae:	e822                	sd	s0,16(sp)
    80400db0:	1000                	addi	s0,sp,32
    80400db2:	fea43423          	sd	a0,-24(s0)
    80400db6:	87ae                	mv	a5,a1
    80400db8:	fef42223          	sw	a5,-28(s0)
    80400dbc:	fe843783          	ld	a5,-24(s0)
    80400dc0:	fe446703          	lwu	a4,-28(s0)
    80400dc4:	86ba                	mv	a3,a4
    80400dc6:	863e                	mv	a2,a5
    80400dc8:	f9c00593          	li	a1,-100
    80400dcc:	02200513          	li	a0,34
    80400dd0:	8fbff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400dd4:	87aa                	mv	a5,a0
    80400dd6:	2781                	sext.w	a5,a5
    80400dd8:	853e                	mv	a0,a5
    80400dda:	60e2                	ld	ra,24(sp)
    80400ddc:	6442                	ld	s0,16(sp)
    80400dde:	6105                	addi	sp,sp,32
    80400de0:	8082                	ret

0000000080400de2 <_Z8getdentsiP14linux_dirent64m>:
    80400de2:	7179                	addi	sp,sp,-48
    80400de4:	f406                	sd	ra,40(sp)
    80400de6:	f022                	sd	s0,32(sp)
    80400de8:	1800                	addi	s0,sp,48
    80400dea:	87aa                	mv	a5,a0
    80400dec:	feb43023          	sd	a1,-32(s0)
    80400df0:	fcc43c23          	sd	a2,-40(s0)
    80400df4:	fef42623          	sw	a5,-20(s0)
    80400df8:	fec42783          	lw	a5,-20(s0)
    80400dfc:	fe043703          	ld	a4,-32(s0)
    80400e00:	fd843683          	ld	a3,-40(s0)
    80400e04:	863a                	mv	a2,a4
    80400e06:	85be                	mv	a1,a5
    80400e08:	03d00513          	li	a0,61
    80400e0c:	8bfff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400e10:	87aa                	mv	a5,a0
    80400e12:	2781                	sext.w	a5,a5
    80400e14:	853e                	mv	a0,a5
    80400e16:	70a2                	ld	ra,40(sp)
    80400e18:	7402                	ld	s0,32(sp)
    80400e1a:	6145                	addi	sp,sp,48
    80400e1c:	8082                	ret

0000000080400e1e <_Z4pipePi>:
    80400e1e:	1101                	addi	sp,sp,-32
    80400e20:	ec06                	sd	ra,24(sp)
    80400e22:	e822                	sd	s0,16(sp)
    80400e24:	1000                	addi	s0,sp,32
    80400e26:	fea43423          	sd	a0,-24(s0)
    80400e2a:	fe843783          	ld	a5,-24(s0)
    80400e2e:	4601                	li	a2,0
    80400e30:	85be                	mv	a1,a5
    80400e32:	03b00513          	li	a0,59
    80400e36:	869ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400e3a:	87aa                	mv	a5,a0
    80400e3c:	2781                	sext.w	a5,a5
    80400e3e:	853e                	mv	a0,a5
    80400e40:	60e2                	ld	ra,24(sp)
    80400e42:	6442                	ld	s0,16(sp)
    80400e44:	6105                	addi	sp,sp,32
    80400e46:	8082                	ret

0000000080400e48 <_Z3dupi>:
    80400e48:	1101                	addi	sp,sp,-32
    80400e4a:	ec06                	sd	ra,24(sp)
    80400e4c:	e822                	sd	s0,16(sp)
    80400e4e:	1000                	addi	s0,sp,32
    80400e50:	87aa                	mv	a5,a0
    80400e52:	fef42623          	sw	a5,-20(s0)
    80400e56:	fec42783          	lw	a5,-20(s0)
    80400e5a:	85be                	mv	a1,a5
    80400e5c:	455d                	li	a0,23
    80400e5e:	81dff0ef          	jal	ra,8040067a <_ZL10__syscall1ll>
    80400e62:	87aa                	mv	a5,a0
    80400e64:	2781                	sext.w	a5,a5
    80400e66:	853e                	mv	a0,a5
    80400e68:	60e2                	ld	ra,24(sp)
    80400e6a:	6442                	ld	s0,16(sp)
    80400e6c:	6105                	addi	sp,sp,32
    80400e6e:	8082                	ret

0000000080400e70 <_Z4dup2ii>:
    80400e70:	1101                	addi	sp,sp,-32
    80400e72:	ec06                	sd	ra,24(sp)
    80400e74:	e822                	sd	s0,16(sp)
    80400e76:	1000                	addi	s0,sp,32
    80400e78:	87aa                	mv	a5,a0
    80400e7a:	872e                	mv	a4,a1
    80400e7c:	fef42623          	sw	a5,-20(s0)
    80400e80:	87ba                	mv	a5,a4
    80400e82:	fef42423          	sw	a5,-24(s0)
    80400e86:	fec42783          	lw	a5,-20(s0)
    80400e8a:	fe842703          	lw	a4,-24(s0)
    80400e8e:	4681                	li	a3,0
    80400e90:	863a                	mv	a2,a4
    80400e92:	85be                	mv	a1,a5
    80400e94:	4561                	li	a0,24
    80400e96:	835ff0ef          	jal	ra,804006ca <_ZL10__syscall3llll>
    80400e9a:	87aa                	mv	a5,a0
    80400e9c:	2781                	sext.w	a5,a5
    80400e9e:	853e                	mv	a0,a5
    80400ea0:	60e2                	ld	ra,24(sp)
    80400ea2:	6442                	ld	s0,16(sp)
    80400ea4:	6105                	addi	sp,sp,32
    80400ea6:	8082                	ret

0000000080400ea8 <_Z5mountPKcS0_S0_mPKv>:
    80400ea8:	7139                	addi	sp,sp,-64
    80400eaa:	fc06                	sd	ra,56(sp)
    80400eac:	f822                	sd	s0,48(sp)
    80400eae:	0080                	addi	s0,sp,64
    80400eb0:	fea43423          	sd	a0,-24(s0)
    80400eb4:	feb43023          	sd	a1,-32(s0)
    80400eb8:	fcc43c23          	sd	a2,-40(s0)
    80400ebc:	fcd43823          	sd	a3,-48(s0)
    80400ec0:	fce43423          	sd	a4,-56(s0)
    80400ec4:	fe843583          	ld	a1,-24(s0)
    80400ec8:	fe043603          	ld	a2,-32(s0)
    80400ecc:	fd843683          	ld	a3,-40(s0)
    80400ed0:	fd043703          	ld	a4,-48(s0)
    80400ed4:	fc843783          	ld	a5,-56(s0)
    80400ed8:	02800513          	li	a0,40
    80400edc:	85fff0ef          	jal	ra,8040073a <_ZL10__syscall5llllll>
    80400ee0:	87aa                	mv	a5,a0
    80400ee2:	2781                	sext.w	a5,a5
    80400ee4:	853e                	mv	a0,a5
    80400ee6:	70e2                	ld	ra,56(sp)
    80400ee8:	7442                	ld	s0,48(sp)
    80400eea:	6121                	addi	sp,sp,64
    80400eec:	8082                	ret

0000000080400eee <_Z6umountPKc>:
    80400eee:	1101                	addi	sp,sp,-32
    80400ef0:	ec06                	sd	ra,24(sp)
    80400ef2:	e822                	sd	s0,16(sp)
    80400ef4:	1000                	addi	s0,sp,32
    80400ef6:	fea43423          	sd	a0,-24(s0)
    80400efa:	fe843783          	ld	a5,-24(s0)
    80400efe:	4601                	li	a2,0
    80400f00:	85be                	mv	a1,a5
    80400f02:	02700513          	li	a0,39
    80400f06:	f98ff0ef          	jal	ra,8040069e <_ZL10__syscall2lll>
    80400f0a:	87aa                	mv	a5,a0
    80400f0c:	2781                	sext.w	a5,a5
    80400f0e:	853e                	mv	a0,a5
    80400f10:	60e2                	ld	ra,24(sp)
    80400f12:	6442                	ld	s0,16(sp)
    80400f14:	6105                	addi	sp,sp,32
    80400f16:	8082                	ret

Disassembly of section .interp:

0000000080400f18 <.interp>:
    80400f18:	62696c2f          	.4byte	0x62696c2f
    80400f1c:	2d646c2f          	.4byte	0x2d646c2f
    80400f20:	696c                	ld	a1,208(a0)
    80400f22:	756e                	ld	a0,248(sp)
    80400f24:	2d78                	fld	fa4,216(a0)
    80400f26:	6972                	ld	s2,280(sp)
    80400f28:	36766373          	csrrsi	t1,0x367,12
    80400f2c:	2d34                	fld	fa3,88(a0)
    80400f2e:	706c                	ld	a1,224(s0)
    80400f30:	3436                	fld	fs0,360(sp)
    80400f32:	2e64                	fld	fs1,216(a2)
    80400f34:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000080400f3c <.note.gnu.build-id>:
    80400f3c:	0004                	.2byte	0x4
    80400f3e:	0000                	unimp
    80400f40:	0014                	.2byte	0x14
    80400f42:	0000                	unimp
    80400f44:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    80400f48:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    80400f4c:	34fc                	fld	fa5,232(s1)
    80400f4e:	57b4                	lw	a3,104(a5)
    80400f50:	03354537          	lui	a0,0x3354
    80400f54:	1336f86f          	jal	a6,80470886 <_GLOBAL_OFFSET_TABLE_+0x6f666>
    80400f58:	2f7a                	fld	ft10,408(sp)
    80400f5a:	2539                	addiw	a0,a0,14 # 335400e <BASE_ADDRESS-0x7d0abff2>
    80400f5c:	9d1b9e27          	.4byte	0x9d1b9e27

Disassembly of section .dynsym:

0000000080400f60 <.dynsym>:
	...
    80400f7c:	00010003          	lb	zero,0(sp)
    80400f80:	0000                	unimp
    80400f82:	8040                	.2byte	0x8040
	...

Disassembly of section .dynstr:

0000000080400f90 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000080400f98 <.gnu.hash>:
    80400f98:	0001                	nop
    80400f9a:	0000                	unimp
    80400f9c:	0001                	nop
    80400f9e:	0000                	unimp
    80400fa0:	0001                	nop
	...

Disassembly of section .bss:

0000000080400fb8 <uni>:
    80400fb8:	0000                	unimp
	...

0000000080400fbc <posda>:
    80400fbc:	0000                	unimp
	...

0000000080400fc0 <c>:
	...

0000000080400fc8 <buf>:
	...

Disassembly of section .data:

0000000080401090 <_ZL6digits>:
    80401090:	3130                	fld	fa2,96(a0)
    80401092:	3332                	fld	ft6,296(sp)
    80401094:	3534                	fld	fa3,104(a0)
    80401096:	3736                	fld	fa4,360(sp)
    80401098:	3938                	fld	fa4,112(a0)
    8040109a:	6261                	lui	tp,0x18
    8040109c:	66656463          	bltu	a0,t1,80401704 <_GLOBAL_OFFSET_TABLE_+0x4e4>
	...

00000000804010a8 <nuclear>:
    804010a8:	7566                	ld	a0,120(sp)
    804010aa:	6e6f6973          	csrrsi	s2,0x6e6,30
    804010ae:	000a                	c.slli	zero,0x2

00000000804010b0 <a>:
    804010b0:	0009                	c.nop	2
	...

00000000804010b4 <b>:
    804010b4:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    804010b8:	6e28                	ld	a0,88(a2)
    804010ba:	6c75                	lui	s8,0x1d
    804010bc:	296c                	fld	fa1,208(a0)
    804010be:	0000                	unimp
    804010c0:	6572                	ld	a0,280(sp)
    804010c2:	6c61                	lui	s8,0x18
    804010c4:	7320                	ld	s0,96(a4)
    804010c6:	6568                	ld	a0,200(a0)
    804010c8:	6c6c                	ld	a1,216(s0)
    804010ca:	7320                	ld	s0,96(a4)
    804010cc:	6174                	ld	a3,192(a0)
    804010ce:	6572                	ld	a0,280(sp)
    804010d0:	2164                	fld	fs1,192(a0)
    804010d2:	000a                	c.slli	zero,0x2
    804010d4:	0000                	unimp
    804010d6:	0000                	unimp
    804010d8:	003e                	c.slli	zero,0xf
    804010da:	0000                	unimp
    804010dc:	0000                	unimp
    804010de:	0000                	unimp
    804010e0:	000a                	c.slli	zero,0x2
    804010e2:	0000                	unimp
    804010e4:	0000                	unimp
    804010e6:	0000                	unimp
    804010e8:	7865                	lui	a6,0xffff9
    804010ea:	7469                	lui	s0,0xffffa
    804010ec:	0000                	unimp
    804010ee:	0000                	unimp
    804010f0:	6e6e6f63          	bltu	t3,t1,804017ee <_GLOBAL_OFFSET_TABLE_+0x5ce>
    804010f4:	6520746f          	jal	s0,80408746 <_GLOBAL_OFFSET_TABLE_+0x7526>
    804010f8:	6378                	ld	a4,192(a4)
    804010fa:	7475                	lui	s0,0xffffd
    804010fc:	2065                	.2byte	0x2065
    804010fe:	7325                	lui	t1,0xfffe9
    80401100:	0a2e                	slli	s4,s4,0xb
    80401102:	0000                	unimp
    80401104:	0000                	unimp
    80401106:	0000                	unimp
    80401108:	3a62                	fld	fs4,56(sp)
    8040110a:	6425                	lui	s0,0x9
    8040110c:	000a                	c.slli	zero,0x2

Disassembly of section .dynamic:

0000000080401110 <.dynamic>:
    80401110:	fef5                	bnez	a3,8040110c <b+0x58>
    80401112:	6fff                	.2byte	0x6fff
    80401114:	0000                	unimp
    80401116:	0000                	unimp
    80401118:	0f98                	addi	a4,sp,976
    8040111a:	8040                	.2byte	0x8040
    8040111c:	0000                	unimp
    8040111e:	0000                	unimp
    80401120:	0005                	c.nop	1
    80401122:	0000                	unimp
    80401124:	0000                	unimp
    80401126:	0000                	unimp
    80401128:	0f90                	addi	a2,sp,976
    8040112a:	8040                	.2byte	0x8040
    8040112c:	0000                	unimp
    8040112e:	0000                	unimp
    80401130:	0006                	c.slli	zero,0x1
    80401132:	0000                	unimp
    80401134:	0000                	unimp
    80401136:	0000                	unimp
    80401138:	0f60                	addi	s0,sp,924
    8040113a:	8040                	.2byte	0x8040
    8040113c:	0000                	unimp
    8040113e:	0000                	unimp
    80401140:	000a                	c.slli	zero,0x2
    80401142:	0000                	unimp
    80401144:	0000                	unimp
    80401146:	0000                	unimp
    80401148:	0001                	nop
    8040114a:	0000                	unimp
    8040114c:	0000                	unimp
    8040114e:	0000                	unimp
    80401150:	0000000b          	.4byte	0xb
    80401154:	0000                	unimp
    80401156:	0000                	unimp
    80401158:	0018                	.2byte	0x18
    8040115a:	0000                	unimp
    8040115c:	0000                	unimp
    8040115e:	0000                	unimp
    80401160:	0015                	c.nop	5
	...
    8040116e:	0000                	unimp
    80401170:	00000007          	.4byte	0x7
	...
    80401180:	0008                	.2byte	0x8
	...
    8040118e:	0000                	unimp
    80401190:	0009                	c.nop	2
    80401192:	0000                	unimp
    80401194:	0000                	unimp
    80401196:	0000                	unimp
    80401198:	0018                	.2byte	0x18
    8040119a:	0000                	unimp
    8040119c:	0000                	unimp
    8040119e:	0000                	unimp
    804011a0:	001e                	c.slli	zero,0x7
    804011a2:	0000                	unimp
    804011a4:	0000                	unimp
    804011a6:	0000                	unimp
    804011a8:	0008                	.2byte	0x8
    804011aa:	0000                	unimp
    804011ac:	0000                	unimp
    804011ae:	0000                	unimp
    804011b0:	6ffffffb          	.4byte	0x6ffffffb
    804011b4:	0000                	unimp
    804011b6:	0000                	unimp
    804011b8:	0001                	nop
    804011ba:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000080401220 <.got>:
    80401220:	1110                	addi	a2,sp,160
    80401222:	8040                	.2byte	0x8040
    80401224:	0000                	unimp
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <BASE_ADDRESS-0x803e2ff4>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <BASE_ADDRESS-0x803eb010>
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <BASE_ADDRESS-0x803fffec>
   c:	0028                	addi	a0,sp,8
   e:	0000                	unimp
  10:	7205                	lui	tp,0xfffe1
  12:	3676                	fld	fa2,376(sp)
  14:	6934                	ld	a3,80(a0)
  16:	7032                	.2byte	0x7032
  18:	5f30                	lw	a2,120(a4)
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xffffffff7fbdfddb>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

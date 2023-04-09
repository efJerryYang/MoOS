
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
    80400016:	77e000ef          	jal	ra,80400794 <_Z4readiPvy>
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
    80400040:	78e000ef          	jal	ra,804007ce <_Z5writeiPKvy>
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
    804000fe:	ef670713          	addi	a4,a4,-266 # 80400ff0 <_ZL6digits>
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
    804001c8:	e2c70713          	addi	a4,a4,-468 # 80400ff0 <_ZL6digits>
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
    8040036e:	ca678793          	addi	a5,a5,-858 # 80401010 <nuclear+0x8>
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
    804004e8:	1101                	addi	sp,sp,-32
    804004ea:	ec06                	sd	ra,24(sp)
    804004ec:	e822                	sd	s0,16(sp)
    804004ee:	1000                	addi	s0,sp,32
    804004f0:	00001517          	auipc	a0,0x1
    804004f4:	b2850513          	addi	a0,a0,-1240 # 80401018 <nuclear+0x10>
    804004f8:	d0bff0ef          	jal	ra,80400202 <_Z6printfPcz>
    804004fc:	00001517          	auipc	a0,0x1
    80400500:	b3450513          	addi	a0,a0,-1228 # 80401030 <nuclear+0x28>
    80400504:	cffff0ef          	jal	ra,80400202 <_Z6printfPcz>
    80400508:	afbff0ef          	jal	ra,80400002 <_Z7getcharv>
    8040050c:	87aa                	mv	a5,a0
    8040050e:	fef407a3          	sb	a5,-17(s0)
    80400512:	00001797          	auipc	a5,0x1
    80400516:	a1678793          	addi	a5,a5,-1514 # 80400f28 <buf>
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
    80400562:	ada50513          	addi	a0,a0,-1318 # 80401038 <nuclear+0x30>
    80400566:	c9dff0ef          	jal	ra,80400202 <_Z6printfPcz>
    8040056a:	00001517          	auipc	a0,0x1
    8040056e:	9be50513          	addi	a0,a0,-1602 # 80400f28 <buf>
    80400572:	e89ff0ef          	jal	ra,804003fa <_Z6strlenPc>
    80400576:	87aa                	mv	a5,a0
    80400578:	0017b793          	seqz	a5,a5
    8040057c:	0ff7f793          	zext.b	a5,a5
    80400580:	ef85                	bnez	a5,804005b8 <main+0xd0>
    80400582:	00001597          	auipc	a1,0x1
    80400586:	abe58593          	addi	a1,a1,-1346 # 80401040 <nuclear+0x38>
    8040058a:	00001517          	auipc	a0,0x1
    8040058e:	99e50513          	addi	a0,a0,-1634 # 80400f28 <buf>
    80400592:	eabff0ef          	jal	ra,8040043c <_Z6strcmpPcS_>
    80400596:	87aa                	mv	a5,a0
    80400598:	0017b793          	seqz	a5,a5
    8040059c:	0ff7f793          	zext.b	a5,a5
    804005a0:	ef91                	bnez	a5,804005bc <main+0xd4>
    804005a2:	00001597          	auipc	a1,0x1
    804005a6:	98658593          	addi	a1,a1,-1658 # 80400f28 <buf>
    804005aa:	00001517          	auipc	a0,0x1
    804005ae:	a9e50513          	addi	a0,a0,-1378 # 80401048 <nuclear+0x40>
    804005b2:	c51ff0ef          	jal	ra,80400202 <_Z6printfPcz>
    804005b6:	b799                	j	804004fc <main+0x14>
    804005b8:	0001                	nop
    804005ba:	b789                	j	804004fc <main+0x14>
    804005bc:	0001                	nop
    804005be:	557d                	li	a0,-1
    804005c0:	2c4000ef          	jal	ra,80400884 <_Z4exiti>
    804005c4:	4781                	li	a5,0
    804005c6:	853e                	mv	a0,a5
    804005c8:	60e2                	ld	ra,24(sp)
    804005ca:	6442                	ld	s0,16(sp)
    804005cc:	6105                	addi	sp,sp,32
    804005ce:	8082                	ret

00000000804005d0 <_ZL10__syscall0l>:
    804005d0:	1101                	addi	sp,sp,-32
    804005d2:	ec22                	sd	s0,24(sp)
    804005d4:	1000                	addi	s0,sp,32
    804005d6:	fea43423          	sd	a0,-24(s0)
    804005da:	fe843883          	ld	a7,-24(s0)
    804005de:	00000073          	ecall
    804005e2:	87aa                	mv	a5,a0
    804005e4:	853e                	mv	a0,a5
    804005e6:	6462                	ld	s0,24(sp)
    804005e8:	6105                	addi	sp,sp,32
    804005ea:	8082                	ret

00000000804005ec <_ZL10__syscall1ll>:
    804005ec:	1101                	addi	sp,sp,-32
    804005ee:	ec22                	sd	s0,24(sp)
    804005f0:	1000                	addi	s0,sp,32
    804005f2:	fea43423          	sd	a0,-24(s0)
    804005f6:	feb43023          	sd	a1,-32(s0)
    804005fa:	fe843883          	ld	a7,-24(s0)
    804005fe:	fe043503          	ld	a0,-32(s0)
    80400602:	00000073          	ecall
    80400606:	87aa                	mv	a5,a0
    80400608:	853e                	mv	a0,a5
    8040060a:	6462                	ld	s0,24(sp)
    8040060c:	6105                	addi	sp,sp,32
    8040060e:	8082                	ret

0000000080400610 <_ZL10__syscall2lll>:
    80400610:	7179                	addi	sp,sp,-48
    80400612:	f422                	sd	s0,40(sp)
    80400614:	1800                	addi	s0,sp,48
    80400616:	fea43423          	sd	a0,-24(s0)
    8040061a:	feb43023          	sd	a1,-32(s0)
    8040061e:	fcc43c23          	sd	a2,-40(s0)
    80400622:	fe843883          	ld	a7,-24(s0)
    80400626:	fe043503          	ld	a0,-32(s0)
    8040062a:	fd843583          	ld	a1,-40(s0)
    8040062e:	00000073          	ecall
    80400632:	87aa                	mv	a5,a0
    80400634:	853e                	mv	a0,a5
    80400636:	7422                	ld	s0,40(sp)
    80400638:	6145                	addi	sp,sp,48
    8040063a:	8082                	ret

000000008040063c <_ZL10__syscall3llll>:
    8040063c:	7179                	addi	sp,sp,-48
    8040063e:	f422                	sd	s0,40(sp)
    80400640:	1800                	addi	s0,sp,48
    80400642:	fea43423          	sd	a0,-24(s0)
    80400646:	feb43023          	sd	a1,-32(s0)
    8040064a:	fcc43c23          	sd	a2,-40(s0)
    8040064e:	fcd43823          	sd	a3,-48(s0)
    80400652:	fe843883          	ld	a7,-24(s0)
    80400656:	fe043503          	ld	a0,-32(s0)
    8040065a:	fd843583          	ld	a1,-40(s0)
    8040065e:	fd043603          	ld	a2,-48(s0)
    80400662:	00000073          	ecall
    80400666:	87aa                	mv	a5,a0
    80400668:	853e                	mv	a0,a5
    8040066a:	7422                	ld	s0,40(sp)
    8040066c:	6145                	addi	sp,sp,48
    8040066e:	8082                	ret

0000000080400670 <_ZL10__syscall4lllll>:
    80400670:	7139                	addi	sp,sp,-64
    80400672:	fc22                	sd	s0,56(sp)
    80400674:	0080                	addi	s0,sp,64
    80400676:	fea43423          	sd	a0,-24(s0)
    8040067a:	feb43023          	sd	a1,-32(s0)
    8040067e:	fcc43c23          	sd	a2,-40(s0)
    80400682:	fcd43823          	sd	a3,-48(s0)
    80400686:	fce43423          	sd	a4,-56(s0)
    8040068a:	fe843883          	ld	a7,-24(s0)
    8040068e:	fe043503          	ld	a0,-32(s0)
    80400692:	fd843583          	ld	a1,-40(s0)
    80400696:	fd043603          	ld	a2,-48(s0)
    8040069a:	fc843683          	ld	a3,-56(s0)
    8040069e:	00000073          	ecall
    804006a2:	87aa                	mv	a5,a0
    804006a4:	853e                	mv	a0,a5
    804006a6:	7462                	ld	s0,56(sp)
    804006a8:	6121                	addi	sp,sp,64
    804006aa:	8082                	ret

00000000804006ac <_ZL10__syscall5llllll>:
    804006ac:	7139                	addi	sp,sp,-64
    804006ae:	fc22                	sd	s0,56(sp)
    804006b0:	0080                	addi	s0,sp,64
    804006b2:	fea43423          	sd	a0,-24(s0)
    804006b6:	feb43023          	sd	a1,-32(s0)
    804006ba:	fcc43c23          	sd	a2,-40(s0)
    804006be:	fcd43823          	sd	a3,-48(s0)
    804006c2:	fce43423          	sd	a4,-56(s0)
    804006c6:	fcf43023          	sd	a5,-64(s0)
    804006ca:	fe843883          	ld	a7,-24(s0)
    804006ce:	fe043503          	ld	a0,-32(s0)
    804006d2:	fd843583          	ld	a1,-40(s0)
    804006d6:	fd043603          	ld	a2,-48(s0)
    804006da:	fc843683          	ld	a3,-56(s0)
    804006de:	fc043703          	ld	a4,-64(s0)
    804006e2:	00000073          	ecall
    804006e6:	87aa                	mv	a5,a0
    804006e8:	853e                	mv	a0,a5
    804006ea:	7462                	ld	s0,56(sp)
    804006ec:	6121                	addi	sp,sp,64
    804006ee:	8082                	ret

00000000804006f0 <_Z4openPKci>:
    804006f0:	1101                	addi	sp,sp,-32
    804006f2:	ec06                	sd	ra,24(sp)
    804006f4:	e822                	sd	s0,16(sp)
    804006f6:	1000                	addi	s0,sp,32
    804006f8:	fea43423          	sd	a0,-24(s0)
    804006fc:	87ae                	mv	a5,a1
    804006fe:	fef42223          	sw	a5,-28(s0)
    80400702:	fe843783          	ld	a5,-24(s0)
    80400706:	fe442683          	lw	a3,-28(s0)
    8040070a:	4709                	li	a4,2
    8040070c:	863e                	mv	a2,a5
    8040070e:	f9c00593          	li	a1,-100
    80400712:	03800513          	li	a0,56
    80400716:	f5bff0ef          	jal	ra,80400670 <_ZL10__syscall4lllll>
    8040071a:	87aa                	mv	a5,a0
    8040071c:	2781                	sext.w	a5,a5
    8040071e:	853e                	mv	a0,a5
    80400720:	60e2                	ld	ra,24(sp)
    80400722:	6442                	ld	s0,16(sp)
    80400724:	6105                	addi	sp,sp,32
    80400726:	8082                	ret

0000000080400728 <_Z6openatiPKci>:
    80400728:	1101                	addi	sp,sp,-32
    8040072a:	ec06                	sd	ra,24(sp)
    8040072c:	e822                	sd	s0,16(sp)
    8040072e:	1000                	addi	s0,sp,32
    80400730:	87aa                	mv	a5,a0
    80400732:	feb43023          	sd	a1,-32(s0)
    80400736:	8732                	mv	a4,a2
    80400738:	fef42623          	sw	a5,-20(s0)
    8040073c:	87ba                	mv	a5,a4
    8040073e:	fef42423          	sw	a5,-24(s0)
    80400742:	fec42783          	lw	a5,-20(s0)
    80400746:	fe043603          	ld	a2,-32(s0)
    8040074a:	fe842683          	lw	a3,-24(s0)
    8040074e:	18000713          	li	a4,384
    80400752:	85be                	mv	a1,a5
    80400754:	03800513          	li	a0,56
    80400758:	f19ff0ef          	jal	ra,80400670 <_ZL10__syscall4lllll>
    8040075c:	87aa                	mv	a5,a0
    8040075e:	2781                	sext.w	a5,a5
    80400760:	853e                	mv	a0,a5
    80400762:	60e2                	ld	ra,24(sp)
    80400764:	6442                	ld	s0,16(sp)
    80400766:	6105                	addi	sp,sp,32
    80400768:	8082                	ret

000000008040076a <_Z5closei>:
    8040076a:	1101                	addi	sp,sp,-32
    8040076c:	ec06                	sd	ra,24(sp)
    8040076e:	e822                	sd	s0,16(sp)
    80400770:	1000                	addi	s0,sp,32
    80400772:	87aa                	mv	a5,a0
    80400774:	fef42623          	sw	a5,-20(s0)
    80400778:	fec42783          	lw	a5,-20(s0)
    8040077c:	85be                	mv	a1,a5
    8040077e:	03900513          	li	a0,57
    80400782:	e6bff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400786:	87aa                	mv	a5,a0
    80400788:	2781                	sext.w	a5,a5
    8040078a:	853e                	mv	a0,a5
    8040078c:	60e2                	ld	ra,24(sp)
    8040078e:	6442                	ld	s0,16(sp)
    80400790:	6105                	addi	sp,sp,32
    80400792:	8082                	ret

0000000080400794 <_Z4readiPvy>:
    80400794:	7179                	addi	sp,sp,-48
    80400796:	f406                	sd	ra,40(sp)
    80400798:	f022                	sd	s0,32(sp)
    8040079a:	1800                	addi	s0,sp,48
    8040079c:	87aa                	mv	a5,a0
    8040079e:	feb43023          	sd	a1,-32(s0)
    804007a2:	fcc43c23          	sd	a2,-40(s0)
    804007a6:	fef42623          	sw	a5,-20(s0)
    804007aa:	fec42783          	lw	a5,-20(s0)
    804007ae:	fe043703          	ld	a4,-32(s0)
    804007b2:	fd843683          	ld	a3,-40(s0)
    804007b6:	863a                	mv	a2,a4
    804007b8:	85be                	mv	a1,a5
    804007ba:	03f00513          	li	a0,63
    804007be:	e7fff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    804007c2:	87aa                	mv	a5,a0
    804007c4:	853e                	mv	a0,a5
    804007c6:	70a2                	ld	ra,40(sp)
    804007c8:	7402                	ld	s0,32(sp)
    804007ca:	6145                	addi	sp,sp,48
    804007cc:	8082                	ret

00000000804007ce <_Z5writeiPKvy>:
    804007ce:	7179                	addi	sp,sp,-48
    804007d0:	f406                	sd	ra,40(sp)
    804007d2:	f022                	sd	s0,32(sp)
    804007d4:	1800                	addi	s0,sp,48
    804007d6:	87aa                	mv	a5,a0
    804007d8:	feb43023          	sd	a1,-32(s0)
    804007dc:	fcc43c23          	sd	a2,-40(s0)
    804007e0:	fef42623          	sw	a5,-20(s0)
    804007e4:	fec42783          	lw	a5,-20(s0)
    804007e8:	fe043703          	ld	a4,-32(s0)
    804007ec:	fd843683          	ld	a3,-40(s0)
    804007f0:	863a                	mv	a2,a4
    804007f2:	85be                	mv	a1,a5
    804007f4:	04000513          	li	a0,64
    804007f8:	e45ff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    804007fc:	87aa                	mv	a5,a0
    804007fe:	853e                	mv	a0,a5
    80400800:	70a2                	ld	ra,40(sp)
    80400802:	7402                	ld	s0,32(sp)
    80400804:	6145                	addi	sp,sp,48
    80400806:	8082                	ret

0000000080400808 <_Z6getpidv>:
    80400808:	1141                	addi	sp,sp,-16
    8040080a:	e406                	sd	ra,8(sp)
    8040080c:	e022                	sd	s0,0(sp)
    8040080e:	0800                	addi	s0,sp,16
    80400810:	0ac00513          	li	a0,172
    80400814:	dbdff0ef          	jal	ra,804005d0 <_ZL10__syscall0l>
    80400818:	87aa                	mv	a5,a0
    8040081a:	2781                	sext.w	a5,a5
    8040081c:	853e                	mv	a0,a5
    8040081e:	60a2                	ld	ra,8(sp)
    80400820:	6402                	ld	s0,0(sp)
    80400822:	0141                	addi	sp,sp,16
    80400824:	8082                	ret

0000000080400826 <_Z7getppidv>:
    80400826:	1141                	addi	sp,sp,-16
    80400828:	e406                	sd	ra,8(sp)
    8040082a:	e022                	sd	s0,0(sp)
    8040082c:	0800                	addi	s0,sp,16
    8040082e:	0ad00513          	li	a0,173
    80400832:	d9fff0ef          	jal	ra,804005d0 <_ZL10__syscall0l>
    80400836:	87aa                	mv	a5,a0
    80400838:	2781                	sext.w	a5,a5
    8040083a:	853e                	mv	a0,a5
    8040083c:	60a2                	ld	ra,8(sp)
    8040083e:	6402                	ld	s0,0(sp)
    80400840:	0141                	addi	sp,sp,16
    80400842:	8082                	ret

0000000080400844 <_Z11sched_yieldv>:
    80400844:	1141                	addi	sp,sp,-16
    80400846:	e406                	sd	ra,8(sp)
    80400848:	e022                	sd	s0,0(sp)
    8040084a:	0800                	addi	s0,sp,16
    8040084c:	07c00513          	li	a0,124
    80400850:	d81ff0ef          	jal	ra,804005d0 <_ZL10__syscall0l>
    80400854:	87aa                	mv	a5,a0
    80400856:	2781                	sext.w	a5,a5
    80400858:	853e                	mv	a0,a5
    8040085a:	60a2                	ld	ra,8(sp)
    8040085c:	6402                	ld	s0,0(sp)
    8040085e:	0141                	addi	sp,sp,16
    80400860:	8082                	ret

0000000080400862 <_Z4forkv>:
    80400862:	1141                	addi	sp,sp,-16
    80400864:	e406                	sd	ra,8(sp)
    80400866:	e022                	sd	s0,0(sp)
    80400868:	0800                	addi	s0,sp,16
    8040086a:	4601                	li	a2,0
    8040086c:	45c5                	li	a1,17
    8040086e:	0dc00513          	li	a0,220
    80400872:	d9fff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400876:	87aa                	mv	a5,a0
    80400878:	2781                	sext.w	a5,a5
    8040087a:	853e                	mv	a0,a5
    8040087c:	60a2                	ld	ra,8(sp)
    8040087e:	6402                	ld	s0,0(sp)
    80400880:	0141                	addi	sp,sp,16
    80400882:	8082                	ret

0000000080400884 <_Z4exiti>:
    80400884:	1101                	addi	sp,sp,-32
    80400886:	ec06                	sd	ra,24(sp)
    80400888:	e822                	sd	s0,16(sp)
    8040088a:	1000                	addi	s0,sp,32
    8040088c:	87aa                	mv	a5,a0
    8040088e:	fef42623          	sw	a5,-20(s0)
    80400892:	fec42783          	lw	a5,-20(s0)
    80400896:	85be                	mv	a1,a5
    80400898:	05d00513          	li	a0,93
    8040089c:	d51ff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    804008a0:	0001                	nop
    804008a2:	60e2                	ld	ra,24(sp)
    804008a4:	6442                	ld	s0,16(sp)
    804008a6:	6105                	addi	sp,sp,32
    804008a8:	8082                	ret

00000000804008aa <_Z7waitpidiPii>:
    804008aa:	1101                	addi	sp,sp,-32
    804008ac:	ec06                	sd	ra,24(sp)
    804008ae:	e822                	sd	s0,16(sp)
    804008b0:	1000                	addi	s0,sp,32
    804008b2:	87aa                	mv	a5,a0
    804008b4:	feb43023          	sd	a1,-32(s0)
    804008b8:	8732                	mv	a4,a2
    804008ba:	fef42623          	sw	a5,-20(s0)
    804008be:	87ba                	mv	a5,a4
    804008c0:	fef42423          	sw	a5,-24(s0)
    804008c4:	fec42783          	lw	a5,-20(s0)
    804008c8:	fe043603          	ld	a2,-32(s0)
    804008cc:	fe842683          	lw	a3,-24(s0)
    804008d0:	4701                	li	a4,0
    804008d2:	85be                	mv	a1,a5
    804008d4:	10400513          	li	a0,260
    804008d8:	d99ff0ef          	jal	ra,80400670 <_ZL10__syscall4lllll>
    804008dc:	87aa                	mv	a5,a0
    804008de:	2781                	sext.w	a5,a5
    804008e0:	853e                	mv	a0,a5
    804008e2:	60e2                	ld	ra,24(sp)
    804008e4:	6442                	ld	s0,16(sp)
    804008e6:	6105                	addi	sp,sp,32
    804008e8:	8082                	ret

00000000804008ea <_Z4execPc>:
    804008ea:	1101                	addi	sp,sp,-32
    804008ec:	ec06                	sd	ra,24(sp)
    804008ee:	e822                	sd	s0,16(sp)
    804008f0:	1000                	addi	s0,sp,32
    804008f2:	fea43423          	sd	a0,-24(s0)
    804008f6:	fe843783          	ld	a5,-24(s0)
    804008fa:	85be                	mv	a1,a5
    804008fc:	0dd00513          	li	a0,221
    80400900:	cedff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400904:	87aa                	mv	a5,a0
    80400906:	2781                	sext.w	a5,a5
    80400908:	853e                	mv	a0,a5
    8040090a:	60e2                	ld	ra,24(sp)
    8040090c:	6442                	ld	s0,16(sp)
    8040090e:	6105                	addi	sp,sp,32
    80400910:	8082                	ret

0000000080400912 <_Z6execvePKcPKPcS3_>:
    80400912:	7179                	addi	sp,sp,-48
    80400914:	f406                	sd	ra,40(sp)
    80400916:	f022                	sd	s0,32(sp)
    80400918:	1800                	addi	s0,sp,48
    8040091a:	fea43423          	sd	a0,-24(s0)
    8040091e:	feb43023          	sd	a1,-32(s0)
    80400922:	fcc43c23          	sd	a2,-40(s0)
    80400926:	fe843783          	ld	a5,-24(s0)
    8040092a:	fe043703          	ld	a4,-32(s0)
    8040092e:	fd843683          	ld	a3,-40(s0)
    80400932:	863a                	mv	a2,a4
    80400934:	85be                	mv	a1,a5
    80400936:	0dd00513          	li	a0,221
    8040093a:	d03ff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    8040093e:	87aa                	mv	a5,a0
    80400940:	2781                	sext.w	a5,a5
    80400942:	853e                	mv	a0,a5
    80400944:	70a2                	ld	ra,40(sp)
    80400946:	7402                	ld	s0,32(sp)
    80400948:	6145                	addi	sp,sp,48
    8040094a:	8082                	ret

000000008040094c <_Z5timesPv>:
    8040094c:	1101                	addi	sp,sp,-32
    8040094e:	ec06                	sd	ra,24(sp)
    80400950:	e822                	sd	s0,16(sp)
    80400952:	1000                	addi	s0,sp,32
    80400954:	fea43423          	sd	a0,-24(s0)
    80400958:	fe843783          	ld	a5,-24(s0)
    8040095c:	85be                	mv	a1,a5
    8040095e:	09900513          	li	a0,153
    80400962:	c8bff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400966:	87aa                	mv	a5,a0
    80400968:	2781                	sext.w	a5,a5
    8040096a:	853e                	mv	a0,a5
    8040096c:	60e2                	ld	ra,24(sp)
    8040096e:	6442                	ld	s0,16(sp)
    80400970:	6105                	addi	sp,sp,32
    80400972:	8082                	ret

0000000080400974 <_Z8get_timev>:
    80400974:	7179                	addi	sp,sp,-48
    80400976:	f406                	sd	ra,40(sp)
    80400978:	f022                	sd	s0,32(sp)
    8040097a:	1800                	addi	s0,sp,48
    8040097c:	fd840793          	addi	a5,s0,-40
    80400980:	4581                	li	a1,0
    80400982:	853e                	mv	a0,a5
    80400984:	040000ef          	jal	ra,804009c4 <_Z12sys_get_timeP7TimeVali>
    80400988:	87aa                	mv	a5,a0
    8040098a:	fef42623          	sw	a5,-20(s0)
    8040098e:	fec42783          	lw	a5,-20(s0)
    80400992:	2781                	sext.w	a5,a5
    80400994:	e395                	bnez	a5,804009b8 <_Z8get_timev+0x44>
    80400996:	fd843703          	ld	a4,-40(s0)
    8040099a:	67c1                	lui	a5,0x10
    8040099c:	17fd                	addi	a5,a5,-1 # ffff <_start-0x803f0001>
    8040099e:	8f7d                	and	a4,a4,a5
    804009a0:	3e800793          	li	a5,1000
    804009a4:	02f70733          	mul	a4,a4,a5
    804009a8:	fe043683          	ld	a3,-32(s0)
    804009ac:	3e800793          	li	a5,1000
    804009b0:	02f6d7b3          	divu	a5,a3,a5
    804009b4:	97ba                	add	a5,a5,a4
    804009b6:	a011                	j	804009ba <_Z8get_timev+0x46>
    804009b8:	57fd                	li	a5,-1
    804009ba:	853e                	mv	a0,a5
    804009bc:	70a2                	ld	ra,40(sp)
    804009be:	7402                	ld	s0,32(sp)
    804009c0:	6145                	addi	sp,sp,48
    804009c2:	8082                	ret

00000000804009c4 <_Z12sys_get_timeP7TimeVali>:
    804009c4:	1101                	addi	sp,sp,-32
    804009c6:	ec06                	sd	ra,24(sp)
    804009c8:	e822                	sd	s0,16(sp)
    804009ca:	1000                	addi	s0,sp,32
    804009cc:	fea43423          	sd	a0,-24(s0)
    804009d0:	87ae                	mv	a5,a1
    804009d2:	fef42223          	sw	a5,-28(s0)
    804009d6:	fe843783          	ld	a5,-24(s0)
    804009da:	fe442703          	lw	a4,-28(s0)
    804009de:	863a                	mv	a2,a4
    804009e0:	85be                	mv	a1,a5
    804009e2:	0a900513          	li	a0,169
    804009e6:	c2bff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    804009ea:	87aa                	mv	a5,a0
    804009ec:	2781                	sext.w	a5,a5
    804009ee:	853e                	mv	a0,a5
    804009f0:	60e2                	ld	ra,24(sp)
    804009f2:	6442                	ld	s0,16(sp)
    804009f4:	6105                	addi	sp,sp,32
    804009f6:	8082                	ret

00000000804009f8 <_Z4timePm>:
    804009f8:	1101                	addi	sp,sp,-32
    804009fa:	ec06                	sd	ra,24(sp)
    804009fc:	e822                	sd	s0,16(sp)
    804009fe:	1000                	addi	s0,sp,32
    80400a00:	fea43423          	sd	a0,-24(s0)
    80400a04:	fe843783          	ld	a5,-24(s0)
    80400a08:	85be                	mv	a1,a5
    80400a0a:	42600513          	li	a0,1062
    80400a0e:	bdfff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400a12:	87aa                	mv	a5,a0
    80400a14:	2781                	sext.w	a5,a5
    80400a16:	853e                	mv	a0,a5
    80400a18:	60e2                	ld	ra,24(sp)
    80400a1a:	6442                	ld	s0,16(sp)
    80400a1c:	6105                	addi	sp,sp,32
    80400a1e:	8082                	ret

0000000080400a20 <_Z5sleepy>:
    80400a20:	7179                	addi	sp,sp,-48
    80400a22:	f406                	sd	ra,40(sp)
    80400a24:	f022                	sd	s0,32(sp)
    80400a26:	1800                	addi	s0,sp,48
    80400a28:	fca43c23          	sd	a0,-40(s0)
    80400a2c:	fe043023          	sd	zero,-32(s0)
    80400a30:	fe043423          	sd	zero,-24(s0)
    80400a34:	fd843783          	ld	a5,-40(s0)
    80400a38:	fef43023          	sd	a5,-32(s0)
    80400a3c:	fe040793          	addi	a5,s0,-32
    80400a40:	fe040713          	addi	a4,s0,-32
    80400a44:	863a                	mv	a2,a4
    80400a46:	85be                	mv	a1,a5
    80400a48:	06500513          	li	a0,101
    80400a4c:	bc5ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400a50:	87aa                	mv	a5,a0
    80400a52:	00f037b3          	snez	a5,a5
    80400a56:	0ff7f793          	zext.b	a5,a5
    80400a5a:	c789                	beqz	a5,80400a64 <_Z5sleepy+0x44>
    80400a5c:	fe043783          	ld	a5,-32(s0)
    80400a60:	2781                	sext.w	a5,a5
    80400a62:	a011                	j	80400a66 <_Z5sleepy+0x46>
    80400a64:	4781                	li	a5,0
    80400a66:	853e                	mv	a0,a5
    80400a68:	70a2                	ld	ra,40(sp)
    80400a6a:	7402                	ld	s0,32(sp)
    80400a6c:	6145                	addi	sp,sp,48
    80400a6e:	8082                	ret

0000000080400a70 <_Z12set_priorityi>:
    80400a70:	1101                	addi	sp,sp,-32
    80400a72:	ec06                	sd	ra,24(sp)
    80400a74:	e822                	sd	s0,16(sp)
    80400a76:	1000                	addi	s0,sp,32
    80400a78:	87aa                	mv	a5,a0
    80400a7a:	fef42623          	sw	a5,-20(s0)
    80400a7e:	fec42783          	lw	a5,-20(s0)
    80400a82:	85be                	mv	a1,a5
    80400a84:	08c00513          	li	a0,140
    80400a88:	b65ff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400a8c:	87aa                	mv	a5,a0
    80400a8e:	2781                	sext.w	a5,a5
    80400a90:	853e                	mv	a0,a5
    80400a92:	60e2                	ld	ra,24(sp)
    80400a94:	6442                	ld	s0,16(sp)
    80400a96:	6105                	addi	sp,sp,32
    80400a98:	8082                	ret

0000000080400a9a <_Z6munmapPvy>:
    80400a9a:	1101                	addi	sp,sp,-32
    80400a9c:	ec06                	sd	ra,24(sp)
    80400a9e:	e822                	sd	s0,16(sp)
    80400aa0:	1000                	addi	s0,sp,32
    80400aa2:	fea43423          	sd	a0,-24(s0)
    80400aa6:	feb43023          	sd	a1,-32(s0)
    80400aaa:	fe843783          	ld	a5,-24(s0)
    80400aae:	fe043703          	ld	a4,-32(s0)
    80400ab2:	863a                	mv	a2,a4
    80400ab4:	85be                	mv	a1,a5
    80400ab6:	0d700513          	li	a0,215
    80400aba:	b57ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400abe:	87aa                	mv	a5,a0
    80400ac0:	2781                	sext.w	a5,a5
    80400ac2:	853e                	mv	a0,a5
    80400ac4:	60e2                	ld	ra,24(sp)
    80400ac6:	6442                	ld	s0,16(sp)
    80400ac8:	6105                	addi	sp,sp,32
    80400aca:	8082                	ret

0000000080400acc <_Z4waitPi>:
    80400acc:	1101                	addi	sp,sp,-32
    80400ace:	ec06                	sd	ra,24(sp)
    80400ad0:	e822                	sd	s0,16(sp)
    80400ad2:	1000                	addi	s0,sp,32
    80400ad4:	fea43423          	sd	a0,-24(s0)
    80400ad8:	4601                	li	a2,0
    80400ada:	fe843583          	ld	a1,-24(s0)
    80400ade:	557d                	li	a0,-1
    80400ae0:	dcbff0ef          	jal	ra,804008aa <_Z7waitpidiPii>
    80400ae4:	87aa                	mv	a5,a0
    80400ae6:	853e                	mv	a0,a5
    80400ae8:	60e2                	ld	ra,24(sp)
    80400aea:	6442                	ld	s0,16(sp)
    80400aec:	6105                	addi	sp,sp,32
    80400aee:	8082                	ret

0000000080400af0 <_Z5spawnPc>:
    80400af0:	1101                	addi	sp,sp,-32
    80400af2:	ec06                	sd	ra,24(sp)
    80400af4:	e822                	sd	s0,16(sp)
    80400af6:	1000                	addi	s0,sp,32
    80400af8:	fea43423          	sd	a0,-24(s0)
    80400afc:	fe843783          	ld	a5,-24(s0)
    80400b00:	85be                	mv	a1,a5
    80400b02:	19000513          	li	a0,400
    80400b06:	ae7ff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400b0a:	87aa                	mv	a5,a0
    80400b0c:	2781                	sext.w	a5,a5
    80400b0e:	853e                	mv	a0,a5
    80400b10:	60e2                	ld	ra,24(sp)
    80400b12:	6442                	ld	s0,16(sp)
    80400b14:	6105                	addi	sp,sp,32
    80400b16:	8082                	ret

0000000080400b18 <_Z8mailreadPvi>:
    80400b18:	1101                	addi	sp,sp,-32
    80400b1a:	ec06                	sd	ra,24(sp)
    80400b1c:	e822                	sd	s0,16(sp)
    80400b1e:	1000                	addi	s0,sp,32
    80400b20:	fea43423          	sd	a0,-24(s0)
    80400b24:	87ae                	mv	a5,a1
    80400b26:	fef42223          	sw	a5,-28(s0)
    80400b2a:	fe843783          	ld	a5,-24(s0)
    80400b2e:	fe442703          	lw	a4,-28(s0)
    80400b32:	863a                	mv	a2,a4
    80400b34:	85be                	mv	a1,a5
    80400b36:	19100513          	li	a0,401
    80400b3a:	ad7ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400b3e:	87aa                	mv	a5,a0
    80400b40:	2781                	sext.w	a5,a5
    80400b42:	853e                	mv	a0,a5
    80400b44:	60e2                	ld	ra,24(sp)
    80400b46:	6442                	ld	s0,16(sp)
    80400b48:	6105                	addi	sp,sp,32
    80400b4a:	8082                	ret

0000000080400b4c <_Z9mailwriteiPvi>:
    80400b4c:	1101                	addi	sp,sp,-32
    80400b4e:	ec06                	sd	ra,24(sp)
    80400b50:	e822                	sd	s0,16(sp)
    80400b52:	1000                	addi	s0,sp,32
    80400b54:	87aa                	mv	a5,a0
    80400b56:	feb43023          	sd	a1,-32(s0)
    80400b5a:	8732                	mv	a4,a2
    80400b5c:	fef42623          	sw	a5,-20(s0)
    80400b60:	87ba                	mv	a5,a4
    80400b62:	fef42423          	sw	a5,-24(s0)
    80400b66:	fec42783          	lw	a5,-20(s0)
    80400b6a:	fe043703          	ld	a4,-32(s0)
    80400b6e:	fe842683          	lw	a3,-24(s0)
    80400b72:	863a                	mv	a2,a4
    80400b74:	85be                	mv	a1,a5
    80400b76:	19200513          	li	a0,402
    80400b7a:	ac3ff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    80400b7e:	87aa                	mv	a5,a0
    80400b80:	2781                	sext.w	a5,a5
    80400b82:	853e                	mv	a0,a5
    80400b84:	60e2                	ld	ra,24(sp)
    80400b86:	6442                	ld	s0,16(sp)
    80400b88:	6105                	addi	sp,sp,32
    80400b8a:	8082                	ret

0000000080400b8c <_Z5fstatiP5kstat>:
    80400b8c:	1101                	addi	sp,sp,-32
    80400b8e:	ec06                	sd	ra,24(sp)
    80400b90:	e822                	sd	s0,16(sp)
    80400b92:	1000                	addi	s0,sp,32
    80400b94:	87aa                	mv	a5,a0
    80400b96:	feb43023          	sd	a1,-32(s0)
    80400b9a:	fef42623          	sw	a5,-20(s0)
    80400b9e:	fec42783          	lw	a5,-20(s0)
    80400ba2:	fe043703          	ld	a4,-32(s0)
    80400ba6:	863a                	mv	a2,a4
    80400ba8:	85be                	mv	a1,a5
    80400baa:	05000513          	li	a0,80
    80400bae:	a63ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400bb2:	87aa                	mv	a5,a0
    80400bb4:	2781                	sext.w	a5,a5
    80400bb6:	853e                	mv	a0,a5
    80400bb8:	60e2                	ld	ra,24(sp)
    80400bba:	6442                	ld	s0,16(sp)
    80400bbc:	6105                	addi	sp,sp,32
    80400bbe:	8082                	ret

0000000080400bc0 <_Z10sys_linkatiPciS_j>:
    80400bc0:	7179                	addi	sp,sp,-48
    80400bc2:	f406                	sd	ra,40(sp)
    80400bc4:	f022                	sd	s0,32(sp)
    80400bc6:	1800                	addi	s0,sp,48
    80400bc8:	87aa                	mv	a5,a0
    80400bca:	feb43023          	sd	a1,-32(s0)
    80400bce:	fcd43c23          	sd	a3,-40(s0)
    80400bd2:	fef42623          	sw	a5,-20(s0)
    80400bd6:	87b2                	mv	a5,a2
    80400bd8:	fef42423          	sw	a5,-24(s0)
    80400bdc:	87ba                	mv	a5,a4
    80400bde:	fcf42a23          	sw	a5,-44(s0)
    80400be2:	fec42583          	lw	a1,-20(s0)
    80400be6:	fe043603          	ld	a2,-32(s0)
    80400bea:	fe842683          	lw	a3,-24(s0)
    80400bee:	fd843703          	ld	a4,-40(s0)
    80400bf2:	fd446783          	lwu	a5,-44(s0)
    80400bf6:	02500513          	li	a0,37
    80400bfa:	ab3ff0ef          	jal	ra,804006ac <_ZL10__syscall5llllll>
    80400bfe:	87aa                	mv	a5,a0
    80400c00:	2781                	sext.w	a5,a5
    80400c02:	853e                	mv	a0,a5
    80400c04:	70a2                	ld	ra,40(sp)
    80400c06:	7402                	ld	s0,32(sp)
    80400c08:	6145                	addi	sp,sp,48
    80400c0a:	8082                	ret

0000000080400c0c <_Z12sys_unlinkatiPcj>:
    80400c0c:	1101                	addi	sp,sp,-32
    80400c0e:	ec06                	sd	ra,24(sp)
    80400c10:	e822                	sd	s0,16(sp)
    80400c12:	1000                	addi	s0,sp,32
    80400c14:	87aa                	mv	a5,a0
    80400c16:	feb43023          	sd	a1,-32(s0)
    80400c1a:	8732                	mv	a4,a2
    80400c1c:	fef42623          	sw	a5,-20(s0)
    80400c20:	87ba                	mv	a5,a4
    80400c22:	fef42423          	sw	a5,-24(s0)
    80400c26:	fec42783          	lw	a5,-20(s0)
    80400c2a:	fe043703          	ld	a4,-32(s0)
    80400c2e:	fe846683          	lwu	a3,-24(s0)
    80400c32:	863a                	mv	a2,a4
    80400c34:	85be                	mv	a1,a5
    80400c36:	02300513          	li	a0,35
    80400c3a:	a03ff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    80400c3e:	87aa                	mv	a5,a0
    80400c40:	2781                	sext.w	a5,a5
    80400c42:	853e                	mv	a0,a5
    80400c44:	60e2                	ld	ra,24(sp)
    80400c46:	6442                	ld	s0,16(sp)
    80400c48:	6105                	addi	sp,sp,32
    80400c4a:	8082                	ret

0000000080400c4c <_Z4linkPcS_>:
    80400c4c:	1101                	addi	sp,sp,-32
    80400c4e:	ec06                	sd	ra,24(sp)
    80400c50:	e822                	sd	s0,16(sp)
    80400c52:	1000                	addi	s0,sp,32
    80400c54:	fea43423          	sd	a0,-24(s0)
    80400c58:	feb43023          	sd	a1,-32(s0)
    80400c5c:	4701                	li	a4,0
    80400c5e:	fe043683          	ld	a3,-32(s0)
    80400c62:	f9c00613          	li	a2,-100
    80400c66:	fe843583          	ld	a1,-24(s0)
    80400c6a:	f9c00513          	li	a0,-100
    80400c6e:	f53ff0ef          	jal	ra,80400bc0 <_Z10sys_linkatiPciS_j>
    80400c72:	87aa                	mv	a5,a0
    80400c74:	853e                	mv	a0,a5
    80400c76:	60e2                	ld	ra,24(sp)
    80400c78:	6442                	ld	s0,16(sp)
    80400c7a:	6105                	addi	sp,sp,32
    80400c7c:	8082                	ret

0000000080400c7e <_Z6unlinkPc>:
    80400c7e:	1101                	addi	sp,sp,-32
    80400c80:	ec06                	sd	ra,24(sp)
    80400c82:	e822                	sd	s0,16(sp)
    80400c84:	1000                	addi	s0,sp,32
    80400c86:	fea43423          	sd	a0,-24(s0)
    80400c8a:	4601                	li	a2,0
    80400c8c:	fe843583          	ld	a1,-24(s0)
    80400c90:	f9c00513          	li	a0,-100
    80400c94:	f79ff0ef          	jal	ra,80400c0c <_Z12sys_unlinkatiPcj>
    80400c98:	87aa                	mv	a5,a0
    80400c9a:	853e                	mv	a0,a5
    80400c9c:	60e2                	ld	ra,24(sp)
    80400c9e:	6442                	ld	s0,16(sp)
    80400ca0:	6105                	addi	sp,sp,32
    80400ca2:	8082                	ret

0000000080400ca4 <_Z5unamePv>:
    80400ca4:	1101                	addi	sp,sp,-32
    80400ca6:	ec06                	sd	ra,24(sp)
    80400ca8:	e822                	sd	s0,16(sp)
    80400caa:	1000                	addi	s0,sp,32
    80400cac:	fea43423          	sd	a0,-24(s0)
    80400cb0:	fe843783          	ld	a5,-24(s0)
    80400cb4:	85be                	mv	a1,a5
    80400cb6:	0a000513          	li	a0,160
    80400cba:	933ff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400cbe:	87aa                	mv	a5,a0
    80400cc0:	2781                	sext.w	a5,a5
    80400cc2:	853e                	mv	a0,a5
    80400cc4:	60e2                	ld	ra,24(sp)
    80400cc6:	6442                	ld	s0,16(sp)
    80400cc8:	6105                	addi	sp,sp,32
    80400cca:	8082                	ret

0000000080400ccc <_Z3brkPv>:
    80400ccc:	1101                	addi	sp,sp,-32
    80400cce:	ec06                	sd	ra,24(sp)
    80400cd0:	e822                	sd	s0,16(sp)
    80400cd2:	1000                	addi	s0,sp,32
    80400cd4:	fea43423          	sd	a0,-24(s0)
    80400cd8:	fe843783          	ld	a5,-24(s0)
    80400cdc:	85be                	mv	a1,a5
    80400cde:	0d600513          	li	a0,214
    80400ce2:	90bff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400ce6:	87aa                	mv	a5,a0
    80400ce8:	2781                	sext.w	a5,a5
    80400cea:	853e                	mv	a0,a5
    80400cec:	60e2                	ld	ra,24(sp)
    80400cee:	6442                	ld	s0,16(sp)
    80400cf0:	6105                	addi	sp,sp,32
    80400cf2:	8082                	ret

0000000080400cf4 <_Z5chdirPKc>:
    80400cf4:	1101                	addi	sp,sp,-32
    80400cf6:	ec06                	sd	ra,24(sp)
    80400cf8:	e822                	sd	s0,16(sp)
    80400cfa:	1000                	addi	s0,sp,32
    80400cfc:	fea43423          	sd	a0,-24(s0)
    80400d00:	fe843783          	ld	a5,-24(s0)
    80400d04:	85be                	mv	a1,a5
    80400d06:	03100513          	li	a0,49
    80400d0a:	8e3ff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400d0e:	87aa                	mv	a5,a0
    80400d10:	2781                	sext.w	a5,a5
    80400d12:	853e                	mv	a0,a5
    80400d14:	60e2                	ld	ra,24(sp)
    80400d16:	6442                	ld	s0,16(sp)
    80400d18:	6105                	addi	sp,sp,32
    80400d1a:	8082                	ret

0000000080400d1c <_Z5mkdirPKcj>:
    80400d1c:	1101                	addi	sp,sp,-32
    80400d1e:	ec06                	sd	ra,24(sp)
    80400d20:	e822                	sd	s0,16(sp)
    80400d22:	1000                	addi	s0,sp,32
    80400d24:	fea43423          	sd	a0,-24(s0)
    80400d28:	87ae                	mv	a5,a1
    80400d2a:	fef42223          	sw	a5,-28(s0)
    80400d2e:	fe843783          	ld	a5,-24(s0)
    80400d32:	fe446703          	lwu	a4,-28(s0)
    80400d36:	86ba                	mv	a3,a4
    80400d38:	863e                	mv	a2,a5
    80400d3a:	f9c00593          	li	a1,-100
    80400d3e:	02200513          	li	a0,34
    80400d42:	8fbff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    80400d46:	87aa                	mv	a5,a0
    80400d48:	2781                	sext.w	a5,a5
    80400d4a:	853e                	mv	a0,a5
    80400d4c:	60e2                	ld	ra,24(sp)
    80400d4e:	6442                	ld	s0,16(sp)
    80400d50:	6105                	addi	sp,sp,32
    80400d52:	8082                	ret

0000000080400d54 <_Z8getdentsiP14linux_dirent64m>:
    80400d54:	7179                	addi	sp,sp,-48
    80400d56:	f406                	sd	ra,40(sp)
    80400d58:	f022                	sd	s0,32(sp)
    80400d5a:	1800                	addi	s0,sp,48
    80400d5c:	87aa                	mv	a5,a0
    80400d5e:	feb43023          	sd	a1,-32(s0)
    80400d62:	fcc43c23          	sd	a2,-40(s0)
    80400d66:	fef42623          	sw	a5,-20(s0)
    80400d6a:	fec42783          	lw	a5,-20(s0)
    80400d6e:	fe043703          	ld	a4,-32(s0)
    80400d72:	fd843683          	ld	a3,-40(s0)
    80400d76:	863a                	mv	a2,a4
    80400d78:	85be                	mv	a1,a5
    80400d7a:	03d00513          	li	a0,61
    80400d7e:	8bfff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    80400d82:	87aa                	mv	a5,a0
    80400d84:	2781                	sext.w	a5,a5
    80400d86:	853e                	mv	a0,a5
    80400d88:	70a2                	ld	ra,40(sp)
    80400d8a:	7402                	ld	s0,32(sp)
    80400d8c:	6145                	addi	sp,sp,48
    80400d8e:	8082                	ret

0000000080400d90 <_Z4pipePi>:
    80400d90:	1101                	addi	sp,sp,-32
    80400d92:	ec06                	sd	ra,24(sp)
    80400d94:	e822                	sd	s0,16(sp)
    80400d96:	1000                	addi	s0,sp,32
    80400d98:	fea43423          	sd	a0,-24(s0)
    80400d9c:	fe843783          	ld	a5,-24(s0)
    80400da0:	4601                	li	a2,0
    80400da2:	85be                	mv	a1,a5
    80400da4:	03b00513          	li	a0,59
    80400da8:	869ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400dac:	87aa                	mv	a5,a0
    80400dae:	2781                	sext.w	a5,a5
    80400db0:	853e                	mv	a0,a5
    80400db2:	60e2                	ld	ra,24(sp)
    80400db4:	6442                	ld	s0,16(sp)
    80400db6:	6105                	addi	sp,sp,32
    80400db8:	8082                	ret

0000000080400dba <_Z3dupi>:
    80400dba:	1101                	addi	sp,sp,-32
    80400dbc:	ec06                	sd	ra,24(sp)
    80400dbe:	e822                	sd	s0,16(sp)
    80400dc0:	1000                	addi	s0,sp,32
    80400dc2:	87aa                	mv	a5,a0
    80400dc4:	fef42623          	sw	a5,-20(s0)
    80400dc8:	fec42783          	lw	a5,-20(s0)
    80400dcc:	85be                	mv	a1,a5
    80400dce:	455d                	li	a0,23
    80400dd0:	81dff0ef          	jal	ra,804005ec <_ZL10__syscall1ll>
    80400dd4:	87aa                	mv	a5,a0
    80400dd6:	2781                	sext.w	a5,a5
    80400dd8:	853e                	mv	a0,a5
    80400dda:	60e2                	ld	ra,24(sp)
    80400ddc:	6442                	ld	s0,16(sp)
    80400dde:	6105                	addi	sp,sp,32
    80400de0:	8082                	ret

0000000080400de2 <_Z4dup2ii>:
    80400de2:	1101                	addi	sp,sp,-32
    80400de4:	ec06                	sd	ra,24(sp)
    80400de6:	e822                	sd	s0,16(sp)
    80400de8:	1000                	addi	s0,sp,32
    80400dea:	87aa                	mv	a5,a0
    80400dec:	872e                	mv	a4,a1
    80400dee:	fef42623          	sw	a5,-20(s0)
    80400df2:	87ba                	mv	a5,a4
    80400df4:	fef42423          	sw	a5,-24(s0)
    80400df8:	fec42783          	lw	a5,-20(s0)
    80400dfc:	fe842703          	lw	a4,-24(s0)
    80400e00:	4681                	li	a3,0
    80400e02:	863a                	mv	a2,a4
    80400e04:	85be                	mv	a1,a5
    80400e06:	4561                	li	a0,24
    80400e08:	835ff0ef          	jal	ra,8040063c <_ZL10__syscall3llll>
    80400e0c:	87aa                	mv	a5,a0
    80400e0e:	2781                	sext.w	a5,a5
    80400e10:	853e                	mv	a0,a5
    80400e12:	60e2                	ld	ra,24(sp)
    80400e14:	6442                	ld	s0,16(sp)
    80400e16:	6105                	addi	sp,sp,32
    80400e18:	8082                	ret

0000000080400e1a <_Z5mountPKcS0_S0_mPKv>:
    80400e1a:	7139                	addi	sp,sp,-64
    80400e1c:	fc06                	sd	ra,56(sp)
    80400e1e:	f822                	sd	s0,48(sp)
    80400e20:	0080                	addi	s0,sp,64
    80400e22:	fea43423          	sd	a0,-24(s0)
    80400e26:	feb43023          	sd	a1,-32(s0)
    80400e2a:	fcc43c23          	sd	a2,-40(s0)
    80400e2e:	fcd43823          	sd	a3,-48(s0)
    80400e32:	fce43423          	sd	a4,-56(s0)
    80400e36:	fe843583          	ld	a1,-24(s0)
    80400e3a:	fe043603          	ld	a2,-32(s0)
    80400e3e:	fd843683          	ld	a3,-40(s0)
    80400e42:	fd043703          	ld	a4,-48(s0)
    80400e46:	fc843783          	ld	a5,-56(s0)
    80400e4a:	02800513          	li	a0,40
    80400e4e:	85fff0ef          	jal	ra,804006ac <_ZL10__syscall5llllll>
    80400e52:	87aa                	mv	a5,a0
    80400e54:	2781                	sext.w	a5,a5
    80400e56:	853e                	mv	a0,a5
    80400e58:	70e2                	ld	ra,56(sp)
    80400e5a:	7442                	ld	s0,48(sp)
    80400e5c:	6121                	addi	sp,sp,64
    80400e5e:	8082                	ret

0000000080400e60 <_Z6umountPKc>:
    80400e60:	1101                	addi	sp,sp,-32
    80400e62:	ec06                	sd	ra,24(sp)
    80400e64:	e822                	sd	s0,16(sp)
    80400e66:	1000                	addi	s0,sp,32
    80400e68:	fea43423          	sd	a0,-24(s0)
    80400e6c:	fe843783          	ld	a5,-24(s0)
    80400e70:	4601                	li	a2,0
    80400e72:	85be                	mv	a1,a5
    80400e74:	02700513          	li	a0,39
    80400e78:	f98ff0ef          	jal	ra,80400610 <_ZL10__syscall2lll>
    80400e7c:	87aa                	mv	a5,a0
    80400e7e:	2781                	sext.w	a5,a5
    80400e80:	853e                	mv	a0,a5
    80400e82:	60e2                	ld	ra,24(sp)
    80400e84:	6442                	ld	s0,16(sp)
    80400e86:	6105                	addi	sp,sp,32
    80400e88:	8082                	ret

Disassembly of section .interp:

0000000080400e8a <.interp>:
    80400e8a:	62696c2f          	.4byte	0x62696c2f
    80400e8e:	2d646c2f          	.4byte	0x2d646c2f
    80400e92:	696c                	ld	a1,208(a0)
    80400e94:	756e                	ld	a0,248(sp)
    80400e96:	2d78                	fld	fa4,216(a0)
    80400e98:	6972                	ld	s2,280(sp)
    80400e9a:	36766373          	csrrsi	t1,0x367,12
    80400e9e:	2d34                	fld	fa3,88(a0)
    80400ea0:	706c                	ld	a1,224(s0)
    80400ea2:	3436                	fld	fs0,360(sp)
    80400ea4:	2e64                	fld	fs1,216(a2)
    80400ea6:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000080400eac <.note.gnu.build-id>:
    80400eac:	0004                	.2byte	0x4
    80400eae:	0000                	unimp
    80400eb0:	0014                	.2byte	0x14
    80400eb2:	0000                	unimp
    80400eb4:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    80400eb8:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    80400ebc:	4c4e                	lw	s8,208(sp)
    80400ebe:	ea65                	bnez	a2,80400fae <buf+0x86>
    80400ec0:	3ced                	addiw	s9,s9,-5
    80400ec2:	40a1                	li	ra,8
    80400ec4:	dc8cc663          	blt	s9,s0,80400490 <_Z6strcmpPcS_+0x54>
    80400ec8:	18fcb3a3          	sd	a5,391(s9)
    80400ecc:	59f5                	li	s3,-3
    80400ece:	06f9                	addi	a3,a3,30

Disassembly of section .dynsym:

0000000080400ed0 <.dynsym>:
	...
    80400eec:	00010003          	lb	zero,0(sp)
    80400ef0:	0000                	unimp
    80400ef2:	8040                	.2byte	0x8040
	...

Disassembly of section .dynstr:

0000000080400f00 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000080400f08 <.gnu.hash>:
    80400f08:	0001                	nop
    80400f0a:	0000                	unimp
    80400f0c:	0001                	nop
    80400f0e:	0000                	unimp
    80400f10:	0001                	nop
	...

Disassembly of section .bss:

0000000080400f28 <buf>:
	...

Disassembly of section .data:

0000000080400ff0 <_ZL6digits>:
    80400ff0:	3130                	fld	fa2,96(a0)
    80400ff2:	3332                	fld	ft6,296(sp)
    80400ff4:	3534                	fld	fa3,104(a0)
    80400ff6:	3736                	fld	fa4,360(sp)
    80400ff8:	3938                	fld	fa4,112(a0)
    80400ffa:	6261                	lui	tp,0x18
    80400ffc:	66656463          	bltu	a0,t1,80401664 <_GLOBAL_OFFSET_TABLE_+0x4f4>
	...

0000000080401008 <nuclear>:
    80401008:	7566                	ld	a0,120(sp)
    8040100a:	6e6f6973          	csrrsi	s2,0x6e6,30
    8040100e:	000a                	c.slli	zero,0x2
    80401010:	6e28                	ld	a0,88(a2)
    80401012:	6c75                	lui	s8,0x1d
    80401014:	296c                	fld	fa1,208(a0)
    80401016:	0000                	unimp
    80401018:	6572                	ld	a0,280(sp)
    8040101a:	6c61                	lui	s8,0x18
    8040101c:	7320                	ld	s0,96(a4)
    8040101e:	6568                	ld	a0,200(a0)
    80401020:	6c6c                	ld	a1,216(s0)
    80401022:	7320                	ld	s0,96(a4)
    80401024:	6174                	ld	a3,192(a0)
    80401026:	6572                	ld	a0,280(sp)
    80401028:	2164                	fld	fs1,192(a0)
    8040102a:	000a                	c.slli	zero,0x2
    8040102c:	0000                	unimp
    8040102e:	0000                	unimp
    80401030:	003e                	c.slli	zero,0xf
    80401032:	0000                	unimp
    80401034:	0000                	unimp
    80401036:	0000                	unimp
    80401038:	000a                	c.slli	zero,0x2
    8040103a:	0000                	unimp
    8040103c:	0000                	unimp
    8040103e:	0000                	unimp
    80401040:	7865                	lui	a6,0xffff9
    80401042:	7469                	lui	s0,0xffffa
    80401044:	0000                	unimp
    80401046:	0000                	unimp
    80401048:	6e6e6f63          	bltu	t3,t1,80401746 <_GLOBAL_OFFSET_TABLE_+0x5d6>
    8040104c:	6520746f          	jal	s0,8040869e <_GLOBAL_OFFSET_TABLE_+0x752e>
    80401050:	6378                	ld	a4,192(a4)
    80401052:	7475                	lui	s0,0xffffd
    80401054:	2065                	.2byte	0x2065
    80401056:	7325                	lui	t1,0xfffe9
    80401058:	0a2e                	slli	s4,s4,0xb
	...

Disassembly of section .dynamic:

0000000080401060 <.dynamic>:
    80401060:	fef5                	bnez	a3,8040105c <nuclear+0x54>
    80401062:	6fff                	.2byte	0x6fff
    80401064:	0000                	unimp
    80401066:	0000                	unimp
    80401068:	0f08                	addi	a0,sp,912
    8040106a:	8040                	.2byte	0x8040
    8040106c:	0000                	unimp
    8040106e:	0000                	unimp
    80401070:	0005                	c.nop	1
    80401072:	0000                	unimp
    80401074:	0000                	unimp
    80401076:	0000                	unimp
    80401078:	0f00                	addi	s0,sp,912
    8040107a:	8040                	.2byte	0x8040
    8040107c:	0000                	unimp
    8040107e:	0000                	unimp
    80401080:	0006                	c.slli	zero,0x1
    80401082:	0000                	unimp
    80401084:	0000                	unimp
    80401086:	0000                	unimp
    80401088:	0ed0                	addi	a2,sp,852
    8040108a:	8040                	.2byte	0x8040
    8040108c:	0000                	unimp
    8040108e:	0000                	unimp
    80401090:	000a                	c.slli	zero,0x2
    80401092:	0000                	unimp
    80401094:	0000                	unimp
    80401096:	0000                	unimp
    80401098:	0001                	nop
    8040109a:	0000                	unimp
    8040109c:	0000                	unimp
    8040109e:	0000                	unimp
    804010a0:	0000000b          	.4byte	0xb
    804010a4:	0000                	unimp
    804010a6:	0000                	unimp
    804010a8:	0018                	.2byte	0x18
    804010aa:	0000                	unimp
    804010ac:	0000                	unimp
    804010ae:	0000                	unimp
    804010b0:	0015                	c.nop	5
	...
    804010be:	0000                	unimp
    804010c0:	00000007          	.4byte	0x7
	...
    804010d0:	0008                	.2byte	0x8
	...
    804010de:	0000                	unimp
    804010e0:	0009                	c.nop	2
    804010e2:	0000                	unimp
    804010e4:	0000                	unimp
    804010e6:	0000                	unimp
    804010e8:	0018                	.2byte	0x18
    804010ea:	0000                	unimp
    804010ec:	0000                	unimp
    804010ee:	0000                	unimp
    804010f0:	001e                	c.slli	zero,0x7
    804010f2:	0000                	unimp
    804010f4:	0000                	unimp
    804010f6:	0000                	unimp
    804010f8:	0008                	.2byte	0x8
    804010fa:	0000                	unimp
    804010fc:	0000                	unimp
    804010fe:	0000                	unimp
    80401100:	6ffffffb          	.4byte	0x6ffffffb
    80401104:	0000                	unimp
    80401106:	0000                	unimp
    80401108:	0001                	nop
    8040110a:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000080401170 <.got>:
    80401170:	1060                	addi	s0,sp,44
    80401172:	8040                	.2byte	0x8040
    80401174:	0000                	unimp
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xffffffff7fbdfe8b>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

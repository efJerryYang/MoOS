
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000080400000 <_start>:
    80400000:	a115                	j	80400424 <main>

0000000080400002 <_Z7getcharv>:
    80400002:	1101                	addi	sp,sp,-32
    80400004:	ec06                	sd	ra,24(sp)
    80400006:	e822                	sd	s0,16(sp)
    80400008:	1000                	addi	s0,sp,32
    8040000a:	fef40793          	addi	a5,s0,-17
    8040000e:	0e900613          	li	a2,233
    80400012:	85be                	mv	a1,a5
    80400014:	4501                	li	a0,0
    80400016:	6ca000ef          	jal	ra,804006e0 <_Z4readiPvy>
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
    80400040:	6da000ef          	jal	ra,8040071a <_Z5writeiPKvy>
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
    804000fe:	d8e70713          	addi	a4,a4,-626 # 80400e88 <_ZL6digits>
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
    804001c8:	cc470713          	addi	a4,a4,-828 # 80400e88 <_ZL6digits>
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
    8040036e:	b4678793          	addi	a5,a5,-1210 # 80400eb0 <b+0x4>
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

00000000804003fa <_Z4plusii>:
    804003fa:	1101                	addi	sp,sp,-32
    804003fc:	ec22                	sd	s0,24(sp)
    804003fe:	1000                	addi	s0,sp,32
    80400400:	87aa                	mv	a5,a0
    80400402:	872e                	mv	a4,a1
    80400404:	fef42623          	sw	a5,-20(s0)
    80400408:	87ba                	mv	a5,a4
    8040040a:	fef42423          	sw	a5,-24(s0)
    8040040e:	fec42783          	lw	a5,-20(s0)
    80400412:	873e                	mv	a4,a5
    80400414:	fe842783          	lw	a5,-24(s0)
    80400418:	9fb9                	addw	a5,a5,a4
    8040041a:	2781                	sext.w	a5,a5
    8040041c:	853e                	mv	a0,a5
    8040041e:	6462                	ld	s0,24(sp)
    80400420:	6105                	addi	sp,sp,32
    80400422:	8082                	ret

0000000080400424 <main>:
    80400424:	1101                	addi	sp,sp,-32
    80400426:	ec06                	sd	ra,24(sp)
    80400428:	e822                	sd	s0,16(sp)
    8040042a:	1000                	addi	s0,sp,32
    8040042c:	00001517          	auipc	a0,0x1
    80400430:	a8c50513          	addi	a0,a0,-1396 # 80400eb8 <b+0xc>
    80400434:	dcfff0ef          	jal	ra,80400202 <_Z6printfPcz>
    80400438:	bcbff0ef          	jal	ra,80400002 <_Z7getcharv>
    8040043c:	87aa                	mv	a5,a0
    8040043e:	fef407a3          	sb	a5,-17(s0)
    80400442:	fef44783          	lbu	a5,-17(s0)
    80400446:	0ff7f713          	zext.b	a4,a5
    8040044a:	47b5                	li	a5,13
    8040044c:	00f71963          	bne	a4,a5,8040045e <main+0x3a>
    80400450:	00001517          	auipc	a0,0x1
    80400454:	a8050513          	addi	a0,a0,-1408 # 80400ed0 <b+0x24>
    80400458:	dabff0ef          	jal	ra,80400202 <_Z6printfPcz>
    8040045c:	a031                	j	80400468 <main+0x44>
    8040045e:	fef44783          	lbu	a5,-17(s0)
    80400462:	853e                	mv	a0,a5
    80400464:	bc5ff0ef          	jal	ra,80400028 <_Z7putcharc>
    80400468:	fef44783          	lbu	a5,-17(s0)
    8040046c:	0ff7f713          	zext.b	a4,a5
    80400470:	06c00793          	li	a5,108
    80400474:	00f70363          	beq	a4,a5,8040047a <main+0x56>
    80400478:	b7c1                	j	80400438 <main+0x14>
    8040047a:	0001                	nop
    8040047c:	478d                	li	a5,3
    8040047e:	fef42423          	sw	a5,-24(s0)
    80400482:	00001797          	auipc	a5,0x1
    80400486:	a2678793          	addi	a5,a5,-1498 # 80400ea8 <a>
    8040048a:	439c                	lw	a5,0(a5)
    8040048c:	2785                	addiw	a5,a5,1
    8040048e:	0007871b          	sext.w	a4,a5
    80400492:	00001797          	auipc	a5,0x1
    80400496:	a1678793          	addi	a5,a5,-1514 # 80400ea8 <a>
    8040049a:	c398                	sw	a4,0(a5)
    8040049c:	00001797          	auipc	a5,0x1
    804004a0:	a0c78793          	addi	a5,a5,-1524 # 80400ea8 <a>
    804004a4:	439c                	lw	a5,0(a5)
    804004a6:	fe842703          	lw	a4,-24(s0)
    804004aa:	02f707bb          	mulw	a5,a4,a5
    804004ae:	0007871b          	sext.w	a4,a5
    804004b2:	00001797          	auipc	a5,0x1
    804004b6:	9fa78793          	addi	a5,a5,-1542 # 80400eac <b>
    804004ba:	439c                	lw	a5,0(a5)
    804004bc:	85be                	mv	a1,a5
    804004be:	853a                	mv	a0,a4
    804004c0:	f3bff0ef          	jal	ra,804003fa <_Z4plusii>
    804004c4:	87aa                	mv	a5,a0
    804004c6:	873e                	mv	a4,a5
    804004c8:	00001797          	auipc	a5,0x1
    804004cc:	9e078793          	addi	a5,a5,-1568 # 80400ea8 <a>
    804004d0:	c398                	sw	a4,0(a5)
    804004d2:	00001797          	auipc	a5,0x1
    804004d6:	9d678793          	addi	a5,a5,-1578 # 80400ea8 <a>
    804004da:	4398                	lw	a4,0(a5)
    804004dc:	00001797          	auipc	a5,0x1
    804004e0:	9cc78793          	addi	a5,a5,-1588 # 80400ea8 <a>
    804004e4:	439c                	lw	a5,0(a5)
    804004e6:	02f707bb          	mulw	a5,a4,a5
    804004ea:	0007871b          	sext.w	a4,a5
    804004ee:	00001797          	auipc	a5,0x1
    804004f2:	9be78793          	addi	a5,a5,-1602 # 80400eac <b>
    804004f6:	c398                	sw	a4,0(a5)
    804004f8:	00001797          	auipc	a5,0x1
    804004fc:	9b478793          	addi	a5,a5,-1612 # 80400eac <b>
    80400500:	439c                	lw	a5,0(a5)
    80400502:	85be                	mv	a1,a5
    80400504:	00001517          	auipc	a0,0x1
    80400508:	a0c50513          	addi	a0,a0,-1524 # 80400f10 <b+0x64>
    8040050c:	cf7ff0ef          	jal	ra,80400202 <_Z6printfPcz>
    80400510:	4781                	li	a5,0
    80400512:	853e                	mv	a0,a5
    80400514:	60e2                	ld	ra,24(sp)
    80400516:	6442                	ld	s0,16(sp)
    80400518:	6105                	addi	sp,sp,32
    8040051a:	8082                	ret

000000008040051c <_ZL10__syscall0l>:
    8040051c:	1101                	addi	sp,sp,-32
    8040051e:	ec22                	sd	s0,24(sp)
    80400520:	1000                	addi	s0,sp,32
    80400522:	fea43423          	sd	a0,-24(s0)
    80400526:	fe843883          	ld	a7,-24(s0)
    8040052a:	00000073          	ecall
    8040052e:	87aa                	mv	a5,a0
    80400530:	853e                	mv	a0,a5
    80400532:	6462                	ld	s0,24(sp)
    80400534:	6105                	addi	sp,sp,32
    80400536:	8082                	ret

0000000080400538 <_ZL10__syscall1ll>:
    80400538:	1101                	addi	sp,sp,-32
    8040053a:	ec22                	sd	s0,24(sp)
    8040053c:	1000                	addi	s0,sp,32
    8040053e:	fea43423          	sd	a0,-24(s0)
    80400542:	feb43023          	sd	a1,-32(s0)
    80400546:	fe843883          	ld	a7,-24(s0)
    8040054a:	fe043503          	ld	a0,-32(s0)
    8040054e:	00000073          	ecall
    80400552:	87aa                	mv	a5,a0
    80400554:	853e                	mv	a0,a5
    80400556:	6462                	ld	s0,24(sp)
    80400558:	6105                	addi	sp,sp,32
    8040055a:	8082                	ret

000000008040055c <_ZL10__syscall2lll>:
    8040055c:	7179                	addi	sp,sp,-48
    8040055e:	f422                	sd	s0,40(sp)
    80400560:	1800                	addi	s0,sp,48
    80400562:	fea43423          	sd	a0,-24(s0)
    80400566:	feb43023          	sd	a1,-32(s0)
    8040056a:	fcc43c23          	sd	a2,-40(s0)
    8040056e:	fe843883          	ld	a7,-24(s0)
    80400572:	fe043503          	ld	a0,-32(s0)
    80400576:	fd843583          	ld	a1,-40(s0)
    8040057a:	00000073          	ecall
    8040057e:	87aa                	mv	a5,a0
    80400580:	853e                	mv	a0,a5
    80400582:	7422                	ld	s0,40(sp)
    80400584:	6145                	addi	sp,sp,48
    80400586:	8082                	ret

0000000080400588 <_ZL10__syscall3llll>:
    80400588:	7179                	addi	sp,sp,-48
    8040058a:	f422                	sd	s0,40(sp)
    8040058c:	1800                	addi	s0,sp,48
    8040058e:	fea43423          	sd	a0,-24(s0)
    80400592:	feb43023          	sd	a1,-32(s0)
    80400596:	fcc43c23          	sd	a2,-40(s0)
    8040059a:	fcd43823          	sd	a3,-48(s0)
    8040059e:	fe843883          	ld	a7,-24(s0)
    804005a2:	fe043503          	ld	a0,-32(s0)
    804005a6:	fd843583          	ld	a1,-40(s0)
    804005aa:	fd043603          	ld	a2,-48(s0)
    804005ae:	00000073          	ecall
    804005b2:	87aa                	mv	a5,a0
    804005b4:	853e                	mv	a0,a5
    804005b6:	7422                	ld	s0,40(sp)
    804005b8:	6145                	addi	sp,sp,48
    804005ba:	8082                	ret

00000000804005bc <_ZL10__syscall4lllll>:
    804005bc:	7139                	addi	sp,sp,-64
    804005be:	fc22                	sd	s0,56(sp)
    804005c0:	0080                	addi	s0,sp,64
    804005c2:	fea43423          	sd	a0,-24(s0)
    804005c6:	feb43023          	sd	a1,-32(s0)
    804005ca:	fcc43c23          	sd	a2,-40(s0)
    804005ce:	fcd43823          	sd	a3,-48(s0)
    804005d2:	fce43423          	sd	a4,-56(s0)
    804005d6:	fe843883          	ld	a7,-24(s0)
    804005da:	fe043503          	ld	a0,-32(s0)
    804005de:	fd843583          	ld	a1,-40(s0)
    804005e2:	fd043603          	ld	a2,-48(s0)
    804005e6:	fc843683          	ld	a3,-56(s0)
    804005ea:	00000073          	ecall
    804005ee:	87aa                	mv	a5,a0
    804005f0:	853e                	mv	a0,a5
    804005f2:	7462                	ld	s0,56(sp)
    804005f4:	6121                	addi	sp,sp,64
    804005f6:	8082                	ret

00000000804005f8 <_ZL10__syscall5llllll>:
    804005f8:	7139                	addi	sp,sp,-64
    804005fa:	fc22                	sd	s0,56(sp)
    804005fc:	0080                	addi	s0,sp,64
    804005fe:	fea43423          	sd	a0,-24(s0)
    80400602:	feb43023          	sd	a1,-32(s0)
    80400606:	fcc43c23          	sd	a2,-40(s0)
    8040060a:	fcd43823          	sd	a3,-48(s0)
    8040060e:	fce43423          	sd	a4,-56(s0)
    80400612:	fcf43023          	sd	a5,-64(s0)
    80400616:	fe843883          	ld	a7,-24(s0)
    8040061a:	fe043503          	ld	a0,-32(s0)
    8040061e:	fd843583          	ld	a1,-40(s0)
    80400622:	fd043603          	ld	a2,-48(s0)
    80400626:	fc843683          	ld	a3,-56(s0)
    8040062a:	fc043703          	ld	a4,-64(s0)
    8040062e:	00000073          	ecall
    80400632:	87aa                	mv	a5,a0
    80400634:	853e                	mv	a0,a5
    80400636:	7462                	ld	s0,56(sp)
    80400638:	6121                	addi	sp,sp,64
    8040063a:	8082                	ret

000000008040063c <_Z4openPKci>:
    8040063c:	1101                	addi	sp,sp,-32
    8040063e:	ec06                	sd	ra,24(sp)
    80400640:	e822                	sd	s0,16(sp)
    80400642:	1000                	addi	s0,sp,32
    80400644:	fea43423          	sd	a0,-24(s0)
    80400648:	87ae                	mv	a5,a1
    8040064a:	fef42223          	sw	a5,-28(s0)
    8040064e:	fe843783          	ld	a5,-24(s0)
    80400652:	fe442683          	lw	a3,-28(s0)
    80400656:	4709                	li	a4,2
    80400658:	863e                	mv	a2,a5
    8040065a:	f9c00593          	li	a1,-100
    8040065e:	03800513          	li	a0,56
    80400662:	f5bff0ef          	jal	ra,804005bc <_ZL10__syscall4lllll>
    80400666:	87aa                	mv	a5,a0
    80400668:	2781                	sext.w	a5,a5
    8040066a:	853e                	mv	a0,a5
    8040066c:	60e2                	ld	ra,24(sp)
    8040066e:	6442                	ld	s0,16(sp)
    80400670:	6105                	addi	sp,sp,32
    80400672:	8082                	ret

0000000080400674 <_Z6openatiPKci>:
    80400674:	1101                	addi	sp,sp,-32
    80400676:	ec06                	sd	ra,24(sp)
    80400678:	e822                	sd	s0,16(sp)
    8040067a:	1000                	addi	s0,sp,32
    8040067c:	87aa                	mv	a5,a0
    8040067e:	feb43023          	sd	a1,-32(s0)
    80400682:	8732                	mv	a4,a2
    80400684:	fef42623          	sw	a5,-20(s0)
    80400688:	87ba                	mv	a5,a4
    8040068a:	fef42423          	sw	a5,-24(s0)
    8040068e:	fec42783          	lw	a5,-20(s0)
    80400692:	fe043603          	ld	a2,-32(s0)
    80400696:	fe842683          	lw	a3,-24(s0)
    8040069a:	18000713          	li	a4,384
    8040069e:	85be                	mv	a1,a5
    804006a0:	03800513          	li	a0,56
    804006a4:	f19ff0ef          	jal	ra,804005bc <_ZL10__syscall4lllll>
    804006a8:	87aa                	mv	a5,a0
    804006aa:	2781                	sext.w	a5,a5
    804006ac:	853e                	mv	a0,a5
    804006ae:	60e2                	ld	ra,24(sp)
    804006b0:	6442                	ld	s0,16(sp)
    804006b2:	6105                	addi	sp,sp,32
    804006b4:	8082                	ret

00000000804006b6 <_Z5closei>:
    804006b6:	1101                	addi	sp,sp,-32
    804006b8:	ec06                	sd	ra,24(sp)
    804006ba:	e822                	sd	s0,16(sp)
    804006bc:	1000                	addi	s0,sp,32
    804006be:	87aa                	mv	a5,a0
    804006c0:	fef42623          	sw	a5,-20(s0)
    804006c4:	fec42783          	lw	a5,-20(s0)
    804006c8:	85be                	mv	a1,a5
    804006ca:	03900513          	li	a0,57
    804006ce:	e6bff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    804006d2:	87aa                	mv	a5,a0
    804006d4:	2781                	sext.w	a5,a5
    804006d6:	853e                	mv	a0,a5
    804006d8:	60e2                	ld	ra,24(sp)
    804006da:	6442                	ld	s0,16(sp)
    804006dc:	6105                	addi	sp,sp,32
    804006de:	8082                	ret

00000000804006e0 <_Z4readiPvy>:
    804006e0:	7179                	addi	sp,sp,-48
    804006e2:	f406                	sd	ra,40(sp)
    804006e4:	f022                	sd	s0,32(sp)
    804006e6:	1800                	addi	s0,sp,48
    804006e8:	87aa                	mv	a5,a0
    804006ea:	feb43023          	sd	a1,-32(s0)
    804006ee:	fcc43c23          	sd	a2,-40(s0)
    804006f2:	fef42623          	sw	a5,-20(s0)
    804006f6:	fec42783          	lw	a5,-20(s0)
    804006fa:	fe043703          	ld	a4,-32(s0)
    804006fe:	fd843683          	ld	a3,-40(s0)
    80400702:	863a                	mv	a2,a4
    80400704:	85be                	mv	a1,a5
    80400706:	03f00513          	li	a0,63
    8040070a:	e7fff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    8040070e:	87aa                	mv	a5,a0
    80400710:	853e                	mv	a0,a5
    80400712:	70a2                	ld	ra,40(sp)
    80400714:	7402                	ld	s0,32(sp)
    80400716:	6145                	addi	sp,sp,48
    80400718:	8082                	ret

000000008040071a <_Z5writeiPKvy>:
    8040071a:	7179                	addi	sp,sp,-48
    8040071c:	f406                	sd	ra,40(sp)
    8040071e:	f022                	sd	s0,32(sp)
    80400720:	1800                	addi	s0,sp,48
    80400722:	87aa                	mv	a5,a0
    80400724:	feb43023          	sd	a1,-32(s0)
    80400728:	fcc43c23          	sd	a2,-40(s0)
    8040072c:	fef42623          	sw	a5,-20(s0)
    80400730:	fec42783          	lw	a5,-20(s0)
    80400734:	fe043703          	ld	a4,-32(s0)
    80400738:	fd843683          	ld	a3,-40(s0)
    8040073c:	863a                	mv	a2,a4
    8040073e:	85be                	mv	a1,a5
    80400740:	04000513          	li	a0,64
    80400744:	e45ff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400748:	87aa                	mv	a5,a0
    8040074a:	853e                	mv	a0,a5
    8040074c:	70a2                	ld	ra,40(sp)
    8040074e:	7402                	ld	s0,32(sp)
    80400750:	6145                	addi	sp,sp,48
    80400752:	8082                	ret

0000000080400754 <_Z6getpidv>:
    80400754:	1141                	addi	sp,sp,-16
    80400756:	e406                	sd	ra,8(sp)
    80400758:	e022                	sd	s0,0(sp)
    8040075a:	0800                	addi	s0,sp,16
    8040075c:	0ac00513          	li	a0,172
    80400760:	dbdff0ef          	jal	ra,8040051c <_ZL10__syscall0l>
    80400764:	87aa                	mv	a5,a0
    80400766:	2781                	sext.w	a5,a5
    80400768:	853e                	mv	a0,a5
    8040076a:	60a2                	ld	ra,8(sp)
    8040076c:	6402                	ld	s0,0(sp)
    8040076e:	0141                	addi	sp,sp,16
    80400770:	8082                	ret

0000000080400772 <_Z7getppidv>:
    80400772:	1141                	addi	sp,sp,-16
    80400774:	e406                	sd	ra,8(sp)
    80400776:	e022                	sd	s0,0(sp)
    80400778:	0800                	addi	s0,sp,16
    8040077a:	0ad00513          	li	a0,173
    8040077e:	d9fff0ef          	jal	ra,8040051c <_ZL10__syscall0l>
    80400782:	87aa                	mv	a5,a0
    80400784:	2781                	sext.w	a5,a5
    80400786:	853e                	mv	a0,a5
    80400788:	60a2                	ld	ra,8(sp)
    8040078a:	6402                	ld	s0,0(sp)
    8040078c:	0141                	addi	sp,sp,16
    8040078e:	8082                	ret

0000000080400790 <_Z11sched_yieldv>:
    80400790:	1141                	addi	sp,sp,-16
    80400792:	e406                	sd	ra,8(sp)
    80400794:	e022                	sd	s0,0(sp)
    80400796:	0800                	addi	s0,sp,16
    80400798:	07c00513          	li	a0,124
    8040079c:	d81ff0ef          	jal	ra,8040051c <_ZL10__syscall0l>
    804007a0:	87aa                	mv	a5,a0
    804007a2:	2781                	sext.w	a5,a5
    804007a4:	853e                	mv	a0,a5
    804007a6:	60a2                	ld	ra,8(sp)
    804007a8:	6402                	ld	s0,0(sp)
    804007aa:	0141                	addi	sp,sp,16
    804007ac:	8082                	ret

00000000804007ae <_Z4forkv>:
    804007ae:	1141                	addi	sp,sp,-16
    804007b0:	e406                	sd	ra,8(sp)
    804007b2:	e022                	sd	s0,0(sp)
    804007b4:	0800                	addi	s0,sp,16
    804007b6:	4601                	li	a2,0
    804007b8:	45c5                	li	a1,17
    804007ba:	0dc00513          	li	a0,220
    804007be:	d9fff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    804007c2:	87aa                	mv	a5,a0
    804007c4:	2781                	sext.w	a5,a5
    804007c6:	853e                	mv	a0,a5
    804007c8:	60a2                	ld	ra,8(sp)
    804007ca:	6402                	ld	s0,0(sp)
    804007cc:	0141                	addi	sp,sp,16
    804007ce:	8082                	ret

00000000804007d0 <_Z4exiti>:
    804007d0:	1101                	addi	sp,sp,-32
    804007d2:	ec06                	sd	ra,24(sp)
    804007d4:	e822                	sd	s0,16(sp)
    804007d6:	1000                	addi	s0,sp,32
    804007d8:	87aa                	mv	a5,a0
    804007da:	fef42623          	sw	a5,-20(s0)
    804007de:	fec42783          	lw	a5,-20(s0)
    804007e2:	85be                	mv	a1,a5
    804007e4:	05d00513          	li	a0,93
    804007e8:	d51ff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    804007ec:	0001                	nop
    804007ee:	60e2                	ld	ra,24(sp)
    804007f0:	6442                	ld	s0,16(sp)
    804007f2:	6105                	addi	sp,sp,32
    804007f4:	8082                	ret

00000000804007f6 <_Z7waitpidiPii>:
    804007f6:	1101                	addi	sp,sp,-32
    804007f8:	ec06                	sd	ra,24(sp)
    804007fa:	e822                	sd	s0,16(sp)
    804007fc:	1000                	addi	s0,sp,32
    804007fe:	87aa                	mv	a5,a0
    80400800:	feb43023          	sd	a1,-32(s0)
    80400804:	8732                	mv	a4,a2
    80400806:	fef42623          	sw	a5,-20(s0)
    8040080a:	87ba                	mv	a5,a4
    8040080c:	fef42423          	sw	a5,-24(s0)
    80400810:	fec42783          	lw	a5,-20(s0)
    80400814:	fe043603          	ld	a2,-32(s0)
    80400818:	fe842683          	lw	a3,-24(s0)
    8040081c:	4701                	li	a4,0
    8040081e:	85be                	mv	a1,a5
    80400820:	10400513          	li	a0,260
    80400824:	d99ff0ef          	jal	ra,804005bc <_ZL10__syscall4lllll>
    80400828:	87aa                	mv	a5,a0
    8040082a:	2781                	sext.w	a5,a5
    8040082c:	853e                	mv	a0,a5
    8040082e:	60e2                	ld	ra,24(sp)
    80400830:	6442                	ld	s0,16(sp)
    80400832:	6105                	addi	sp,sp,32
    80400834:	8082                	ret

0000000080400836 <_Z4execPc>:
    80400836:	1101                	addi	sp,sp,-32
    80400838:	ec06                	sd	ra,24(sp)
    8040083a:	e822                	sd	s0,16(sp)
    8040083c:	1000                	addi	s0,sp,32
    8040083e:	fea43423          	sd	a0,-24(s0)
    80400842:	fe843783          	ld	a5,-24(s0)
    80400846:	85be                	mv	a1,a5
    80400848:	0dd00513          	li	a0,221
    8040084c:	cedff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400850:	87aa                	mv	a5,a0
    80400852:	2781                	sext.w	a5,a5
    80400854:	853e                	mv	a0,a5
    80400856:	60e2                	ld	ra,24(sp)
    80400858:	6442                	ld	s0,16(sp)
    8040085a:	6105                	addi	sp,sp,32
    8040085c:	8082                	ret

000000008040085e <_Z6execvePKcPKPcS3_>:
    8040085e:	7179                	addi	sp,sp,-48
    80400860:	f406                	sd	ra,40(sp)
    80400862:	f022                	sd	s0,32(sp)
    80400864:	1800                	addi	s0,sp,48
    80400866:	fea43423          	sd	a0,-24(s0)
    8040086a:	feb43023          	sd	a1,-32(s0)
    8040086e:	fcc43c23          	sd	a2,-40(s0)
    80400872:	fe843783          	ld	a5,-24(s0)
    80400876:	fe043703          	ld	a4,-32(s0)
    8040087a:	fd843683          	ld	a3,-40(s0)
    8040087e:	863a                	mv	a2,a4
    80400880:	85be                	mv	a1,a5
    80400882:	0dd00513          	li	a0,221
    80400886:	d03ff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    8040088a:	87aa                	mv	a5,a0
    8040088c:	2781                	sext.w	a5,a5
    8040088e:	853e                	mv	a0,a5
    80400890:	70a2                	ld	ra,40(sp)
    80400892:	7402                	ld	s0,32(sp)
    80400894:	6145                	addi	sp,sp,48
    80400896:	8082                	ret

0000000080400898 <_Z5timesPv>:
    80400898:	1101                	addi	sp,sp,-32
    8040089a:	ec06                	sd	ra,24(sp)
    8040089c:	e822                	sd	s0,16(sp)
    8040089e:	1000                	addi	s0,sp,32
    804008a0:	fea43423          	sd	a0,-24(s0)
    804008a4:	fe843783          	ld	a5,-24(s0)
    804008a8:	85be                	mv	a1,a5
    804008aa:	09900513          	li	a0,153
    804008ae:	c8bff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    804008b2:	87aa                	mv	a5,a0
    804008b4:	2781                	sext.w	a5,a5
    804008b6:	853e                	mv	a0,a5
    804008b8:	60e2                	ld	ra,24(sp)
    804008ba:	6442                	ld	s0,16(sp)
    804008bc:	6105                	addi	sp,sp,32
    804008be:	8082                	ret

00000000804008c0 <_Z8get_timev>:
    804008c0:	7179                	addi	sp,sp,-48
    804008c2:	f406                	sd	ra,40(sp)
    804008c4:	f022                	sd	s0,32(sp)
    804008c6:	1800                	addi	s0,sp,48
    804008c8:	fd840793          	addi	a5,s0,-40
    804008cc:	4581                	li	a1,0
    804008ce:	853e                	mv	a0,a5
    804008d0:	040000ef          	jal	ra,80400910 <_Z12sys_get_timeP7TimeVali>
    804008d4:	87aa                	mv	a5,a0
    804008d6:	fef42623          	sw	a5,-20(s0)
    804008da:	fec42783          	lw	a5,-20(s0)
    804008de:	2781                	sext.w	a5,a5
    804008e0:	e395                	bnez	a5,80400904 <_Z8get_timev+0x44>
    804008e2:	fd843703          	ld	a4,-40(s0)
    804008e6:	67c1                	lui	a5,0x10
    804008e8:	17fd                	addi	a5,a5,-1 # ffff <_start-0x803f0001>
    804008ea:	8f7d                	and	a4,a4,a5
    804008ec:	3e800793          	li	a5,1000
    804008f0:	02f70733          	mul	a4,a4,a5
    804008f4:	fe043683          	ld	a3,-32(s0)
    804008f8:	3e800793          	li	a5,1000
    804008fc:	02f6d7b3          	divu	a5,a3,a5
    80400900:	97ba                	add	a5,a5,a4
    80400902:	a011                	j	80400906 <_Z8get_timev+0x46>
    80400904:	57fd                	li	a5,-1
    80400906:	853e                	mv	a0,a5
    80400908:	70a2                	ld	ra,40(sp)
    8040090a:	7402                	ld	s0,32(sp)
    8040090c:	6145                	addi	sp,sp,48
    8040090e:	8082                	ret

0000000080400910 <_Z12sys_get_timeP7TimeVali>:
    80400910:	1101                	addi	sp,sp,-32
    80400912:	ec06                	sd	ra,24(sp)
    80400914:	e822                	sd	s0,16(sp)
    80400916:	1000                	addi	s0,sp,32
    80400918:	fea43423          	sd	a0,-24(s0)
    8040091c:	87ae                	mv	a5,a1
    8040091e:	fef42223          	sw	a5,-28(s0)
    80400922:	fe843783          	ld	a5,-24(s0)
    80400926:	fe442703          	lw	a4,-28(s0)
    8040092a:	863a                	mv	a2,a4
    8040092c:	85be                	mv	a1,a5
    8040092e:	0a900513          	li	a0,169
    80400932:	c2bff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400936:	87aa                	mv	a5,a0
    80400938:	2781                	sext.w	a5,a5
    8040093a:	853e                	mv	a0,a5
    8040093c:	60e2                	ld	ra,24(sp)
    8040093e:	6442                	ld	s0,16(sp)
    80400940:	6105                	addi	sp,sp,32
    80400942:	8082                	ret

0000000080400944 <_Z4timePm>:
    80400944:	1101                	addi	sp,sp,-32
    80400946:	ec06                	sd	ra,24(sp)
    80400948:	e822                	sd	s0,16(sp)
    8040094a:	1000                	addi	s0,sp,32
    8040094c:	fea43423          	sd	a0,-24(s0)
    80400950:	fe843783          	ld	a5,-24(s0)
    80400954:	85be                	mv	a1,a5
    80400956:	42600513          	li	a0,1062
    8040095a:	bdfff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    8040095e:	87aa                	mv	a5,a0
    80400960:	2781                	sext.w	a5,a5
    80400962:	853e                	mv	a0,a5
    80400964:	60e2                	ld	ra,24(sp)
    80400966:	6442                	ld	s0,16(sp)
    80400968:	6105                	addi	sp,sp,32
    8040096a:	8082                	ret

000000008040096c <_Z5sleepy>:
    8040096c:	7179                	addi	sp,sp,-48
    8040096e:	f406                	sd	ra,40(sp)
    80400970:	f022                	sd	s0,32(sp)
    80400972:	1800                	addi	s0,sp,48
    80400974:	fca43c23          	sd	a0,-40(s0)
    80400978:	fe043023          	sd	zero,-32(s0)
    8040097c:	fe043423          	sd	zero,-24(s0)
    80400980:	fd843783          	ld	a5,-40(s0)
    80400984:	fef43023          	sd	a5,-32(s0)
    80400988:	fe040793          	addi	a5,s0,-32
    8040098c:	fe040713          	addi	a4,s0,-32
    80400990:	863a                	mv	a2,a4
    80400992:	85be                	mv	a1,a5
    80400994:	06500513          	li	a0,101
    80400998:	bc5ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    8040099c:	87aa                	mv	a5,a0
    8040099e:	00f037b3          	snez	a5,a5
    804009a2:	0ff7f793          	zext.b	a5,a5
    804009a6:	c789                	beqz	a5,804009b0 <_Z5sleepy+0x44>
    804009a8:	fe043783          	ld	a5,-32(s0)
    804009ac:	2781                	sext.w	a5,a5
    804009ae:	a011                	j	804009b2 <_Z5sleepy+0x46>
    804009b0:	4781                	li	a5,0
    804009b2:	853e                	mv	a0,a5
    804009b4:	70a2                	ld	ra,40(sp)
    804009b6:	7402                	ld	s0,32(sp)
    804009b8:	6145                	addi	sp,sp,48
    804009ba:	8082                	ret

00000000804009bc <_Z12set_priorityi>:
    804009bc:	1101                	addi	sp,sp,-32
    804009be:	ec06                	sd	ra,24(sp)
    804009c0:	e822                	sd	s0,16(sp)
    804009c2:	1000                	addi	s0,sp,32
    804009c4:	87aa                	mv	a5,a0
    804009c6:	fef42623          	sw	a5,-20(s0)
    804009ca:	fec42783          	lw	a5,-20(s0)
    804009ce:	85be                	mv	a1,a5
    804009d0:	08c00513          	li	a0,140
    804009d4:	b65ff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    804009d8:	87aa                	mv	a5,a0
    804009da:	2781                	sext.w	a5,a5
    804009dc:	853e                	mv	a0,a5
    804009de:	60e2                	ld	ra,24(sp)
    804009e0:	6442                	ld	s0,16(sp)
    804009e2:	6105                	addi	sp,sp,32
    804009e4:	8082                	ret

00000000804009e6 <_Z6munmapPvy>:
    804009e6:	1101                	addi	sp,sp,-32
    804009e8:	ec06                	sd	ra,24(sp)
    804009ea:	e822                	sd	s0,16(sp)
    804009ec:	1000                	addi	s0,sp,32
    804009ee:	fea43423          	sd	a0,-24(s0)
    804009f2:	feb43023          	sd	a1,-32(s0)
    804009f6:	fe843783          	ld	a5,-24(s0)
    804009fa:	fe043703          	ld	a4,-32(s0)
    804009fe:	863a                	mv	a2,a4
    80400a00:	85be                	mv	a1,a5
    80400a02:	0d700513          	li	a0,215
    80400a06:	b57ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400a0a:	87aa                	mv	a5,a0
    80400a0c:	2781                	sext.w	a5,a5
    80400a0e:	853e                	mv	a0,a5
    80400a10:	60e2                	ld	ra,24(sp)
    80400a12:	6442                	ld	s0,16(sp)
    80400a14:	6105                	addi	sp,sp,32
    80400a16:	8082                	ret

0000000080400a18 <_Z4waitPi>:
    80400a18:	1101                	addi	sp,sp,-32
    80400a1a:	ec06                	sd	ra,24(sp)
    80400a1c:	e822                	sd	s0,16(sp)
    80400a1e:	1000                	addi	s0,sp,32
    80400a20:	fea43423          	sd	a0,-24(s0)
    80400a24:	4601                	li	a2,0
    80400a26:	fe843583          	ld	a1,-24(s0)
    80400a2a:	557d                	li	a0,-1
    80400a2c:	dcbff0ef          	jal	ra,804007f6 <_Z7waitpidiPii>
    80400a30:	87aa                	mv	a5,a0
    80400a32:	853e                	mv	a0,a5
    80400a34:	60e2                	ld	ra,24(sp)
    80400a36:	6442                	ld	s0,16(sp)
    80400a38:	6105                	addi	sp,sp,32
    80400a3a:	8082                	ret

0000000080400a3c <_Z5spawnPc>:
    80400a3c:	1101                	addi	sp,sp,-32
    80400a3e:	ec06                	sd	ra,24(sp)
    80400a40:	e822                	sd	s0,16(sp)
    80400a42:	1000                	addi	s0,sp,32
    80400a44:	fea43423          	sd	a0,-24(s0)
    80400a48:	fe843783          	ld	a5,-24(s0)
    80400a4c:	85be                	mv	a1,a5
    80400a4e:	19000513          	li	a0,400
    80400a52:	ae7ff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400a56:	87aa                	mv	a5,a0
    80400a58:	2781                	sext.w	a5,a5
    80400a5a:	853e                	mv	a0,a5
    80400a5c:	60e2                	ld	ra,24(sp)
    80400a5e:	6442                	ld	s0,16(sp)
    80400a60:	6105                	addi	sp,sp,32
    80400a62:	8082                	ret

0000000080400a64 <_Z8mailreadPvi>:
    80400a64:	1101                	addi	sp,sp,-32
    80400a66:	ec06                	sd	ra,24(sp)
    80400a68:	e822                	sd	s0,16(sp)
    80400a6a:	1000                	addi	s0,sp,32
    80400a6c:	fea43423          	sd	a0,-24(s0)
    80400a70:	87ae                	mv	a5,a1
    80400a72:	fef42223          	sw	a5,-28(s0)
    80400a76:	fe843783          	ld	a5,-24(s0)
    80400a7a:	fe442703          	lw	a4,-28(s0)
    80400a7e:	863a                	mv	a2,a4
    80400a80:	85be                	mv	a1,a5
    80400a82:	19100513          	li	a0,401
    80400a86:	ad7ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400a8a:	87aa                	mv	a5,a0
    80400a8c:	2781                	sext.w	a5,a5
    80400a8e:	853e                	mv	a0,a5
    80400a90:	60e2                	ld	ra,24(sp)
    80400a92:	6442                	ld	s0,16(sp)
    80400a94:	6105                	addi	sp,sp,32
    80400a96:	8082                	ret

0000000080400a98 <_Z9mailwriteiPvi>:
    80400a98:	1101                	addi	sp,sp,-32
    80400a9a:	ec06                	sd	ra,24(sp)
    80400a9c:	e822                	sd	s0,16(sp)
    80400a9e:	1000                	addi	s0,sp,32
    80400aa0:	87aa                	mv	a5,a0
    80400aa2:	feb43023          	sd	a1,-32(s0)
    80400aa6:	8732                	mv	a4,a2
    80400aa8:	fef42623          	sw	a5,-20(s0)
    80400aac:	87ba                	mv	a5,a4
    80400aae:	fef42423          	sw	a5,-24(s0)
    80400ab2:	fec42783          	lw	a5,-20(s0)
    80400ab6:	fe043703          	ld	a4,-32(s0)
    80400aba:	fe842683          	lw	a3,-24(s0)
    80400abe:	863a                	mv	a2,a4
    80400ac0:	85be                	mv	a1,a5
    80400ac2:	19200513          	li	a0,402
    80400ac6:	ac3ff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400aca:	87aa                	mv	a5,a0
    80400acc:	2781                	sext.w	a5,a5
    80400ace:	853e                	mv	a0,a5
    80400ad0:	60e2                	ld	ra,24(sp)
    80400ad2:	6442                	ld	s0,16(sp)
    80400ad4:	6105                	addi	sp,sp,32
    80400ad6:	8082                	ret

0000000080400ad8 <_Z5fstatiP5kstat>:
    80400ad8:	1101                	addi	sp,sp,-32
    80400ada:	ec06                	sd	ra,24(sp)
    80400adc:	e822                	sd	s0,16(sp)
    80400ade:	1000                	addi	s0,sp,32
    80400ae0:	87aa                	mv	a5,a0
    80400ae2:	feb43023          	sd	a1,-32(s0)
    80400ae6:	fef42623          	sw	a5,-20(s0)
    80400aea:	fec42783          	lw	a5,-20(s0)
    80400aee:	fe043703          	ld	a4,-32(s0)
    80400af2:	863a                	mv	a2,a4
    80400af4:	85be                	mv	a1,a5
    80400af6:	05000513          	li	a0,80
    80400afa:	a63ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400afe:	87aa                	mv	a5,a0
    80400b00:	2781                	sext.w	a5,a5
    80400b02:	853e                	mv	a0,a5
    80400b04:	60e2                	ld	ra,24(sp)
    80400b06:	6442                	ld	s0,16(sp)
    80400b08:	6105                	addi	sp,sp,32
    80400b0a:	8082                	ret

0000000080400b0c <_Z10sys_linkatiPciS_j>:
    80400b0c:	7179                	addi	sp,sp,-48
    80400b0e:	f406                	sd	ra,40(sp)
    80400b10:	f022                	sd	s0,32(sp)
    80400b12:	1800                	addi	s0,sp,48
    80400b14:	87aa                	mv	a5,a0
    80400b16:	feb43023          	sd	a1,-32(s0)
    80400b1a:	fcd43c23          	sd	a3,-40(s0)
    80400b1e:	fef42623          	sw	a5,-20(s0)
    80400b22:	87b2                	mv	a5,a2
    80400b24:	fef42423          	sw	a5,-24(s0)
    80400b28:	87ba                	mv	a5,a4
    80400b2a:	fcf42a23          	sw	a5,-44(s0)
    80400b2e:	fec42583          	lw	a1,-20(s0)
    80400b32:	fe043603          	ld	a2,-32(s0)
    80400b36:	fe842683          	lw	a3,-24(s0)
    80400b3a:	fd843703          	ld	a4,-40(s0)
    80400b3e:	fd446783          	lwu	a5,-44(s0)
    80400b42:	02500513          	li	a0,37
    80400b46:	ab3ff0ef          	jal	ra,804005f8 <_ZL10__syscall5llllll>
    80400b4a:	87aa                	mv	a5,a0
    80400b4c:	2781                	sext.w	a5,a5
    80400b4e:	853e                	mv	a0,a5
    80400b50:	70a2                	ld	ra,40(sp)
    80400b52:	7402                	ld	s0,32(sp)
    80400b54:	6145                	addi	sp,sp,48
    80400b56:	8082                	ret

0000000080400b58 <_Z12sys_unlinkatiPcj>:
    80400b58:	1101                	addi	sp,sp,-32
    80400b5a:	ec06                	sd	ra,24(sp)
    80400b5c:	e822                	sd	s0,16(sp)
    80400b5e:	1000                	addi	s0,sp,32
    80400b60:	87aa                	mv	a5,a0
    80400b62:	feb43023          	sd	a1,-32(s0)
    80400b66:	8732                	mv	a4,a2
    80400b68:	fef42623          	sw	a5,-20(s0)
    80400b6c:	87ba                	mv	a5,a4
    80400b6e:	fef42423          	sw	a5,-24(s0)
    80400b72:	fec42783          	lw	a5,-20(s0)
    80400b76:	fe043703          	ld	a4,-32(s0)
    80400b7a:	fe846683          	lwu	a3,-24(s0)
    80400b7e:	863a                	mv	a2,a4
    80400b80:	85be                	mv	a1,a5
    80400b82:	02300513          	li	a0,35
    80400b86:	a03ff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400b8a:	87aa                	mv	a5,a0
    80400b8c:	2781                	sext.w	a5,a5
    80400b8e:	853e                	mv	a0,a5
    80400b90:	60e2                	ld	ra,24(sp)
    80400b92:	6442                	ld	s0,16(sp)
    80400b94:	6105                	addi	sp,sp,32
    80400b96:	8082                	ret

0000000080400b98 <_Z4linkPcS_>:
    80400b98:	1101                	addi	sp,sp,-32
    80400b9a:	ec06                	sd	ra,24(sp)
    80400b9c:	e822                	sd	s0,16(sp)
    80400b9e:	1000                	addi	s0,sp,32
    80400ba0:	fea43423          	sd	a0,-24(s0)
    80400ba4:	feb43023          	sd	a1,-32(s0)
    80400ba8:	4701                	li	a4,0
    80400baa:	fe043683          	ld	a3,-32(s0)
    80400bae:	f9c00613          	li	a2,-100
    80400bb2:	fe843583          	ld	a1,-24(s0)
    80400bb6:	f9c00513          	li	a0,-100
    80400bba:	f53ff0ef          	jal	ra,80400b0c <_Z10sys_linkatiPciS_j>
    80400bbe:	87aa                	mv	a5,a0
    80400bc0:	853e                	mv	a0,a5
    80400bc2:	60e2                	ld	ra,24(sp)
    80400bc4:	6442                	ld	s0,16(sp)
    80400bc6:	6105                	addi	sp,sp,32
    80400bc8:	8082                	ret

0000000080400bca <_Z6unlinkPc>:
    80400bca:	1101                	addi	sp,sp,-32
    80400bcc:	ec06                	sd	ra,24(sp)
    80400bce:	e822                	sd	s0,16(sp)
    80400bd0:	1000                	addi	s0,sp,32
    80400bd2:	fea43423          	sd	a0,-24(s0)
    80400bd6:	4601                	li	a2,0
    80400bd8:	fe843583          	ld	a1,-24(s0)
    80400bdc:	f9c00513          	li	a0,-100
    80400be0:	f79ff0ef          	jal	ra,80400b58 <_Z12sys_unlinkatiPcj>
    80400be4:	87aa                	mv	a5,a0
    80400be6:	853e                	mv	a0,a5
    80400be8:	60e2                	ld	ra,24(sp)
    80400bea:	6442                	ld	s0,16(sp)
    80400bec:	6105                	addi	sp,sp,32
    80400bee:	8082                	ret

0000000080400bf0 <_Z5unamePv>:
    80400bf0:	1101                	addi	sp,sp,-32
    80400bf2:	ec06                	sd	ra,24(sp)
    80400bf4:	e822                	sd	s0,16(sp)
    80400bf6:	1000                	addi	s0,sp,32
    80400bf8:	fea43423          	sd	a0,-24(s0)
    80400bfc:	fe843783          	ld	a5,-24(s0)
    80400c00:	85be                	mv	a1,a5
    80400c02:	0a000513          	li	a0,160
    80400c06:	933ff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400c0a:	87aa                	mv	a5,a0
    80400c0c:	2781                	sext.w	a5,a5
    80400c0e:	853e                	mv	a0,a5
    80400c10:	60e2                	ld	ra,24(sp)
    80400c12:	6442                	ld	s0,16(sp)
    80400c14:	6105                	addi	sp,sp,32
    80400c16:	8082                	ret

0000000080400c18 <_Z3brkPv>:
    80400c18:	1101                	addi	sp,sp,-32
    80400c1a:	ec06                	sd	ra,24(sp)
    80400c1c:	e822                	sd	s0,16(sp)
    80400c1e:	1000                	addi	s0,sp,32
    80400c20:	fea43423          	sd	a0,-24(s0)
    80400c24:	fe843783          	ld	a5,-24(s0)
    80400c28:	85be                	mv	a1,a5
    80400c2a:	0d600513          	li	a0,214
    80400c2e:	90bff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400c32:	87aa                	mv	a5,a0
    80400c34:	2781                	sext.w	a5,a5
    80400c36:	853e                	mv	a0,a5
    80400c38:	60e2                	ld	ra,24(sp)
    80400c3a:	6442                	ld	s0,16(sp)
    80400c3c:	6105                	addi	sp,sp,32
    80400c3e:	8082                	ret

0000000080400c40 <_Z5chdirPKc>:
    80400c40:	1101                	addi	sp,sp,-32
    80400c42:	ec06                	sd	ra,24(sp)
    80400c44:	e822                	sd	s0,16(sp)
    80400c46:	1000                	addi	s0,sp,32
    80400c48:	fea43423          	sd	a0,-24(s0)
    80400c4c:	fe843783          	ld	a5,-24(s0)
    80400c50:	85be                	mv	a1,a5
    80400c52:	03100513          	li	a0,49
    80400c56:	8e3ff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400c5a:	87aa                	mv	a5,a0
    80400c5c:	2781                	sext.w	a5,a5
    80400c5e:	853e                	mv	a0,a5
    80400c60:	60e2                	ld	ra,24(sp)
    80400c62:	6442                	ld	s0,16(sp)
    80400c64:	6105                	addi	sp,sp,32
    80400c66:	8082                	ret

0000000080400c68 <_Z5mkdirPKcj>:
    80400c68:	1101                	addi	sp,sp,-32
    80400c6a:	ec06                	sd	ra,24(sp)
    80400c6c:	e822                	sd	s0,16(sp)
    80400c6e:	1000                	addi	s0,sp,32
    80400c70:	fea43423          	sd	a0,-24(s0)
    80400c74:	87ae                	mv	a5,a1
    80400c76:	fef42223          	sw	a5,-28(s0)
    80400c7a:	fe843783          	ld	a5,-24(s0)
    80400c7e:	fe446703          	lwu	a4,-28(s0)
    80400c82:	86ba                	mv	a3,a4
    80400c84:	863e                	mv	a2,a5
    80400c86:	f9c00593          	li	a1,-100
    80400c8a:	02200513          	li	a0,34
    80400c8e:	8fbff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400c92:	87aa                	mv	a5,a0
    80400c94:	2781                	sext.w	a5,a5
    80400c96:	853e                	mv	a0,a5
    80400c98:	60e2                	ld	ra,24(sp)
    80400c9a:	6442                	ld	s0,16(sp)
    80400c9c:	6105                	addi	sp,sp,32
    80400c9e:	8082                	ret

0000000080400ca0 <_Z8getdentsiP14linux_dirent64m>:
    80400ca0:	7179                	addi	sp,sp,-48
    80400ca2:	f406                	sd	ra,40(sp)
    80400ca4:	f022                	sd	s0,32(sp)
    80400ca6:	1800                	addi	s0,sp,48
    80400ca8:	87aa                	mv	a5,a0
    80400caa:	feb43023          	sd	a1,-32(s0)
    80400cae:	fcc43c23          	sd	a2,-40(s0)
    80400cb2:	fef42623          	sw	a5,-20(s0)
    80400cb6:	fec42783          	lw	a5,-20(s0)
    80400cba:	fe043703          	ld	a4,-32(s0)
    80400cbe:	fd843683          	ld	a3,-40(s0)
    80400cc2:	863a                	mv	a2,a4
    80400cc4:	85be                	mv	a1,a5
    80400cc6:	03d00513          	li	a0,61
    80400cca:	8bfff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400cce:	87aa                	mv	a5,a0
    80400cd0:	2781                	sext.w	a5,a5
    80400cd2:	853e                	mv	a0,a5
    80400cd4:	70a2                	ld	ra,40(sp)
    80400cd6:	7402                	ld	s0,32(sp)
    80400cd8:	6145                	addi	sp,sp,48
    80400cda:	8082                	ret

0000000080400cdc <_Z4pipePi>:
    80400cdc:	1101                	addi	sp,sp,-32
    80400cde:	ec06                	sd	ra,24(sp)
    80400ce0:	e822                	sd	s0,16(sp)
    80400ce2:	1000                	addi	s0,sp,32
    80400ce4:	fea43423          	sd	a0,-24(s0)
    80400ce8:	fe843783          	ld	a5,-24(s0)
    80400cec:	4601                	li	a2,0
    80400cee:	85be                	mv	a1,a5
    80400cf0:	03b00513          	li	a0,59
    80400cf4:	869ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400cf8:	87aa                	mv	a5,a0
    80400cfa:	2781                	sext.w	a5,a5
    80400cfc:	853e                	mv	a0,a5
    80400cfe:	60e2                	ld	ra,24(sp)
    80400d00:	6442                	ld	s0,16(sp)
    80400d02:	6105                	addi	sp,sp,32
    80400d04:	8082                	ret

0000000080400d06 <_Z3dupi>:
    80400d06:	1101                	addi	sp,sp,-32
    80400d08:	ec06                	sd	ra,24(sp)
    80400d0a:	e822                	sd	s0,16(sp)
    80400d0c:	1000                	addi	s0,sp,32
    80400d0e:	87aa                	mv	a5,a0
    80400d10:	fef42623          	sw	a5,-20(s0)
    80400d14:	fec42783          	lw	a5,-20(s0)
    80400d18:	85be                	mv	a1,a5
    80400d1a:	455d                	li	a0,23
    80400d1c:	81dff0ef          	jal	ra,80400538 <_ZL10__syscall1ll>
    80400d20:	87aa                	mv	a5,a0
    80400d22:	2781                	sext.w	a5,a5
    80400d24:	853e                	mv	a0,a5
    80400d26:	60e2                	ld	ra,24(sp)
    80400d28:	6442                	ld	s0,16(sp)
    80400d2a:	6105                	addi	sp,sp,32
    80400d2c:	8082                	ret

0000000080400d2e <_Z4dup2ii>:
    80400d2e:	1101                	addi	sp,sp,-32
    80400d30:	ec06                	sd	ra,24(sp)
    80400d32:	e822                	sd	s0,16(sp)
    80400d34:	1000                	addi	s0,sp,32
    80400d36:	87aa                	mv	a5,a0
    80400d38:	872e                	mv	a4,a1
    80400d3a:	fef42623          	sw	a5,-20(s0)
    80400d3e:	87ba                	mv	a5,a4
    80400d40:	fef42423          	sw	a5,-24(s0)
    80400d44:	fec42783          	lw	a5,-20(s0)
    80400d48:	fe842703          	lw	a4,-24(s0)
    80400d4c:	4681                	li	a3,0
    80400d4e:	863a                	mv	a2,a4
    80400d50:	85be                	mv	a1,a5
    80400d52:	4561                	li	a0,24
    80400d54:	835ff0ef          	jal	ra,80400588 <_ZL10__syscall3llll>
    80400d58:	87aa                	mv	a5,a0
    80400d5a:	2781                	sext.w	a5,a5
    80400d5c:	853e                	mv	a0,a5
    80400d5e:	60e2                	ld	ra,24(sp)
    80400d60:	6442                	ld	s0,16(sp)
    80400d62:	6105                	addi	sp,sp,32
    80400d64:	8082                	ret

0000000080400d66 <_Z5mountPKcS0_S0_mPKv>:
    80400d66:	7139                	addi	sp,sp,-64
    80400d68:	fc06                	sd	ra,56(sp)
    80400d6a:	f822                	sd	s0,48(sp)
    80400d6c:	0080                	addi	s0,sp,64
    80400d6e:	fea43423          	sd	a0,-24(s0)
    80400d72:	feb43023          	sd	a1,-32(s0)
    80400d76:	fcc43c23          	sd	a2,-40(s0)
    80400d7a:	fcd43823          	sd	a3,-48(s0)
    80400d7e:	fce43423          	sd	a4,-56(s0)
    80400d82:	fe843583          	ld	a1,-24(s0)
    80400d86:	fe043603          	ld	a2,-32(s0)
    80400d8a:	fd843683          	ld	a3,-40(s0)
    80400d8e:	fd043703          	ld	a4,-48(s0)
    80400d92:	fc843783          	ld	a5,-56(s0)
    80400d96:	02800513          	li	a0,40
    80400d9a:	85fff0ef          	jal	ra,804005f8 <_ZL10__syscall5llllll>
    80400d9e:	87aa                	mv	a5,a0
    80400da0:	2781                	sext.w	a5,a5
    80400da2:	853e                	mv	a0,a5
    80400da4:	70e2                	ld	ra,56(sp)
    80400da6:	7442                	ld	s0,48(sp)
    80400da8:	6121                	addi	sp,sp,64
    80400daa:	8082                	ret

0000000080400dac <_Z6umountPKc>:
    80400dac:	1101                	addi	sp,sp,-32
    80400dae:	ec06                	sd	ra,24(sp)
    80400db0:	e822                	sd	s0,16(sp)
    80400db2:	1000                	addi	s0,sp,32
    80400db4:	fea43423          	sd	a0,-24(s0)
    80400db8:	fe843783          	ld	a5,-24(s0)
    80400dbc:	4601                	li	a2,0
    80400dbe:	85be                	mv	a1,a5
    80400dc0:	02700513          	li	a0,39
    80400dc4:	f98ff0ef          	jal	ra,8040055c <_ZL10__syscall2lll>
    80400dc8:	87aa                	mv	a5,a0
    80400dca:	2781                	sext.w	a5,a5
    80400dcc:	853e                	mv	a0,a5
    80400dce:	60e2                	ld	ra,24(sp)
    80400dd0:	6442                	ld	s0,16(sp)
    80400dd2:	6105                	addi	sp,sp,32
    80400dd4:	8082                	ret

Disassembly of section .interp:

0000000080400dd6 <.interp>:
    80400dd6:	62696c2f          	.4byte	0x62696c2f
    80400dda:	2d646c2f          	.4byte	0x2d646c2f
    80400dde:	696c                	ld	a1,208(a0)
    80400de0:	756e                	ld	a0,248(sp)
    80400de2:	2d78                	fld	fa4,216(a0)
    80400de4:	6972                	ld	s2,280(sp)
    80400de6:	36766373          	csrrsi	t1,0x367,12
    80400dea:	2d34                	fld	fa3,88(a0)
    80400dec:	706c                	ld	a1,224(s0)
    80400dee:	3436                	fld	fs0,360(sp)
    80400df0:	2e64                	fld	fs1,216(a2)
    80400df2:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

0000000080400df8 <.note.gnu.build-id>:
    80400df8:	0004                	.2byte	0x4
    80400dfa:	0000                	unimp
    80400dfc:	0014                	.2byte	0x14
    80400dfe:	0000                	unimp
    80400e00:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    80400e04:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    80400e08:	ba41                	j	80400798 <_Z11sched_yieldv+0x8>
    80400e0a:	2a99                	addiw	s5,s5,6
    80400e0c:	26fa02a3          	sb	a5,613(s4)
    80400e10:	8e42                	mv	t3,a6
    80400e12:	8ddd                	or	a1,a1,a5
    80400e14:	a83cc833          	.4byte	0xa83cc833
    80400e18:	6f7e                	ld	t5,472(sp)
    80400e1a:	1188                	addi	a0,sp,224

Disassembly of section .dynsym:

0000000080400e20 <.dynsym>:
	...
    80400e3c:	00010003          	lb	zero,0(sp)
    80400e40:	0000                	unimp
    80400e42:	8040                	.2byte	0x8040
	...

Disassembly of section .dynstr:

0000000080400e50 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000080400e58 <.gnu.hash>:
    80400e58:	0001                	nop
    80400e5a:	0000                	unimp
    80400e5c:	0001                	nop
    80400e5e:	0000                	unimp
    80400e60:	0001                	nop
	...

Disassembly of section .bss:

0000000080400e78 <uni>:
    80400e78:	0000                	unimp
	...

0000000080400e7c <posda>:
    80400e7c:	0000                	unimp
	...

0000000080400e80 <c>:
	...

Disassembly of section .data:

0000000080400e88 <_ZL6digits>:
    80400e88:	3130                	fld	fa2,96(a0)
    80400e8a:	3332                	fld	ft6,296(sp)
    80400e8c:	3534                	fld	fa3,104(a0)
    80400e8e:	3736                	fld	fa4,360(sp)
    80400e90:	3938                	fld	fa4,112(a0)
    80400e92:	6261                	lui	tp,0x18
    80400e94:	66656463          	bltu	a0,t1,804014fc <_GLOBAL_OFFSET_TABLE_+0x4d4>
	...

0000000080400ea0 <nuclear>:
    80400ea0:	7566                	ld	a0,120(sp)
    80400ea2:	6e6f6973          	csrrsi	s2,0x6e6,30
    80400ea6:	000a                	c.slli	zero,0x2

0000000080400ea8 <a>:
    80400ea8:	0009                	c.nop	2
	...

0000000080400eac <b>:
    80400eac:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    80400eb0:	6e28                	ld	a0,88(a2)
    80400eb2:	6c75                	lui	s8,0x1d
    80400eb4:	296c                	fld	fa1,208(a0)
    80400eb6:	0000                	unimp
    80400eb8:	6572                	ld	a0,280(sp)
    80400eba:	6c61                	lui	s8,0x18
    80400ebc:	7320                	ld	s0,96(a4)
    80400ebe:	6568                	ld	a0,200(a0)
    80400ec0:	6c6c                	ld	a1,216(s0)
    80400ec2:	7320                	ld	s0,96(a4)
    80400ec4:	6174                	ld	a3,192(a0)
    80400ec6:	6572                	ld	a0,280(sp)
    80400ec8:	2164                	fld	fs1,192(a0)
    80400eca:	000a                	c.slli	zero,0x2
    80400ecc:	0000                	unimp
    80400ece:	0000                	unimp
    80400ed0:	480a                	lw	a6,128(sp)
    80400ed2:	6c65                	lui	s8,0x19
    80400ed4:	6f6c                	ld	a1,216(a4)
    80400ed6:	2021                	.2byte	0x2021
    80400ed8:	6552                	ld	a0,272(sp)
    80400eda:	6c61                	lui	s8,0x18
    80400edc:	5320                	lw	s0,96(a4)
    80400ede:	6568                	ld	a0,200(a0)
    80400ee0:	6c6c                	ld	a1,216(s0)
    80400ee2:	7320                	ld	s0,96(a4)
    80400ee4:	6570                	ld	a2,200(a0)
    80400ee6:	6b61                	lui	s6,0x18
    80400ee8:	6e69                	lui	t3,0x1a
    80400eea:	49202167          	.4byte	0x49202167
    80400eee:	6e206d27          	.4byte	0x6e206d27
    80400ef2:	7720776f          	jal	a4,80408664 <_GLOBAL_OFFSET_TABLE_+0x763c>
    80400ef6:	696b726f          	jal	tp,804b858c <_GLOBAL_OFFSET_TABLE_+0xb7564>
    80400efa:	676e                	ld	a4,216(sp)
    80400efc:	6920                	ld	s0,80(a0)
    80400efe:	206e                	fld	ft0,216(sp)
    80400f00:	7375                	lui	t1,0xffffd
    80400f02:	7265                	lui	tp,0xffff9
    80400f04:	6d20                	ld	s0,88(a0)
    80400f06:	2e65646f          	jal	s0,804571ec <_GLOBAL_OFFSET_TABLE_+0x561c4>
    80400f0a:	000a                	c.slli	zero,0x2
    80400f0c:	0000                	unimp
    80400f0e:	0000                	unimp
    80400f10:	3a62                	fld	fs4,56(sp)
    80400f12:	6425                	lui	s0,0x9
    80400f14:	000a                	c.slli	zero,0x2

Disassembly of section .dynamic:

0000000080400f18 <.dynamic>:
    80400f18:	fef5                	bnez	a3,80400f14 <b+0x68>
    80400f1a:	6fff                	.2byte	0x6fff
    80400f1c:	0000                	unimp
    80400f1e:	0000                	unimp
    80400f20:	0e58                	addi	a4,sp,788
    80400f22:	8040                	.2byte	0x8040
    80400f24:	0000                	unimp
    80400f26:	0000                	unimp
    80400f28:	0005                	c.nop	1
    80400f2a:	0000                	unimp
    80400f2c:	0000                	unimp
    80400f2e:	0000                	unimp
    80400f30:	0e50                	addi	a2,sp,788
    80400f32:	8040                	.2byte	0x8040
    80400f34:	0000                	unimp
    80400f36:	0000                	unimp
    80400f38:	0006                	c.slli	zero,0x1
    80400f3a:	0000                	unimp
    80400f3c:	0000                	unimp
    80400f3e:	0000                	unimp
    80400f40:	0e20                	addi	s0,sp,792
    80400f42:	8040                	.2byte	0x8040
    80400f44:	0000                	unimp
    80400f46:	0000                	unimp
    80400f48:	000a                	c.slli	zero,0x2
    80400f4a:	0000                	unimp
    80400f4c:	0000                	unimp
    80400f4e:	0000                	unimp
    80400f50:	0001                	nop
    80400f52:	0000                	unimp
    80400f54:	0000                	unimp
    80400f56:	0000                	unimp
    80400f58:	0000000b          	.4byte	0xb
    80400f5c:	0000                	unimp
    80400f5e:	0000                	unimp
    80400f60:	0018                	.2byte	0x18
    80400f62:	0000                	unimp
    80400f64:	0000                	unimp
    80400f66:	0000                	unimp
    80400f68:	0015                	c.nop	5
	...
    80400f76:	0000                	unimp
    80400f78:	00000007          	.4byte	0x7
	...
    80400f88:	0008                	.2byte	0x8
	...
    80400f96:	0000                	unimp
    80400f98:	0009                	c.nop	2
    80400f9a:	0000                	unimp
    80400f9c:	0000                	unimp
    80400f9e:	0000                	unimp
    80400fa0:	0018                	.2byte	0x18
    80400fa2:	0000                	unimp
    80400fa4:	0000                	unimp
    80400fa6:	0000                	unimp
    80400fa8:	001e                	c.slli	zero,0x7
    80400faa:	0000                	unimp
    80400fac:	0000                	unimp
    80400fae:	0000                	unimp
    80400fb0:	0008                	.2byte	0x8
    80400fb2:	0000                	unimp
    80400fb4:	0000                	unimp
    80400fb6:	0000                	unimp
    80400fb8:	6ffffffb          	.4byte	0x6ffffffb
    80400fbc:	0000                	unimp
    80400fbe:	0000                	unimp
    80400fc0:	0001                	nop
    80400fc2:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000080401028 <.got>:
    80401028:	0f18                	addi	a4,sp,912
    8040102a:	8040                	.2byte	0x8040
    8040102c:	0000                	unimp
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xffffffff7fbdffd3>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

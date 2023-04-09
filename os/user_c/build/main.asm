
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000080400000 <_start>:
    80400000:	a855                	j	804000b4 <main>

0000000080400002 <_Z7getcharv>:
    80400002:	1101                	addi	sp,sp,-32
    80400004:	ec06                	sd	ra,24(sp)
    80400006:	e822                	sd	s0,16(sp)
    80400008:	1000                	addi	s0,sp,32
    8040000a:	fef40793          	addi	a5,s0,-17
    8040000e:	0e900613          	li	a2,233
    80400012:	85be                	mv	a1,a5
    80400014:	4501                	li	a0,0
    80400016:	2a8000ef          	jal	ra,804002be <_Z4readiPvy>
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
    80400040:	2b8000ef          	jal	ra,804002f8 <_Z5writeiPKvy>
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

000000008040008a <_Z4plusii>:
    8040008a:	1101                	addi	sp,sp,-32
    8040008c:	ec22                	sd	s0,24(sp)
    8040008e:	1000                	addi	s0,sp,32
    80400090:	87aa                	mv	a5,a0
    80400092:	872e                	mv	a4,a1
    80400094:	fef42623          	sw	a5,-20(s0)
    80400098:	87ba                	mv	a5,a4
    8040009a:	fef42423          	sw	a5,-24(s0)
    8040009e:	fec42783          	lw	a5,-20(s0)
    804000a2:	873e                	mv	a4,a5
    804000a4:	fe842783          	lw	a5,-24(s0)
    804000a8:	9fb9                	addw	a5,a5,a4
    804000aa:	2781                	sext.w	a5,a5
    804000ac:	853e                	mv	a0,a5
    804000ae:	6462                	ld	s0,24(sp)
    804000b0:	6105                	addi	sp,sp,32
    804000b2:	8082                	ret

00000000804000b4 <main>:
    804000b4:	1101                	addi	sp,sp,-32
    804000b6:	ec06                	sd	ra,24(sp)
    804000b8:	e822                	sd	s0,16(sp)
    804000ba:	1000                	addi	s0,sp,32
    804000bc:	00001517          	auipc	a0,0x1
    804000c0:	9ac50513          	addi	a0,a0,-1620 # 80400a68 <b+0x4>
    804000c4:	f8bff0ef          	jal	ra,8040004e <_Z6putstrPc>
    804000c8:	f3bff0ef          	jal	ra,80400002 <_Z7getcharv>
    804000cc:	87aa                	mv	a5,a0
    804000ce:	fef407a3          	sb	a5,-17(s0)
    804000d2:	fef44783          	lbu	a5,-17(s0)
    804000d6:	0ff7f713          	zext.b	a4,a5
    804000da:	47b5                	li	a5,13
    804000dc:	00f71963          	bne	a4,a5,804000ee <main+0x3a>
    804000e0:	00001517          	auipc	a0,0x1
    804000e4:	9a050513          	addi	a0,a0,-1632 # 80400a80 <b+0x1c>
    804000e8:	f67ff0ef          	jal	ra,8040004e <_Z6putstrPc>
    804000ec:	bff1                	j	804000c8 <main+0x14>
    804000ee:	fef44783          	lbu	a5,-17(s0)
    804000f2:	853e                	mv	a0,a5
    804000f4:	f35ff0ef          	jal	ra,80400028 <_Z7putcharc>
    804000f8:	bfc1                	j	804000c8 <main+0x14>

00000000804000fa <_ZL10__syscall0l>:
    804000fa:	1101                	addi	sp,sp,-32
    804000fc:	ec22                	sd	s0,24(sp)
    804000fe:	1000                	addi	s0,sp,32
    80400100:	fea43423          	sd	a0,-24(s0)
    80400104:	fe843883          	ld	a7,-24(s0)
    80400108:	00000073          	ecall
    8040010c:	87aa                	mv	a5,a0
    8040010e:	853e                	mv	a0,a5
    80400110:	6462                	ld	s0,24(sp)
    80400112:	6105                	addi	sp,sp,32
    80400114:	8082                	ret

0000000080400116 <_ZL10__syscall1ll>:
    80400116:	1101                	addi	sp,sp,-32
    80400118:	ec22                	sd	s0,24(sp)
    8040011a:	1000                	addi	s0,sp,32
    8040011c:	fea43423          	sd	a0,-24(s0)
    80400120:	feb43023          	sd	a1,-32(s0)
    80400124:	fe843883          	ld	a7,-24(s0)
    80400128:	fe043503          	ld	a0,-32(s0)
    8040012c:	00000073          	ecall
    80400130:	87aa                	mv	a5,a0
    80400132:	853e                	mv	a0,a5
    80400134:	6462                	ld	s0,24(sp)
    80400136:	6105                	addi	sp,sp,32
    80400138:	8082                	ret

000000008040013a <_ZL10__syscall2lll>:
    8040013a:	7179                	addi	sp,sp,-48
    8040013c:	f422                	sd	s0,40(sp)
    8040013e:	1800                	addi	s0,sp,48
    80400140:	fea43423          	sd	a0,-24(s0)
    80400144:	feb43023          	sd	a1,-32(s0)
    80400148:	fcc43c23          	sd	a2,-40(s0)
    8040014c:	fe843883          	ld	a7,-24(s0)
    80400150:	fe043503          	ld	a0,-32(s0)
    80400154:	fd843583          	ld	a1,-40(s0)
    80400158:	00000073          	ecall
    8040015c:	87aa                	mv	a5,a0
    8040015e:	853e                	mv	a0,a5
    80400160:	7422                	ld	s0,40(sp)
    80400162:	6145                	addi	sp,sp,48
    80400164:	8082                	ret

0000000080400166 <_ZL10__syscall3llll>:
    80400166:	7179                	addi	sp,sp,-48
    80400168:	f422                	sd	s0,40(sp)
    8040016a:	1800                	addi	s0,sp,48
    8040016c:	fea43423          	sd	a0,-24(s0)
    80400170:	feb43023          	sd	a1,-32(s0)
    80400174:	fcc43c23          	sd	a2,-40(s0)
    80400178:	fcd43823          	sd	a3,-48(s0)
    8040017c:	fe843883          	ld	a7,-24(s0)
    80400180:	fe043503          	ld	a0,-32(s0)
    80400184:	fd843583          	ld	a1,-40(s0)
    80400188:	fd043603          	ld	a2,-48(s0)
    8040018c:	00000073          	ecall
    80400190:	87aa                	mv	a5,a0
    80400192:	853e                	mv	a0,a5
    80400194:	7422                	ld	s0,40(sp)
    80400196:	6145                	addi	sp,sp,48
    80400198:	8082                	ret

000000008040019a <_ZL10__syscall4lllll>:
    8040019a:	7139                	addi	sp,sp,-64
    8040019c:	fc22                	sd	s0,56(sp)
    8040019e:	0080                	addi	s0,sp,64
    804001a0:	fea43423          	sd	a0,-24(s0)
    804001a4:	feb43023          	sd	a1,-32(s0)
    804001a8:	fcc43c23          	sd	a2,-40(s0)
    804001ac:	fcd43823          	sd	a3,-48(s0)
    804001b0:	fce43423          	sd	a4,-56(s0)
    804001b4:	fe843883          	ld	a7,-24(s0)
    804001b8:	fe043503          	ld	a0,-32(s0)
    804001bc:	fd843583          	ld	a1,-40(s0)
    804001c0:	fd043603          	ld	a2,-48(s0)
    804001c4:	fc843683          	ld	a3,-56(s0)
    804001c8:	00000073          	ecall
    804001cc:	87aa                	mv	a5,a0
    804001ce:	853e                	mv	a0,a5
    804001d0:	7462                	ld	s0,56(sp)
    804001d2:	6121                	addi	sp,sp,64
    804001d4:	8082                	ret

00000000804001d6 <_ZL10__syscall5llllll>:
    804001d6:	7139                	addi	sp,sp,-64
    804001d8:	fc22                	sd	s0,56(sp)
    804001da:	0080                	addi	s0,sp,64
    804001dc:	fea43423          	sd	a0,-24(s0)
    804001e0:	feb43023          	sd	a1,-32(s0)
    804001e4:	fcc43c23          	sd	a2,-40(s0)
    804001e8:	fcd43823          	sd	a3,-48(s0)
    804001ec:	fce43423          	sd	a4,-56(s0)
    804001f0:	fcf43023          	sd	a5,-64(s0)
    804001f4:	fe843883          	ld	a7,-24(s0)
    804001f8:	fe043503          	ld	a0,-32(s0)
    804001fc:	fd843583          	ld	a1,-40(s0)
    80400200:	fd043603          	ld	a2,-48(s0)
    80400204:	fc843683          	ld	a3,-56(s0)
    80400208:	fc043703          	ld	a4,-64(s0)
    8040020c:	00000073          	ecall
    80400210:	87aa                	mv	a5,a0
    80400212:	853e                	mv	a0,a5
    80400214:	7462                	ld	s0,56(sp)
    80400216:	6121                	addi	sp,sp,64
    80400218:	8082                	ret

000000008040021a <_Z4openPKci>:
    8040021a:	1101                	addi	sp,sp,-32
    8040021c:	ec06                	sd	ra,24(sp)
    8040021e:	e822                	sd	s0,16(sp)
    80400220:	1000                	addi	s0,sp,32
    80400222:	fea43423          	sd	a0,-24(s0)
    80400226:	87ae                	mv	a5,a1
    80400228:	fef42223          	sw	a5,-28(s0)
    8040022c:	fe843783          	ld	a5,-24(s0)
    80400230:	fe442683          	lw	a3,-28(s0)
    80400234:	4709                	li	a4,2
    80400236:	863e                	mv	a2,a5
    80400238:	f9c00593          	li	a1,-100
    8040023c:	03800513          	li	a0,56
    80400240:	f5bff0ef          	jal	ra,8040019a <_ZL10__syscall4lllll>
    80400244:	87aa                	mv	a5,a0
    80400246:	2781                	sext.w	a5,a5
    80400248:	853e                	mv	a0,a5
    8040024a:	60e2                	ld	ra,24(sp)
    8040024c:	6442                	ld	s0,16(sp)
    8040024e:	6105                	addi	sp,sp,32
    80400250:	8082                	ret

0000000080400252 <_Z6openatiPKci>:
    80400252:	1101                	addi	sp,sp,-32
    80400254:	ec06                	sd	ra,24(sp)
    80400256:	e822                	sd	s0,16(sp)
    80400258:	1000                	addi	s0,sp,32
    8040025a:	87aa                	mv	a5,a0
    8040025c:	feb43023          	sd	a1,-32(s0)
    80400260:	8732                	mv	a4,a2
    80400262:	fef42623          	sw	a5,-20(s0)
    80400266:	87ba                	mv	a5,a4
    80400268:	fef42423          	sw	a5,-24(s0)
    8040026c:	fec42783          	lw	a5,-20(s0)
    80400270:	fe043603          	ld	a2,-32(s0)
    80400274:	fe842683          	lw	a3,-24(s0)
    80400278:	18000713          	li	a4,384
    8040027c:	85be                	mv	a1,a5
    8040027e:	03800513          	li	a0,56
    80400282:	f19ff0ef          	jal	ra,8040019a <_ZL10__syscall4lllll>
    80400286:	87aa                	mv	a5,a0
    80400288:	2781                	sext.w	a5,a5
    8040028a:	853e                	mv	a0,a5
    8040028c:	60e2                	ld	ra,24(sp)
    8040028e:	6442                	ld	s0,16(sp)
    80400290:	6105                	addi	sp,sp,32
    80400292:	8082                	ret

0000000080400294 <_Z5closei>:
    80400294:	1101                	addi	sp,sp,-32
    80400296:	ec06                	sd	ra,24(sp)
    80400298:	e822                	sd	s0,16(sp)
    8040029a:	1000                	addi	s0,sp,32
    8040029c:	87aa                	mv	a5,a0
    8040029e:	fef42623          	sw	a5,-20(s0)
    804002a2:	fec42783          	lw	a5,-20(s0)
    804002a6:	85be                	mv	a1,a5
    804002a8:	03900513          	li	a0,57
    804002ac:	e6bff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    804002b0:	87aa                	mv	a5,a0
    804002b2:	2781                	sext.w	a5,a5
    804002b4:	853e                	mv	a0,a5
    804002b6:	60e2                	ld	ra,24(sp)
    804002b8:	6442                	ld	s0,16(sp)
    804002ba:	6105                	addi	sp,sp,32
    804002bc:	8082                	ret

00000000804002be <_Z4readiPvy>:
    804002be:	7179                	addi	sp,sp,-48
    804002c0:	f406                	sd	ra,40(sp)
    804002c2:	f022                	sd	s0,32(sp)
    804002c4:	1800                	addi	s0,sp,48
    804002c6:	87aa                	mv	a5,a0
    804002c8:	feb43023          	sd	a1,-32(s0)
    804002cc:	fcc43c23          	sd	a2,-40(s0)
    804002d0:	fef42623          	sw	a5,-20(s0)
    804002d4:	fec42783          	lw	a5,-20(s0)
    804002d8:	fe043703          	ld	a4,-32(s0)
    804002dc:	fd843683          	ld	a3,-40(s0)
    804002e0:	863a                	mv	a2,a4
    804002e2:	85be                	mv	a1,a5
    804002e4:	03f00513          	li	a0,63
    804002e8:	e7fff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    804002ec:	87aa                	mv	a5,a0
    804002ee:	853e                	mv	a0,a5
    804002f0:	70a2                	ld	ra,40(sp)
    804002f2:	7402                	ld	s0,32(sp)
    804002f4:	6145                	addi	sp,sp,48
    804002f6:	8082                	ret

00000000804002f8 <_Z5writeiPKvy>:
    804002f8:	7179                	addi	sp,sp,-48
    804002fa:	f406                	sd	ra,40(sp)
    804002fc:	f022                	sd	s0,32(sp)
    804002fe:	1800                	addi	s0,sp,48
    80400300:	87aa                	mv	a5,a0
    80400302:	feb43023          	sd	a1,-32(s0)
    80400306:	fcc43c23          	sd	a2,-40(s0)
    8040030a:	fef42623          	sw	a5,-20(s0)
    8040030e:	fec42783          	lw	a5,-20(s0)
    80400312:	fe043703          	ld	a4,-32(s0)
    80400316:	fd843683          	ld	a3,-40(s0)
    8040031a:	863a                	mv	a2,a4
    8040031c:	85be                	mv	a1,a5
    8040031e:	04000513          	li	a0,64
    80400322:	e45ff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    80400326:	87aa                	mv	a5,a0
    80400328:	853e                	mv	a0,a5
    8040032a:	70a2                	ld	ra,40(sp)
    8040032c:	7402                	ld	s0,32(sp)
    8040032e:	6145                	addi	sp,sp,48
    80400330:	8082                	ret

0000000080400332 <_Z6getpidv>:
    80400332:	1141                	addi	sp,sp,-16
    80400334:	e406                	sd	ra,8(sp)
    80400336:	e022                	sd	s0,0(sp)
    80400338:	0800                	addi	s0,sp,16
    8040033a:	0ac00513          	li	a0,172
    8040033e:	dbdff0ef          	jal	ra,804000fa <_ZL10__syscall0l>
    80400342:	87aa                	mv	a5,a0
    80400344:	2781                	sext.w	a5,a5
    80400346:	853e                	mv	a0,a5
    80400348:	60a2                	ld	ra,8(sp)
    8040034a:	6402                	ld	s0,0(sp)
    8040034c:	0141                	addi	sp,sp,16
    8040034e:	8082                	ret

0000000080400350 <_Z7getppidv>:
    80400350:	1141                	addi	sp,sp,-16
    80400352:	e406                	sd	ra,8(sp)
    80400354:	e022                	sd	s0,0(sp)
    80400356:	0800                	addi	s0,sp,16
    80400358:	0ad00513          	li	a0,173
    8040035c:	d9fff0ef          	jal	ra,804000fa <_ZL10__syscall0l>
    80400360:	87aa                	mv	a5,a0
    80400362:	2781                	sext.w	a5,a5
    80400364:	853e                	mv	a0,a5
    80400366:	60a2                	ld	ra,8(sp)
    80400368:	6402                	ld	s0,0(sp)
    8040036a:	0141                	addi	sp,sp,16
    8040036c:	8082                	ret

000000008040036e <_Z11sched_yieldv>:
    8040036e:	1141                	addi	sp,sp,-16
    80400370:	e406                	sd	ra,8(sp)
    80400372:	e022                	sd	s0,0(sp)
    80400374:	0800                	addi	s0,sp,16
    80400376:	07c00513          	li	a0,124
    8040037a:	d81ff0ef          	jal	ra,804000fa <_ZL10__syscall0l>
    8040037e:	87aa                	mv	a5,a0
    80400380:	2781                	sext.w	a5,a5
    80400382:	853e                	mv	a0,a5
    80400384:	60a2                	ld	ra,8(sp)
    80400386:	6402                	ld	s0,0(sp)
    80400388:	0141                	addi	sp,sp,16
    8040038a:	8082                	ret

000000008040038c <_Z4forkv>:
    8040038c:	1141                	addi	sp,sp,-16
    8040038e:	e406                	sd	ra,8(sp)
    80400390:	e022                	sd	s0,0(sp)
    80400392:	0800                	addi	s0,sp,16
    80400394:	4601                	li	a2,0
    80400396:	45c5                	li	a1,17
    80400398:	0dc00513          	li	a0,220
    8040039c:	d9fff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    804003a0:	87aa                	mv	a5,a0
    804003a2:	2781                	sext.w	a5,a5
    804003a4:	853e                	mv	a0,a5
    804003a6:	60a2                	ld	ra,8(sp)
    804003a8:	6402                	ld	s0,0(sp)
    804003aa:	0141                	addi	sp,sp,16
    804003ac:	8082                	ret

00000000804003ae <_Z4exiti>:
    804003ae:	1101                	addi	sp,sp,-32
    804003b0:	ec06                	sd	ra,24(sp)
    804003b2:	e822                	sd	s0,16(sp)
    804003b4:	1000                	addi	s0,sp,32
    804003b6:	87aa                	mv	a5,a0
    804003b8:	fef42623          	sw	a5,-20(s0)
    804003bc:	fec42783          	lw	a5,-20(s0)
    804003c0:	85be                	mv	a1,a5
    804003c2:	05d00513          	li	a0,93
    804003c6:	d51ff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    804003ca:	0001                	nop
    804003cc:	60e2                	ld	ra,24(sp)
    804003ce:	6442                	ld	s0,16(sp)
    804003d0:	6105                	addi	sp,sp,32
    804003d2:	8082                	ret

00000000804003d4 <_Z7waitpidiPii>:
    804003d4:	1101                	addi	sp,sp,-32
    804003d6:	ec06                	sd	ra,24(sp)
    804003d8:	e822                	sd	s0,16(sp)
    804003da:	1000                	addi	s0,sp,32
    804003dc:	87aa                	mv	a5,a0
    804003de:	feb43023          	sd	a1,-32(s0)
    804003e2:	8732                	mv	a4,a2
    804003e4:	fef42623          	sw	a5,-20(s0)
    804003e8:	87ba                	mv	a5,a4
    804003ea:	fef42423          	sw	a5,-24(s0)
    804003ee:	fec42783          	lw	a5,-20(s0)
    804003f2:	fe043603          	ld	a2,-32(s0)
    804003f6:	fe842683          	lw	a3,-24(s0)
    804003fa:	4701                	li	a4,0
    804003fc:	85be                	mv	a1,a5
    804003fe:	10400513          	li	a0,260
    80400402:	d99ff0ef          	jal	ra,8040019a <_ZL10__syscall4lllll>
    80400406:	87aa                	mv	a5,a0
    80400408:	2781                	sext.w	a5,a5
    8040040a:	853e                	mv	a0,a5
    8040040c:	60e2                	ld	ra,24(sp)
    8040040e:	6442                	ld	s0,16(sp)
    80400410:	6105                	addi	sp,sp,32
    80400412:	8082                	ret

0000000080400414 <_Z4execPc>:
    80400414:	1101                	addi	sp,sp,-32
    80400416:	ec06                	sd	ra,24(sp)
    80400418:	e822                	sd	s0,16(sp)
    8040041a:	1000                	addi	s0,sp,32
    8040041c:	fea43423          	sd	a0,-24(s0)
    80400420:	fe843783          	ld	a5,-24(s0)
    80400424:	85be                	mv	a1,a5
    80400426:	0dd00513          	li	a0,221
    8040042a:	cedff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    8040042e:	87aa                	mv	a5,a0
    80400430:	2781                	sext.w	a5,a5
    80400432:	853e                	mv	a0,a5
    80400434:	60e2                	ld	ra,24(sp)
    80400436:	6442                	ld	s0,16(sp)
    80400438:	6105                	addi	sp,sp,32
    8040043a:	8082                	ret

000000008040043c <_Z6execvePKcPKPcS3_>:
    8040043c:	7179                	addi	sp,sp,-48
    8040043e:	f406                	sd	ra,40(sp)
    80400440:	f022                	sd	s0,32(sp)
    80400442:	1800                	addi	s0,sp,48
    80400444:	fea43423          	sd	a0,-24(s0)
    80400448:	feb43023          	sd	a1,-32(s0)
    8040044c:	fcc43c23          	sd	a2,-40(s0)
    80400450:	fe843783          	ld	a5,-24(s0)
    80400454:	fe043703          	ld	a4,-32(s0)
    80400458:	fd843683          	ld	a3,-40(s0)
    8040045c:	863a                	mv	a2,a4
    8040045e:	85be                	mv	a1,a5
    80400460:	0dd00513          	li	a0,221
    80400464:	d03ff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    80400468:	87aa                	mv	a5,a0
    8040046a:	2781                	sext.w	a5,a5
    8040046c:	853e                	mv	a0,a5
    8040046e:	70a2                	ld	ra,40(sp)
    80400470:	7402                	ld	s0,32(sp)
    80400472:	6145                	addi	sp,sp,48
    80400474:	8082                	ret

0000000080400476 <_Z5timesPv>:
    80400476:	1101                	addi	sp,sp,-32
    80400478:	ec06                	sd	ra,24(sp)
    8040047a:	e822                	sd	s0,16(sp)
    8040047c:	1000                	addi	s0,sp,32
    8040047e:	fea43423          	sd	a0,-24(s0)
    80400482:	fe843783          	ld	a5,-24(s0)
    80400486:	85be                	mv	a1,a5
    80400488:	09900513          	li	a0,153
    8040048c:	c8bff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    80400490:	87aa                	mv	a5,a0
    80400492:	2781                	sext.w	a5,a5
    80400494:	853e                	mv	a0,a5
    80400496:	60e2                	ld	ra,24(sp)
    80400498:	6442                	ld	s0,16(sp)
    8040049a:	6105                	addi	sp,sp,32
    8040049c:	8082                	ret

000000008040049e <_Z8get_timev>:
    8040049e:	7179                	addi	sp,sp,-48
    804004a0:	f406                	sd	ra,40(sp)
    804004a2:	f022                	sd	s0,32(sp)
    804004a4:	1800                	addi	s0,sp,48
    804004a6:	fd840793          	addi	a5,s0,-40
    804004aa:	4581                	li	a1,0
    804004ac:	853e                	mv	a0,a5
    804004ae:	040000ef          	jal	ra,804004ee <_Z12sys_get_timeP7TimeVali>
    804004b2:	87aa                	mv	a5,a0
    804004b4:	fef42623          	sw	a5,-20(s0)
    804004b8:	fec42783          	lw	a5,-20(s0)
    804004bc:	2781                	sext.w	a5,a5
    804004be:	e395                	bnez	a5,804004e2 <_Z8get_timev+0x44>
    804004c0:	fd843703          	ld	a4,-40(s0)
    804004c4:	67c1                	lui	a5,0x10
    804004c6:	17fd                	addi	a5,a5,-1 # ffff <_start-0x803f0001>
    804004c8:	8f7d                	and	a4,a4,a5
    804004ca:	3e800793          	li	a5,1000
    804004ce:	02f70733          	mul	a4,a4,a5
    804004d2:	fe043683          	ld	a3,-32(s0)
    804004d6:	3e800793          	li	a5,1000
    804004da:	02f6d7b3          	divu	a5,a3,a5
    804004de:	97ba                	add	a5,a5,a4
    804004e0:	a011                	j	804004e4 <_Z8get_timev+0x46>
    804004e2:	57fd                	li	a5,-1
    804004e4:	853e                	mv	a0,a5
    804004e6:	70a2                	ld	ra,40(sp)
    804004e8:	7402                	ld	s0,32(sp)
    804004ea:	6145                	addi	sp,sp,48
    804004ec:	8082                	ret

00000000804004ee <_Z12sys_get_timeP7TimeVali>:
    804004ee:	1101                	addi	sp,sp,-32
    804004f0:	ec06                	sd	ra,24(sp)
    804004f2:	e822                	sd	s0,16(sp)
    804004f4:	1000                	addi	s0,sp,32
    804004f6:	fea43423          	sd	a0,-24(s0)
    804004fa:	87ae                	mv	a5,a1
    804004fc:	fef42223          	sw	a5,-28(s0)
    80400500:	fe843783          	ld	a5,-24(s0)
    80400504:	fe442703          	lw	a4,-28(s0)
    80400508:	863a                	mv	a2,a4
    8040050a:	85be                	mv	a1,a5
    8040050c:	0a900513          	li	a0,169
    80400510:	c2bff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    80400514:	87aa                	mv	a5,a0
    80400516:	2781                	sext.w	a5,a5
    80400518:	853e                	mv	a0,a5
    8040051a:	60e2                	ld	ra,24(sp)
    8040051c:	6442                	ld	s0,16(sp)
    8040051e:	6105                	addi	sp,sp,32
    80400520:	8082                	ret

0000000080400522 <_Z4timePm>:
    80400522:	1101                	addi	sp,sp,-32
    80400524:	ec06                	sd	ra,24(sp)
    80400526:	e822                	sd	s0,16(sp)
    80400528:	1000                	addi	s0,sp,32
    8040052a:	fea43423          	sd	a0,-24(s0)
    8040052e:	fe843783          	ld	a5,-24(s0)
    80400532:	85be                	mv	a1,a5
    80400534:	42600513          	li	a0,1062
    80400538:	bdfff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    8040053c:	87aa                	mv	a5,a0
    8040053e:	2781                	sext.w	a5,a5
    80400540:	853e                	mv	a0,a5
    80400542:	60e2                	ld	ra,24(sp)
    80400544:	6442                	ld	s0,16(sp)
    80400546:	6105                	addi	sp,sp,32
    80400548:	8082                	ret

000000008040054a <_Z5sleepy>:
    8040054a:	7179                	addi	sp,sp,-48
    8040054c:	f406                	sd	ra,40(sp)
    8040054e:	f022                	sd	s0,32(sp)
    80400550:	1800                	addi	s0,sp,48
    80400552:	fca43c23          	sd	a0,-40(s0)
    80400556:	fe043023          	sd	zero,-32(s0)
    8040055a:	fe043423          	sd	zero,-24(s0)
    8040055e:	fd843783          	ld	a5,-40(s0)
    80400562:	fef43023          	sd	a5,-32(s0)
    80400566:	fe040793          	addi	a5,s0,-32
    8040056a:	fe040713          	addi	a4,s0,-32
    8040056e:	863a                	mv	a2,a4
    80400570:	85be                	mv	a1,a5
    80400572:	06500513          	li	a0,101
    80400576:	bc5ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    8040057a:	87aa                	mv	a5,a0
    8040057c:	00f037b3          	snez	a5,a5
    80400580:	0ff7f793          	zext.b	a5,a5
    80400584:	c789                	beqz	a5,8040058e <_Z5sleepy+0x44>
    80400586:	fe043783          	ld	a5,-32(s0)
    8040058a:	2781                	sext.w	a5,a5
    8040058c:	a011                	j	80400590 <_Z5sleepy+0x46>
    8040058e:	4781                	li	a5,0
    80400590:	853e                	mv	a0,a5
    80400592:	70a2                	ld	ra,40(sp)
    80400594:	7402                	ld	s0,32(sp)
    80400596:	6145                	addi	sp,sp,48
    80400598:	8082                	ret

000000008040059a <_Z12set_priorityi>:
    8040059a:	1101                	addi	sp,sp,-32
    8040059c:	ec06                	sd	ra,24(sp)
    8040059e:	e822                	sd	s0,16(sp)
    804005a0:	1000                	addi	s0,sp,32
    804005a2:	87aa                	mv	a5,a0
    804005a4:	fef42623          	sw	a5,-20(s0)
    804005a8:	fec42783          	lw	a5,-20(s0)
    804005ac:	85be                	mv	a1,a5
    804005ae:	08c00513          	li	a0,140
    804005b2:	b65ff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    804005b6:	87aa                	mv	a5,a0
    804005b8:	2781                	sext.w	a5,a5
    804005ba:	853e                	mv	a0,a5
    804005bc:	60e2                	ld	ra,24(sp)
    804005be:	6442                	ld	s0,16(sp)
    804005c0:	6105                	addi	sp,sp,32
    804005c2:	8082                	ret

00000000804005c4 <_Z6munmapPvy>:
    804005c4:	1101                	addi	sp,sp,-32
    804005c6:	ec06                	sd	ra,24(sp)
    804005c8:	e822                	sd	s0,16(sp)
    804005ca:	1000                	addi	s0,sp,32
    804005cc:	fea43423          	sd	a0,-24(s0)
    804005d0:	feb43023          	sd	a1,-32(s0)
    804005d4:	fe843783          	ld	a5,-24(s0)
    804005d8:	fe043703          	ld	a4,-32(s0)
    804005dc:	863a                	mv	a2,a4
    804005de:	85be                	mv	a1,a5
    804005e0:	0d700513          	li	a0,215
    804005e4:	b57ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    804005e8:	87aa                	mv	a5,a0
    804005ea:	2781                	sext.w	a5,a5
    804005ec:	853e                	mv	a0,a5
    804005ee:	60e2                	ld	ra,24(sp)
    804005f0:	6442                	ld	s0,16(sp)
    804005f2:	6105                	addi	sp,sp,32
    804005f4:	8082                	ret

00000000804005f6 <_Z4waitPi>:
    804005f6:	1101                	addi	sp,sp,-32
    804005f8:	ec06                	sd	ra,24(sp)
    804005fa:	e822                	sd	s0,16(sp)
    804005fc:	1000                	addi	s0,sp,32
    804005fe:	fea43423          	sd	a0,-24(s0)
    80400602:	4601                	li	a2,0
    80400604:	fe843583          	ld	a1,-24(s0)
    80400608:	557d                	li	a0,-1
    8040060a:	dcbff0ef          	jal	ra,804003d4 <_Z7waitpidiPii>
    8040060e:	87aa                	mv	a5,a0
    80400610:	853e                	mv	a0,a5
    80400612:	60e2                	ld	ra,24(sp)
    80400614:	6442                	ld	s0,16(sp)
    80400616:	6105                	addi	sp,sp,32
    80400618:	8082                	ret

000000008040061a <_Z5spawnPc>:
    8040061a:	1101                	addi	sp,sp,-32
    8040061c:	ec06                	sd	ra,24(sp)
    8040061e:	e822                	sd	s0,16(sp)
    80400620:	1000                	addi	s0,sp,32
    80400622:	fea43423          	sd	a0,-24(s0)
    80400626:	fe843783          	ld	a5,-24(s0)
    8040062a:	85be                	mv	a1,a5
    8040062c:	19000513          	li	a0,400
    80400630:	ae7ff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    80400634:	87aa                	mv	a5,a0
    80400636:	2781                	sext.w	a5,a5
    80400638:	853e                	mv	a0,a5
    8040063a:	60e2                	ld	ra,24(sp)
    8040063c:	6442                	ld	s0,16(sp)
    8040063e:	6105                	addi	sp,sp,32
    80400640:	8082                	ret

0000000080400642 <_Z8mailreadPvi>:
    80400642:	1101                	addi	sp,sp,-32
    80400644:	ec06                	sd	ra,24(sp)
    80400646:	e822                	sd	s0,16(sp)
    80400648:	1000                	addi	s0,sp,32
    8040064a:	fea43423          	sd	a0,-24(s0)
    8040064e:	87ae                	mv	a5,a1
    80400650:	fef42223          	sw	a5,-28(s0)
    80400654:	fe843783          	ld	a5,-24(s0)
    80400658:	fe442703          	lw	a4,-28(s0)
    8040065c:	863a                	mv	a2,a4
    8040065e:	85be                	mv	a1,a5
    80400660:	19100513          	li	a0,401
    80400664:	ad7ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    80400668:	87aa                	mv	a5,a0
    8040066a:	2781                	sext.w	a5,a5
    8040066c:	853e                	mv	a0,a5
    8040066e:	60e2                	ld	ra,24(sp)
    80400670:	6442                	ld	s0,16(sp)
    80400672:	6105                	addi	sp,sp,32
    80400674:	8082                	ret

0000000080400676 <_Z9mailwriteiPvi>:
    80400676:	1101                	addi	sp,sp,-32
    80400678:	ec06                	sd	ra,24(sp)
    8040067a:	e822                	sd	s0,16(sp)
    8040067c:	1000                	addi	s0,sp,32
    8040067e:	87aa                	mv	a5,a0
    80400680:	feb43023          	sd	a1,-32(s0)
    80400684:	8732                	mv	a4,a2
    80400686:	fef42623          	sw	a5,-20(s0)
    8040068a:	87ba                	mv	a5,a4
    8040068c:	fef42423          	sw	a5,-24(s0)
    80400690:	fec42783          	lw	a5,-20(s0)
    80400694:	fe043703          	ld	a4,-32(s0)
    80400698:	fe842683          	lw	a3,-24(s0)
    8040069c:	863a                	mv	a2,a4
    8040069e:	85be                	mv	a1,a5
    804006a0:	19200513          	li	a0,402
    804006a4:	ac3ff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    804006a8:	87aa                	mv	a5,a0
    804006aa:	2781                	sext.w	a5,a5
    804006ac:	853e                	mv	a0,a5
    804006ae:	60e2                	ld	ra,24(sp)
    804006b0:	6442                	ld	s0,16(sp)
    804006b2:	6105                	addi	sp,sp,32
    804006b4:	8082                	ret

00000000804006b6 <_Z5fstatiP5kstat>:
    804006b6:	1101                	addi	sp,sp,-32
    804006b8:	ec06                	sd	ra,24(sp)
    804006ba:	e822                	sd	s0,16(sp)
    804006bc:	1000                	addi	s0,sp,32
    804006be:	87aa                	mv	a5,a0
    804006c0:	feb43023          	sd	a1,-32(s0)
    804006c4:	fef42623          	sw	a5,-20(s0)
    804006c8:	fec42783          	lw	a5,-20(s0)
    804006cc:	fe043703          	ld	a4,-32(s0)
    804006d0:	863a                	mv	a2,a4
    804006d2:	85be                	mv	a1,a5
    804006d4:	05000513          	li	a0,80
    804006d8:	a63ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    804006dc:	87aa                	mv	a5,a0
    804006de:	2781                	sext.w	a5,a5
    804006e0:	853e                	mv	a0,a5
    804006e2:	60e2                	ld	ra,24(sp)
    804006e4:	6442                	ld	s0,16(sp)
    804006e6:	6105                	addi	sp,sp,32
    804006e8:	8082                	ret

00000000804006ea <_Z10sys_linkatiPciS_j>:
    804006ea:	7179                	addi	sp,sp,-48
    804006ec:	f406                	sd	ra,40(sp)
    804006ee:	f022                	sd	s0,32(sp)
    804006f0:	1800                	addi	s0,sp,48
    804006f2:	87aa                	mv	a5,a0
    804006f4:	feb43023          	sd	a1,-32(s0)
    804006f8:	fcd43c23          	sd	a3,-40(s0)
    804006fc:	fef42623          	sw	a5,-20(s0)
    80400700:	87b2                	mv	a5,a2
    80400702:	fef42423          	sw	a5,-24(s0)
    80400706:	87ba                	mv	a5,a4
    80400708:	fcf42a23          	sw	a5,-44(s0)
    8040070c:	fec42583          	lw	a1,-20(s0)
    80400710:	fe043603          	ld	a2,-32(s0)
    80400714:	fe842683          	lw	a3,-24(s0)
    80400718:	fd843703          	ld	a4,-40(s0)
    8040071c:	fd446783          	lwu	a5,-44(s0)
    80400720:	02500513          	li	a0,37
    80400724:	ab3ff0ef          	jal	ra,804001d6 <_ZL10__syscall5llllll>
    80400728:	87aa                	mv	a5,a0
    8040072a:	2781                	sext.w	a5,a5
    8040072c:	853e                	mv	a0,a5
    8040072e:	70a2                	ld	ra,40(sp)
    80400730:	7402                	ld	s0,32(sp)
    80400732:	6145                	addi	sp,sp,48
    80400734:	8082                	ret

0000000080400736 <_Z12sys_unlinkatiPcj>:
    80400736:	1101                	addi	sp,sp,-32
    80400738:	ec06                	sd	ra,24(sp)
    8040073a:	e822                	sd	s0,16(sp)
    8040073c:	1000                	addi	s0,sp,32
    8040073e:	87aa                	mv	a5,a0
    80400740:	feb43023          	sd	a1,-32(s0)
    80400744:	8732                	mv	a4,a2
    80400746:	fef42623          	sw	a5,-20(s0)
    8040074a:	87ba                	mv	a5,a4
    8040074c:	fef42423          	sw	a5,-24(s0)
    80400750:	fec42783          	lw	a5,-20(s0)
    80400754:	fe043703          	ld	a4,-32(s0)
    80400758:	fe846683          	lwu	a3,-24(s0)
    8040075c:	863a                	mv	a2,a4
    8040075e:	85be                	mv	a1,a5
    80400760:	02300513          	li	a0,35
    80400764:	a03ff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    80400768:	87aa                	mv	a5,a0
    8040076a:	2781                	sext.w	a5,a5
    8040076c:	853e                	mv	a0,a5
    8040076e:	60e2                	ld	ra,24(sp)
    80400770:	6442                	ld	s0,16(sp)
    80400772:	6105                	addi	sp,sp,32
    80400774:	8082                	ret

0000000080400776 <_Z4linkPcS_>:
    80400776:	1101                	addi	sp,sp,-32
    80400778:	ec06                	sd	ra,24(sp)
    8040077a:	e822                	sd	s0,16(sp)
    8040077c:	1000                	addi	s0,sp,32
    8040077e:	fea43423          	sd	a0,-24(s0)
    80400782:	feb43023          	sd	a1,-32(s0)
    80400786:	4701                	li	a4,0
    80400788:	fe043683          	ld	a3,-32(s0)
    8040078c:	f9c00613          	li	a2,-100
    80400790:	fe843583          	ld	a1,-24(s0)
    80400794:	f9c00513          	li	a0,-100
    80400798:	f53ff0ef          	jal	ra,804006ea <_Z10sys_linkatiPciS_j>
    8040079c:	87aa                	mv	a5,a0
    8040079e:	853e                	mv	a0,a5
    804007a0:	60e2                	ld	ra,24(sp)
    804007a2:	6442                	ld	s0,16(sp)
    804007a4:	6105                	addi	sp,sp,32
    804007a6:	8082                	ret

00000000804007a8 <_Z6unlinkPc>:
    804007a8:	1101                	addi	sp,sp,-32
    804007aa:	ec06                	sd	ra,24(sp)
    804007ac:	e822                	sd	s0,16(sp)
    804007ae:	1000                	addi	s0,sp,32
    804007b0:	fea43423          	sd	a0,-24(s0)
    804007b4:	4601                	li	a2,0
    804007b6:	fe843583          	ld	a1,-24(s0)
    804007ba:	f9c00513          	li	a0,-100
    804007be:	f79ff0ef          	jal	ra,80400736 <_Z12sys_unlinkatiPcj>
    804007c2:	87aa                	mv	a5,a0
    804007c4:	853e                	mv	a0,a5
    804007c6:	60e2                	ld	ra,24(sp)
    804007c8:	6442                	ld	s0,16(sp)
    804007ca:	6105                	addi	sp,sp,32
    804007cc:	8082                	ret

00000000804007ce <_Z5unamePv>:
    804007ce:	1101                	addi	sp,sp,-32
    804007d0:	ec06                	sd	ra,24(sp)
    804007d2:	e822                	sd	s0,16(sp)
    804007d4:	1000                	addi	s0,sp,32
    804007d6:	fea43423          	sd	a0,-24(s0)
    804007da:	fe843783          	ld	a5,-24(s0)
    804007de:	85be                	mv	a1,a5
    804007e0:	0a000513          	li	a0,160
    804007e4:	933ff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    804007e8:	87aa                	mv	a5,a0
    804007ea:	2781                	sext.w	a5,a5
    804007ec:	853e                	mv	a0,a5
    804007ee:	60e2                	ld	ra,24(sp)
    804007f0:	6442                	ld	s0,16(sp)
    804007f2:	6105                	addi	sp,sp,32
    804007f4:	8082                	ret

00000000804007f6 <_Z3brkPv>:
    804007f6:	1101                	addi	sp,sp,-32
    804007f8:	ec06                	sd	ra,24(sp)
    804007fa:	e822                	sd	s0,16(sp)
    804007fc:	1000                	addi	s0,sp,32
    804007fe:	fea43423          	sd	a0,-24(s0)
    80400802:	fe843783          	ld	a5,-24(s0)
    80400806:	85be                	mv	a1,a5
    80400808:	0d600513          	li	a0,214
    8040080c:	90bff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    80400810:	87aa                	mv	a5,a0
    80400812:	2781                	sext.w	a5,a5
    80400814:	853e                	mv	a0,a5
    80400816:	60e2                	ld	ra,24(sp)
    80400818:	6442                	ld	s0,16(sp)
    8040081a:	6105                	addi	sp,sp,32
    8040081c:	8082                	ret

000000008040081e <_Z5chdirPKc>:
    8040081e:	1101                	addi	sp,sp,-32
    80400820:	ec06                	sd	ra,24(sp)
    80400822:	e822                	sd	s0,16(sp)
    80400824:	1000                	addi	s0,sp,32
    80400826:	fea43423          	sd	a0,-24(s0)
    8040082a:	fe843783          	ld	a5,-24(s0)
    8040082e:	85be                	mv	a1,a5
    80400830:	03100513          	li	a0,49
    80400834:	8e3ff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    80400838:	87aa                	mv	a5,a0
    8040083a:	2781                	sext.w	a5,a5
    8040083c:	853e                	mv	a0,a5
    8040083e:	60e2                	ld	ra,24(sp)
    80400840:	6442                	ld	s0,16(sp)
    80400842:	6105                	addi	sp,sp,32
    80400844:	8082                	ret

0000000080400846 <_Z5mkdirPKcj>:
    80400846:	1101                	addi	sp,sp,-32
    80400848:	ec06                	sd	ra,24(sp)
    8040084a:	e822                	sd	s0,16(sp)
    8040084c:	1000                	addi	s0,sp,32
    8040084e:	fea43423          	sd	a0,-24(s0)
    80400852:	87ae                	mv	a5,a1
    80400854:	fef42223          	sw	a5,-28(s0)
    80400858:	fe843783          	ld	a5,-24(s0)
    8040085c:	fe446703          	lwu	a4,-28(s0)
    80400860:	86ba                	mv	a3,a4
    80400862:	863e                	mv	a2,a5
    80400864:	f9c00593          	li	a1,-100
    80400868:	02200513          	li	a0,34
    8040086c:	8fbff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    80400870:	87aa                	mv	a5,a0
    80400872:	2781                	sext.w	a5,a5
    80400874:	853e                	mv	a0,a5
    80400876:	60e2                	ld	ra,24(sp)
    80400878:	6442                	ld	s0,16(sp)
    8040087a:	6105                	addi	sp,sp,32
    8040087c:	8082                	ret

000000008040087e <_Z8getdentsiP14linux_dirent64m>:
    8040087e:	7179                	addi	sp,sp,-48
    80400880:	f406                	sd	ra,40(sp)
    80400882:	f022                	sd	s0,32(sp)
    80400884:	1800                	addi	s0,sp,48
    80400886:	87aa                	mv	a5,a0
    80400888:	feb43023          	sd	a1,-32(s0)
    8040088c:	fcc43c23          	sd	a2,-40(s0)
    80400890:	fef42623          	sw	a5,-20(s0)
    80400894:	fec42783          	lw	a5,-20(s0)
    80400898:	fe043703          	ld	a4,-32(s0)
    8040089c:	fd843683          	ld	a3,-40(s0)
    804008a0:	863a                	mv	a2,a4
    804008a2:	85be                	mv	a1,a5
    804008a4:	03d00513          	li	a0,61
    804008a8:	8bfff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    804008ac:	87aa                	mv	a5,a0
    804008ae:	2781                	sext.w	a5,a5
    804008b0:	853e                	mv	a0,a5
    804008b2:	70a2                	ld	ra,40(sp)
    804008b4:	7402                	ld	s0,32(sp)
    804008b6:	6145                	addi	sp,sp,48
    804008b8:	8082                	ret

00000000804008ba <_Z4pipePi>:
    804008ba:	1101                	addi	sp,sp,-32
    804008bc:	ec06                	sd	ra,24(sp)
    804008be:	e822                	sd	s0,16(sp)
    804008c0:	1000                	addi	s0,sp,32
    804008c2:	fea43423          	sd	a0,-24(s0)
    804008c6:	fe843783          	ld	a5,-24(s0)
    804008ca:	4601                	li	a2,0
    804008cc:	85be                	mv	a1,a5
    804008ce:	03b00513          	li	a0,59
    804008d2:	869ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    804008d6:	87aa                	mv	a5,a0
    804008d8:	2781                	sext.w	a5,a5
    804008da:	853e                	mv	a0,a5
    804008dc:	60e2                	ld	ra,24(sp)
    804008de:	6442                	ld	s0,16(sp)
    804008e0:	6105                	addi	sp,sp,32
    804008e2:	8082                	ret

00000000804008e4 <_Z3dupi>:
    804008e4:	1101                	addi	sp,sp,-32
    804008e6:	ec06                	sd	ra,24(sp)
    804008e8:	e822                	sd	s0,16(sp)
    804008ea:	1000                	addi	s0,sp,32
    804008ec:	87aa                	mv	a5,a0
    804008ee:	fef42623          	sw	a5,-20(s0)
    804008f2:	fec42783          	lw	a5,-20(s0)
    804008f6:	85be                	mv	a1,a5
    804008f8:	455d                	li	a0,23
    804008fa:	81dff0ef          	jal	ra,80400116 <_ZL10__syscall1ll>
    804008fe:	87aa                	mv	a5,a0
    80400900:	2781                	sext.w	a5,a5
    80400902:	853e                	mv	a0,a5
    80400904:	60e2                	ld	ra,24(sp)
    80400906:	6442                	ld	s0,16(sp)
    80400908:	6105                	addi	sp,sp,32
    8040090a:	8082                	ret

000000008040090c <_Z4dup2ii>:
    8040090c:	1101                	addi	sp,sp,-32
    8040090e:	ec06                	sd	ra,24(sp)
    80400910:	e822                	sd	s0,16(sp)
    80400912:	1000                	addi	s0,sp,32
    80400914:	87aa                	mv	a5,a0
    80400916:	872e                	mv	a4,a1
    80400918:	fef42623          	sw	a5,-20(s0)
    8040091c:	87ba                	mv	a5,a4
    8040091e:	fef42423          	sw	a5,-24(s0)
    80400922:	fec42783          	lw	a5,-20(s0)
    80400926:	fe842703          	lw	a4,-24(s0)
    8040092a:	4681                	li	a3,0
    8040092c:	863a                	mv	a2,a4
    8040092e:	85be                	mv	a1,a5
    80400930:	4561                	li	a0,24
    80400932:	835ff0ef          	jal	ra,80400166 <_ZL10__syscall3llll>
    80400936:	87aa                	mv	a5,a0
    80400938:	2781                	sext.w	a5,a5
    8040093a:	853e                	mv	a0,a5
    8040093c:	60e2                	ld	ra,24(sp)
    8040093e:	6442                	ld	s0,16(sp)
    80400940:	6105                	addi	sp,sp,32
    80400942:	8082                	ret

0000000080400944 <_Z5mountPKcS0_S0_mPKv>:
    80400944:	7139                	addi	sp,sp,-64
    80400946:	fc06                	sd	ra,56(sp)
    80400948:	f822                	sd	s0,48(sp)
    8040094a:	0080                	addi	s0,sp,64
    8040094c:	fea43423          	sd	a0,-24(s0)
    80400950:	feb43023          	sd	a1,-32(s0)
    80400954:	fcc43c23          	sd	a2,-40(s0)
    80400958:	fcd43823          	sd	a3,-48(s0)
    8040095c:	fce43423          	sd	a4,-56(s0)
    80400960:	fe843583          	ld	a1,-24(s0)
    80400964:	fe043603          	ld	a2,-32(s0)
    80400968:	fd843683          	ld	a3,-40(s0)
    8040096c:	fd043703          	ld	a4,-48(s0)
    80400970:	fc843783          	ld	a5,-56(s0)
    80400974:	02800513          	li	a0,40
    80400978:	85fff0ef          	jal	ra,804001d6 <_ZL10__syscall5llllll>
    8040097c:	87aa                	mv	a5,a0
    8040097e:	2781                	sext.w	a5,a5
    80400980:	853e                	mv	a0,a5
    80400982:	70e2                	ld	ra,56(sp)
    80400984:	7442                	ld	s0,48(sp)
    80400986:	6121                	addi	sp,sp,64
    80400988:	8082                	ret

000000008040098a <_Z6umountPKc>:
    8040098a:	1101                	addi	sp,sp,-32
    8040098c:	ec06                	sd	ra,24(sp)
    8040098e:	e822                	sd	s0,16(sp)
    80400990:	1000                	addi	s0,sp,32
    80400992:	fea43423          	sd	a0,-24(s0)
    80400996:	fe843783          	ld	a5,-24(s0)
    8040099a:	4601                	li	a2,0
    8040099c:	85be                	mv	a1,a5
    8040099e:	02700513          	li	a0,39
    804009a2:	f98ff0ef          	jal	ra,8040013a <_ZL10__syscall2lll>
    804009a6:	87aa                	mv	a5,a0
    804009a8:	2781                	sext.w	a5,a5
    804009aa:	853e                	mv	a0,a5
    804009ac:	60e2                	ld	ra,24(sp)
    804009ae:	6442                	ld	s0,16(sp)
    804009b0:	6105                	addi	sp,sp,32
    804009b2:	8082                	ret

Disassembly of section .interp:

00000000804009b4 <.interp>:
    804009b4:	62696c2f          	.4byte	0x62696c2f
    804009b8:	2d646c2f          	.4byte	0x2d646c2f
    804009bc:	696c                	ld	a1,208(a0)
    804009be:	756e                	ld	a0,248(sp)
    804009c0:	2d78                	fld	fa4,216(a0)
    804009c2:	6972                	ld	s2,280(sp)
    804009c4:	36766373          	csrrsi	t1,0x367,12
    804009c8:	2d34                	fld	fa3,88(a0)
    804009ca:	706c                	ld	a1,224(s0)
    804009cc:	3436                	fld	fs0,360(sp)
    804009ce:	2e64                	fld	fs1,216(a2)
    804009d0:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

00000000804009d8 <.note.gnu.build-id>:
    804009d8:	0004                	.2byte	0x4
    804009da:	0000                	unimp
    804009dc:	0014                	.2byte	0x14
    804009de:	0000                	unimp
    804009e0:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    804009e4:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    804009e8:	b1a6                	fsd	fs1,224(sp)
    804009ea:	52e6                	lw	t0,120(sp)
    804009ec:	871c                	.2byte	0x871c
    804009ee:	b53a                	fsd	fa4,168(sp)
    804009f0:	35a4a3e3          	.4byte	0x35a4a3e3
    804009f4:	ea9e                	sd	t2,336(sp)
    804009f6:	04b4                	addi	a3,sp,584
    804009f8:	8562fe27          	.4byte	0x8562fe27

Disassembly of section .dynsym:

0000000080400a00 <.dynsym>:
	...
    80400a1c:	00010003          	lb	zero,0(sp)
    80400a20:	0000                	unimp
    80400a22:	8040                	.2byte	0x8040
	...

Disassembly of section .dynstr:

0000000080400a30 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000080400a38 <.gnu.hash>:
    80400a38:	0001                	nop
    80400a3a:	0000                	unimp
    80400a3c:	0001                	nop
    80400a3e:	0000                	unimp
    80400a40:	0001                	nop
	...

Disassembly of section .data:

0000000080400a58 <nuclear>:
    80400a58:	7566                	ld	a0,120(sp)
    80400a5a:	6e6f6973          	csrrsi	s2,0x6e6,30
    80400a5e:	000a                	c.slli	zero,0x2

0000000080400a60 <a>:
    80400a60:	0009                	c.nop	2
	...

0000000080400a64 <b>:
    80400a64:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    80400a68:	6572                	ld	a0,280(sp)
    80400a6a:	6c61                	lui	s8,0x18
    80400a6c:	7320                	ld	s0,96(a4)
    80400a6e:	6568                	ld	a0,200(a0)
    80400a70:	6c6c                	ld	a1,216(s0)
    80400a72:	7320                	ld	s0,96(a4)
    80400a74:	6174                	ld	a3,192(a0)
    80400a76:	6572                	ld	a0,280(sp)
    80400a78:	2164                	fld	fs1,192(a0)
    80400a7a:	000a                	c.slli	zero,0x2
    80400a7c:	0000                	unimp
    80400a7e:	0000                	unimp
    80400a80:	480a                	lw	a6,128(sp)
    80400a82:	6c65                	lui	s8,0x19
    80400a84:	6f6c                	ld	a1,216(a4)
    80400a86:	2021                	.2byte	0x2021
    80400a88:	6552                	ld	a0,272(sp)
    80400a8a:	6c61                	lui	s8,0x18
    80400a8c:	5320                	lw	s0,96(a4)
    80400a8e:	6568                	ld	a0,200(a0)
    80400a90:	6c6c                	ld	a1,216(s0)
    80400a92:	7320                	ld	s0,96(a4)
    80400a94:	6570                	ld	a2,200(a0)
    80400a96:	6b61                	lui	s6,0x18
    80400a98:	6e69                	lui	t3,0x1a
    80400a9a:	49202167          	.4byte	0x49202167
    80400a9e:	6e206d27          	.4byte	0x6e206d27
    80400aa2:	7720776f          	jal	a4,80408214 <_GLOBAL_OFFSET_TABLE_+0x7644>
    80400aa6:	696b726f          	jal	tp,804b813c <_GLOBAL_OFFSET_TABLE_+0xb756c>
    80400aaa:	676e                	ld	a4,216(sp)
    80400aac:	6920                	ld	s0,80(a0)
    80400aae:	206e                	fld	ft0,216(sp)
    80400ab0:	7375                	lui	t1,0xffffd
    80400ab2:	7265                	lui	tp,0xffff9
    80400ab4:	6d20                	ld	s0,88(a0)
    80400ab6:	2e65646f          	jal	s0,80456d9c <_GLOBAL_OFFSET_TABLE_+0x561cc>
    80400aba:	000a                	c.slli	zero,0x2

Disassembly of section .dynamic:

0000000080400ac0 <.dynamic>:
    80400ac0:	fef5                	bnez	a3,80400abc <b+0x58>
    80400ac2:	6fff                	.2byte	0x6fff
    80400ac4:	0000                	unimp
    80400ac6:	0000                	unimp
    80400ac8:	0a38                	addi	a4,sp,280
    80400aca:	8040                	.2byte	0x8040
    80400acc:	0000                	unimp
    80400ace:	0000                	unimp
    80400ad0:	0005                	c.nop	1
    80400ad2:	0000                	unimp
    80400ad4:	0000                	unimp
    80400ad6:	0000                	unimp
    80400ad8:	0a30                	addi	a2,sp,280
    80400ada:	8040                	.2byte	0x8040
    80400adc:	0000                	unimp
    80400ade:	0000                	unimp
    80400ae0:	0006                	c.slli	zero,0x1
    80400ae2:	0000                	unimp
    80400ae4:	0000                	unimp
    80400ae6:	0000                	unimp
    80400ae8:	0a00                	addi	s0,sp,272
    80400aea:	8040                	.2byte	0x8040
    80400aec:	0000                	unimp
    80400aee:	0000                	unimp
    80400af0:	000a                	c.slli	zero,0x2
    80400af2:	0000                	unimp
    80400af4:	0000                	unimp
    80400af6:	0000                	unimp
    80400af8:	0001                	nop
    80400afa:	0000                	unimp
    80400afc:	0000                	unimp
    80400afe:	0000                	unimp
    80400b00:	0000000b          	.4byte	0xb
    80400b04:	0000                	unimp
    80400b06:	0000                	unimp
    80400b08:	0018                	.2byte	0x18
    80400b0a:	0000                	unimp
    80400b0c:	0000                	unimp
    80400b0e:	0000                	unimp
    80400b10:	0015                	c.nop	5
	...
    80400b1e:	0000                	unimp
    80400b20:	00000007          	.4byte	0x7
	...
    80400b30:	0008                	.2byte	0x8
	...
    80400b3e:	0000                	unimp
    80400b40:	0009                	c.nop	2
    80400b42:	0000                	unimp
    80400b44:	0000                	unimp
    80400b46:	0000                	unimp
    80400b48:	0018                	.2byte	0x18
    80400b4a:	0000                	unimp
    80400b4c:	0000                	unimp
    80400b4e:	0000                	unimp
    80400b50:	001e                	c.slli	zero,0x7
    80400b52:	0000                	unimp
    80400b54:	0000                	unimp
    80400b56:	0000                	unimp
    80400b58:	0008                	.2byte	0x8
    80400b5a:	0000                	unimp
    80400b5c:	0000                	unimp
    80400b5e:	0000                	unimp
    80400b60:	6ffffffb          	.4byte	0x6ffffffb
    80400b64:	0000                	unimp
    80400b66:	0000                	unimp
    80400b68:	0001                	nop
    80400b6a:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000080400bd0 <.got>:
    80400bd0:	0ac0                	addi	s0,sp,340
    80400bd2:	8040                	.2byte	0x8040
    80400bd4:	0000                	unimp
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <_GLOBAL_OFFSET_TABLE_+0xffffffff7fbe042b>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

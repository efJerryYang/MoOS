
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000080400000 <_start>:
    80400000:	850a                	mv	a0,sp
    80400002:	a035                	j	8040002e <main>

0000000080400004 <_Z4plusii>:
    80400004:	1101                	addi	sp,sp,-32
    80400006:	ec22                	sd	s0,24(sp)
    80400008:	1000                	addi	s0,sp,32
    8040000a:	87aa                	mv	a5,a0
    8040000c:	872e                	mv	a4,a1
    8040000e:	fef42623          	sw	a5,-20(s0)
    80400012:	87ba                	mv	a5,a4
    80400014:	fef42423          	sw	a5,-24(s0)
    80400018:	fec42783          	lw	a5,-20(s0)
    8040001c:	873e                	mv	a4,a5
    8040001e:	fe842783          	lw	a5,-24(s0)
    80400022:	9fb9                	addw	a5,a5,a4
    80400024:	2781                	sext.w	a5,a5
    80400026:	853e                	mv	a0,a5
    80400028:	6462                	ld	s0,24(sp)
    8040002a:	6105                	addi	sp,sp,32
    8040002c:	8082                	ret

000000008040002e <main>:
    8040002e:	1101                	addi	sp,sp,-32
    80400030:	ec06                	sd	ra,24(sp)
    80400032:	e822                	sd	s0,16(sp)
    80400034:	1000                	addi	s0,sp,32
    80400036:	4601                	li	a2,0
    80400038:	4581                	li	a1,0
    8040003a:	4501                	li	a0,0
    8040003c:	298000ef          	jal	ra,804002d4 <_Z5writeiPKvy>
    80400040:	478d                	li	a5,3
    80400042:	fef42623          	sw	a5,-20(s0)
    80400046:	00001797          	auipc	a5,0x1
    8040004a:	9ee78793          	addi	a5,a5,-1554 # 80400a34 <a>
    8040004e:	439c                	lw	a5,0(a5)
    80400050:	2785                	addiw	a5,a5,1
    80400052:	0007871b          	sext.w	a4,a5
    80400056:	00001797          	auipc	a5,0x1
    8040005a:	9de78793          	addi	a5,a5,-1570 # 80400a34 <a>
    8040005e:	c398                	sw	a4,0(a5)
    80400060:	00001797          	auipc	a5,0x1
    80400064:	9d478793          	addi	a5,a5,-1580 # 80400a34 <a>
    80400068:	4398                	lw	a4,0(a5)
    8040006a:	00001797          	auipc	a5,0x1
    8040006e:	9ca78793          	addi	a5,a5,-1590 # 80400a34 <a>
    80400072:	439c                	lw	a5,0(a5)
    80400074:	02f707bb          	mulw	a5,a4,a5
    80400078:	0007871b          	sext.w	a4,a5
    8040007c:	00001797          	auipc	a5,0x1
    80400080:	9bc78793          	addi	a5,a5,-1604 # 80400a38 <b>
    80400084:	439c                	lw	a5,0(a5)
    80400086:	85be                	mv	a1,a5
    80400088:	853a                	mv	a0,a4
    8040008a:	f7bff0ef          	jal	ra,80400004 <_Z4plusii>
    8040008e:	87aa                	mv	a5,a0
    80400090:	873e                	mv	a4,a5
    80400092:	00001797          	auipc	a5,0x1
    80400096:	9a278793          	addi	a5,a5,-1630 # 80400a34 <a>
    8040009a:	c398                	sw	a4,0(a5)
    8040009c:	00001797          	auipc	a5,0x1
    804000a0:	99878793          	addi	a5,a5,-1640 # 80400a34 <a>
    804000a4:	4398                	lw	a4,0(a5)
    804000a6:	00001797          	auipc	a5,0x1
    804000aa:	98e78793          	addi	a5,a5,-1650 # 80400a34 <a>
    804000ae:	439c                	lw	a5,0(a5)
    804000b0:	02f707bb          	mulw	a5,a4,a5
    804000b4:	0007871b          	sext.w	a4,a5
    804000b8:	00001797          	auipc	a5,0x1
    804000bc:	98078793          	addi	a5,a5,-1664 # 80400a38 <b>
    804000c0:	c398                	sw	a4,0(a5)
    804000c2:	00001797          	auipc	a5,0x1
    804000c6:	97678793          	addi	a5,a5,-1674 # 80400a38 <b>
    804000ca:	439c                	lw	a5,0(a5)
    804000cc:	853e                	mv	a0,a5
    804000ce:	60e2                	ld	ra,24(sp)
    804000d0:	6442                	ld	s0,16(sp)
    804000d2:	6105                	addi	sp,sp,32
    804000d4:	8082                	ret

00000000804000d6 <_ZL10__syscall0l>:
    804000d6:	1101                	addi	sp,sp,-32
    804000d8:	ec22                	sd	s0,24(sp)
    804000da:	1000                	addi	s0,sp,32
    804000dc:	fea43423          	sd	a0,-24(s0)
    804000e0:	fe843883          	ld	a7,-24(s0)
    804000e4:	00000073          	ecall
    804000e8:	87aa                	mv	a5,a0
    804000ea:	853e                	mv	a0,a5
    804000ec:	6462                	ld	s0,24(sp)
    804000ee:	6105                	addi	sp,sp,32
    804000f0:	8082                	ret

00000000804000f2 <_ZL10__syscall1ll>:
    804000f2:	1101                	addi	sp,sp,-32
    804000f4:	ec22                	sd	s0,24(sp)
    804000f6:	1000                	addi	s0,sp,32
    804000f8:	fea43423          	sd	a0,-24(s0)
    804000fc:	feb43023          	sd	a1,-32(s0)
    80400100:	fe843883          	ld	a7,-24(s0)
    80400104:	fe043503          	ld	a0,-32(s0)
    80400108:	00000073          	ecall
    8040010c:	87aa                	mv	a5,a0
    8040010e:	853e                	mv	a0,a5
    80400110:	6462                	ld	s0,24(sp)
    80400112:	6105                	addi	sp,sp,32
    80400114:	8082                	ret

0000000080400116 <_ZL10__syscall2lll>:
    80400116:	7179                	addi	sp,sp,-48
    80400118:	f422                	sd	s0,40(sp)
    8040011a:	1800                	addi	s0,sp,48
    8040011c:	fea43423          	sd	a0,-24(s0)
    80400120:	feb43023          	sd	a1,-32(s0)
    80400124:	fcc43c23          	sd	a2,-40(s0)
    80400128:	fe843883          	ld	a7,-24(s0)
    8040012c:	fe043503          	ld	a0,-32(s0)
    80400130:	fd843583          	ld	a1,-40(s0)
    80400134:	00000073          	ecall
    80400138:	87aa                	mv	a5,a0
    8040013a:	853e                	mv	a0,a5
    8040013c:	7422                	ld	s0,40(sp)
    8040013e:	6145                	addi	sp,sp,48
    80400140:	8082                	ret

0000000080400142 <_ZL10__syscall3llll>:
    80400142:	7179                	addi	sp,sp,-48
    80400144:	f422                	sd	s0,40(sp)
    80400146:	1800                	addi	s0,sp,48
    80400148:	fea43423          	sd	a0,-24(s0)
    8040014c:	feb43023          	sd	a1,-32(s0)
    80400150:	fcc43c23          	sd	a2,-40(s0)
    80400154:	fcd43823          	sd	a3,-48(s0)
    80400158:	fe843883          	ld	a7,-24(s0)
    8040015c:	fe043503          	ld	a0,-32(s0)
    80400160:	fd843583          	ld	a1,-40(s0)
    80400164:	fd043603          	ld	a2,-48(s0)
    80400168:	00000073          	ecall
    8040016c:	87aa                	mv	a5,a0
    8040016e:	853e                	mv	a0,a5
    80400170:	7422                	ld	s0,40(sp)
    80400172:	6145                	addi	sp,sp,48
    80400174:	8082                	ret

0000000080400176 <_ZL10__syscall4lllll>:
    80400176:	7139                	addi	sp,sp,-64
    80400178:	fc22                	sd	s0,56(sp)
    8040017a:	0080                	addi	s0,sp,64
    8040017c:	fea43423          	sd	a0,-24(s0)
    80400180:	feb43023          	sd	a1,-32(s0)
    80400184:	fcc43c23          	sd	a2,-40(s0)
    80400188:	fcd43823          	sd	a3,-48(s0)
    8040018c:	fce43423          	sd	a4,-56(s0)
    80400190:	fe843883          	ld	a7,-24(s0)
    80400194:	fe043503          	ld	a0,-32(s0)
    80400198:	fd843583          	ld	a1,-40(s0)
    8040019c:	fd043603          	ld	a2,-48(s0)
    804001a0:	fc843683          	ld	a3,-56(s0)
    804001a4:	00000073          	ecall
    804001a8:	87aa                	mv	a5,a0
    804001aa:	853e                	mv	a0,a5
    804001ac:	7462                	ld	s0,56(sp)
    804001ae:	6121                	addi	sp,sp,64
    804001b0:	8082                	ret

00000000804001b2 <_ZL10__syscall5llllll>:
    804001b2:	7139                	addi	sp,sp,-64
    804001b4:	fc22                	sd	s0,56(sp)
    804001b6:	0080                	addi	s0,sp,64
    804001b8:	fea43423          	sd	a0,-24(s0)
    804001bc:	feb43023          	sd	a1,-32(s0)
    804001c0:	fcc43c23          	sd	a2,-40(s0)
    804001c4:	fcd43823          	sd	a3,-48(s0)
    804001c8:	fce43423          	sd	a4,-56(s0)
    804001cc:	fcf43023          	sd	a5,-64(s0)
    804001d0:	fe843883          	ld	a7,-24(s0)
    804001d4:	fe043503          	ld	a0,-32(s0)
    804001d8:	fd843583          	ld	a1,-40(s0)
    804001dc:	fd043603          	ld	a2,-48(s0)
    804001e0:	fc843683          	ld	a3,-56(s0)
    804001e4:	fc043703          	ld	a4,-64(s0)
    804001e8:	00000073          	ecall
    804001ec:	87aa                	mv	a5,a0
    804001ee:	853e                	mv	a0,a5
    804001f0:	7462                	ld	s0,56(sp)
    804001f2:	6121                	addi	sp,sp,64
    804001f4:	8082                	ret

00000000804001f6 <_Z4openPKci>:
    804001f6:	1101                	addi	sp,sp,-32
    804001f8:	ec06                	sd	ra,24(sp)
    804001fa:	e822                	sd	s0,16(sp)
    804001fc:	1000                	addi	s0,sp,32
    804001fe:	fea43423          	sd	a0,-24(s0)
    80400202:	87ae                	mv	a5,a1
    80400204:	fef42223          	sw	a5,-28(s0)
    80400208:	fe843783          	ld	a5,-24(s0)
    8040020c:	fe442683          	lw	a3,-28(s0)
    80400210:	4709                	li	a4,2
    80400212:	863e                	mv	a2,a5
    80400214:	f9c00593          	li	a1,-100
    80400218:	03800513          	li	a0,56
    8040021c:	f5bff0ef          	jal	ra,80400176 <_ZL10__syscall4lllll>
    80400220:	87aa                	mv	a5,a0
    80400222:	2781                	sext.w	a5,a5
    80400224:	853e                	mv	a0,a5
    80400226:	60e2                	ld	ra,24(sp)
    80400228:	6442                	ld	s0,16(sp)
    8040022a:	6105                	addi	sp,sp,32
    8040022c:	8082                	ret

000000008040022e <_Z6openatiPKci>:
    8040022e:	1101                	addi	sp,sp,-32
    80400230:	ec06                	sd	ra,24(sp)
    80400232:	e822                	sd	s0,16(sp)
    80400234:	1000                	addi	s0,sp,32
    80400236:	87aa                	mv	a5,a0
    80400238:	feb43023          	sd	a1,-32(s0)
    8040023c:	8732                	mv	a4,a2
    8040023e:	fef42623          	sw	a5,-20(s0)
    80400242:	87ba                	mv	a5,a4
    80400244:	fef42423          	sw	a5,-24(s0)
    80400248:	fec42783          	lw	a5,-20(s0)
    8040024c:	fe043603          	ld	a2,-32(s0)
    80400250:	fe842683          	lw	a3,-24(s0)
    80400254:	18000713          	li	a4,384
    80400258:	85be                	mv	a1,a5
    8040025a:	03800513          	li	a0,56
    8040025e:	f19ff0ef          	jal	ra,80400176 <_ZL10__syscall4lllll>
    80400262:	87aa                	mv	a5,a0
    80400264:	2781                	sext.w	a5,a5
    80400266:	853e                	mv	a0,a5
    80400268:	60e2                	ld	ra,24(sp)
    8040026a:	6442                	ld	s0,16(sp)
    8040026c:	6105                	addi	sp,sp,32
    8040026e:	8082                	ret

0000000080400270 <_Z5closei>:
    80400270:	1101                	addi	sp,sp,-32
    80400272:	ec06                	sd	ra,24(sp)
    80400274:	e822                	sd	s0,16(sp)
    80400276:	1000                	addi	s0,sp,32
    80400278:	87aa                	mv	a5,a0
    8040027a:	fef42623          	sw	a5,-20(s0)
    8040027e:	fec42783          	lw	a5,-20(s0)
    80400282:	85be                	mv	a1,a5
    80400284:	03900513          	li	a0,57
    80400288:	e6bff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    8040028c:	87aa                	mv	a5,a0
    8040028e:	2781                	sext.w	a5,a5
    80400290:	853e                	mv	a0,a5
    80400292:	60e2                	ld	ra,24(sp)
    80400294:	6442                	ld	s0,16(sp)
    80400296:	6105                	addi	sp,sp,32
    80400298:	8082                	ret

000000008040029a <_Z4readiPvy>:
    8040029a:	7179                	addi	sp,sp,-48
    8040029c:	f406                	sd	ra,40(sp)
    8040029e:	f022                	sd	s0,32(sp)
    804002a0:	1800                	addi	s0,sp,48
    804002a2:	87aa                	mv	a5,a0
    804002a4:	feb43023          	sd	a1,-32(s0)
    804002a8:	fcc43c23          	sd	a2,-40(s0)
    804002ac:	fef42623          	sw	a5,-20(s0)
    804002b0:	fec42783          	lw	a5,-20(s0)
    804002b4:	fe043703          	ld	a4,-32(s0)
    804002b8:	fd843683          	ld	a3,-40(s0)
    804002bc:	863a                	mv	a2,a4
    804002be:	85be                	mv	a1,a5
    804002c0:	03f00513          	li	a0,63
    804002c4:	e7fff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    804002c8:	87aa                	mv	a5,a0
    804002ca:	853e                	mv	a0,a5
    804002cc:	70a2                	ld	ra,40(sp)
    804002ce:	7402                	ld	s0,32(sp)
    804002d0:	6145                	addi	sp,sp,48
    804002d2:	8082                	ret

00000000804002d4 <_Z5writeiPKvy>:
    804002d4:	7179                	addi	sp,sp,-48
    804002d6:	f406                	sd	ra,40(sp)
    804002d8:	f022                	sd	s0,32(sp)
    804002da:	1800                	addi	s0,sp,48
    804002dc:	87aa                	mv	a5,a0
    804002de:	feb43023          	sd	a1,-32(s0)
    804002e2:	fcc43c23          	sd	a2,-40(s0)
    804002e6:	fef42623          	sw	a5,-20(s0)
    804002ea:	fec42783          	lw	a5,-20(s0)
    804002ee:	fe043703          	ld	a4,-32(s0)
    804002f2:	fd843683          	ld	a3,-40(s0)
    804002f6:	863a                	mv	a2,a4
    804002f8:	85be                	mv	a1,a5
    804002fa:	04000513          	li	a0,64
    804002fe:	e45ff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400302:	87aa                	mv	a5,a0
    80400304:	853e                	mv	a0,a5
    80400306:	70a2                	ld	ra,40(sp)
    80400308:	7402                	ld	s0,32(sp)
    8040030a:	6145                	addi	sp,sp,48
    8040030c:	8082                	ret

000000008040030e <_Z6getpidv>:
    8040030e:	1141                	addi	sp,sp,-16
    80400310:	e406                	sd	ra,8(sp)
    80400312:	e022                	sd	s0,0(sp)
    80400314:	0800                	addi	s0,sp,16
    80400316:	0ac00513          	li	a0,172
    8040031a:	dbdff0ef          	jal	ra,804000d6 <_ZL10__syscall0l>
    8040031e:	87aa                	mv	a5,a0
    80400320:	2781                	sext.w	a5,a5
    80400322:	853e                	mv	a0,a5
    80400324:	60a2                	ld	ra,8(sp)
    80400326:	6402                	ld	s0,0(sp)
    80400328:	0141                	addi	sp,sp,16
    8040032a:	8082                	ret

000000008040032c <_Z7getppidv>:
    8040032c:	1141                	addi	sp,sp,-16
    8040032e:	e406                	sd	ra,8(sp)
    80400330:	e022                	sd	s0,0(sp)
    80400332:	0800                	addi	s0,sp,16
    80400334:	0ad00513          	li	a0,173
    80400338:	d9fff0ef          	jal	ra,804000d6 <_ZL10__syscall0l>
    8040033c:	87aa                	mv	a5,a0
    8040033e:	2781                	sext.w	a5,a5
    80400340:	853e                	mv	a0,a5
    80400342:	60a2                	ld	ra,8(sp)
    80400344:	6402                	ld	s0,0(sp)
    80400346:	0141                	addi	sp,sp,16
    80400348:	8082                	ret

000000008040034a <_Z11sched_yieldv>:
    8040034a:	1141                	addi	sp,sp,-16
    8040034c:	e406                	sd	ra,8(sp)
    8040034e:	e022                	sd	s0,0(sp)
    80400350:	0800                	addi	s0,sp,16
    80400352:	07c00513          	li	a0,124
    80400356:	d81ff0ef          	jal	ra,804000d6 <_ZL10__syscall0l>
    8040035a:	87aa                	mv	a5,a0
    8040035c:	2781                	sext.w	a5,a5
    8040035e:	853e                	mv	a0,a5
    80400360:	60a2                	ld	ra,8(sp)
    80400362:	6402                	ld	s0,0(sp)
    80400364:	0141                	addi	sp,sp,16
    80400366:	8082                	ret

0000000080400368 <_Z4forkv>:
    80400368:	1141                	addi	sp,sp,-16
    8040036a:	e406                	sd	ra,8(sp)
    8040036c:	e022                	sd	s0,0(sp)
    8040036e:	0800                	addi	s0,sp,16
    80400370:	4601                	li	a2,0
    80400372:	45c5                	li	a1,17
    80400374:	0dc00513          	li	a0,220
    80400378:	d9fff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    8040037c:	87aa                	mv	a5,a0
    8040037e:	2781                	sext.w	a5,a5
    80400380:	853e                	mv	a0,a5
    80400382:	60a2                	ld	ra,8(sp)
    80400384:	6402                	ld	s0,0(sp)
    80400386:	0141                	addi	sp,sp,16
    80400388:	8082                	ret

000000008040038a <_Z4exiti>:
    8040038a:	1101                	addi	sp,sp,-32
    8040038c:	ec06                	sd	ra,24(sp)
    8040038e:	e822                	sd	s0,16(sp)
    80400390:	1000                	addi	s0,sp,32
    80400392:	87aa                	mv	a5,a0
    80400394:	fef42623          	sw	a5,-20(s0)
    80400398:	fec42783          	lw	a5,-20(s0)
    8040039c:	85be                	mv	a1,a5
    8040039e:	05d00513          	li	a0,93
    804003a2:	d51ff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    804003a6:	0001                	nop
    804003a8:	60e2                	ld	ra,24(sp)
    804003aa:	6442                	ld	s0,16(sp)
    804003ac:	6105                	addi	sp,sp,32
    804003ae:	8082                	ret

00000000804003b0 <_Z7waitpidiPii>:
    804003b0:	1101                	addi	sp,sp,-32
    804003b2:	ec06                	sd	ra,24(sp)
    804003b4:	e822                	sd	s0,16(sp)
    804003b6:	1000                	addi	s0,sp,32
    804003b8:	87aa                	mv	a5,a0
    804003ba:	feb43023          	sd	a1,-32(s0)
    804003be:	8732                	mv	a4,a2
    804003c0:	fef42623          	sw	a5,-20(s0)
    804003c4:	87ba                	mv	a5,a4
    804003c6:	fef42423          	sw	a5,-24(s0)
    804003ca:	fec42783          	lw	a5,-20(s0)
    804003ce:	fe043603          	ld	a2,-32(s0)
    804003d2:	fe842683          	lw	a3,-24(s0)
    804003d6:	4701                	li	a4,0
    804003d8:	85be                	mv	a1,a5
    804003da:	10400513          	li	a0,260
    804003de:	d99ff0ef          	jal	ra,80400176 <_ZL10__syscall4lllll>
    804003e2:	87aa                	mv	a5,a0
    804003e4:	2781                	sext.w	a5,a5
    804003e6:	853e                	mv	a0,a5
    804003e8:	60e2                	ld	ra,24(sp)
    804003ea:	6442                	ld	s0,16(sp)
    804003ec:	6105                	addi	sp,sp,32
    804003ee:	8082                	ret

00000000804003f0 <_Z4execPc>:
    804003f0:	1101                	addi	sp,sp,-32
    804003f2:	ec06                	sd	ra,24(sp)
    804003f4:	e822                	sd	s0,16(sp)
    804003f6:	1000                	addi	s0,sp,32
    804003f8:	fea43423          	sd	a0,-24(s0)
    804003fc:	fe843783          	ld	a5,-24(s0)
    80400400:	85be                	mv	a1,a5
    80400402:	0dd00513          	li	a0,221
    80400406:	cedff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    8040040a:	87aa                	mv	a5,a0
    8040040c:	2781                	sext.w	a5,a5
    8040040e:	853e                	mv	a0,a5
    80400410:	60e2                	ld	ra,24(sp)
    80400412:	6442                	ld	s0,16(sp)
    80400414:	6105                	addi	sp,sp,32
    80400416:	8082                	ret

0000000080400418 <_Z6execvePKcPKPcS3_>:
    80400418:	7179                	addi	sp,sp,-48
    8040041a:	f406                	sd	ra,40(sp)
    8040041c:	f022                	sd	s0,32(sp)
    8040041e:	1800                	addi	s0,sp,48
    80400420:	fea43423          	sd	a0,-24(s0)
    80400424:	feb43023          	sd	a1,-32(s0)
    80400428:	fcc43c23          	sd	a2,-40(s0)
    8040042c:	fe843783          	ld	a5,-24(s0)
    80400430:	fe043703          	ld	a4,-32(s0)
    80400434:	fd843683          	ld	a3,-40(s0)
    80400438:	863a                	mv	a2,a4
    8040043a:	85be                	mv	a1,a5
    8040043c:	0dd00513          	li	a0,221
    80400440:	d03ff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400444:	87aa                	mv	a5,a0
    80400446:	2781                	sext.w	a5,a5
    80400448:	853e                	mv	a0,a5
    8040044a:	70a2                	ld	ra,40(sp)
    8040044c:	7402                	ld	s0,32(sp)
    8040044e:	6145                	addi	sp,sp,48
    80400450:	8082                	ret

0000000080400452 <_Z5timesPv>:
    80400452:	1101                	addi	sp,sp,-32
    80400454:	ec06                	sd	ra,24(sp)
    80400456:	e822                	sd	s0,16(sp)
    80400458:	1000                	addi	s0,sp,32
    8040045a:	fea43423          	sd	a0,-24(s0)
    8040045e:	fe843783          	ld	a5,-24(s0)
    80400462:	85be                	mv	a1,a5
    80400464:	09900513          	li	a0,153
    80400468:	c8bff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    8040046c:	87aa                	mv	a5,a0
    8040046e:	2781                	sext.w	a5,a5
    80400470:	853e                	mv	a0,a5
    80400472:	60e2                	ld	ra,24(sp)
    80400474:	6442                	ld	s0,16(sp)
    80400476:	6105                	addi	sp,sp,32
    80400478:	8082                	ret

000000008040047a <_Z8get_timev>:
    8040047a:	7179                	addi	sp,sp,-48
    8040047c:	f406                	sd	ra,40(sp)
    8040047e:	f022                	sd	s0,32(sp)
    80400480:	1800                	addi	s0,sp,48
    80400482:	fd840793          	addi	a5,s0,-40
    80400486:	4581                	li	a1,0
    80400488:	853e                	mv	a0,a5
    8040048a:	040000ef          	jal	ra,804004ca <_Z12sys_get_timeP7TimeVali>
    8040048e:	87aa                	mv	a5,a0
    80400490:	fef42623          	sw	a5,-20(s0)
    80400494:	fec42783          	lw	a5,-20(s0)
    80400498:	2781                	sext.w	a5,a5
    8040049a:	e395                	bnez	a5,804004be <_Z8get_timev+0x44>
    8040049c:	fd843703          	ld	a4,-40(s0)
    804004a0:	67c1                	lui	a5,0x10
    804004a2:	17fd                	addi	a5,a5,-1 # ffff <_start-0x803f0001>
    804004a4:	8f7d                	and	a4,a4,a5
    804004a6:	3e800793          	li	a5,1000
    804004aa:	02f70733          	mul	a4,a4,a5
    804004ae:	fe043683          	ld	a3,-32(s0)
    804004b2:	3e800793          	li	a5,1000
    804004b6:	02f6d7b3          	divu	a5,a3,a5
    804004ba:	97ba                	add	a5,a5,a4
    804004bc:	a011                	j	804004c0 <_Z8get_timev+0x46>
    804004be:	57fd                	li	a5,-1
    804004c0:	853e                	mv	a0,a5
    804004c2:	70a2                	ld	ra,40(sp)
    804004c4:	7402                	ld	s0,32(sp)
    804004c6:	6145                	addi	sp,sp,48
    804004c8:	8082                	ret

00000000804004ca <_Z12sys_get_timeP7TimeVali>:
    804004ca:	1101                	addi	sp,sp,-32
    804004cc:	ec06                	sd	ra,24(sp)
    804004ce:	e822                	sd	s0,16(sp)
    804004d0:	1000                	addi	s0,sp,32
    804004d2:	fea43423          	sd	a0,-24(s0)
    804004d6:	87ae                	mv	a5,a1
    804004d8:	fef42223          	sw	a5,-28(s0)
    804004dc:	fe843783          	ld	a5,-24(s0)
    804004e0:	fe442703          	lw	a4,-28(s0)
    804004e4:	863a                	mv	a2,a4
    804004e6:	85be                	mv	a1,a5
    804004e8:	0a900513          	li	a0,169
    804004ec:	c2bff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    804004f0:	87aa                	mv	a5,a0
    804004f2:	2781                	sext.w	a5,a5
    804004f4:	853e                	mv	a0,a5
    804004f6:	60e2                	ld	ra,24(sp)
    804004f8:	6442                	ld	s0,16(sp)
    804004fa:	6105                	addi	sp,sp,32
    804004fc:	8082                	ret

00000000804004fe <_Z4timePm>:
    804004fe:	1101                	addi	sp,sp,-32
    80400500:	ec06                	sd	ra,24(sp)
    80400502:	e822                	sd	s0,16(sp)
    80400504:	1000                	addi	s0,sp,32
    80400506:	fea43423          	sd	a0,-24(s0)
    8040050a:	fe843783          	ld	a5,-24(s0)
    8040050e:	85be                	mv	a1,a5
    80400510:	42600513          	li	a0,1062
    80400514:	bdfff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    80400518:	87aa                	mv	a5,a0
    8040051a:	2781                	sext.w	a5,a5
    8040051c:	853e                	mv	a0,a5
    8040051e:	60e2                	ld	ra,24(sp)
    80400520:	6442                	ld	s0,16(sp)
    80400522:	6105                	addi	sp,sp,32
    80400524:	8082                	ret

0000000080400526 <_Z5sleepy>:
    80400526:	7179                	addi	sp,sp,-48
    80400528:	f406                	sd	ra,40(sp)
    8040052a:	f022                	sd	s0,32(sp)
    8040052c:	1800                	addi	s0,sp,48
    8040052e:	fca43c23          	sd	a0,-40(s0)
    80400532:	fe043023          	sd	zero,-32(s0)
    80400536:	fe043423          	sd	zero,-24(s0)
    8040053a:	fd843783          	ld	a5,-40(s0)
    8040053e:	fef43023          	sd	a5,-32(s0)
    80400542:	fe040793          	addi	a5,s0,-32
    80400546:	fe040713          	addi	a4,s0,-32
    8040054a:	863a                	mv	a2,a4
    8040054c:	85be                	mv	a1,a5
    8040054e:	06500513          	li	a0,101
    80400552:	bc5ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    80400556:	87aa                	mv	a5,a0
    80400558:	00f037b3          	snez	a5,a5
    8040055c:	0ff7f793          	zext.b	a5,a5
    80400560:	c789                	beqz	a5,8040056a <_Z5sleepy+0x44>
    80400562:	fe043783          	ld	a5,-32(s0)
    80400566:	2781                	sext.w	a5,a5
    80400568:	a011                	j	8040056c <_Z5sleepy+0x46>
    8040056a:	4781                	li	a5,0
    8040056c:	853e                	mv	a0,a5
    8040056e:	70a2                	ld	ra,40(sp)
    80400570:	7402                	ld	s0,32(sp)
    80400572:	6145                	addi	sp,sp,48
    80400574:	8082                	ret

0000000080400576 <_Z12set_priorityi>:
    80400576:	1101                	addi	sp,sp,-32
    80400578:	ec06                	sd	ra,24(sp)
    8040057a:	e822                	sd	s0,16(sp)
    8040057c:	1000                	addi	s0,sp,32
    8040057e:	87aa                	mv	a5,a0
    80400580:	fef42623          	sw	a5,-20(s0)
    80400584:	fec42783          	lw	a5,-20(s0)
    80400588:	85be                	mv	a1,a5
    8040058a:	08c00513          	li	a0,140
    8040058e:	b65ff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    80400592:	87aa                	mv	a5,a0
    80400594:	2781                	sext.w	a5,a5
    80400596:	853e                	mv	a0,a5
    80400598:	60e2                	ld	ra,24(sp)
    8040059a:	6442                	ld	s0,16(sp)
    8040059c:	6105                	addi	sp,sp,32
    8040059e:	8082                	ret

00000000804005a0 <_Z6munmapPvy>:
    804005a0:	1101                	addi	sp,sp,-32
    804005a2:	ec06                	sd	ra,24(sp)
    804005a4:	e822                	sd	s0,16(sp)
    804005a6:	1000                	addi	s0,sp,32
    804005a8:	fea43423          	sd	a0,-24(s0)
    804005ac:	feb43023          	sd	a1,-32(s0)
    804005b0:	fe843783          	ld	a5,-24(s0)
    804005b4:	fe043703          	ld	a4,-32(s0)
    804005b8:	863a                	mv	a2,a4
    804005ba:	85be                	mv	a1,a5
    804005bc:	0d700513          	li	a0,215
    804005c0:	b57ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    804005c4:	87aa                	mv	a5,a0
    804005c6:	2781                	sext.w	a5,a5
    804005c8:	853e                	mv	a0,a5
    804005ca:	60e2                	ld	ra,24(sp)
    804005cc:	6442                	ld	s0,16(sp)
    804005ce:	6105                	addi	sp,sp,32
    804005d0:	8082                	ret

00000000804005d2 <_Z4waitPi>:
    804005d2:	1101                	addi	sp,sp,-32
    804005d4:	ec06                	sd	ra,24(sp)
    804005d6:	e822                	sd	s0,16(sp)
    804005d8:	1000                	addi	s0,sp,32
    804005da:	fea43423          	sd	a0,-24(s0)
    804005de:	4601                	li	a2,0
    804005e0:	fe843583          	ld	a1,-24(s0)
    804005e4:	557d                	li	a0,-1
    804005e6:	dcbff0ef          	jal	ra,804003b0 <_Z7waitpidiPii>
    804005ea:	87aa                	mv	a5,a0
    804005ec:	853e                	mv	a0,a5
    804005ee:	60e2                	ld	ra,24(sp)
    804005f0:	6442                	ld	s0,16(sp)
    804005f2:	6105                	addi	sp,sp,32
    804005f4:	8082                	ret

00000000804005f6 <_Z5spawnPc>:
    804005f6:	1101                	addi	sp,sp,-32
    804005f8:	ec06                	sd	ra,24(sp)
    804005fa:	e822                	sd	s0,16(sp)
    804005fc:	1000                	addi	s0,sp,32
    804005fe:	fea43423          	sd	a0,-24(s0)
    80400602:	fe843783          	ld	a5,-24(s0)
    80400606:	85be                	mv	a1,a5
    80400608:	19000513          	li	a0,400
    8040060c:	ae7ff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    80400610:	87aa                	mv	a5,a0
    80400612:	2781                	sext.w	a5,a5
    80400614:	853e                	mv	a0,a5
    80400616:	60e2                	ld	ra,24(sp)
    80400618:	6442                	ld	s0,16(sp)
    8040061a:	6105                	addi	sp,sp,32
    8040061c:	8082                	ret

000000008040061e <_Z8mailreadPvi>:
    8040061e:	1101                	addi	sp,sp,-32
    80400620:	ec06                	sd	ra,24(sp)
    80400622:	e822                	sd	s0,16(sp)
    80400624:	1000                	addi	s0,sp,32
    80400626:	fea43423          	sd	a0,-24(s0)
    8040062a:	87ae                	mv	a5,a1
    8040062c:	fef42223          	sw	a5,-28(s0)
    80400630:	fe843783          	ld	a5,-24(s0)
    80400634:	fe442703          	lw	a4,-28(s0)
    80400638:	863a                	mv	a2,a4
    8040063a:	85be                	mv	a1,a5
    8040063c:	19100513          	li	a0,401
    80400640:	ad7ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    80400644:	87aa                	mv	a5,a0
    80400646:	2781                	sext.w	a5,a5
    80400648:	853e                	mv	a0,a5
    8040064a:	60e2                	ld	ra,24(sp)
    8040064c:	6442                	ld	s0,16(sp)
    8040064e:	6105                	addi	sp,sp,32
    80400650:	8082                	ret

0000000080400652 <_Z9mailwriteiPvi>:
    80400652:	1101                	addi	sp,sp,-32
    80400654:	ec06                	sd	ra,24(sp)
    80400656:	e822                	sd	s0,16(sp)
    80400658:	1000                	addi	s0,sp,32
    8040065a:	87aa                	mv	a5,a0
    8040065c:	feb43023          	sd	a1,-32(s0)
    80400660:	8732                	mv	a4,a2
    80400662:	fef42623          	sw	a5,-20(s0)
    80400666:	87ba                	mv	a5,a4
    80400668:	fef42423          	sw	a5,-24(s0)
    8040066c:	fec42783          	lw	a5,-20(s0)
    80400670:	fe043703          	ld	a4,-32(s0)
    80400674:	fe842683          	lw	a3,-24(s0)
    80400678:	863a                	mv	a2,a4
    8040067a:	85be                	mv	a1,a5
    8040067c:	19200513          	li	a0,402
    80400680:	ac3ff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400684:	87aa                	mv	a5,a0
    80400686:	2781                	sext.w	a5,a5
    80400688:	853e                	mv	a0,a5
    8040068a:	60e2                	ld	ra,24(sp)
    8040068c:	6442                	ld	s0,16(sp)
    8040068e:	6105                	addi	sp,sp,32
    80400690:	8082                	ret

0000000080400692 <_Z5fstatiP5kstat>:
    80400692:	1101                	addi	sp,sp,-32
    80400694:	ec06                	sd	ra,24(sp)
    80400696:	e822                	sd	s0,16(sp)
    80400698:	1000                	addi	s0,sp,32
    8040069a:	87aa                	mv	a5,a0
    8040069c:	feb43023          	sd	a1,-32(s0)
    804006a0:	fef42623          	sw	a5,-20(s0)
    804006a4:	fec42783          	lw	a5,-20(s0)
    804006a8:	fe043703          	ld	a4,-32(s0)
    804006ac:	863a                	mv	a2,a4
    804006ae:	85be                	mv	a1,a5
    804006b0:	05000513          	li	a0,80
    804006b4:	a63ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    804006b8:	87aa                	mv	a5,a0
    804006ba:	2781                	sext.w	a5,a5
    804006bc:	853e                	mv	a0,a5
    804006be:	60e2                	ld	ra,24(sp)
    804006c0:	6442                	ld	s0,16(sp)
    804006c2:	6105                	addi	sp,sp,32
    804006c4:	8082                	ret

00000000804006c6 <_Z10sys_linkatiPciS_j>:
    804006c6:	7179                	addi	sp,sp,-48
    804006c8:	f406                	sd	ra,40(sp)
    804006ca:	f022                	sd	s0,32(sp)
    804006cc:	1800                	addi	s0,sp,48
    804006ce:	87aa                	mv	a5,a0
    804006d0:	feb43023          	sd	a1,-32(s0)
    804006d4:	fcd43c23          	sd	a3,-40(s0)
    804006d8:	fef42623          	sw	a5,-20(s0)
    804006dc:	87b2                	mv	a5,a2
    804006de:	fef42423          	sw	a5,-24(s0)
    804006e2:	87ba                	mv	a5,a4
    804006e4:	fcf42a23          	sw	a5,-44(s0)
    804006e8:	fec42583          	lw	a1,-20(s0)
    804006ec:	fe043603          	ld	a2,-32(s0)
    804006f0:	fe842683          	lw	a3,-24(s0)
    804006f4:	fd843703          	ld	a4,-40(s0)
    804006f8:	fd446783          	lwu	a5,-44(s0)
    804006fc:	02500513          	li	a0,37
    80400700:	ab3ff0ef          	jal	ra,804001b2 <_ZL10__syscall5llllll>
    80400704:	87aa                	mv	a5,a0
    80400706:	2781                	sext.w	a5,a5
    80400708:	853e                	mv	a0,a5
    8040070a:	70a2                	ld	ra,40(sp)
    8040070c:	7402                	ld	s0,32(sp)
    8040070e:	6145                	addi	sp,sp,48
    80400710:	8082                	ret

0000000080400712 <_Z12sys_unlinkatiPcj>:
    80400712:	1101                	addi	sp,sp,-32
    80400714:	ec06                	sd	ra,24(sp)
    80400716:	e822                	sd	s0,16(sp)
    80400718:	1000                	addi	s0,sp,32
    8040071a:	87aa                	mv	a5,a0
    8040071c:	feb43023          	sd	a1,-32(s0)
    80400720:	8732                	mv	a4,a2
    80400722:	fef42623          	sw	a5,-20(s0)
    80400726:	87ba                	mv	a5,a4
    80400728:	fef42423          	sw	a5,-24(s0)
    8040072c:	fec42783          	lw	a5,-20(s0)
    80400730:	fe043703          	ld	a4,-32(s0)
    80400734:	fe846683          	lwu	a3,-24(s0)
    80400738:	863a                	mv	a2,a4
    8040073a:	85be                	mv	a1,a5
    8040073c:	02300513          	li	a0,35
    80400740:	a03ff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400744:	87aa                	mv	a5,a0
    80400746:	2781                	sext.w	a5,a5
    80400748:	853e                	mv	a0,a5
    8040074a:	60e2                	ld	ra,24(sp)
    8040074c:	6442                	ld	s0,16(sp)
    8040074e:	6105                	addi	sp,sp,32
    80400750:	8082                	ret

0000000080400752 <_Z4linkPcS_>:
    80400752:	1101                	addi	sp,sp,-32
    80400754:	ec06                	sd	ra,24(sp)
    80400756:	e822                	sd	s0,16(sp)
    80400758:	1000                	addi	s0,sp,32
    8040075a:	fea43423          	sd	a0,-24(s0)
    8040075e:	feb43023          	sd	a1,-32(s0)
    80400762:	4701                	li	a4,0
    80400764:	fe043683          	ld	a3,-32(s0)
    80400768:	f9c00613          	li	a2,-100
    8040076c:	fe843583          	ld	a1,-24(s0)
    80400770:	f9c00513          	li	a0,-100
    80400774:	f53ff0ef          	jal	ra,804006c6 <_Z10sys_linkatiPciS_j>
    80400778:	87aa                	mv	a5,a0
    8040077a:	853e                	mv	a0,a5
    8040077c:	60e2                	ld	ra,24(sp)
    8040077e:	6442                	ld	s0,16(sp)
    80400780:	6105                	addi	sp,sp,32
    80400782:	8082                	ret

0000000080400784 <_Z6unlinkPc>:
    80400784:	1101                	addi	sp,sp,-32
    80400786:	ec06                	sd	ra,24(sp)
    80400788:	e822                	sd	s0,16(sp)
    8040078a:	1000                	addi	s0,sp,32
    8040078c:	fea43423          	sd	a0,-24(s0)
    80400790:	4601                	li	a2,0
    80400792:	fe843583          	ld	a1,-24(s0)
    80400796:	f9c00513          	li	a0,-100
    8040079a:	f79ff0ef          	jal	ra,80400712 <_Z12sys_unlinkatiPcj>
    8040079e:	87aa                	mv	a5,a0
    804007a0:	853e                	mv	a0,a5
    804007a2:	60e2                	ld	ra,24(sp)
    804007a4:	6442                	ld	s0,16(sp)
    804007a6:	6105                	addi	sp,sp,32
    804007a8:	8082                	ret

00000000804007aa <_Z5unamePv>:
    804007aa:	1101                	addi	sp,sp,-32
    804007ac:	ec06                	sd	ra,24(sp)
    804007ae:	e822                	sd	s0,16(sp)
    804007b0:	1000                	addi	s0,sp,32
    804007b2:	fea43423          	sd	a0,-24(s0)
    804007b6:	fe843783          	ld	a5,-24(s0)
    804007ba:	85be                	mv	a1,a5
    804007bc:	0a000513          	li	a0,160
    804007c0:	933ff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    804007c4:	87aa                	mv	a5,a0
    804007c6:	2781                	sext.w	a5,a5
    804007c8:	853e                	mv	a0,a5
    804007ca:	60e2                	ld	ra,24(sp)
    804007cc:	6442                	ld	s0,16(sp)
    804007ce:	6105                	addi	sp,sp,32
    804007d0:	8082                	ret

00000000804007d2 <_Z3brkPv>:
    804007d2:	1101                	addi	sp,sp,-32
    804007d4:	ec06                	sd	ra,24(sp)
    804007d6:	e822                	sd	s0,16(sp)
    804007d8:	1000                	addi	s0,sp,32
    804007da:	fea43423          	sd	a0,-24(s0)
    804007de:	fe843783          	ld	a5,-24(s0)
    804007e2:	85be                	mv	a1,a5
    804007e4:	0d600513          	li	a0,214
    804007e8:	90bff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    804007ec:	87aa                	mv	a5,a0
    804007ee:	2781                	sext.w	a5,a5
    804007f0:	853e                	mv	a0,a5
    804007f2:	60e2                	ld	ra,24(sp)
    804007f4:	6442                	ld	s0,16(sp)
    804007f6:	6105                	addi	sp,sp,32
    804007f8:	8082                	ret

00000000804007fa <_Z5chdirPKc>:
    804007fa:	1101                	addi	sp,sp,-32
    804007fc:	ec06                	sd	ra,24(sp)
    804007fe:	e822                	sd	s0,16(sp)
    80400800:	1000                	addi	s0,sp,32
    80400802:	fea43423          	sd	a0,-24(s0)
    80400806:	fe843783          	ld	a5,-24(s0)
    8040080a:	85be                	mv	a1,a5
    8040080c:	03100513          	li	a0,49
    80400810:	8e3ff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    80400814:	87aa                	mv	a5,a0
    80400816:	2781                	sext.w	a5,a5
    80400818:	853e                	mv	a0,a5
    8040081a:	60e2                	ld	ra,24(sp)
    8040081c:	6442                	ld	s0,16(sp)
    8040081e:	6105                	addi	sp,sp,32
    80400820:	8082                	ret

0000000080400822 <_Z5mkdirPKcj>:
    80400822:	1101                	addi	sp,sp,-32
    80400824:	ec06                	sd	ra,24(sp)
    80400826:	e822                	sd	s0,16(sp)
    80400828:	1000                	addi	s0,sp,32
    8040082a:	fea43423          	sd	a0,-24(s0)
    8040082e:	87ae                	mv	a5,a1
    80400830:	fef42223          	sw	a5,-28(s0)
    80400834:	fe843783          	ld	a5,-24(s0)
    80400838:	fe446703          	lwu	a4,-28(s0)
    8040083c:	86ba                	mv	a3,a4
    8040083e:	863e                	mv	a2,a5
    80400840:	f9c00593          	li	a1,-100
    80400844:	02200513          	li	a0,34
    80400848:	8fbff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    8040084c:	87aa                	mv	a5,a0
    8040084e:	2781                	sext.w	a5,a5
    80400850:	853e                	mv	a0,a5
    80400852:	60e2                	ld	ra,24(sp)
    80400854:	6442                	ld	s0,16(sp)
    80400856:	6105                	addi	sp,sp,32
    80400858:	8082                	ret

000000008040085a <_Z8getdentsiP14linux_dirent64m>:
    8040085a:	7179                	addi	sp,sp,-48
    8040085c:	f406                	sd	ra,40(sp)
    8040085e:	f022                	sd	s0,32(sp)
    80400860:	1800                	addi	s0,sp,48
    80400862:	87aa                	mv	a5,a0
    80400864:	feb43023          	sd	a1,-32(s0)
    80400868:	fcc43c23          	sd	a2,-40(s0)
    8040086c:	fef42623          	sw	a5,-20(s0)
    80400870:	fec42783          	lw	a5,-20(s0)
    80400874:	fe043703          	ld	a4,-32(s0)
    80400878:	fd843683          	ld	a3,-40(s0)
    8040087c:	863a                	mv	a2,a4
    8040087e:	85be                	mv	a1,a5
    80400880:	03d00513          	li	a0,61
    80400884:	8bfff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400888:	87aa                	mv	a5,a0
    8040088a:	2781                	sext.w	a5,a5
    8040088c:	853e                	mv	a0,a5
    8040088e:	70a2                	ld	ra,40(sp)
    80400890:	7402                	ld	s0,32(sp)
    80400892:	6145                	addi	sp,sp,48
    80400894:	8082                	ret

0000000080400896 <_Z4pipePi>:
    80400896:	1101                	addi	sp,sp,-32
    80400898:	ec06                	sd	ra,24(sp)
    8040089a:	e822                	sd	s0,16(sp)
    8040089c:	1000                	addi	s0,sp,32
    8040089e:	fea43423          	sd	a0,-24(s0)
    804008a2:	fe843783          	ld	a5,-24(s0)
    804008a6:	4601                	li	a2,0
    804008a8:	85be                	mv	a1,a5
    804008aa:	03b00513          	li	a0,59
    804008ae:	869ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    804008b2:	87aa                	mv	a5,a0
    804008b4:	2781                	sext.w	a5,a5
    804008b6:	853e                	mv	a0,a5
    804008b8:	60e2                	ld	ra,24(sp)
    804008ba:	6442                	ld	s0,16(sp)
    804008bc:	6105                	addi	sp,sp,32
    804008be:	8082                	ret

00000000804008c0 <_Z3dupi>:
    804008c0:	1101                	addi	sp,sp,-32
    804008c2:	ec06                	sd	ra,24(sp)
    804008c4:	e822                	sd	s0,16(sp)
    804008c6:	1000                	addi	s0,sp,32
    804008c8:	87aa                	mv	a5,a0
    804008ca:	fef42623          	sw	a5,-20(s0)
    804008ce:	fec42783          	lw	a5,-20(s0)
    804008d2:	85be                	mv	a1,a5
    804008d4:	455d                	li	a0,23
    804008d6:	81dff0ef          	jal	ra,804000f2 <_ZL10__syscall1ll>
    804008da:	87aa                	mv	a5,a0
    804008dc:	2781                	sext.w	a5,a5
    804008de:	853e                	mv	a0,a5
    804008e0:	60e2                	ld	ra,24(sp)
    804008e2:	6442                	ld	s0,16(sp)
    804008e4:	6105                	addi	sp,sp,32
    804008e6:	8082                	ret

00000000804008e8 <_Z4dup2ii>:
    804008e8:	1101                	addi	sp,sp,-32
    804008ea:	ec06                	sd	ra,24(sp)
    804008ec:	e822                	sd	s0,16(sp)
    804008ee:	1000                	addi	s0,sp,32
    804008f0:	87aa                	mv	a5,a0
    804008f2:	872e                	mv	a4,a1
    804008f4:	fef42623          	sw	a5,-20(s0)
    804008f8:	87ba                	mv	a5,a4
    804008fa:	fef42423          	sw	a5,-24(s0)
    804008fe:	fec42783          	lw	a5,-20(s0)
    80400902:	fe842703          	lw	a4,-24(s0)
    80400906:	4681                	li	a3,0
    80400908:	863a                	mv	a2,a4
    8040090a:	85be                	mv	a1,a5
    8040090c:	4561                	li	a0,24
    8040090e:	835ff0ef          	jal	ra,80400142 <_ZL10__syscall3llll>
    80400912:	87aa                	mv	a5,a0
    80400914:	2781                	sext.w	a5,a5
    80400916:	853e                	mv	a0,a5
    80400918:	60e2                	ld	ra,24(sp)
    8040091a:	6442                	ld	s0,16(sp)
    8040091c:	6105                	addi	sp,sp,32
    8040091e:	8082                	ret

0000000080400920 <_Z5mountPKcS0_S0_mPKv>:
    80400920:	7139                	addi	sp,sp,-64
    80400922:	fc06                	sd	ra,56(sp)
    80400924:	f822                	sd	s0,48(sp)
    80400926:	0080                	addi	s0,sp,64
    80400928:	fea43423          	sd	a0,-24(s0)
    8040092c:	feb43023          	sd	a1,-32(s0)
    80400930:	fcc43c23          	sd	a2,-40(s0)
    80400934:	fcd43823          	sd	a3,-48(s0)
    80400938:	fce43423          	sd	a4,-56(s0)
    8040093c:	fe843583          	ld	a1,-24(s0)
    80400940:	fe043603          	ld	a2,-32(s0)
    80400944:	fd843683          	ld	a3,-40(s0)
    80400948:	fd043703          	ld	a4,-48(s0)
    8040094c:	fc843783          	ld	a5,-56(s0)
    80400950:	02800513          	li	a0,40
    80400954:	85fff0ef          	jal	ra,804001b2 <_ZL10__syscall5llllll>
    80400958:	87aa                	mv	a5,a0
    8040095a:	2781                	sext.w	a5,a5
    8040095c:	853e                	mv	a0,a5
    8040095e:	70e2                	ld	ra,56(sp)
    80400960:	7442                	ld	s0,48(sp)
    80400962:	6121                	addi	sp,sp,64
    80400964:	8082                	ret

0000000080400966 <_Z6umountPKc>:
    80400966:	1101                	addi	sp,sp,-32
    80400968:	ec06                	sd	ra,24(sp)
    8040096a:	e822                	sd	s0,16(sp)
    8040096c:	1000                	addi	s0,sp,32
    8040096e:	fea43423          	sd	a0,-24(s0)
    80400972:	fe843783          	ld	a5,-24(s0)
    80400976:	4601                	li	a2,0
    80400978:	85be                	mv	a1,a5
    8040097a:	02700513          	li	a0,39
    8040097e:	f98ff0ef          	jal	ra,80400116 <_ZL10__syscall2lll>
    80400982:	87aa                	mv	a5,a0
    80400984:	2781                	sext.w	a5,a5
    80400986:	853e                	mv	a0,a5
    80400988:	60e2                	ld	ra,24(sp)
    8040098a:	6442                	ld	s0,16(sp)
    8040098c:	6105                	addi	sp,sp,32
    8040098e:	8082                	ret

Disassembly of section .rodata:

0000000080400990 <_ZL7nuclear>:
    80400990:	7566                	ld	a0,120(sp)
    80400992:	6e6f6973          	csrrsi	s2,0x6e6,30
	...

Disassembly of section .interp:

0000000080400997 <.interp>:
    80400997:	62696c2f          	.4byte	0x62696c2f
    8040099b:	2d646c2f          	.4byte	0x2d646c2f
    8040099f:	696c                	ld	a1,208(a0)
    804009a1:	756e                	ld	a0,248(sp)
    804009a3:	2d78                	fld	fa4,216(a0)
    804009a5:	6972                	ld	s2,280(sp)
    804009a7:	36766373          	csrrsi	t1,0x367,12
    804009ab:	2d34                	fld	fa3,88(a0)
    804009ad:	706c                	ld	a1,224(s0)
    804009af:	3436                	fld	fs0,360(sp)
    804009b1:	2e64                	fld	fs1,216(a2)
    804009b3:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.gnu.build-id:

00000000804009b8 <.note.gnu.build-id>:
    804009b8:	0004                	.2byte	0x4
    804009ba:	0000                	unimp
    804009bc:	0014                	.2byte	0x14
    804009be:	0000                	unimp
    804009c0:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>
    804009c4:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
    804009c8:	9f6d                	.2byte	0x9f6d
    804009ca:	d038                	sw	a4,96(s0)
    804009cc:	2861                	addiw	a6,a6,24
    804009ce:	7c26                	ld	s8,104(sp)
    804009d0:	69ed                	lui	s3,0x1b
    804009d2:	43707d87          	.4byte	0x43707d87
    804009d6:	09d1                	addi	s3,s3,20 # 1b014 <BASE_ADDRESS-0x803e4fec>
    804009d8:	6c94                	ld	a3,24(s1)
    804009da:	14c8                	addi	a0,sp,612

Disassembly of section .dynsym:

00000000804009e0 <.dynsym>:
	...
    804009fc:	00010003          	lb	zero,0(sp)
    80400a00:	0000                	unimp
    80400a02:	8040                	.2byte	0x8040
	...

Disassembly of section .dynstr:

0000000080400a10 <.dynstr>:
	...

Disassembly of section .gnu.hash:

0000000080400a18 <.gnu.hash>:
    80400a18:	0001                	nop
    80400a1a:	0000                	unimp
    80400a1c:	0001                	nop
    80400a1e:	0000                	unimp
    80400a20:	0001                	nop
	...

Disassembly of section .data:

0000000080400a34 <a>:
    80400a34:	000003e7          	jalr	t2,zero # 0 <BASE_ADDRESS-0x80400000>

0000000080400a38 <b>:
    80400a38:	00000003          	lb	zero,0(zero) # 0 <BASE_ADDRESS-0x80400000>

Disassembly of section .dynamic:

0000000080400a40 <.dynamic>:
    80400a40:	fef5                	bnez	a3,80400a3c <b+0x4>
    80400a42:	6fff                	.2byte	0x6fff
    80400a44:	0000                	unimp
    80400a46:	0000                	unimp
    80400a48:	0a18                	addi	a4,sp,272
    80400a4a:	8040                	.2byte	0x8040
    80400a4c:	0000                	unimp
    80400a4e:	0000                	unimp
    80400a50:	0005                	c.nop	1
    80400a52:	0000                	unimp
    80400a54:	0000                	unimp
    80400a56:	0000                	unimp
    80400a58:	0a10                	addi	a2,sp,272
    80400a5a:	8040                	.2byte	0x8040
    80400a5c:	0000                	unimp
    80400a5e:	0000                	unimp
    80400a60:	0006                	c.slli	zero,0x1
    80400a62:	0000                	unimp
    80400a64:	0000                	unimp
    80400a66:	0000                	unimp
    80400a68:	09e0                	addi	s0,sp,220
    80400a6a:	8040                	.2byte	0x8040
    80400a6c:	0000                	unimp
    80400a6e:	0000                	unimp
    80400a70:	000a                	c.slli	zero,0x2
    80400a72:	0000                	unimp
    80400a74:	0000                	unimp
    80400a76:	0000                	unimp
    80400a78:	0001                	nop
    80400a7a:	0000                	unimp
    80400a7c:	0000                	unimp
    80400a7e:	0000                	unimp
    80400a80:	0000000b          	.4byte	0xb
    80400a84:	0000                	unimp
    80400a86:	0000                	unimp
    80400a88:	0018                	.2byte	0x18
    80400a8a:	0000                	unimp
    80400a8c:	0000                	unimp
    80400a8e:	0000                	unimp
    80400a90:	0015                	c.nop	5
	...
    80400a9e:	0000                	unimp
    80400aa0:	00000007          	.4byte	0x7
	...
    80400ab0:	0008                	.2byte	0x8
	...
    80400abe:	0000                	unimp
    80400ac0:	0009                	c.nop	2
    80400ac2:	0000                	unimp
    80400ac4:	0000                	unimp
    80400ac6:	0000                	unimp
    80400ac8:	0018                	.2byte	0x18
    80400aca:	0000                	unimp
    80400acc:	0000                	unimp
    80400ace:	0000                	unimp
    80400ad0:	001e                	c.slli	zero,0x7
    80400ad2:	0000                	unimp
    80400ad4:	0000                	unimp
    80400ad6:	0000                	unimp
    80400ad8:	0008                	.2byte	0x8
    80400ada:	0000                	unimp
    80400adc:	0000                	unimp
    80400ade:	0000                	unimp
    80400ae0:	6ffffffb          	.4byte	0x6ffffffb
    80400ae4:	0000                	unimp
    80400ae6:	0000                	unimp
    80400ae8:	0001                	nop
    80400aea:	0800                	addi	s0,sp,16
	...

Disassembly of section .got:

0000000080400b50 <.got>:
    80400b50:	0a40                	addi	s0,sp,276
    80400b52:	8040                	.2byte	0x8040
    80400b54:	0000                	unimp
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
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <end_bss+0xffffffff7fbe04a3>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

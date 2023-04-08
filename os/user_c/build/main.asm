
build/main:     file format elf64-littleriscv


Disassembly of section .text:

0000000080400000 <_Z5writev>:
    80400000:	1141                	addi	sp,sp,-16
    80400002:	e422                	sd	s0,8(sp)
    80400004:	0800                	addi	s0,sp,16
    80400006:	4781                	li	a5,0
    80400008:	853e                	mv	a0,a5
    8040000a:	6422                	ld	s0,8(sp)
    8040000c:	0141                	addi	sp,sp,16
    8040000e:	8082                	ret

0000000080400010 <_Z4plusii>:
    80400010:	1101                	addi	sp,sp,-32
    80400012:	ec22                	sd	s0,24(sp)
    80400014:	1000                	addi	s0,sp,32
    80400016:	87aa                	mv	a5,a0
    80400018:	872e                	mv	a4,a1
    8040001a:	fef42623          	sw	a5,-20(s0)
    8040001e:	87ba                	mv	a5,a4
    80400020:	fef42423          	sw	a5,-24(s0)
    80400024:	fec42783          	lw	a5,-20(s0)
    80400028:	873e                	mv	a4,a5
    8040002a:	fe842783          	lw	a5,-24(s0)
    8040002e:	9fb9                	addw	a5,a5,a4
    80400030:	2781                	sext.w	a5,a5
    80400032:	853e                	mv	a0,a5
    80400034:	6462                	ld	s0,24(sp)
    80400036:	6105                	addi	sp,sp,32
    80400038:	8082                	ret

000000008040003a <main>:
    8040003a:	1101                	addi	sp,sp,-32
    8040003c:	ec06                	sd	ra,24(sp)
    8040003e:	e822                	sd	s0,16(sp)
    80400040:	1000                	addi	s0,sp,32
    80400042:	478d                	li	a5,3
    80400044:	fef42623          	sw	a5,-20(s0)
    80400048:	00000797          	auipc	a5,0x0
    8040004c:	09878793          	addi	a5,a5,152 # 804000e0 <a>
    80400050:	439c                	lw	a5,0(a5)
    80400052:	2785                	addiw	a5,a5,1
    80400054:	0007871b          	sext.w	a4,a5
    80400058:	00000797          	auipc	a5,0x0
    8040005c:	08878793          	addi	a5,a5,136 # 804000e0 <a>
    80400060:	c398                	sw	a4,0(a5)
    80400062:	00000797          	auipc	a5,0x0
    80400066:	07e78793          	addi	a5,a5,126 # 804000e0 <a>
    8040006a:	4398                	lw	a4,0(a5)
    8040006c:	00000797          	auipc	a5,0x0
    80400070:	07478793          	addi	a5,a5,116 # 804000e0 <a>
    80400074:	439c                	lw	a5,0(a5)
    80400076:	02f707bb          	mulw	a5,a4,a5
    8040007a:	0007871b          	sext.w	a4,a5
    8040007e:	00000797          	auipc	a5,0x0
    80400082:	06678793          	addi	a5,a5,102 # 804000e4 <b>
    80400086:	439c                	lw	a5,0(a5)
    80400088:	85be                	mv	a1,a5
    8040008a:	853a                	mv	a0,a4
    8040008c:	f85ff0ef          	jal	ra,80400010 <_Z4plusii>
    80400090:	87aa                	mv	a5,a0
    80400092:	873e                	mv	a4,a5
    80400094:	00000797          	auipc	a5,0x0
    80400098:	04c78793          	addi	a5,a5,76 # 804000e0 <a>
    8040009c:	c398                	sw	a4,0(a5)
    8040009e:	00000797          	auipc	a5,0x0
    804000a2:	04278793          	addi	a5,a5,66 # 804000e0 <a>
    804000a6:	4398                	lw	a4,0(a5)
    804000a8:	00000797          	auipc	a5,0x0
    804000ac:	03878793          	addi	a5,a5,56 # 804000e0 <a>
    804000b0:	439c                	lw	a5,0(a5)
    804000b2:	02f707bb          	mulw	a5,a4,a5
    804000b6:	0007871b          	sext.w	a4,a5
    804000ba:	00000797          	auipc	a5,0x0
    804000be:	02a78793          	addi	a5,a5,42 # 804000e4 <b>
    804000c2:	c398                	sw	a4,0(a5)
    804000c4:	00000797          	auipc	a5,0x0
    804000c8:	02078793          	addi	a5,a5,32 # 804000e4 <b>
    804000cc:	439c                	lw	a5,0(a5)
    804000ce:	853e                	mv	a0,a5
    804000d0:	60e2                	ld	ra,24(sp)
    804000d2:	6442                	ld	s0,16(sp)
    804000d4:	6105                	addi	sp,sp,32
    804000d6:	8082                	ret

Disassembly of section .rodata:

00000000804000d8 <_ZL7nuclear>:
    804000d8:	7566                	ld	a0,120(sp)
    804000da:	6e6f6973          	csrrsi	s2,0x6e6,30
	...

Disassembly of section .data:

00000000804000e0 <a>:
    804000e0:	000003e7          	jalr	t2,zero # 0 <_Z5writev-0x80400000>

00000000804000e4 <b>:
    804000e4:	00000003          	lb	zero,0(zero) # 0 <_Z5writev-0x80400000>

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	6255                	lui	tp,0x15
   8:	6e75                	lui	t3,0x1d
   a:	7574                	ld	a3,232(a0)
   c:	3120                	fld	fs0,96(a0)
   e:	2e31                	addiw	t3,t3,12 # 1d00c <_Z5writev-0x803e2ff4>
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
   0:	3241                	addiw	tp,tp,-16 # 14ff0 <_Z5writev-0x803eb010>
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <_Z5writev-0x803fffec>
   c:	0028                	addi	a0,sp,8
   e:	0000                	unimp
  10:	7205                	lui	tp,0xfffe1
  12:	3676                	fld	fa2,376(sp)
  14:	6934                	ld	a3,80(a0)
  16:	7032                	.2byte	0x7032
  18:	5f30                	lw	a2,120(a4)
  1a:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <end_bss+0xffffffff7fbe0f13>
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  2e:	30703263          	.4byte	0x30703263
	...

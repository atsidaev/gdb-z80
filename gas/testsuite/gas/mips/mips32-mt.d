#objdump: -dr --prefix-addresses --show-raw-insn -M cp0-names=mips32
#name: MIPS MT ASE for MIPS32
#as: -mmt
#stderr: mips32-mt.l

# Check MIPS MT ASE for MIPS32 Instruction Assembly

.*: +file format .*mips.*

Disassembly of section .text:
0+0000 <[^>]*> 41600bc1 	dmt
0+0004 <[^>]*> 417f0bc1 	dmt	ra
0+0008 <[^>]*> 41600001 	dvpe
0+000c <[^>]*> 41610001 	dvpe	at
0+0010 <[^>]*> 41600be1 	emt
0+0014 <[^>]*> 41620be1 	emt	v0
0+0018 <[^>]*> 41600021 	evpe
0+001c <[^>]*> 41630021 	evpe	v1
0+0020 <[^>]*> 7ca62008 	fork	a0,a1,a2
0+0024 <[^>]*> 7ca00009 	yield	a1
0+0028 <[^>]*> 7ce03009 	yield	a2,a3
0+002c <[^>]*> 41083800 	mftc0	a3,c0_badvaddr
0+0030 <[^>]*> 41004000 	mftc0	t0,c0_index
0+0034 <[^>]*> 41004001 	mftc0	t0,\$0,1
0+0038 <[^>]*> 41004002 	mftc0	t0,\$0,2
0+003c <[^>]*> 41004003 	mftc0	t0,\$0,3
0+0040 <[^>]*> 41004004 	mftc0	t0,\$0,4
0+0044 <[^>]*> 41004005 	mftc0	t0,\$0,5
0+0048 <[^>]*> 41004006 	mftc0	t0,\$0,6
0+004c <[^>]*> 41004007 	mftc0	t0,\$0,7
0+0050 <[^>]*> 41014000 	mftc0	t0,c0_random
0+0054 <[^>]*> 41014001 	mftc0	t0,\$1,1
0+0058 <[^>]*> 41014002 	mftc0	t0,\$1,2
0+005c <[^>]*> 41014003 	mftc0	t0,\$1,3
0+0060 <[^>]*> 41014004 	mftc0	t0,\$1,4
0+0064 <[^>]*> 41014005 	mftc0	t0,\$1,5
0+0068 <[^>]*> 41014006 	mftc0	t0,\$1,6
0+006c <[^>]*> 41014007 	mftc0	t0,\$1,7
0+0070 <[^>]*> 41024000 	mftc0	t0,c0_entrylo0
0+0074 <[^>]*> 41024001 	mftc0	t0,\$2,1
0+0078 <[^>]*> 41024002 	mftc0	t0,\$2,2
0+007c <[^>]*> 41024003 	mftc0	t0,\$2,3
0+0080 <[^>]*> 41024004 	mftc0	t0,\$2,4
0+0084 <[^>]*> 41024005 	mftc0	t0,\$2,5
0+0088 <[^>]*> 41024006 	mftc0	t0,\$2,6
0+008c <[^>]*> 41024007 	mftc0	t0,\$2,7
0+0090 <[^>]*> 41034000 	mftc0	t0,c0_entrylo1
0+0094 <[^>]*> 41034001 	mftc0	t0,\$3,1
0+0098 <[^>]*> 41034002 	mftc0	t0,\$3,2
0+009c <[^>]*> 41034003 	mftc0	t0,\$3,3
0+00a0 <[^>]*> 41034004 	mftc0	t0,\$3,4
0+00a4 <[^>]*> 41034005 	mftc0	t0,\$3,5
0+00a8 <[^>]*> 41034006 	mftc0	t0,\$3,6
0+00ac <[^>]*> 41034007 	mftc0	t0,\$3,7
0+00b0 <[^>]*> 41044000 	mftc0	t0,c0_context
0+00b4 <[^>]*> 41044001 	mftc0	t0,\$4,1
0+00b8 <[^>]*> 41044002 	mftc0	t0,\$4,2
0+00bc <[^>]*> 41044003 	mftc0	t0,\$4,3
0+00c0 <[^>]*> 41044004 	mftc0	t0,\$4,4
0+00c4 <[^>]*> 41044005 	mftc0	t0,\$4,5
0+00c8 <[^>]*> 41044006 	mftc0	t0,\$4,6
0+00cc <[^>]*> 41044007 	mftc0	t0,\$4,7
0+00d0 <[^>]*> 41054000 	mftc0	t0,c0_pagemask
0+00d4 <[^>]*> 41054001 	mftc0	t0,\$5,1
0+00d8 <[^>]*> 41054002 	mftc0	t0,\$5,2
0+00dc <[^>]*> 41054003 	mftc0	t0,\$5,3
0+00e0 <[^>]*> 41054004 	mftc0	t0,\$5,4
0+00e4 <[^>]*> 41054005 	mftc0	t0,\$5,5
0+00e8 <[^>]*> 41054006 	mftc0	t0,\$5,6
0+00ec <[^>]*> 41054007 	mftc0	t0,\$5,7
0+00f0 <[^>]*> 41064000 	mftc0	t0,c0_wired
0+00f4 <[^>]*> 41064001 	mftc0	t0,\$6,1
0+00f8 <[^>]*> 41064002 	mftc0	t0,\$6,2
0+00fc <[^>]*> 41064003 	mftc0	t0,\$6,3
0+0100 <[^>]*> 41064004 	mftc0	t0,\$6,4
0+0104 <[^>]*> 41064005 	mftc0	t0,\$6,5
0+0108 <[^>]*> 41064006 	mftc0	t0,\$6,6
0+010c <[^>]*> 41064007 	mftc0	t0,\$6,7
0+0110 <[^>]*> 41074000 	mftc0	t0,\$7
0+0114 <[^>]*> 41074001 	mftc0	t0,\$7,1
0+0118 <[^>]*> 41074002 	mftc0	t0,\$7,2
0+011c <[^>]*> 41074003 	mftc0	t0,\$7,3
0+0120 <[^>]*> 41074004 	mftc0	t0,\$7,4
0+0124 <[^>]*> 41074005 	mftc0	t0,\$7,5
0+0128 <[^>]*> 41074006 	mftc0	t0,\$7,6
0+012c <[^>]*> 41074007 	mftc0	t0,\$7,7
0+0130 <[^>]*> 41084000 	mftc0	t0,c0_badvaddr
0+0134 <[^>]*> 41084001 	mftc0	t0,\$8,1
0+0138 <[^>]*> 41084002 	mftc0	t0,\$8,2
0+013c <[^>]*> 41084003 	mftc0	t0,\$8,3
0+0140 <[^>]*> 41084004 	mftc0	t0,\$8,4
0+0144 <[^>]*> 41084005 	mftc0	t0,\$8,5
0+0148 <[^>]*> 41084006 	mftc0	t0,\$8,6
0+014c <[^>]*> 41084007 	mftc0	t0,\$8,7
0+0150 <[^>]*> 41094000 	mftc0	t0,c0_count
0+0154 <[^>]*> 41094001 	mftc0	t0,\$9,1
0+0158 <[^>]*> 41094002 	mftc0	t0,\$9,2
0+015c <[^>]*> 41094003 	mftc0	t0,\$9,3
0+0160 <[^>]*> 41094004 	mftc0	t0,\$9,4
0+0164 <[^>]*> 41094005 	mftc0	t0,\$9,5
0+0168 <[^>]*> 41094006 	mftc0	t0,\$9,6
0+016c <[^>]*> 41094007 	mftc0	t0,\$9,7
0+0170 <[^>]*> 410a4000 	mftc0	t0,c0_entryhi
0+0174 <[^>]*> 410a4001 	mftc0	t0,\$10,1
0+0178 <[^>]*> 410a4002 	mftc0	t0,\$10,2
0+017c <[^>]*> 410a4003 	mftc0	t0,\$10,3
0+0180 <[^>]*> 410a4004 	mftc0	t0,\$10,4
0+0184 <[^>]*> 410a4005 	mftc0	t0,\$10,5
0+0188 <[^>]*> 410a4006 	mftc0	t0,\$10,6
0+018c <[^>]*> 410a4007 	mftc0	t0,\$10,7
0+0190 <[^>]*> 410b4000 	mftc0	t0,c0_compare
0+0194 <[^>]*> 410b4001 	mftc0	t0,\$11,1
0+0198 <[^>]*> 410b4002 	mftc0	t0,\$11,2
0+019c <[^>]*> 410b4003 	mftc0	t0,\$11,3
0+01a0 <[^>]*> 410b4004 	mftc0	t0,\$11,4
0+01a4 <[^>]*> 410b4005 	mftc0	t0,\$11,5
0+01a8 <[^>]*> 410b4006 	mftc0	t0,\$11,6
0+01ac <[^>]*> 410b4007 	mftc0	t0,\$11,7
0+01b0 <[^>]*> 410c4000 	mftc0	t0,c0_status
0+01b4 <[^>]*> 410c4001 	mftc0	t0,\$12,1
0+01b8 <[^>]*> 410c4002 	mftc0	t0,\$12,2
0+01bc <[^>]*> 410c4003 	mftc0	t0,\$12,3
0+01c0 <[^>]*> 410c4004 	mftc0	t0,\$12,4
0+01c4 <[^>]*> 410c4005 	mftc0	t0,\$12,5
0+01c8 <[^>]*> 410c4006 	mftc0	t0,\$12,6
0+01cc <[^>]*> 410c4007 	mftc0	t0,\$12,7
0+01d0 <[^>]*> 410d4000 	mftc0	t0,c0_cause
0+01d4 <[^>]*> 410d4001 	mftc0	t0,\$13,1
0+01d8 <[^>]*> 410d4002 	mftc0	t0,\$13,2
0+01dc <[^>]*> 410d4003 	mftc0	t0,\$13,3
0+01e0 <[^>]*> 410d4004 	mftc0	t0,\$13,4
0+01e4 <[^>]*> 410d4005 	mftc0	t0,\$13,5
0+01e8 <[^>]*> 410d4006 	mftc0	t0,\$13,6
0+01ec <[^>]*> 410d4007 	mftc0	t0,\$13,7
0+01f0 <[^>]*> 410e4000 	mftc0	t0,c0_epc
0+01f4 <[^>]*> 410e4001 	mftc0	t0,\$14,1
0+01f8 <[^>]*> 410e4002 	mftc0	t0,\$14,2
0+01fc <[^>]*> 410e4003 	mftc0	t0,\$14,3
0+0200 <[^>]*> 410e4004 	mftc0	t0,\$14,4
0+0204 <[^>]*> 410e4005 	mftc0	t0,\$14,5
0+0208 <[^>]*> 410e4006 	mftc0	t0,\$14,6
0+020c <[^>]*> 410e4007 	mftc0	t0,\$14,7
0+0210 <[^>]*> 410f4000 	mftc0	t0,c0_prid
0+0214 <[^>]*> 410f4001 	mftc0	t0,\$15,1
0+0218 <[^>]*> 410f4002 	mftc0	t0,\$15,2
0+021c <[^>]*> 410f4003 	mftc0	t0,\$15,3
0+0220 <[^>]*> 410f4004 	mftc0	t0,\$15,4
0+0224 <[^>]*> 410f4005 	mftc0	t0,\$15,5
0+0228 <[^>]*> 410f4006 	mftc0	t0,\$15,6
0+022c <[^>]*> 410f4007 	mftc0	t0,\$15,7
0+0230 <[^>]*> 41104000 	mftc0	t0,c0_config
0+0234 <[^>]*> 41104001 	mftc0	t0,c0_config1
0+0238 <[^>]*> 41104002 	mftc0	t0,c0_config2
0+023c <[^>]*> 41104003 	mftc0	t0,c0_config3
0+0240 <[^>]*> 41104004 	mftc0	t0,\$16,4
0+0244 <[^>]*> 41104005 	mftc0	t0,\$16,5
0+0248 <[^>]*> 41104006 	mftc0	t0,\$16,6
0+024c <[^>]*> 41104007 	mftc0	t0,\$16,7
0+0250 <[^>]*> 41114000 	mftc0	t0,c0_lladdr
0+0254 <[^>]*> 41114001 	mftc0	t0,\$17,1
0+0258 <[^>]*> 41114002 	mftc0	t0,\$17,2
0+025c <[^>]*> 41114003 	mftc0	t0,\$17,3
0+0260 <[^>]*> 41114004 	mftc0	t0,\$17,4
0+0264 <[^>]*> 41114005 	mftc0	t0,\$17,5
0+0268 <[^>]*> 41114006 	mftc0	t0,\$17,6
0+026c <[^>]*> 41114007 	mftc0	t0,\$17,7
0+0270 <[^>]*> 41124000 	mftc0	t0,c0_watchlo
0+0274 <[^>]*> 41124001 	mftc0	t0,c0_watchlo,1
0+0278 <[^>]*> 41124002 	mftc0	t0,c0_watchlo,2
0+027c <[^>]*> 41124003 	mftc0	t0,c0_watchlo,3
0+0280 <[^>]*> 41124004 	mftc0	t0,c0_watchlo,4
0+0284 <[^>]*> 41124005 	mftc0	t0,c0_watchlo,5
0+0288 <[^>]*> 41124006 	mftc0	t0,c0_watchlo,6
0+028c <[^>]*> 41124007 	mftc0	t0,c0_watchlo,7
0+0290 <[^>]*> 41134000 	mftc0	t0,c0_watchhi
0+0294 <[^>]*> 41134001 	mftc0	t0,c0_watchhi,1
0+0298 <[^>]*> 41134002 	mftc0	t0,c0_watchhi,2
0+029c <[^>]*> 41134003 	mftc0	t0,c0_watchhi,3
0+02a0 <[^>]*> 41134004 	mftc0	t0,c0_watchhi,4
0+02a4 <[^>]*> 41134005 	mftc0	t0,c0_watchhi,5
0+02a8 <[^>]*> 41134006 	mftc0	t0,c0_watchhi,6
0+02ac <[^>]*> 41134007 	mftc0	t0,c0_watchhi,7
0+02b0 <[^>]*> 41144000 	mftc0	t0,c0_xcontext
0+02b4 <[^>]*> 41144001 	mftc0	t0,\$20,1
0+02b8 <[^>]*> 41144002 	mftc0	t0,\$20,2
0+02bc <[^>]*> 41144003 	mftc0	t0,\$20,3
0+02c0 <[^>]*> 41144004 	mftc0	t0,\$20,4
0+02c4 <[^>]*> 41144005 	mftc0	t0,\$20,5
0+02c8 <[^>]*> 41144006 	mftc0	t0,\$20,6
0+02cc <[^>]*> 41144007 	mftc0	t0,\$20,7
0+02d0 <[^>]*> 41154000 	mftc0	t0,\$21
0+02d4 <[^>]*> 41154001 	mftc0	t0,\$21,1
0+02d8 <[^>]*> 41154002 	mftc0	t0,\$21,2
0+02dc <[^>]*> 41154003 	mftc0	t0,\$21,3
0+02e0 <[^>]*> 41154004 	mftc0	t0,\$21,4
0+02e4 <[^>]*> 41154005 	mftc0	t0,\$21,5
0+02e8 <[^>]*> 41154006 	mftc0	t0,\$21,6
0+02ec <[^>]*> 41154007 	mftc0	t0,\$21,7
0+02f0 <[^>]*> 41164000 	mftc0	t0,\$22
0+02f4 <[^>]*> 41164001 	mftc0	t0,\$22,1
0+02f8 <[^>]*> 41164002 	mftc0	t0,\$22,2
0+02fc <[^>]*> 41164003 	mftc0	t0,\$22,3
0+0300 <[^>]*> 41164004 	mftc0	t0,\$22,4
0+0304 <[^>]*> 41164005 	mftc0	t0,\$22,5
0+0308 <[^>]*> 41164006 	mftc0	t0,\$22,6
0+030c <[^>]*> 41164007 	mftc0	t0,\$22,7
0+0310 <[^>]*> 41174000 	mftc0	t0,c0_debug
0+0314 <[^>]*> 41174001 	mftc0	t0,\$23,1
0+0318 <[^>]*> 41174002 	mftc0	t0,\$23,2
0+031c <[^>]*> 41174003 	mftc0	t0,\$23,3
0+0320 <[^>]*> 41174004 	mftc0	t0,\$23,4
0+0324 <[^>]*> 41174005 	mftc0	t0,\$23,5
0+0328 <[^>]*> 41174006 	mftc0	t0,\$23,6
0+032c <[^>]*> 41174007 	mftc0	t0,\$23,7
0+0330 <[^>]*> 41184000 	mftc0	t0,c0_depc
0+0334 <[^>]*> 41184001 	mftc0	t0,\$24,1
0+0338 <[^>]*> 41184002 	mftc0	t0,\$24,2
0+033c <[^>]*> 41184003 	mftc0	t0,\$24,3
0+0340 <[^>]*> 41184004 	mftc0	t0,\$24,4
0+0344 <[^>]*> 41184005 	mftc0	t0,\$24,5
0+0348 <[^>]*> 41184006 	mftc0	t0,\$24,6
0+034c <[^>]*> 41184007 	mftc0	t0,\$24,7
0+0350 <[^>]*> 41194000 	mftc0	t0,c0_perfcnt
0+0354 <[^>]*> 41194001 	mftc0	t0,c0_perfcnt,1
0+0358 <[^>]*> 41194002 	mftc0	t0,c0_perfcnt,2
0+035c <[^>]*> 41194003 	mftc0	t0,c0_perfcnt,3
0+0360 <[^>]*> 41194004 	mftc0	t0,c0_perfcnt,4
0+0364 <[^>]*> 41194005 	mftc0	t0,c0_perfcnt,5
0+0368 <[^>]*> 41194006 	mftc0	t0,c0_perfcnt,6
0+036c <[^>]*> 41194007 	mftc0	t0,c0_perfcnt,7
0+0370 <[^>]*> 411a4000 	mftc0	t0,c0_errctl
0+0374 <[^>]*> 411a4001 	mftc0	t0,\$26,1
0+0378 <[^>]*> 411a4002 	mftc0	t0,\$26,2
0+037c <[^>]*> 411a4003 	mftc0	t0,\$26,3
0+0380 <[^>]*> 411a4004 	mftc0	t0,\$26,4
0+0384 <[^>]*> 411a4005 	mftc0	t0,\$26,5
0+0388 <[^>]*> 411a4006 	mftc0	t0,\$26,6
0+038c <[^>]*> 411a4007 	mftc0	t0,\$26,7
0+0390 <[^>]*> 411b4000 	mftc0	t0,c0_cacheerr
0+0394 <[^>]*> 411b4001 	mftc0	t0,c0_cacheerr,1
0+0398 <[^>]*> 411b4002 	mftc0	t0,c0_cacheerr,2
0+039c <[^>]*> 411b4003 	mftc0	t0,c0_cacheerr,3
0+03a0 <[^>]*> 411b4004 	mftc0	t0,\$27,4
0+03a4 <[^>]*> 411b4005 	mftc0	t0,\$27,5
0+03a8 <[^>]*> 411b4006 	mftc0	t0,\$27,6
0+03ac <[^>]*> 411b4007 	mftc0	t0,\$27,7
0+03b0 <[^>]*> 411c4000 	mftc0	t0,c0_taglo
0+03b4 <[^>]*> 411c4001 	mftc0	t0,c0_datalo
0+03b8 <[^>]*> 411c4002 	mftc0	t0,\$28,2
0+03bc <[^>]*> 411c4003 	mftc0	t0,\$28,3
0+03c0 <[^>]*> 411c4004 	mftc0	t0,\$28,4
0+03c4 <[^>]*> 411c4005 	mftc0	t0,\$28,5
0+03c8 <[^>]*> 411c4006 	mftc0	t0,\$28,6
0+03cc <[^>]*> 411c4007 	mftc0	t0,\$28,7
0+03d0 <[^>]*> 411d4000 	mftc0	t0,c0_taghi
0+03d4 <[^>]*> 411d4001 	mftc0	t0,c0_datahi
0+03d8 <[^>]*> 411d4002 	mftc0	t0,\$29,2
0+03dc <[^>]*> 411d4003 	mftc0	t0,\$29,3
0+03e0 <[^>]*> 411d4004 	mftc0	t0,\$29,4
0+03e4 <[^>]*> 411d4005 	mftc0	t0,\$29,5
0+03e8 <[^>]*> 411d4006 	mftc0	t0,\$29,6
0+03ec <[^>]*> 411d4007 	mftc0	t0,\$29,7
0+03f0 <[^>]*> 411e4000 	mftc0	t0,c0_errorepc
0+03f4 <[^>]*> 411e4001 	mftc0	t0,\$30,1
0+03f8 <[^>]*> 411e4002 	mftc0	t0,\$30,2
0+03fc <[^>]*> 411e4003 	mftc0	t0,\$30,3
0+0400 <[^>]*> 411e4004 	mftc0	t0,\$30,4
0+0404 <[^>]*> 411e4005 	mftc0	t0,\$30,5
0+0408 <[^>]*> 411e4006 	mftc0	t0,\$30,6
0+040c <[^>]*> 411e4007 	mftc0	t0,\$30,7
0+0410 <[^>]*> 411f4000 	mftc0	t0,c0_desave
0+0414 <[^>]*> 411f4001 	mftc0	t0,\$31,1
0+0418 <[^>]*> 411f4002 	mftc0	t0,\$31,2
0+041c <[^>]*> 411f4003 	mftc0	t0,\$31,3
0+0420 <[^>]*> 411f4004 	mftc0	t0,\$31,4
0+0424 <[^>]*> 411f4005 	mftc0	t0,\$31,5
0+0428 <[^>]*> 411f4006 	mftc0	t0,\$31,6
0+042c <[^>]*> 411f4007 	mftc0	t0,\$31,7
0+0430 <[^>]*> 410a4820 	mftgpr	t1,t2
0+0434 <[^>]*> 41005021 	mftlo	t2
0+0438 <[^>]*> 41005821 	mftlo	t3
0+043c <[^>]*> 41016021 	mfthi	t4
0+0440 <[^>]*> 41056821 	mfthi	t5,\$ac1
0+0444 <[^>]*> 41027021 	mftacx	t6
0+0448 <[^>]*> 410a7821 	mftacx	t7,\$ac2
0+044c <[^>]*> 41108021 	mftdsp	s0
0+0450 <[^>]*> 41128822 	mftc1	s1,\$f18
0+0454 <[^>]*> 41139022 	mftc1	s2,\$f19
0+0458 <[^>]*> 41149832 	mfthc1	s3,\$f20
0+045c <[^>]*> 4116a032 	mfthc1	s4,\$f22
0+0460 <[^>]*> 4116a823 	cftc1	s5,\$22
0+0464 <[^>]*> 4117b023 	cftc1	s6,\$23
0+0468 <[^>]*> 4118b824 	mftc2	s7,\$24
0+046c <[^>]*> 4119c034 	mfthc2	t8,\$25
0+0470 <[^>]*> 411ac825 	cftc2	t9,\$26
0+0474 <[^>]*> 419ad800 	mttc0	k0,c0_cacheerr
0+0478 <[^>]*> 419b0000 	mttc0	k1,c0_index
0+047c <[^>]*> 419b0001 	mttc0	k1,\$0,1
0+0480 <[^>]*> 419b0002 	mttc0	k1,\$0,2
0+0484 <[^>]*> 419b0003 	mttc0	k1,\$0,3
0+0488 <[^>]*> 419b0004 	mttc0	k1,\$0,4
0+048c <[^>]*> 419b0005 	mttc0	k1,\$0,5
0+0490 <[^>]*> 419b0006 	mttc0	k1,\$0,6
0+0494 <[^>]*> 419b0007 	mttc0	k1,\$0,7
0+0498 <[^>]*> 419b0800 	mttc0	k1,c0_random
0+049c <[^>]*> 419b0801 	mttc0	k1,\$1,1
0+04a0 <[^>]*> 419b0802 	mttc0	k1,\$1,2
0+04a4 <[^>]*> 419b0803 	mttc0	k1,\$1,3
0+04a8 <[^>]*> 419b0804 	mttc0	k1,\$1,4
0+04ac <[^>]*> 419b0805 	mttc0	k1,\$1,5
0+04b0 <[^>]*> 419b0806 	mttc0	k1,\$1,6
0+04b4 <[^>]*> 419b0807 	mttc0	k1,\$1,7
0+04b8 <[^>]*> 419b1000 	mttc0	k1,c0_entrylo0
0+04bc <[^>]*> 419b1001 	mttc0	k1,\$2,1
0+04c0 <[^>]*> 419b1002 	mttc0	k1,\$2,2
0+04c4 <[^>]*> 419b1003 	mttc0	k1,\$2,3
0+04c8 <[^>]*> 419b1004 	mttc0	k1,\$2,4
0+04cc <[^>]*> 419b1005 	mttc0	k1,\$2,5
0+04d0 <[^>]*> 419b1006 	mttc0	k1,\$2,6
0+04d4 <[^>]*> 419b1007 	mttc0	k1,\$2,7
0+04d8 <[^>]*> 419b1800 	mttc0	k1,c0_entrylo1
0+04dc <[^>]*> 419b1801 	mttc0	k1,\$3,1
0+04e0 <[^>]*> 419b1802 	mttc0	k1,\$3,2
0+04e4 <[^>]*> 419b1803 	mttc0	k1,\$3,3
0+04e8 <[^>]*> 419b1804 	mttc0	k1,\$3,4
0+04ec <[^>]*> 419b1805 	mttc0	k1,\$3,5
0+04f0 <[^>]*> 419b1806 	mttc0	k1,\$3,6
0+04f4 <[^>]*> 419b1807 	mttc0	k1,\$3,7
0+04f8 <[^>]*> 419b2000 	mttc0	k1,c0_context
0+04fc <[^>]*> 419b2001 	mttc0	k1,\$4,1
0+0500 <[^>]*> 419b2002 	mttc0	k1,\$4,2
0+0504 <[^>]*> 419b2003 	mttc0	k1,\$4,3
0+0508 <[^>]*> 419b2004 	mttc0	k1,\$4,4
0+050c <[^>]*> 419b2005 	mttc0	k1,\$4,5
0+0510 <[^>]*> 419b2006 	mttc0	k1,\$4,6
0+0514 <[^>]*> 419b2007 	mttc0	k1,\$4,7
0+0518 <[^>]*> 419b2800 	mttc0	k1,c0_pagemask
0+051c <[^>]*> 419b2801 	mttc0	k1,\$5,1
0+0520 <[^>]*> 419b2802 	mttc0	k1,\$5,2
0+0524 <[^>]*> 419b2803 	mttc0	k1,\$5,3
0+0528 <[^>]*> 419b2804 	mttc0	k1,\$5,4
0+052c <[^>]*> 419b2805 	mttc0	k1,\$5,5
0+0530 <[^>]*> 419b2806 	mttc0	k1,\$5,6
0+0534 <[^>]*> 419b2807 	mttc0	k1,\$5,7
0+0538 <[^>]*> 419b3000 	mttc0	k1,c0_wired
0+053c <[^>]*> 419b3001 	mttc0	k1,\$6,1
0+0540 <[^>]*> 419b3002 	mttc0	k1,\$6,2
0+0544 <[^>]*> 419b3003 	mttc0	k1,\$6,3
0+0548 <[^>]*> 419b3004 	mttc0	k1,\$6,4
0+054c <[^>]*> 419b3005 	mttc0	k1,\$6,5
0+0550 <[^>]*> 419b3006 	mttc0	k1,\$6,6
0+0554 <[^>]*> 419b3007 	mttc0	k1,\$6,7
0+0558 <[^>]*> 419b3800 	mttc0	k1,\$7
0+055c <[^>]*> 419b3801 	mttc0	k1,\$7,1
0+0560 <[^>]*> 419b3802 	mttc0	k1,\$7,2
0+0564 <[^>]*> 419b3803 	mttc0	k1,\$7,3
0+0568 <[^>]*> 419b3804 	mttc0	k1,\$7,4
0+056c <[^>]*> 419b3805 	mttc0	k1,\$7,5
0+0570 <[^>]*> 419b3806 	mttc0	k1,\$7,6
0+0574 <[^>]*> 419b3807 	mttc0	k1,\$7,7
0+0578 <[^>]*> 419b4000 	mttc0	k1,c0_badvaddr
0+057c <[^>]*> 419b4001 	mttc0	k1,\$8,1
0+0580 <[^>]*> 419b4002 	mttc0	k1,\$8,2
0+0584 <[^>]*> 419b4003 	mttc0	k1,\$8,3
0+0588 <[^>]*> 419b4004 	mttc0	k1,\$8,4
0+058c <[^>]*> 419b4005 	mttc0	k1,\$8,5
0+0590 <[^>]*> 419b4006 	mttc0	k1,\$8,6
0+0594 <[^>]*> 419b4007 	mttc0	k1,\$8,7
0+0598 <[^>]*> 419b4800 	mttc0	k1,c0_count
0+059c <[^>]*> 419b4801 	mttc0	k1,\$9,1
0+05a0 <[^>]*> 419b4802 	mttc0	k1,\$9,2
0+05a4 <[^>]*> 419b4803 	mttc0	k1,\$9,3
0+05a8 <[^>]*> 419b4804 	mttc0	k1,\$9,4
0+05ac <[^>]*> 419b4805 	mttc0	k1,\$9,5
0+05b0 <[^>]*> 419b4806 	mttc0	k1,\$9,6
0+05b4 <[^>]*> 419b4807 	mttc0	k1,\$9,7
0+05b8 <[^>]*> 419b5000 	mttc0	k1,c0_entryhi
0+05bc <[^>]*> 419b5001 	mttc0	k1,\$10,1
0+05c0 <[^>]*> 419b5002 	mttc0	k1,\$10,2
0+05c4 <[^>]*> 419b5003 	mttc0	k1,\$10,3
0+05c8 <[^>]*> 419b5004 	mttc0	k1,\$10,4
0+05cc <[^>]*> 419b5005 	mttc0	k1,\$10,5
0+05d0 <[^>]*> 419b5006 	mttc0	k1,\$10,6
0+05d4 <[^>]*> 419b5007 	mttc0	k1,\$10,7
0+05d8 <[^>]*> 419b5800 	mttc0	k1,c0_compare
0+05dc <[^>]*> 419b5801 	mttc0	k1,\$11,1
0+05e0 <[^>]*> 419b5802 	mttc0	k1,\$11,2
0+05e4 <[^>]*> 419b5803 	mttc0	k1,\$11,3
0+05e8 <[^>]*> 419b5804 	mttc0	k1,\$11,4
0+05ec <[^>]*> 419b5805 	mttc0	k1,\$11,5
0+05f0 <[^>]*> 419b5806 	mttc0	k1,\$11,6
0+05f4 <[^>]*> 419b5807 	mttc0	k1,\$11,7
0+05f8 <[^>]*> 419b6000 	mttc0	k1,c0_status
0+05fc <[^>]*> 419b6001 	mttc0	k1,\$12,1
0+0600 <[^>]*> 419b6002 	mttc0	k1,\$12,2
0+0604 <[^>]*> 419b6003 	mttc0	k1,\$12,3
0+0608 <[^>]*> 419b6004 	mttc0	k1,\$12,4
0+060c <[^>]*> 419b6005 	mttc0	k1,\$12,5
0+0610 <[^>]*> 419b6006 	mttc0	k1,\$12,6
0+0614 <[^>]*> 419b6007 	mttc0	k1,\$12,7
0+0618 <[^>]*> 419b6800 	mttc0	k1,c0_cause
0+061c <[^>]*> 419b6801 	mttc0	k1,\$13,1
0+0620 <[^>]*> 419b6802 	mttc0	k1,\$13,2
0+0624 <[^>]*> 419b6803 	mttc0	k1,\$13,3
0+0628 <[^>]*> 419b6804 	mttc0	k1,\$13,4
0+062c <[^>]*> 419b6805 	mttc0	k1,\$13,5
0+0630 <[^>]*> 419b6806 	mttc0	k1,\$13,6
0+0634 <[^>]*> 419b6807 	mttc0	k1,\$13,7
0+0638 <[^>]*> 419b7000 	mttc0	k1,c0_epc
0+063c <[^>]*> 419b7001 	mttc0	k1,\$14,1
0+0640 <[^>]*> 419b7002 	mttc0	k1,\$14,2
0+0644 <[^>]*> 419b7003 	mttc0	k1,\$14,3
0+0648 <[^>]*> 419b7004 	mttc0	k1,\$14,4
0+064c <[^>]*> 419b7005 	mttc0	k1,\$14,5
0+0650 <[^>]*> 419b7006 	mttc0	k1,\$14,6
0+0654 <[^>]*> 419b7007 	mttc0	k1,\$14,7
0+0658 <[^>]*> 419b7800 	mttc0	k1,c0_prid
0+065c <[^>]*> 419b7801 	mttc0	k1,\$15,1
0+0660 <[^>]*> 419b7802 	mttc0	k1,\$15,2
0+0664 <[^>]*> 419b7803 	mttc0	k1,\$15,3
0+0668 <[^>]*> 419b7804 	mttc0	k1,\$15,4
0+066c <[^>]*> 419b7805 	mttc0	k1,\$15,5
0+0670 <[^>]*> 419b7806 	mttc0	k1,\$15,6
0+0674 <[^>]*> 419b7807 	mttc0	k1,\$15,7
0+0678 <[^>]*> 419b8000 	mttc0	k1,c0_config
0+067c <[^>]*> 419b8001 	mttc0	k1,c0_config1
0+0680 <[^>]*> 419b8002 	mttc0	k1,c0_config2
0+0684 <[^>]*> 419b8003 	mttc0	k1,c0_config3
0+0688 <[^>]*> 419b8004 	mttc0	k1,\$16,4
0+068c <[^>]*> 419b8005 	mttc0	k1,\$16,5
0+0690 <[^>]*> 419b8006 	mttc0	k1,\$16,6
0+0694 <[^>]*> 419b8007 	mttc0	k1,\$16,7
0+0698 <[^>]*> 419b8800 	mttc0	k1,c0_lladdr
0+069c <[^>]*> 419b8801 	mttc0	k1,\$17,1
0+06a0 <[^>]*> 419b8802 	mttc0	k1,\$17,2
0+06a4 <[^>]*> 419b8803 	mttc0	k1,\$17,3
0+06a8 <[^>]*> 419b8804 	mttc0	k1,\$17,4
0+06ac <[^>]*> 419b8805 	mttc0	k1,\$17,5
0+06b0 <[^>]*> 419b8806 	mttc0	k1,\$17,6
0+06b4 <[^>]*> 419b8807 	mttc0	k1,\$17,7
0+06b8 <[^>]*> 419b9000 	mttc0	k1,c0_watchlo
0+06bc <[^>]*> 419b9001 	mttc0	k1,c0_watchlo,1
0+06c0 <[^>]*> 419b9002 	mttc0	k1,c0_watchlo,2
0+06c4 <[^>]*> 419b9003 	mttc0	k1,c0_watchlo,3
0+06c8 <[^>]*> 419b9004 	mttc0	k1,c0_watchlo,4
0+06cc <[^>]*> 419b9005 	mttc0	k1,c0_watchlo,5
0+06d0 <[^>]*> 419b9006 	mttc0	k1,c0_watchlo,6
0+06d4 <[^>]*> 419b9007 	mttc0	k1,c0_watchlo,7
0+06d8 <[^>]*> 419b9800 	mttc0	k1,c0_watchhi
0+06dc <[^>]*> 419b9801 	mttc0	k1,c0_watchhi,1
0+06e0 <[^>]*> 419b9802 	mttc0	k1,c0_watchhi,2
0+06e4 <[^>]*> 419b9803 	mttc0	k1,c0_watchhi,3
0+06e8 <[^>]*> 419b9804 	mttc0	k1,c0_watchhi,4
0+06ec <[^>]*> 419b9805 	mttc0	k1,c0_watchhi,5
0+06f0 <[^>]*> 419b9806 	mttc0	k1,c0_watchhi,6
0+06f4 <[^>]*> 419b9807 	mttc0	k1,c0_watchhi,7
0+06f8 <[^>]*> 419ba000 	mttc0	k1,c0_xcontext
0+06fc <[^>]*> 419ba001 	mttc0	k1,\$20,1
0+0700 <[^>]*> 419ba002 	mttc0	k1,\$20,2
0+0704 <[^>]*> 419ba003 	mttc0	k1,\$20,3
0+0708 <[^>]*> 419ba004 	mttc0	k1,\$20,4
0+070c <[^>]*> 419ba005 	mttc0	k1,\$20,5
0+0710 <[^>]*> 419ba006 	mttc0	k1,\$20,6
0+0714 <[^>]*> 419ba007 	mttc0	k1,\$20,7
0+0718 <[^>]*> 419ba800 	mttc0	k1,\$21
0+071c <[^>]*> 419ba801 	mttc0	k1,\$21,1
0+0720 <[^>]*> 419ba802 	mttc0	k1,\$21,2
0+0724 <[^>]*> 419ba803 	mttc0	k1,\$21,3
0+0728 <[^>]*> 419ba804 	mttc0	k1,\$21,4
0+072c <[^>]*> 419ba805 	mttc0	k1,\$21,5
0+0730 <[^>]*> 419ba806 	mttc0	k1,\$21,6
0+0734 <[^>]*> 419ba807 	mttc0	k1,\$21,7
0+0738 <[^>]*> 419bb000 	mttc0	k1,\$22
0+073c <[^>]*> 419bb001 	mttc0	k1,\$22,1
0+0740 <[^>]*> 419bb002 	mttc0	k1,\$22,2
0+0744 <[^>]*> 419bb003 	mttc0	k1,\$22,3
0+0748 <[^>]*> 419bb004 	mttc0	k1,\$22,4
0+074c <[^>]*> 419bb005 	mttc0	k1,\$22,5
0+0750 <[^>]*> 419bb006 	mttc0	k1,\$22,6
0+0754 <[^>]*> 419bb007 	mttc0	k1,\$22,7
0+0758 <[^>]*> 419bb800 	mttc0	k1,c0_debug
0+075c <[^>]*> 419bb801 	mttc0	k1,\$23,1
0+0760 <[^>]*> 419bb802 	mttc0	k1,\$23,2
0+0764 <[^>]*> 419bb803 	mttc0	k1,\$23,3
0+0768 <[^>]*> 419bb804 	mttc0	k1,\$23,4
0+076c <[^>]*> 419bb805 	mttc0	k1,\$23,5
0+0770 <[^>]*> 419bb806 	mttc0	k1,\$23,6
0+0774 <[^>]*> 419bb807 	mttc0	k1,\$23,7
0+0778 <[^>]*> 419bc000 	mttc0	k1,c0_depc
0+077c <[^>]*> 419bc001 	mttc0	k1,\$24,1
0+0780 <[^>]*> 419bc002 	mttc0	k1,\$24,2
0+0784 <[^>]*> 419bc003 	mttc0	k1,\$24,3
0+0788 <[^>]*> 419bc004 	mttc0	k1,\$24,4
0+078c <[^>]*> 419bc005 	mttc0	k1,\$24,5
0+0790 <[^>]*> 419bc006 	mttc0	k1,\$24,6
0+0794 <[^>]*> 419bc007 	mttc0	k1,\$24,7
0+0798 <[^>]*> 419bc800 	mttc0	k1,c0_perfcnt
0+079c <[^>]*> 419bc801 	mttc0	k1,c0_perfcnt,1
0+07a0 <[^>]*> 419bc802 	mttc0	k1,c0_perfcnt,2
0+07a4 <[^>]*> 419bc803 	mttc0	k1,c0_perfcnt,3
0+07a8 <[^>]*> 419bc804 	mttc0	k1,c0_perfcnt,4
0+07ac <[^>]*> 419bc805 	mttc0	k1,c0_perfcnt,5
0+07b0 <[^>]*> 419bc806 	mttc0	k1,c0_perfcnt,6
0+07b4 <[^>]*> 419bc807 	mttc0	k1,c0_perfcnt,7
0+07b8 <[^>]*> 419bd000 	mttc0	k1,c0_errctl
0+07bc <[^>]*> 419bd001 	mttc0	k1,\$26,1
0+07c0 <[^>]*> 419bd002 	mttc0	k1,\$26,2
0+07c4 <[^>]*> 419bd003 	mttc0	k1,\$26,3
0+07c8 <[^>]*> 419bd004 	mttc0	k1,\$26,4
0+07cc <[^>]*> 419bd005 	mttc0	k1,\$26,5
0+07d0 <[^>]*> 419bd006 	mttc0	k1,\$26,6
0+07d4 <[^>]*> 419bd007 	mttc0	k1,\$26,7
0+07d8 <[^>]*> 419bd800 	mttc0	k1,c0_cacheerr
0+07dc <[^>]*> 419bd801 	mttc0	k1,c0_cacheerr,1
0+07e0 <[^>]*> 419bd802 	mttc0	k1,c0_cacheerr,2
0+07e4 <[^>]*> 419bd803 	mttc0	k1,c0_cacheerr,3
0+07e8 <[^>]*> 419bd804 	mttc0	k1,\$27,4
0+07ec <[^>]*> 419bd805 	mttc0	k1,\$27,5
0+07f0 <[^>]*> 419bd806 	mttc0	k1,\$27,6
0+07f4 <[^>]*> 419bd807 	mttc0	k1,\$27,7
0+07f8 <[^>]*> 419be000 	mttc0	k1,c0_taglo
0+07fc <[^>]*> 419be001 	mttc0	k1,c0_datalo
0+0800 <[^>]*> 419be002 	mttc0	k1,\$28,2
0+0804 <[^>]*> 419be003 	mttc0	k1,\$28,3
0+0808 <[^>]*> 419be004 	mttc0	k1,\$28,4
0+080c <[^>]*> 419be005 	mttc0	k1,\$28,5
0+0810 <[^>]*> 419be006 	mttc0	k1,\$28,6
0+0814 <[^>]*> 419be007 	mttc0	k1,\$28,7
0+0818 <[^>]*> 419be800 	mttc0	k1,c0_taghi
0+081c <[^>]*> 419be801 	mttc0	k1,c0_datahi
0+0820 <[^>]*> 419be802 	mttc0	k1,\$29,2
0+0824 <[^>]*> 419be803 	mttc0	k1,\$29,3
0+0828 <[^>]*> 419be804 	mttc0	k1,\$29,4
0+082c <[^>]*> 419be805 	mttc0	k1,\$29,5
0+0830 <[^>]*> 419be806 	mttc0	k1,\$29,6
0+0834 <[^>]*> 419be807 	mttc0	k1,\$29,7
0+0838 <[^>]*> 419bf000 	mttc0	k1,c0_errorepc
0+083c <[^>]*> 419bf001 	mttc0	k1,\$30,1
0+0840 <[^>]*> 419bf002 	mttc0	k1,\$30,2
0+0844 <[^>]*> 419bf003 	mttc0	k1,\$30,3
0+0848 <[^>]*> 419bf004 	mttc0	k1,\$30,4
0+084c <[^>]*> 419bf005 	mttc0	k1,\$30,5
0+0850 <[^>]*> 419bf006 	mttc0	k1,\$30,6
0+0854 <[^>]*> 419bf007 	mttc0	k1,\$30,7
0+0858 <[^>]*> 419bf800 	mttc0	k1,c0_desave
0+085c <[^>]*> 419bf801 	mttc0	k1,\$31,1
0+0860 <[^>]*> 419bf802 	mttc0	k1,\$31,2
0+0864 <[^>]*> 419bf803 	mttc0	k1,\$31,3
0+0868 <[^>]*> 419bf804 	mttc0	k1,\$31,4
0+086c <[^>]*> 419bf805 	mttc0	k1,\$31,5
0+0870 <[^>]*> 419bf806 	mttc0	k1,\$31,6
0+0874 <[^>]*> 419bf807 	mttc0	k1,\$31,7
0+0878 <[^>]*> 419ce820 	mttgpr	gp,sp
0+087c <[^>]*> 419d0021 	mttlo	sp
0+0880 <[^>]*> 419e6021 	mttlo	s8,\$ac3
0+0884 <[^>]*> 419f0821 	mtthi	ra
0+0888 <[^>]*> 41800821 	mtthi	zero
0+088c <[^>]*> 41811021 	mttacx	at
0+0890 <[^>]*> 41823021 	mttacx	v0,\$ac1
0+0894 <[^>]*> 41838021 	mttdsp	v1
0+0898 <[^>]*> 41842822 	mttc1	a0,\$f5
0+089c <[^>]*> 41853022 	mttc1	a1,\$f6
0+08a0 <[^>]*> 41864032 	mtthc1	a2,\$f8
0+08a4 <[^>]*> 41875032 	mtthc1	a3,\$f10
0+08a8 <[^>]*> 41884823 	cttc1	t0,\$9
0+08ac <[^>]*> 41895023 	cttc1	t1,\$10
0+08b0 <[^>]*> 418a5824 	mttc2	t2,\$11
0+08b4 <[^>]*> 418b6034 	mtthc2	t3,\$12
0+08b8 <[^>]*> 418c6825 	cttc2	t4,\$13
0+08bc <[^>]*> 410e6800 	mftc0	t5,c0_epc
0+08c0 <[^>]*> 410e6801 	mftc0	t5,\$14,1
0+08c4 <[^>]*> 410e6802 	mftc0	t5,\$14,2
0+08c8 <[^>]*> 410e6803 	mftc0	t5,\$14,3
0+08cc <[^>]*> 410e6804 	mftc0	t5,\$14,4
0+08d0 <[^>]*> 410e6805 	mftc0	t5,\$14,5
0+08d4 <[^>]*> 410e6806 	mftc0	t5,\$14,6
0+08d8 <[^>]*> 410e6807 	mftc0	t5,\$14,7
0+08dc <[^>]*> 410e6810 	mftr	t5,t6,0,0,1
0+08e0 <[^>]*> 410e6811 	mftr	t5,t6,0,1,1
0+08e4 <[^>]*> 410e6812 	mftr	t5,t6,0,2,1
0+08e8 <[^>]*> 410e6813 	mftr	t5,t6,0,3,1
0+08ec <[^>]*> 410e6814 	mftr	t5,t6,0,4,1
0+08f0 <[^>]*> 410e6815 	mftr	t5,t6,0,5,1
0+08f4 <[^>]*> 410e6816 	mftr	t5,t6,0,6,1
0+08f8 <[^>]*> 410e6817 	mftr	t5,t6,0,7,1
0+08fc <[^>]*> 410e6820 	mftgpr	t5,t6
0+0900 <[^>]*> 410e6821 	mftacx	t5,\$ac3
0+0904 <[^>]*> 410e6822 	mftc1	t5,\$f14
0+0908 <[^>]*> 410e6823 	cftc1	t5,\$14
0+090c <[^>]*> 410e6824 	mftc2	t5,\$14
0+0910 <[^>]*> 410e6825 	cftc2	t5,\$14
0+0914 <[^>]*> 410e6826 	mftr	t5,t6,1,6,0
0+0918 <[^>]*> 410e6827 	mftr	t5,t6,1,7,0
0+091c <[^>]*> 410e6830 	mftr	t5,t6,1,0,1
0+0920 <[^>]*> 410e6831 	mftr	t5,t6,1,1,1
0+0924 <[^>]*> 410e6832 	mfthc1	t5,\$f14
0+0928 <[^>]*> 410e6833 	mftr	t5,t6,1,3,1
0+092c <[^>]*> 410e6834 	mfthc2	t5,\$14
0+0930 <[^>]*> 410e6835 	mftr	t5,t6,1,5,1
0+0934 <[^>]*> 410e6836 	mftr	t5,t6,1,6,1
0+0938 <[^>]*> 410e6837 	mftr	t5,t6,1,7,1
0+093c <[^>]*> 418d7000 	mttc0	t5,c0_epc
0+0940 <[^>]*> 418d7001 	mttc0	t5,\$14,1
0+0944 <[^>]*> 418d7002 	mttc0	t5,\$14,2
0+0948 <[^>]*> 418d7003 	mttc0	t5,\$14,3
0+094c <[^>]*> 418d7004 	mttc0	t5,\$14,4
0+0950 <[^>]*> 418d7005 	mttc0	t5,\$14,5
0+0954 <[^>]*> 418d7006 	mttc0	t5,\$14,6
0+0958 <[^>]*> 418d7007 	mttc0	t5,\$14,7
0+095c <[^>]*> 418d7010 	mttr	t5,t6,0,0,1
0+0960 <[^>]*> 418d7011 	mttr	t5,t6,0,1,1
0+0964 <[^>]*> 418d7012 	mttr	t5,t6,0,2,1
0+0968 <[^>]*> 418d7013 	mttr	t5,t6,0,3,1
0+096c <[^>]*> 418d7014 	mttr	t5,t6,0,4,1
0+0970 <[^>]*> 418d7015 	mttr	t5,t6,0,5,1
0+0974 <[^>]*> 418d7016 	mttr	t5,t6,0,6,1
0+0978 <[^>]*> 418d7017 	mttr	t5,t6,0,7,1
0+097c <[^>]*> 418d7020 	mttgpr	t5,t6
0+0980 <[^>]*> 418d7021 	mttacx	t5,\$ac3
0+0984 <[^>]*> 418d7022 	mttc1	t5,\$f14
0+0988 <[^>]*> 418d7023 	cttc1	t5,\$14
0+098c <[^>]*> 418d7024 	mttc2	t5,\$14
0+0990 <[^>]*> 418d7025 	cttc2	t5,\$14
0+0994 <[^>]*> 418d7026 	mttr	t5,t6,1,6,0
0+0998 <[^>]*> 418d7027 	mttr	t5,t6,1,7,0
0+099c <[^>]*> 418d7030 	mttr	t5,t6,1,0,1
0+09a0 <[^>]*> 418d7031 	mttr	t5,t6,1,1,1
0+09a4 <[^>]*> 418d7032 	mtthc1	t5,\$f14
0+09a8 <[^>]*> 418d7033 	mttr	t5,t6,1,3,1
0+09ac <[^>]*> 418d7034 	mtthc2	t5,\$14
0+09b0 <[^>]*> 418d7035 	mttr	t5,t6,1,5,1
0+09b4 <[^>]*> 418d7036 	mttr	t5,t6,1,6,1
0+09b8 <[^>]*> 418d7037 	mttr	t5,t6,1,7,1
	\.\.\.


avxtests.exe:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 8f 00 00 	mov    0x8fe9(%rip),%rax        # 409ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 8f 00 00    	pushq  0x8fe2(%rip)        # 40a008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 8f 00 00    	jmpq   *0x8fe4(%rip)        # 40a010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 e2 8f 00 00    	jmpq   *0x8fe2(%rip)        # 40a018 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <exit@plt>:
  401040:	ff 25 da 8f 00 00    	jmpq   *0x8fda(%rip)        # 40a020 <exit@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401050 <_start>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	31 ed                	xor    %ebp,%ebp
  401056:	49 89 d1             	mov    %rdx,%r9
  401059:	5e                   	pop    %rsi
  40105a:	48 89 e2             	mov    %rsp,%rdx
  40105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401061:	50                   	push   %rax
  401062:	54                   	push   %rsp
  401063:	49 c7 c0 d0 51 40 00 	mov    $0x4051d0,%r8
  40106a:	48 c7 c1 60 51 40 00 	mov    $0x405160,%rcx
  401071:	48 c7 c7 10 50 40 00 	mov    $0x405010,%rdi
  401078:	ff 15 72 8f 00 00    	callq  *0x8f72(%rip)        # 409ff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	retq   
  401085:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 a0 40 00       	mov    $0x40a038,%eax
  401095:	48 3d 38 a0 40 00    	cmp    $0x40a038,%rax
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a2:	48 85 c0             	test   %rax,%rax
  4010a5:	74 09                	je     4010b0 <deregister_tm_clones+0x20>
  4010a7:	bf 38 a0 40 00       	mov    $0x40a038,%edi
  4010ac:	ff e0                	jmpq   *%rax
  4010ae:	66 90                	xchg   %ax,%ax
  4010b0:	c3                   	retq   
  4010b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 a0 40 00       	mov    $0x40a038,%esi
  4010c5:	48 81 ee 38 a0 40 00 	sub    $0x40a038,%rsi
  4010cc:	48 89 f0             	mov    %rsi,%rax
  4010cf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010d3:	48 c1 f8 03          	sar    $0x3,%rax
  4010d7:	48 01 c6             	add    %rax,%rsi
  4010da:	48 d1 fe             	sar    %rsi
  4010dd:	74 11                	je     4010f0 <register_tm_clones+0x30>
  4010df:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e4:	48 85 c0             	test   %rax,%rax
  4010e7:	74 07                	je     4010f0 <register_tm_clones+0x30>
  4010e9:	bf 38 a0 40 00       	mov    $0x40a038,%edi
  4010ee:	ff e0                	jmpq   *%rax
  4010f0:	c3                   	retq   
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 2d 8f 00 00 00 	cmpb   $0x0,0x8f2d(%rip)        # 40a038 <__TMC_END__>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   %rbp
  40110e:	48 89 e5             	mov    %rsp,%rbp
  401111:	e8 7a ff ff ff       	callq  401090 <deregister_tm_clones>
  401116:	c6 05 1b 8f 00 00 01 	movb   $0x1,0x8f1b(%rip)        # 40a038 <__TMC_END__>
  40111d:	5d                   	pop    %rbp
  40111e:	c3                   	retq   
  40111f:	90                   	nop
  401120:	c3                   	retq   
  401121:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <frame_dummy>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	eb 8a                	jmp    4010c0 <register_tm_clones>
  401136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40113d:	00 00 00 

0000000000401140 <vaddps_check_zmm>:
  401140:	55                   	push   %rbp
  401141:	48 89 e5             	mov    %rsp,%rbp
  401144:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401148:	48 83 ec 40          	sub    $0x40,%rsp
  40114c:	31 c0                	xor    %eax,%eax
  40114e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401152:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401156:	be 01 00 00 00       	mov    $0x1,%esi
  40115b:	31 ff                	xor    %edi,%edi
  40115d:	0f 1f 00             	nopl   (%rax)
  401160:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401165:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40116a:	0f 45 fe             	cmovne %esi,%edi
  40116d:	0f 4a fe             	cmovp  %esi,%edi
  401170:	48 83 c0 01          	add    $0x1,%rax
  401174:	48 83 f8 10          	cmp    $0x10,%rax
  401178:	75 e6                	jne    401160 <vaddps_check_zmm+0x20>
  40117a:	85 ff                	test   %edi,%edi
  40117c:	75 07                	jne    401185 <vaddps_check_zmm+0x45>
  40117e:	31 c0                	xor    %eax,%eax
  401180:	48 89 ec             	mov    %rbp,%rsp
  401183:	5d                   	pop    %rbp
  401184:	c3                   	retq   
  401185:	bf c0 6a 40 00       	mov    $0x406ac0,%edi
  40118a:	e8 a1 fe ff ff       	callq  401030 <puts@plt>
  40118f:	bf 01 00 00 00       	mov    $0x1,%edi
  401194:	e8 a7 fe ff ff       	callq  401040 <exit@plt>
  401199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004011a0 <vaddps_zmm>:
  4011a0:	55                   	push   %rbp
  4011a1:	48 89 e5             	mov    %rsp,%rbp
  4011a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4011a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4011af:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  4011b6:	00 00 00 
  4011b9:	62 f1 7c 48 58 85 50 	vaddps 0x50(%rbp),%zmm0,%zmm0
  4011c0:	00 00 00 
  4011c3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4011ca:	02 
  4011cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4011d2:	00 00 00 
  4011d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4011dc:	01 
  4011dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4011e4:	02 
  4011e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4011ec:	c5 f8 77             	vzeroupper 
  4011ef:	e8 4c ff ff ff       	callq  401140 <vaddps_check_zmm>
  4011f4:	31 c0                	xor    %eax,%eax
  4011f6:	48 89 ec             	mov    %rbp,%rsp
  4011f9:	5d                   	pop    %rbp
  4011fa:	c3                   	retq   
  4011fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401200 <vaddps_check_ymm>:
  401200:	55                   	push   %rbp
  401201:	48 89 e5             	mov    %rsp,%rbp
  401204:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401208:	48 83 ec 40          	sub    $0x40,%rsp
  40120c:	31 c0                	xor    %eax,%eax
  40120e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401212:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401216:	be 01 00 00 00       	mov    $0x1,%esi
  40121b:	31 ff                	xor    %edi,%edi
  40121d:	0f 1f 00             	nopl   (%rax)
  401220:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401225:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40122a:	0f 45 fe             	cmovne %esi,%edi
  40122d:	0f 4a fe             	cmovp  %esi,%edi
  401230:	48 83 c0 01          	add    $0x1,%rax
  401234:	48 83 f8 08          	cmp    $0x8,%rax
  401238:	75 e6                	jne    401220 <vaddps_check_ymm+0x20>
  40123a:	85 ff                	test   %edi,%edi
  40123c:	75 07                	jne    401245 <vaddps_check_ymm+0x45>
  40123e:	31 c0                	xor    %eax,%eax
  401240:	48 89 ec             	mov    %rbp,%rsp
  401243:	5d                   	pop    %rbp
  401244:	c3                   	retq   
  401245:	bf d9 6a 40 00       	mov    $0x406ad9,%edi
  40124a:	e8 e1 fd ff ff       	callq  401030 <puts@plt>
  40124f:	bf 01 00 00 00       	mov    $0x1,%edi
  401254:	e8 e7 fd ff ff       	callq  401040 <exit@plt>
  401259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401260 <vaddps_ymm>:
  401260:	55                   	push   %rbp
  401261:	48 89 e5             	mov    %rsp,%rbp
  401264:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401268:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40126f:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  401274:	c5 fc 58 45 50       	vaddps 0x50(%rbp),%ymm0,%ymm0
  401279:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401280:	00 00 
  401282:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401289:	00 00 00 
  40128c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401293:	01 
  401294:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40129b:	02 
  40129c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4012a3:	c5 f8 77             	vzeroupper 
  4012a6:	e8 55 ff ff ff       	callq  401200 <vaddps_check_ymm>
  4012ab:	31 c0                	xor    %eax,%eax
  4012ad:	48 89 ec             	mov    %rbp,%rsp
  4012b0:	5d                   	pop    %rbp
  4012b1:	c3                   	retq   
  4012b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012b9:	00 00 00 
  4012bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012c0 <vsubps_check_zmm>:
  4012c0:	55                   	push   %rbp
  4012c1:	48 89 e5             	mov    %rsp,%rbp
  4012c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4012c8:	48 83 ec 40          	sub    $0x40,%rsp
  4012cc:	31 c0                	xor    %eax,%eax
  4012ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4012d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4012d6:	be 01 00 00 00       	mov    $0x1,%esi
  4012db:	31 ff                	xor    %edi,%edi
  4012dd:	0f 1f 00             	nopl   (%rax)
  4012e0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4012e5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4012ea:	0f 45 fe             	cmovne %esi,%edi
  4012ed:	0f 4a fe             	cmovp  %esi,%edi
  4012f0:	48 83 c0 01          	add    $0x1,%rax
  4012f4:	48 83 f8 10          	cmp    $0x10,%rax
  4012f8:	75 e6                	jne    4012e0 <vsubps_check_zmm+0x20>
  4012fa:	85 ff                	test   %edi,%edi
  4012fc:	75 07                	jne    401305 <vsubps_check_zmm+0x45>
  4012fe:	31 c0                	xor    %eax,%eax
  401300:	48 89 ec             	mov    %rbp,%rsp
  401303:	5d                   	pop    %rbp
  401304:	c3                   	retq   
  401305:	bf f2 6a 40 00       	mov    $0x406af2,%edi
  40130a:	e8 21 fd ff ff       	callq  401030 <puts@plt>
  40130f:	bf 01 00 00 00       	mov    $0x1,%edi
  401314:	e8 27 fd ff ff       	callq  401040 <exit@plt>
  401319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401320 <vsubps_zmm>:
  401320:	55                   	push   %rbp
  401321:	48 89 e5             	mov    %rsp,%rbp
  401324:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401328:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40132f:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  401336:	00 00 00 
  401339:	62 f1 7c 48 5c 85 50 	vsubps 0x50(%rbp),%zmm0,%zmm0
  401340:	00 00 00 
  401343:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40134a:	02 
  40134b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401352:	00 00 00 
  401355:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40135c:	01 
  40135d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401364:	02 
  401365:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40136c:	c5 f8 77             	vzeroupper 
  40136f:	e8 4c ff ff ff       	callq  4012c0 <vsubps_check_zmm>
  401374:	31 c0                	xor    %eax,%eax
  401376:	48 89 ec             	mov    %rbp,%rsp
  401379:	5d                   	pop    %rbp
  40137a:	c3                   	retq   
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <vsubps_check_ymm>:
  401380:	55                   	push   %rbp
  401381:	48 89 e5             	mov    %rsp,%rbp
  401384:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401388:	48 83 ec 40          	sub    $0x40,%rsp
  40138c:	31 c0                	xor    %eax,%eax
  40138e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401392:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401396:	be 01 00 00 00       	mov    $0x1,%esi
  40139b:	31 ff                	xor    %edi,%edi
  40139d:	0f 1f 00             	nopl   (%rax)
  4013a0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4013a5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4013aa:	0f 45 fe             	cmovne %esi,%edi
  4013ad:	0f 4a fe             	cmovp  %esi,%edi
  4013b0:	48 83 c0 01          	add    $0x1,%rax
  4013b4:	48 83 f8 08          	cmp    $0x8,%rax
  4013b8:	75 e6                	jne    4013a0 <vsubps_check_ymm+0x20>
  4013ba:	85 ff                	test   %edi,%edi
  4013bc:	75 07                	jne    4013c5 <vsubps_check_ymm+0x45>
  4013be:	31 c0                	xor    %eax,%eax
  4013c0:	48 89 ec             	mov    %rbp,%rsp
  4013c3:	5d                   	pop    %rbp
  4013c4:	c3                   	retq   
  4013c5:	bf 0b 6b 40 00       	mov    $0x406b0b,%edi
  4013ca:	e8 61 fc ff ff       	callq  401030 <puts@plt>
  4013cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4013d4:	e8 67 fc ff ff       	callq  401040 <exit@plt>
  4013d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004013e0 <vsubps_ymm>:
  4013e0:	55                   	push   %rbp
  4013e1:	48 89 e5             	mov    %rsp,%rbp
  4013e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4013e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4013ef:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  4013f4:	c5 fc 5c 45 50       	vsubps 0x50(%rbp),%ymm0,%ymm0
  4013f9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401400:	00 00 
  401402:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401409:	00 00 00 
  40140c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401413:	01 
  401414:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40141b:	02 
  40141c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401423:	c5 f8 77             	vzeroupper 
  401426:	e8 55 ff ff ff       	callq  401380 <vsubps_check_ymm>
  40142b:	31 c0                	xor    %eax,%eax
  40142d:	48 89 ec             	mov    %rbp,%rsp
  401430:	5d                   	pop    %rbp
  401431:	c3                   	retq   
  401432:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401439:	00 00 00 
  40143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401440 <vmulps_check_zmm>:
  401440:	55                   	push   %rbp
  401441:	48 89 e5             	mov    %rsp,%rbp
  401444:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401448:	48 83 ec 40          	sub    $0x40,%rsp
  40144c:	31 c0                	xor    %eax,%eax
  40144e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401452:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401456:	be 01 00 00 00       	mov    $0x1,%esi
  40145b:	31 ff                	xor    %edi,%edi
  40145d:	0f 1f 00             	nopl   (%rax)
  401460:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401465:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40146a:	0f 45 fe             	cmovne %esi,%edi
  40146d:	0f 4a fe             	cmovp  %esi,%edi
  401470:	48 83 c0 01          	add    $0x1,%rax
  401474:	48 83 f8 10          	cmp    $0x10,%rax
  401478:	75 e6                	jne    401460 <vmulps_check_zmm+0x20>
  40147a:	85 ff                	test   %edi,%edi
  40147c:	75 07                	jne    401485 <vmulps_check_zmm+0x45>
  40147e:	31 c0                	xor    %eax,%eax
  401480:	48 89 ec             	mov    %rbp,%rsp
  401483:	5d                   	pop    %rbp
  401484:	c3                   	retq   
  401485:	bf 24 6b 40 00       	mov    $0x406b24,%edi
  40148a:	e8 a1 fb ff ff       	callq  401030 <puts@plt>
  40148f:	bf 01 00 00 00       	mov    $0x1,%edi
  401494:	e8 a7 fb ff ff       	callq  401040 <exit@plt>
  401499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004014a0 <vmulps_zmm>:
  4014a0:	55                   	push   %rbp
  4014a1:	48 89 e5             	mov    %rsp,%rbp
  4014a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4014a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4014af:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  4014b6:	00 00 00 
  4014b9:	62 f1 7c 48 59 85 50 	vmulps 0x50(%rbp),%zmm0,%zmm0
  4014c0:	00 00 00 
  4014c3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4014ca:	02 
  4014cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4014d2:	00 00 00 
  4014d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4014dc:	01 
  4014dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4014e4:	02 
  4014e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4014ec:	c5 f8 77             	vzeroupper 
  4014ef:	e8 4c ff ff ff       	callq  401440 <vmulps_check_zmm>
  4014f4:	31 c0                	xor    %eax,%eax
  4014f6:	48 89 ec             	mov    %rbp,%rsp
  4014f9:	5d                   	pop    %rbp
  4014fa:	c3                   	retq   
  4014fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401500 <vmulps_check_ymm>:
  401500:	55                   	push   %rbp
  401501:	48 89 e5             	mov    %rsp,%rbp
  401504:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401508:	48 83 ec 40          	sub    $0x40,%rsp
  40150c:	31 c0                	xor    %eax,%eax
  40150e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401512:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401516:	be 01 00 00 00       	mov    $0x1,%esi
  40151b:	31 ff                	xor    %edi,%edi
  40151d:	0f 1f 00             	nopl   (%rax)
  401520:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401525:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40152a:	0f 45 fe             	cmovne %esi,%edi
  40152d:	0f 4a fe             	cmovp  %esi,%edi
  401530:	48 83 c0 01          	add    $0x1,%rax
  401534:	48 83 f8 08          	cmp    $0x8,%rax
  401538:	75 e6                	jne    401520 <vmulps_check_ymm+0x20>
  40153a:	85 ff                	test   %edi,%edi
  40153c:	75 07                	jne    401545 <vmulps_check_ymm+0x45>
  40153e:	31 c0                	xor    %eax,%eax
  401540:	48 89 ec             	mov    %rbp,%rsp
  401543:	5d                   	pop    %rbp
  401544:	c3                   	retq   
  401545:	bf 3d 6b 40 00       	mov    $0x406b3d,%edi
  40154a:	e8 e1 fa ff ff       	callq  401030 <puts@plt>
  40154f:	bf 01 00 00 00       	mov    $0x1,%edi
  401554:	e8 e7 fa ff ff       	callq  401040 <exit@plt>
  401559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401560 <vmulps_ymm>:
  401560:	55                   	push   %rbp
  401561:	48 89 e5             	mov    %rsp,%rbp
  401564:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401568:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40156f:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  401574:	c5 fc 59 45 50       	vmulps 0x50(%rbp),%ymm0,%ymm0
  401579:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401580:	00 00 
  401582:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401589:	00 00 00 
  40158c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401593:	01 
  401594:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40159b:	02 
  40159c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4015a3:	c5 f8 77             	vzeroupper 
  4015a6:	e8 55 ff ff ff       	callq  401500 <vmulps_check_ymm>
  4015ab:	31 c0                	xor    %eax,%eax
  4015ad:	48 89 ec             	mov    %rbp,%rsp
  4015b0:	5d                   	pop    %rbp
  4015b1:	c3                   	retq   
  4015b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015b9:	00 00 00 
  4015bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004015c0 <vdivps_check_zmm>:
  4015c0:	55                   	push   %rbp
  4015c1:	48 89 e5             	mov    %rsp,%rbp
  4015c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4015c8:	48 83 ec 40          	sub    $0x40,%rsp
  4015cc:	31 c0                	xor    %eax,%eax
  4015ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4015d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4015d6:	be 01 00 00 00       	mov    $0x1,%esi
  4015db:	31 ff                	xor    %edi,%edi
  4015dd:	0f 1f 00             	nopl   (%rax)
  4015e0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4015e5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4015ea:	0f 45 fe             	cmovne %esi,%edi
  4015ed:	0f 4a fe             	cmovp  %esi,%edi
  4015f0:	48 83 c0 01          	add    $0x1,%rax
  4015f4:	48 83 f8 10          	cmp    $0x10,%rax
  4015f8:	75 e6                	jne    4015e0 <vdivps_check_zmm+0x20>
  4015fa:	85 ff                	test   %edi,%edi
  4015fc:	75 07                	jne    401605 <vdivps_check_zmm+0x45>
  4015fe:	31 c0                	xor    %eax,%eax
  401600:	48 89 ec             	mov    %rbp,%rsp
  401603:	5d                   	pop    %rbp
  401604:	c3                   	retq   
  401605:	bf 56 6b 40 00       	mov    $0x406b56,%edi
  40160a:	e8 21 fa ff ff       	callq  401030 <puts@plt>
  40160f:	bf 01 00 00 00       	mov    $0x1,%edi
  401614:	e8 27 fa ff ff       	callq  401040 <exit@plt>
  401619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401620 <vdivps_zmm>:
  401620:	55                   	push   %rbp
  401621:	48 89 e5             	mov    %rsp,%rbp
  401624:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401628:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40162f:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  401636:	00 00 00 
  401639:	62 f1 7c 48 5e 85 50 	vdivps 0x50(%rbp),%zmm0,%zmm0
  401640:	00 00 00 
  401643:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40164a:	02 
  40164b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401652:	00 00 00 
  401655:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40165c:	01 
  40165d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401664:	02 
  401665:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40166c:	c5 f8 77             	vzeroupper 
  40166f:	e8 4c ff ff ff       	callq  4015c0 <vdivps_check_zmm>
  401674:	31 c0                	xor    %eax,%eax
  401676:	48 89 ec             	mov    %rbp,%rsp
  401679:	5d                   	pop    %rbp
  40167a:	c3                   	retq   
  40167b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401680 <vdivps_check_ymm>:
  401680:	55                   	push   %rbp
  401681:	48 89 e5             	mov    %rsp,%rbp
  401684:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401688:	48 83 ec 40          	sub    $0x40,%rsp
  40168c:	31 c0                	xor    %eax,%eax
  40168e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401692:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401696:	be 01 00 00 00       	mov    $0x1,%esi
  40169b:	31 ff                	xor    %edi,%edi
  40169d:	0f 1f 00             	nopl   (%rax)
  4016a0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4016a5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4016aa:	0f 45 fe             	cmovne %esi,%edi
  4016ad:	0f 4a fe             	cmovp  %esi,%edi
  4016b0:	48 83 c0 01          	add    $0x1,%rax
  4016b4:	48 83 f8 08          	cmp    $0x8,%rax
  4016b8:	75 e6                	jne    4016a0 <vdivps_check_ymm+0x20>
  4016ba:	85 ff                	test   %edi,%edi
  4016bc:	75 07                	jne    4016c5 <vdivps_check_ymm+0x45>
  4016be:	31 c0                	xor    %eax,%eax
  4016c0:	48 89 ec             	mov    %rbp,%rsp
  4016c3:	5d                   	pop    %rbp
  4016c4:	c3                   	retq   
  4016c5:	bf 6f 6b 40 00       	mov    $0x406b6f,%edi
  4016ca:	e8 61 f9 ff ff       	callq  401030 <puts@plt>
  4016cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4016d4:	e8 67 f9 ff ff       	callq  401040 <exit@plt>
  4016d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004016e0 <vdivps_ymm>:
  4016e0:	55                   	push   %rbp
  4016e1:	48 89 e5             	mov    %rsp,%rbp
  4016e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4016e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4016ef:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  4016f4:	c5 fc 5e 45 50       	vdivps 0x50(%rbp),%ymm0,%ymm0
  4016f9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401700:	00 00 
  401702:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401709:	00 00 00 
  40170c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401713:	01 
  401714:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40171b:	02 
  40171c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401723:	c5 f8 77             	vzeroupper 
  401726:	e8 55 ff ff ff       	callq  401680 <vdivps_check_ymm>
  40172b:	31 c0                	xor    %eax,%eax
  40172d:	48 89 ec             	mov    %rbp,%rsp
  401730:	5d                   	pop    %rbp
  401731:	c3                   	retq   
  401732:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401739:	00 00 00 
  40173c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401740 <vminps_check_zmm>:
  401740:	55                   	push   %rbp
  401741:	48 89 e5             	mov    %rsp,%rbp
  401744:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401748:	48 83 ec 40          	sub    $0x40,%rsp
  40174c:	31 c0                	xor    %eax,%eax
  40174e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401752:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401756:	be 01 00 00 00       	mov    $0x1,%esi
  40175b:	31 ff                	xor    %edi,%edi
  40175d:	0f 1f 00             	nopl   (%rax)
  401760:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401765:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40176a:	0f 45 fe             	cmovne %esi,%edi
  40176d:	0f 4a fe             	cmovp  %esi,%edi
  401770:	48 83 c0 01          	add    $0x1,%rax
  401774:	48 83 f8 10          	cmp    $0x10,%rax
  401778:	75 e6                	jne    401760 <vminps_check_zmm+0x20>
  40177a:	85 ff                	test   %edi,%edi
  40177c:	75 07                	jne    401785 <vminps_check_zmm+0x45>
  40177e:	31 c0                	xor    %eax,%eax
  401780:	48 89 ec             	mov    %rbp,%rsp
  401783:	5d                   	pop    %rbp
  401784:	c3                   	retq   
  401785:	bf 88 6b 40 00       	mov    $0x406b88,%edi
  40178a:	e8 a1 f8 ff ff       	callq  401030 <puts@plt>
  40178f:	bf 01 00 00 00       	mov    $0x1,%edi
  401794:	e8 a7 f8 ff ff       	callq  401040 <exit@plt>
  401799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004017a0 <vminps_zmm>:
  4017a0:	55                   	push   %rbp
  4017a1:	48 89 e5             	mov    %rsp,%rbp
  4017a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4017a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4017af:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  4017b6:	00 00 00 
  4017b9:	62 f1 7c 48 5d 85 50 	vminps 0x50(%rbp),%zmm0,%zmm0
  4017c0:	00 00 00 
  4017c3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4017ca:	02 
  4017cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4017d2:	00 00 00 
  4017d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4017dc:	01 
  4017dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4017e4:	02 
  4017e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4017ec:	c5 f8 77             	vzeroupper 
  4017ef:	e8 4c ff ff ff       	callq  401740 <vminps_check_zmm>
  4017f4:	31 c0                	xor    %eax,%eax
  4017f6:	48 89 ec             	mov    %rbp,%rsp
  4017f9:	5d                   	pop    %rbp
  4017fa:	c3                   	retq   
  4017fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401800 <vminps_check_ymm>:
  401800:	55                   	push   %rbp
  401801:	48 89 e5             	mov    %rsp,%rbp
  401804:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401808:	48 83 ec 40          	sub    $0x40,%rsp
  40180c:	31 c0                	xor    %eax,%eax
  40180e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401812:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401816:	be 01 00 00 00       	mov    $0x1,%esi
  40181b:	31 ff                	xor    %edi,%edi
  40181d:	0f 1f 00             	nopl   (%rax)
  401820:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401825:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  40182a:	0f 45 fe             	cmovne %esi,%edi
  40182d:	0f 4a fe             	cmovp  %esi,%edi
  401830:	48 83 c0 01          	add    $0x1,%rax
  401834:	48 83 f8 08          	cmp    $0x8,%rax
  401838:	75 e6                	jne    401820 <vminps_check_ymm+0x20>
  40183a:	85 ff                	test   %edi,%edi
  40183c:	75 07                	jne    401845 <vminps_check_ymm+0x45>
  40183e:	31 c0                	xor    %eax,%eax
  401840:	48 89 ec             	mov    %rbp,%rsp
  401843:	5d                   	pop    %rbp
  401844:	c3                   	retq   
  401845:	bf a1 6b 40 00       	mov    $0x406ba1,%edi
  40184a:	e8 e1 f7 ff ff       	callq  401030 <puts@plt>
  40184f:	bf 01 00 00 00       	mov    $0x1,%edi
  401854:	e8 e7 f7 ff ff       	callq  401040 <exit@plt>
  401859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401860 <vminps_ymm>:
  401860:	55                   	push   %rbp
  401861:	48 89 e5             	mov    %rsp,%rbp
  401864:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401868:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40186f:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  401874:	c5 fc 5d 45 50       	vminps 0x50(%rbp),%ymm0,%ymm0
  401879:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401880:	00 00 
  401882:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401889:	00 00 00 
  40188c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401893:	01 
  401894:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40189b:	02 
  40189c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4018a3:	c5 f8 77             	vzeroupper 
  4018a6:	e8 55 ff ff ff       	callq  401800 <vminps_check_ymm>
  4018ab:	31 c0                	xor    %eax,%eax
  4018ad:	48 89 ec             	mov    %rbp,%rsp
  4018b0:	5d                   	pop    %rbp
  4018b1:	c3                   	retq   
  4018b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018b9:	00 00 00 
  4018bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004018c0 <vmaxps_check_zmm>:
  4018c0:	55                   	push   %rbp
  4018c1:	48 89 e5             	mov    %rsp,%rbp
  4018c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4018c8:	48 83 ec 40          	sub    $0x40,%rsp
  4018cc:	31 c0                	xor    %eax,%eax
  4018ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4018d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4018d6:	be 01 00 00 00       	mov    $0x1,%esi
  4018db:	31 ff                	xor    %edi,%edi
  4018dd:	0f 1f 00             	nopl   (%rax)
  4018e0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4018e5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4018ea:	0f 45 fe             	cmovne %esi,%edi
  4018ed:	0f 4a fe             	cmovp  %esi,%edi
  4018f0:	48 83 c0 01          	add    $0x1,%rax
  4018f4:	48 83 f8 10          	cmp    $0x10,%rax
  4018f8:	75 e6                	jne    4018e0 <vmaxps_check_zmm+0x20>
  4018fa:	85 ff                	test   %edi,%edi
  4018fc:	75 07                	jne    401905 <vmaxps_check_zmm+0x45>
  4018fe:	31 c0                	xor    %eax,%eax
  401900:	48 89 ec             	mov    %rbp,%rsp
  401903:	5d                   	pop    %rbp
  401904:	c3                   	retq   
  401905:	bf ba 6b 40 00       	mov    $0x406bba,%edi
  40190a:	e8 21 f7 ff ff       	callq  401030 <puts@plt>
  40190f:	bf 01 00 00 00       	mov    $0x1,%edi
  401914:	e8 27 f7 ff ff       	callq  401040 <exit@plt>
  401919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401920 <vmaxps_zmm>:
  401920:	55                   	push   %rbp
  401921:	48 89 e5             	mov    %rsp,%rbp
  401924:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401928:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40192f:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  401936:	00 00 00 
  401939:	62 f1 7c 48 5f 85 50 	vmaxps 0x50(%rbp),%zmm0,%zmm0
  401940:	00 00 00 
  401943:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40194a:	02 
  40194b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401952:	00 00 00 
  401955:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40195c:	01 
  40195d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401964:	02 
  401965:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40196c:	c5 f8 77             	vzeroupper 
  40196f:	e8 4c ff ff ff       	callq  4018c0 <vmaxps_check_zmm>
  401974:	31 c0                	xor    %eax,%eax
  401976:	48 89 ec             	mov    %rbp,%rsp
  401979:	5d                   	pop    %rbp
  40197a:	c3                   	retq   
  40197b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401980 <vmaxps_check_ymm>:
  401980:	55                   	push   %rbp
  401981:	48 89 e5             	mov    %rsp,%rbp
  401984:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401988:	48 83 ec 40          	sub    $0x40,%rsp
  40198c:	31 c0                	xor    %eax,%eax
  40198e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401992:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401996:	be 01 00 00 00       	mov    $0x1,%esi
  40199b:	31 ff                	xor    %edi,%edi
  40199d:	0f 1f 00             	nopl   (%rax)
  4019a0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  4019a5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  4019aa:	0f 45 fe             	cmovne %esi,%edi
  4019ad:	0f 4a fe             	cmovp  %esi,%edi
  4019b0:	48 83 c0 01          	add    $0x1,%rax
  4019b4:	48 83 f8 08          	cmp    $0x8,%rax
  4019b8:	75 e6                	jne    4019a0 <vmaxps_check_ymm+0x20>
  4019ba:	85 ff                	test   %edi,%edi
  4019bc:	75 07                	jne    4019c5 <vmaxps_check_ymm+0x45>
  4019be:	31 c0                	xor    %eax,%eax
  4019c0:	48 89 ec             	mov    %rbp,%rsp
  4019c3:	5d                   	pop    %rbp
  4019c4:	c3                   	retq   
  4019c5:	bf d3 6b 40 00       	mov    $0x406bd3,%edi
  4019ca:	e8 61 f6 ff ff       	callq  401030 <puts@plt>
  4019cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d4:	e8 67 f6 ff ff       	callq  401040 <exit@plt>
  4019d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004019e0 <vmaxps_ymm>:
  4019e0:	55                   	push   %rbp
  4019e1:	48 89 e5             	mov    %rsp,%rbp
  4019e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4019e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4019ef:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  4019f4:	c5 fc 5f 45 50       	vmaxps 0x50(%rbp),%ymm0,%ymm0
  4019f9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401a00:	00 00 
  401a02:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401a09:	00 00 00 
  401a0c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401a13:	01 
  401a14:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401a1b:	02 
  401a1c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401a23:	c5 f8 77             	vzeroupper 
  401a26:	e8 55 ff ff ff       	callq  401980 <vmaxps_check_ymm>
  401a2b:	31 c0                	xor    %eax,%eax
  401a2d:	48 89 ec             	mov    %rbp,%rsp
  401a30:	5d                   	pop    %rbp
  401a31:	c3                   	retq   
  401a32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a39:	00 00 00 
  401a3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a40 <vxorps_check_zmm>:
  401a40:	55                   	push   %rbp
  401a41:	48 89 e5             	mov    %rsp,%rbp
  401a44:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401a48:	48 83 ec 40          	sub    $0x40,%rsp
  401a4c:	31 c0                	xor    %eax,%eax
  401a4e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401a52:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401a56:	be 01 00 00 00       	mov    $0x1,%esi
  401a5b:	31 ff                	xor    %edi,%edi
  401a5d:	0f 1f 00             	nopl   (%rax)
  401a60:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401a65:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401a6a:	0f 45 fe             	cmovne %esi,%edi
  401a6d:	0f 4a fe             	cmovp  %esi,%edi
  401a70:	48 83 c0 01          	add    $0x1,%rax
  401a74:	48 83 f8 10          	cmp    $0x10,%rax
  401a78:	75 e6                	jne    401a60 <vxorps_check_zmm+0x20>
  401a7a:	85 ff                	test   %edi,%edi
  401a7c:	75 07                	jne    401a85 <vxorps_check_zmm+0x45>
  401a7e:	31 c0                	xor    %eax,%eax
  401a80:	48 89 ec             	mov    %rbp,%rsp
  401a83:	5d                   	pop    %rbp
  401a84:	c3                   	retq   
  401a85:	bf ec 6b 40 00       	mov    $0x406bec,%edi
  401a8a:	e8 a1 f5 ff ff       	callq  401030 <puts@plt>
  401a8f:	bf 01 00 00 00       	mov    $0x1,%edi
  401a94:	e8 a7 f5 ff ff       	callq  401040 <exit@plt>
  401a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401aa0 <vxorps_zmm>:
  401aa0:	55                   	push   %rbp
  401aa1:	48 89 e5             	mov    %rsp,%rbp
  401aa4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401aa8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401aaf:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  401ab6:	00 00 00 
  401ab9:	62 f1 7c 48 57 85 10 	vxorps 0x10(%rbp),%zmm0,%zmm0
  401ac0:	00 00 00 
  401ac3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  401aca:	02 
  401acb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401ad2:	00 00 00 
  401ad5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401adc:	01 
  401add:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401ae4:	02 
  401ae5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401aec:	c5 f8 77             	vzeroupper 
  401aef:	e8 4c ff ff ff       	callq  401a40 <vxorps_check_zmm>
  401af4:	31 c0                	xor    %eax,%eax
  401af6:	48 89 ec             	mov    %rbp,%rsp
  401af9:	5d                   	pop    %rbp
  401afa:	c3                   	retq   
  401afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401b00 <vxorps_check_ymm>:
  401b00:	55                   	push   %rbp
  401b01:	48 89 e5             	mov    %rsp,%rbp
  401b04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401b08:	48 83 ec 40          	sub    $0x40,%rsp
  401b0c:	31 c0                	xor    %eax,%eax
  401b0e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401b12:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401b16:	be 01 00 00 00       	mov    $0x1,%esi
  401b1b:	31 ff                	xor    %edi,%edi
  401b1d:	0f 1f 00             	nopl   (%rax)
  401b20:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401b25:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401b2a:	0f 45 fe             	cmovne %esi,%edi
  401b2d:	0f 4a fe             	cmovp  %esi,%edi
  401b30:	48 83 c0 01          	add    $0x1,%rax
  401b34:	48 83 f8 08          	cmp    $0x8,%rax
  401b38:	75 e6                	jne    401b20 <vxorps_check_ymm+0x20>
  401b3a:	85 ff                	test   %edi,%edi
  401b3c:	75 07                	jne    401b45 <vxorps_check_ymm+0x45>
  401b3e:	31 c0                	xor    %eax,%eax
  401b40:	48 89 ec             	mov    %rbp,%rsp
  401b43:	5d                   	pop    %rbp
  401b44:	c3                   	retq   
  401b45:	bf 05 6c 40 00       	mov    $0x406c05,%edi
  401b4a:	e8 e1 f4 ff ff       	callq  401030 <puts@plt>
  401b4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401b54:	e8 e7 f4 ff ff       	callq  401040 <exit@plt>
  401b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401b60 <vxorps_ymm>:
  401b60:	55                   	push   %rbp
  401b61:	48 89 e5             	mov    %rsp,%rbp
  401b64:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401b68:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401b6f:	c5 fc 28 45 50       	vmovaps 0x50(%rbp),%ymm0
  401b74:	c5 fc 57 45 10       	vxorps 0x10(%rbp),%ymm0,%ymm0
  401b79:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401b80:	00 00 
  401b82:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401b89:	00 00 00 
  401b8c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401b93:	01 
  401b94:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401b9b:	02 
  401b9c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401ba3:	c5 f8 77             	vzeroupper 
  401ba6:	e8 55 ff ff ff       	callq  401b00 <vxorps_check_ymm>
  401bab:	31 c0                	xor    %eax,%eax
  401bad:	48 89 ec             	mov    %rbp,%rsp
  401bb0:	5d                   	pop    %rbp
  401bb1:	c3                   	retq   
  401bb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bb9:	00 00 00 
  401bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401bc0 <vandps_check_zmm>:
  401bc0:	55                   	push   %rbp
  401bc1:	48 89 e5             	mov    %rsp,%rbp
  401bc4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401bc8:	48 83 ec 40          	sub    $0x40,%rsp
  401bcc:	31 c0                	xor    %eax,%eax
  401bce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401bd2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401bd6:	be 01 00 00 00       	mov    $0x1,%esi
  401bdb:	31 ff                	xor    %edi,%edi
  401bdd:	0f 1f 00             	nopl   (%rax)
  401be0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401be5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401bea:	0f 45 fe             	cmovne %esi,%edi
  401bed:	0f 4a fe             	cmovp  %esi,%edi
  401bf0:	48 83 c0 01          	add    $0x1,%rax
  401bf4:	48 83 f8 10          	cmp    $0x10,%rax
  401bf8:	75 e6                	jne    401be0 <vandps_check_zmm+0x20>
  401bfa:	85 ff                	test   %edi,%edi
  401bfc:	75 07                	jne    401c05 <vandps_check_zmm+0x45>
  401bfe:	31 c0                	xor    %eax,%eax
  401c00:	48 89 ec             	mov    %rbp,%rsp
  401c03:	5d                   	pop    %rbp
  401c04:	c3                   	retq   
  401c05:	bf 1e 6c 40 00       	mov    $0x406c1e,%edi
  401c0a:	e8 21 f4 ff ff       	callq  401030 <puts@plt>
  401c0f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c14:	e8 27 f4 ff ff       	callq  401040 <exit@plt>
  401c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401c20 <vandps_zmm>:
  401c20:	55                   	push   %rbp
  401c21:	48 89 e5             	mov    %rsp,%rbp
  401c24:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401c28:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401c2f:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  401c36:	00 00 00 
  401c39:	62 f1 7c 48 54 85 10 	vandps 0x10(%rbp),%zmm0,%zmm0
  401c40:	00 00 00 
  401c43:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  401c4a:	02 
  401c4b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401c52:	00 00 00 
  401c55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401c5c:	01 
  401c5d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401c64:	02 
  401c65:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401c6c:	c5 f8 77             	vzeroupper 
  401c6f:	e8 4c ff ff ff       	callq  401bc0 <vandps_check_zmm>
  401c74:	31 c0                	xor    %eax,%eax
  401c76:	48 89 ec             	mov    %rbp,%rsp
  401c79:	5d                   	pop    %rbp
  401c7a:	c3                   	retq   
  401c7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401c80 <vandps_check_ymm>:
  401c80:	55                   	push   %rbp
  401c81:	48 89 e5             	mov    %rsp,%rbp
  401c84:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401c88:	48 83 ec 40          	sub    $0x40,%rsp
  401c8c:	31 c0                	xor    %eax,%eax
  401c8e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401c92:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401c96:	be 01 00 00 00       	mov    $0x1,%esi
  401c9b:	31 ff                	xor    %edi,%edi
  401c9d:	0f 1f 00             	nopl   (%rax)
  401ca0:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401ca5:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401caa:	0f 45 fe             	cmovne %esi,%edi
  401cad:	0f 4a fe             	cmovp  %esi,%edi
  401cb0:	48 83 c0 01          	add    $0x1,%rax
  401cb4:	48 83 f8 08          	cmp    $0x8,%rax
  401cb8:	75 e6                	jne    401ca0 <vandps_check_ymm+0x20>
  401cba:	85 ff                	test   %edi,%edi
  401cbc:	75 07                	jne    401cc5 <vandps_check_ymm+0x45>
  401cbe:	31 c0                	xor    %eax,%eax
  401cc0:	48 89 ec             	mov    %rbp,%rsp
  401cc3:	5d                   	pop    %rbp
  401cc4:	c3                   	retq   
  401cc5:	bf 37 6c 40 00       	mov    $0x406c37,%edi
  401cca:	e8 61 f3 ff ff       	callq  401030 <puts@plt>
  401ccf:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd4:	e8 67 f3 ff ff       	callq  401040 <exit@plt>
  401cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401ce0 <vandps_ymm>:
  401ce0:	55                   	push   %rbp
  401ce1:	48 89 e5             	mov    %rsp,%rbp
  401ce4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401ce8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401cef:	c5 fc 28 45 50       	vmovaps 0x50(%rbp),%ymm0
  401cf4:	c5 fc 54 45 10       	vandps 0x10(%rbp),%ymm0,%ymm0
  401cf9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401d00:	00 00 
  401d02:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401d09:	00 00 00 
  401d0c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401d13:	01 
  401d14:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401d1b:	02 
  401d1c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401d23:	c5 f8 77             	vzeroupper 
  401d26:	e8 55 ff ff ff       	callq  401c80 <vandps_check_ymm>
  401d2b:	31 c0                	xor    %eax,%eax
  401d2d:	48 89 ec             	mov    %rbp,%rsp
  401d30:	5d                   	pop    %rbp
  401d31:	c3                   	retq   
  401d32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401d39:	00 00 00 
  401d3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401d40 <vunpcklps_check_zmm>:
  401d40:	55                   	push   %rbp
  401d41:	48 89 e5             	mov    %rsp,%rbp
  401d44:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401d48:	48 83 ec 40          	sub    $0x40,%rsp
  401d4c:	31 c0                	xor    %eax,%eax
  401d4e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401d52:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401d56:	be 01 00 00 00       	mov    $0x1,%esi
  401d5b:	31 ff                	xor    %edi,%edi
  401d5d:	0f 1f 00             	nopl   (%rax)
  401d60:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401d65:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401d6a:	0f 45 fe             	cmovne %esi,%edi
  401d6d:	0f 4a fe             	cmovp  %esi,%edi
  401d70:	48 83 c0 01          	add    $0x1,%rax
  401d74:	48 83 f8 10          	cmp    $0x10,%rax
  401d78:	75 e6                	jne    401d60 <vunpcklps_check_zmm+0x20>
  401d7a:	85 ff                	test   %edi,%edi
  401d7c:	75 07                	jne    401d85 <vunpcklps_check_zmm+0x45>
  401d7e:	31 c0                	xor    %eax,%eax
  401d80:	48 89 ec             	mov    %rbp,%rsp
  401d83:	5d                   	pop    %rbp
  401d84:	c3                   	retq   
  401d85:	bf 50 6c 40 00       	mov    $0x406c50,%edi
  401d8a:	e8 a1 f2 ff ff       	callq  401030 <puts@plt>
  401d8f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d94:	e8 a7 f2 ff ff       	callq  401040 <exit@plt>
  401d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401da0 <vunpcklps_zmm>:
  401da0:	55                   	push   %rbp
  401da1:	48 89 e5             	mov    %rsp,%rbp
  401da4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401da8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401daf:	62 f1 7c 48 28 85 10 	vmovaps 0x10(%rbp),%zmm0
  401db6:	00 00 00 
  401db9:	62 f1 7c 48 14 85 50 	vunpcklps 0x50(%rbp),%zmm0,%zmm0
  401dc0:	00 00 00 
  401dc3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  401dca:	02 
  401dcb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401dd2:	00 00 00 
  401dd5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401ddc:	01 
  401ddd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401de4:	02 
  401de5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401dec:	c5 f8 77             	vzeroupper 
  401def:	e8 4c ff ff ff       	callq  401d40 <vunpcklps_check_zmm>
  401df4:	31 c0                	xor    %eax,%eax
  401df6:	48 89 ec             	mov    %rbp,%rsp
  401df9:	5d                   	pop    %rbp
  401dfa:	c3                   	retq   
  401dfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401e00 <vunpcklps_check_ymm>:
  401e00:	55                   	push   %rbp
  401e01:	48 89 e5             	mov    %rsp,%rbp
  401e04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401e08:	48 83 ec 40          	sub    $0x40,%rsp
  401e0c:	31 c0                	xor    %eax,%eax
  401e0e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401e12:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401e16:	be 01 00 00 00       	mov    $0x1,%esi
  401e1b:	31 ff                	xor    %edi,%edi
  401e1d:	0f 1f 00             	nopl   (%rax)
  401e20:	c5 fa 10 04 81       	vmovss (%rcx,%rax,4),%xmm0
  401e25:	c5 f8 2e 04 82       	vucomiss (%rdx,%rax,4),%xmm0
  401e2a:	0f 45 fe             	cmovne %esi,%edi
  401e2d:	0f 4a fe             	cmovp  %esi,%edi
  401e30:	48 83 c0 01          	add    $0x1,%rax
  401e34:	48 83 f8 08          	cmp    $0x8,%rax
  401e38:	75 e6                	jne    401e20 <vunpcklps_check_ymm+0x20>
  401e3a:	85 ff                	test   %edi,%edi
  401e3c:	75 07                	jne    401e45 <vunpcklps_check_ymm+0x45>
  401e3e:	31 c0                	xor    %eax,%eax
  401e40:	48 89 ec             	mov    %rbp,%rsp
  401e43:	5d                   	pop    %rbp
  401e44:	c3                   	retq   
  401e45:	bf 6c 6c 40 00       	mov    $0x406c6c,%edi
  401e4a:	e8 e1 f1 ff ff       	callq  401030 <puts@plt>
  401e4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e54:	e8 e7 f1 ff ff       	callq  401040 <exit@plt>
  401e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401e60 <vunpcklps_ymm>:
  401e60:	55                   	push   %rbp
  401e61:	48 89 e5             	mov    %rsp,%rbp
  401e64:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401e68:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401e6f:	c5 fc 28 45 10       	vmovaps 0x10(%rbp),%ymm0
  401e74:	c5 fc 14 45 50       	vunpcklps 0x50(%rbp),%ymm0,%ymm0
  401e79:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401e80:	00 00 
  401e82:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401e89:	00 00 00 
  401e8c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401e93:	01 
  401e94:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401e9b:	02 
  401e9c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401ea3:	c5 f8 77             	vzeroupper 
  401ea6:	e8 55 ff ff ff       	callq  401e00 <vunpcklps_check_ymm>
  401eab:	31 c0                	xor    %eax,%eax
  401ead:	48 89 ec             	mov    %rbp,%rsp
  401eb0:	5d                   	pop    %rbp
  401eb1:	c3                   	retq   
  401eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401eb9:	00 00 00 
  401ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ec0 <vaddpd_check_zmmd>:
  401ec0:	55                   	push   %rbp
  401ec1:	48 89 e5             	mov    %rsp,%rbp
  401ec4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401ec8:	48 83 ec 40          	sub    $0x40,%rsp
  401ecc:	31 c0                	xor    %eax,%eax
  401ece:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401ed2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401ed6:	be 01 00 00 00       	mov    $0x1,%esi
  401edb:	31 ff                	xor    %edi,%edi
  401edd:	0f 1f 00             	nopl   (%rax)
  401ee0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  401ee5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  401eea:	0f 45 fe             	cmovne %esi,%edi
  401eed:	0f 4a fe             	cmovp  %esi,%edi
  401ef0:	48 83 c0 01          	add    $0x1,%rax
  401ef4:	48 83 f8 08          	cmp    $0x8,%rax
  401ef8:	75 e6                	jne    401ee0 <vaddpd_check_zmmd+0x20>
  401efa:	85 ff                	test   %edi,%edi
  401efc:	75 07                	jne    401f05 <vaddpd_check_zmmd+0x45>
  401efe:	31 c0                	xor    %eax,%eax
  401f00:	48 89 ec             	mov    %rbp,%rsp
  401f03:	5d                   	pop    %rbp
  401f04:	c3                   	retq   
  401f05:	bf 88 6c 40 00       	mov    $0x406c88,%edi
  401f0a:	e8 21 f1 ff ff       	callq  401030 <puts@plt>
  401f0f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f14:	e8 27 f1 ff ff       	callq  401040 <exit@plt>
  401f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401f20 <vaddpd_zmmd>:
  401f20:	55                   	push   %rbp
  401f21:	48 89 e5             	mov    %rsp,%rbp
  401f24:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401f28:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401f2f:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  401f36:	00 00 00 
  401f39:	62 f1 fd 48 58 85 50 	vaddpd 0x50(%rbp),%zmm0,%zmm0
  401f40:	00 00 00 
  401f43:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  401f4a:	02 
  401f4b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  401f52:	00 00 00 
  401f55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  401f5c:	01 
  401f5d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  401f64:	02 
  401f65:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  401f6c:	c5 f8 77             	vzeroupper 
  401f6f:	e8 4c ff ff ff       	callq  401ec0 <vaddpd_check_zmmd>
  401f74:	31 c0                	xor    %eax,%eax
  401f76:	48 89 ec             	mov    %rbp,%rsp
  401f79:	5d                   	pop    %rbp
  401f7a:	c3                   	retq   
  401f7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401f80 <vaddpd_check_ymmd>:
  401f80:	55                   	push   %rbp
  401f81:	48 89 e5             	mov    %rsp,%rbp
  401f84:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401f88:	48 83 ec 40          	sub    $0x40,%rsp
  401f8c:	31 c0                	xor    %eax,%eax
  401f8e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  401f92:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401f96:	be 01 00 00 00       	mov    $0x1,%esi
  401f9b:	31 ff                	xor    %edi,%edi
  401f9d:	0f 1f 00             	nopl   (%rax)
  401fa0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  401fa5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  401faa:	0f 45 fe             	cmovne %esi,%edi
  401fad:	0f 4a fe             	cmovp  %esi,%edi
  401fb0:	48 83 c0 01          	add    $0x1,%rax
  401fb4:	48 83 f8 04          	cmp    $0x4,%rax
  401fb8:	75 e6                	jne    401fa0 <vaddpd_check_ymmd+0x20>
  401fba:	85 ff                	test   %edi,%edi
  401fbc:	75 07                	jne    401fc5 <vaddpd_check_ymmd+0x45>
  401fbe:	31 c0                	xor    %eax,%eax
  401fc0:	48 89 ec             	mov    %rbp,%rsp
  401fc3:	5d                   	pop    %rbp
  401fc4:	c3                   	retq   
  401fc5:	bf a2 6c 40 00       	mov    $0x406ca2,%edi
  401fca:	e8 61 f0 ff ff       	callq  401030 <puts@plt>
  401fcf:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd4:	e8 67 f0 ff ff       	callq  401040 <exit@plt>
  401fd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401fe0 <vaddpd_ymmd>:
  401fe0:	55                   	push   %rbp
  401fe1:	48 89 e5             	mov    %rsp,%rbp
  401fe4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401fe8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  401fef:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  401ff4:	c5 fd 58 45 50       	vaddpd 0x50(%rbp),%ymm0,%ymm0
  401ff9:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402000:	00 00 
  402002:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402009:	00 00 00 
  40200c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402013:	01 
  402014:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40201b:	02 
  40201c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402023:	c5 f8 77             	vzeroupper 
  402026:	e8 55 ff ff ff       	callq  401f80 <vaddpd_check_ymmd>
  40202b:	31 c0                	xor    %eax,%eax
  40202d:	48 89 ec             	mov    %rbp,%rsp
  402030:	5d                   	pop    %rbp
  402031:	c3                   	retq   
  402032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402039:	00 00 00 
  40203c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402040 <vsubpd_check_zmmd>:
  402040:	55                   	push   %rbp
  402041:	48 89 e5             	mov    %rsp,%rbp
  402044:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402048:	48 83 ec 40          	sub    $0x40,%rsp
  40204c:	31 c0                	xor    %eax,%eax
  40204e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402052:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402056:	be 01 00 00 00       	mov    $0x1,%esi
  40205b:	31 ff                	xor    %edi,%edi
  40205d:	0f 1f 00             	nopl   (%rax)
  402060:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402065:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40206a:	0f 45 fe             	cmovne %esi,%edi
  40206d:	0f 4a fe             	cmovp  %esi,%edi
  402070:	48 83 c0 01          	add    $0x1,%rax
  402074:	48 83 f8 08          	cmp    $0x8,%rax
  402078:	75 e6                	jne    402060 <vsubpd_check_zmmd+0x20>
  40207a:	85 ff                	test   %edi,%edi
  40207c:	75 07                	jne    402085 <vsubpd_check_zmmd+0x45>
  40207e:	31 c0                	xor    %eax,%eax
  402080:	48 89 ec             	mov    %rbp,%rsp
  402083:	5d                   	pop    %rbp
  402084:	c3                   	retq   
  402085:	bf bc 6c 40 00       	mov    $0x406cbc,%edi
  40208a:	e8 a1 ef ff ff       	callq  401030 <puts@plt>
  40208f:	bf 01 00 00 00       	mov    $0x1,%edi
  402094:	e8 a7 ef ff ff       	callq  401040 <exit@plt>
  402099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004020a0 <vsubpd_zmmd>:
  4020a0:	55                   	push   %rbp
  4020a1:	48 89 e5             	mov    %rsp,%rbp
  4020a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4020a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4020af:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  4020b6:	00 00 00 
  4020b9:	62 f1 fd 48 5c 85 50 	vsubpd 0x50(%rbp),%zmm0,%zmm0
  4020c0:	00 00 00 
  4020c3:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  4020ca:	02 
  4020cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4020d2:	00 00 00 
  4020d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4020dc:	01 
  4020dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4020e4:	02 
  4020e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4020ec:	c5 f8 77             	vzeroupper 
  4020ef:	e8 4c ff ff ff       	callq  402040 <vsubpd_check_zmmd>
  4020f4:	31 c0                	xor    %eax,%eax
  4020f6:	48 89 ec             	mov    %rbp,%rsp
  4020f9:	5d                   	pop    %rbp
  4020fa:	c3                   	retq   
  4020fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402100 <vsubpd_check_ymmd>:
  402100:	55                   	push   %rbp
  402101:	48 89 e5             	mov    %rsp,%rbp
  402104:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402108:	48 83 ec 40          	sub    $0x40,%rsp
  40210c:	31 c0                	xor    %eax,%eax
  40210e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402112:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402116:	be 01 00 00 00       	mov    $0x1,%esi
  40211b:	31 ff                	xor    %edi,%edi
  40211d:	0f 1f 00             	nopl   (%rax)
  402120:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402125:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40212a:	0f 45 fe             	cmovne %esi,%edi
  40212d:	0f 4a fe             	cmovp  %esi,%edi
  402130:	48 83 c0 01          	add    $0x1,%rax
  402134:	48 83 f8 04          	cmp    $0x4,%rax
  402138:	75 e6                	jne    402120 <vsubpd_check_ymmd+0x20>
  40213a:	85 ff                	test   %edi,%edi
  40213c:	75 07                	jne    402145 <vsubpd_check_ymmd+0x45>
  40213e:	31 c0                	xor    %eax,%eax
  402140:	48 89 ec             	mov    %rbp,%rsp
  402143:	5d                   	pop    %rbp
  402144:	c3                   	retq   
  402145:	bf d6 6c 40 00       	mov    $0x406cd6,%edi
  40214a:	e8 e1 ee ff ff       	callq  401030 <puts@plt>
  40214f:	bf 01 00 00 00       	mov    $0x1,%edi
  402154:	e8 e7 ee ff ff       	callq  401040 <exit@plt>
  402159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402160 <vsubpd_ymmd>:
  402160:	55                   	push   %rbp
  402161:	48 89 e5             	mov    %rsp,%rbp
  402164:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402168:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40216f:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  402174:	c5 fd 5c 45 50       	vsubpd 0x50(%rbp),%ymm0,%ymm0
  402179:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402180:	00 00 
  402182:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402189:	00 00 00 
  40218c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402193:	01 
  402194:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40219b:	02 
  40219c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4021a3:	c5 f8 77             	vzeroupper 
  4021a6:	e8 55 ff ff ff       	callq  402100 <vsubpd_check_ymmd>
  4021ab:	31 c0                	xor    %eax,%eax
  4021ad:	48 89 ec             	mov    %rbp,%rsp
  4021b0:	5d                   	pop    %rbp
  4021b1:	c3                   	retq   
  4021b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021b9:	00 00 00 
  4021bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021c0 <vmulpd_check_zmmd>:
  4021c0:	55                   	push   %rbp
  4021c1:	48 89 e5             	mov    %rsp,%rbp
  4021c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4021c8:	48 83 ec 40          	sub    $0x40,%rsp
  4021cc:	31 c0                	xor    %eax,%eax
  4021ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4021d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4021d6:	be 01 00 00 00       	mov    $0x1,%esi
  4021db:	31 ff                	xor    %edi,%edi
  4021dd:	0f 1f 00             	nopl   (%rax)
  4021e0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4021e5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4021ea:	0f 45 fe             	cmovne %esi,%edi
  4021ed:	0f 4a fe             	cmovp  %esi,%edi
  4021f0:	48 83 c0 01          	add    $0x1,%rax
  4021f4:	48 83 f8 08          	cmp    $0x8,%rax
  4021f8:	75 e6                	jne    4021e0 <vmulpd_check_zmmd+0x20>
  4021fa:	85 ff                	test   %edi,%edi
  4021fc:	75 07                	jne    402205 <vmulpd_check_zmmd+0x45>
  4021fe:	31 c0                	xor    %eax,%eax
  402200:	48 89 ec             	mov    %rbp,%rsp
  402203:	5d                   	pop    %rbp
  402204:	c3                   	retq   
  402205:	bf f0 6c 40 00       	mov    $0x406cf0,%edi
  40220a:	e8 21 ee ff ff       	callq  401030 <puts@plt>
  40220f:	bf 01 00 00 00       	mov    $0x1,%edi
  402214:	e8 27 ee ff ff       	callq  401040 <exit@plt>
  402219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402220 <vmulpd_zmmd>:
  402220:	55                   	push   %rbp
  402221:	48 89 e5             	mov    %rsp,%rbp
  402224:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402228:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40222f:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  402236:	00 00 00 
  402239:	62 f1 fd 48 59 85 50 	vmulpd 0x50(%rbp),%zmm0,%zmm0
  402240:	00 00 00 
  402243:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  40224a:	02 
  40224b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402252:	00 00 00 
  402255:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40225c:	01 
  40225d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402264:	02 
  402265:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40226c:	c5 f8 77             	vzeroupper 
  40226f:	e8 4c ff ff ff       	callq  4021c0 <vmulpd_check_zmmd>
  402274:	31 c0                	xor    %eax,%eax
  402276:	48 89 ec             	mov    %rbp,%rsp
  402279:	5d                   	pop    %rbp
  40227a:	c3                   	retq   
  40227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402280 <vmulpd_check_ymmd>:
  402280:	55                   	push   %rbp
  402281:	48 89 e5             	mov    %rsp,%rbp
  402284:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402288:	48 83 ec 40          	sub    $0x40,%rsp
  40228c:	31 c0                	xor    %eax,%eax
  40228e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402292:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402296:	be 01 00 00 00       	mov    $0x1,%esi
  40229b:	31 ff                	xor    %edi,%edi
  40229d:	0f 1f 00             	nopl   (%rax)
  4022a0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4022a5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4022aa:	0f 45 fe             	cmovne %esi,%edi
  4022ad:	0f 4a fe             	cmovp  %esi,%edi
  4022b0:	48 83 c0 01          	add    $0x1,%rax
  4022b4:	48 83 f8 04          	cmp    $0x4,%rax
  4022b8:	75 e6                	jne    4022a0 <vmulpd_check_ymmd+0x20>
  4022ba:	85 ff                	test   %edi,%edi
  4022bc:	75 07                	jne    4022c5 <vmulpd_check_ymmd+0x45>
  4022be:	31 c0                	xor    %eax,%eax
  4022c0:	48 89 ec             	mov    %rbp,%rsp
  4022c3:	5d                   	pop    %rbp
  4022c4:	c3                   	retq   
  4022c5:	bf 0a 6d 40 00       	mov    $0x406d0a,%edi
  4022ca:	e8 61 ed ff ff       	callq  401030 <puts@plt>
  4022cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4022d4:	e8 67 ed ff ff       	callq  401040 <exit@plt>
  4022d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004022e0 <vmulpd_ymmd>:
  4022e0:	55                   	push   %rbp
  4022e1:	48 89 e5             	mov    %rsp,%rbp
  4022e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4022e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4022ef:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  4022f4:	c5 fd 59 45 50       	vmulpd 0x50(%rbp),%ymm0,%ymm0
  4022f9:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402300:	00 00 
  402302:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402309:	00 00 00 
  40230c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402313:	01 
  402314:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40231b:	02 
  40231c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402323:	c5 f8 77             	vzeroupper 
  402326:	e8 55 ff ff ff       	callq  402280 <vmulpd_check_ymmd>
  40232b:	31 c0                	xor    %eax,%eax
  40232d:	48 89 ec             	mov    %rbp,%rsp
  402330:	5d                   	pop    %rbp
  402331:	c3                   	retq   
  402332:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402339:	00 00 00 
  40233c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402340 <vdivpd_check_zmmd>:
  402340:	55                   	push   %rbp
  402341:	48 89 e5             	mov    %rsp,%rbp
  402344:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402348:	48 83 ec 40          	sub    $0x40,%rsp
  40234c:	31 c0                	xor    %eax,%eax
  40234e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402352:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402356:	be 01 00 00 00       	mov    $0x1,%esi
  40235b:	31 ff                	xor    %edi,%edi
  40235d:	0f 1f 00             	nopl   (%rax)
  402360:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402365:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40236a:	0f 45 fe             	cmovne %esi,%edi
  40236d:	0f 4a fe             	cmovp  %esi,%edi
  402370:	48 83 c0 01          	add    $0x1,%rax
  402374:	48 83 f8 08          	cmp    $0x8,%rax
  402378:	75 e6                	jne    402360 <vdivpd_check_zmmd+0x20>
  40237a:	85 ff                	test   %edi,%edi
  40237c:	75 07                	jne    402385 <vdivpd_check_zmmd+0x45>
  40237e:	31 c0                	xor    %eax,%eax
  402380:	48 89 ec             	mov    %rbp,%rsp
  402383:	5d                   	pop    %rbp
  402384:	c3                   	retq   
  402385:	bf 24 6d 40 00       	mov    $0x406d24,%edi
  40238a:	e8 a1 ec ff ff       	callq  401030 <puts@plt>
  40238f:	bf 01 00 00 00       	mov    $0x1,%edi
  402394:	e8 a7 ec ff ff       	callq  401040 <exit@plt>
  402399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004023a0 <vdivpd_zmmd>:
  4023a0:	55                   	push   %rbp
  4023a1:	48 89 e5             	mov    %rsp,%rbp
  4023a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4023a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4023af:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  4023b6:	00 00 00 
  4023b9:	62 f1 fd 48 5e 85 50 	vdivpd 0x50(%rbp),%zmm0,%zmm0
  4023c0:	00 00 00 
  4023c3:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  4023ca:	02 
  4023cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4023d2:	00 00 00 
  4023d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4023dc:	01 
  4023dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4023e4:	02 
  4023e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4023ec:	c5 f8 77             	vzeroupper 
  4023ef:	e8 4c ff ff ff       	callq  402340 <vdivpd_check_zmmd>
  4023f4:	31 c0                	xor    %eax,%eax
  4023f6:	48 89 ec             	mov    %rbp,%rsp
  4023f9:	5d                   	pop    %rbp
  4023fa:	c3                   	retq   
  4023fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402400 <vdivpd_check_ymmd>:
  402400:	55                   	push   %rbp
  402401:	48 89 e5             	mov    %rsp,%rbp
  402404:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402408:	48 83 ec 40          	sub    $0x40,%rsp
  40240c:	31 c0                	xor    %eax,%eax
  40240e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402412:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402416:	be 01 00 00 00       	mov    $0x1,%esi
  40241b:	31 ff                	xor    %edi,%edi
  40241d:	0f 1f 00             	nopl   (%rax)
  402420:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402425:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40242a:	0f 45 fe             	cmovne %esi,%edi
  40242d:	0f 4a fe             	cmovp  %esi,%edi
  402430:	48 83 c0 01          	add    $0x1,%rax
  402434:	48 83 f8 04          	cmp    $0x4,%rax
  402438:	75 e6                	jne    402420 <vdivpd_check_ymmd+0x20>
  40243a:	85 ff                	test   %edi,%edi
  40243c:	75 07                	jne    402445 <vdivpd_check_ymmd+0x45>
  40243e:	31 c0                	xor    %eax,%eax
  402440:	48 89 ec             	mov    %rbp,%rsp
  402443:	5d                   	pop    %rbp
  402444:	c3                   	retq   
  402445:	bf 3e 6d 40 00       	mov    $0x406d3e,%edi
  40244a:	e8 e1 eb ff ff       	callq  401030 <puts@plt>
  40244f:	bf 01 00 00 00       	mov    $0x1,%edi
  402454:	e8 e7 eb ff ff       	callq  401040 <exit@plt>
  402459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402460 <vdivpd_ymmd>:
  402460:	55                   	push   %rbp
  402461:	48 89 e5             	mov    %rsp,%rbp
  402464:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402468:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40246f:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  402474:	c5 fd 5e 45 50       	vdivpd 0x50(%rbp),%ymm0,%ymm0
  402479:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402480:	00 00 
  402482:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402489:	00 00 00 
  40248c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402493:	01 
  402494:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40249b:	02 
  40249c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4024a3:	c5 f8 77             	vzeroupper 
  4024a6:	e8 55 ff ff ff       	callq  402400 <vdivpd_check_ymmd>
  4024ab:	31 c0                	xor    %eax,%eax
  4024ad:	48 89 ec             	mov    %rbp,%rsp
  4024b0:	5d                   	pop    %rbp
  4024b1:	c3                   	retq   
  4024b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4024b9:	00 00 00 
  4024bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004024c0 <vmaxpd_check_zmmd>:
  4024c0:	55                   	push   %rbp
  4024c1:	48 89 e5             	mov    %rsp,%rbp
  4024c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4024c8:	48 83 ec 40          	sub    $0x40,%rsp
  4024cc:	31 c0                	xor    %eax,%eax
  4024ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4024d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4024d6:	be 01 00 00 00       	mov    $0x1,%esi
  4024db:	31 ff                	xor    %edi,%edi
  4024dd:	0f 1f 00             	nopl   (%rax)
  4024e0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4024e5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4024ea:	0f 45 fe             	cmovne %esi,%edi
  4024ed:	0f 4a fe             	cmovp  %esi,%edi
  4024f0:	48 83 c0 01          	add    $0x1,%rax
  4024f4:	48 83 f8 08          	cmp    $0x8,%rax
  4024f8:	75 e6                	jne    4024e0 <vmaxpd_check_zmmd+0x20>
  4024fa:	85 ff                	test   %edi,%edi
  4024fc:	75 07                	jne    402505 <vmaxpd_check_zmmd+0x45>
  4024fe:	31 c0                	xor    %eax,%eax
  402500:	48 89 ec             	mov    %rbp,%rsp
  402503:	5d                   	pop    %rbp
  402504:	c3                   	retq   
  402505:	bf 58 6d 40 00       	mov    $0x406d58,%edi
  40250a:	e8 21 eb ff ff       	callq  401030 <puts@plt>
  40250f:	bf 01 00 00 00       	mov    $0x1,%edi
  402514:	e8 27 eb ff ff       	callq  401040 <exit@plt>
  402519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402520 <vmaxpd_zmmd>:
  402520:	55                   	push   %rbp
  402521:	48 89 e5             	mov    %rsp,%rbp
  402524:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402528:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40252f:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  402536:	00 00 00 
  402539:	62 f1 fd 48 5f 85 50 	vmaxpd 0x50(%rbp),%zmm0,%zmm0
  402540:	00 00 00 
  402543:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  40254a:	02 
  40254b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402552:	00 00 00 
  402555:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40255c:	01 
  40255d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402564:	02 
  402565:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40256c:	c5 f8 77             	vzeroupper 
  40256f:	e8 4c ff ff ff       	callq  4024c0 <vmaxpd_check_zmmd>
  402574:	31 c0                	xor    %eax,%eax
  402576:	48 89 ec             	mov    %rbp,%rsp
  402579:	5d                   	pop    %rbp
  40257a:	c3                   	retq   
  40257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402580 <vmaxpd_check_ymmd>:
  402580:	55                   	push   %rbp
  402581:	48 89 e5             	mov    %rsp,%rbp
  402584:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402588:	48 83 ec 40          	sub    $0x40,%rsp
  40258c:	31 c0                	xor    %eax,%eax
  40258e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402592:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402596:	be 01 00 00 00       	mov    $0x1,%esi
  40259b:	31 ff                	xor    %edi,%edi
  40259d:	0f 1f 00             	nopl   (%rax)
  4025a0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4025a5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4025aa:	0f 45 fe             	cmovne %esi,%edi
  4025ad:	0f 4a fe             	cmovp  %esi,%edi
  4025b0:	48 83 c0 01          	add    $0x1,%rax
  4025b4:	48 83 f8 04          	cmp    $0x4,%rax
  4025b8:	75 e6                	jne    4025a0 <vmaxpd_check_ymmd+0x20>
  4025ba:	85 ff                	test   %edi,%edi
  4025bc:	75 07                	jne    4025c5 <vmaxpd_check_ymmd+0x45>
  4025be:	31 c0                	xor    %eax,%eax
  4025c0:	48 89 ec             	mov    %rbp,%rsp
  4025c3:	5d                   	pop    %rbp
  4025c4:	c3                   	retq   
  4025c5:	bf 72 6d 40 00       	mov    $0x406d72,%edi
  4025ca:	e8 61 ea ff ff       	callq  401030 <puts@plt>
  4025cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d4:	e8 67 ea ff ff       	callq  401040 <exit@plt>
  4025d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004025e0 <vmaxpd_ymmd>:
  4025e0:	55                   	push   %rbp
  4025e1:	48 89 e5             	mov    %rsp,%rbp
  4025e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4025e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4025ef:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  4025f4:	c5 fd 5f 45 50       	vmaxpd 0x50(%rbp),%ymm0,%ymm0
  4025f9:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402600:	00 00 
  402602:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402609:	00 00 00 
  40260c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402613:	01 
  402614:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40261b:	02 
  40261c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402623:	c5 f8 77             	vzeroupper 
  402626:	e8 55 ff ff ff       	callq  402580 <vmaxpd_check_ymmd>
  40262b:	31 c0                	xor    %eax,%eax
  40262d:	48 89 ec             	mov    %rbp,%rsp
  402630:	5d                   	pop    %rbp
  402631:	c3                   	retq   
  402632:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402639:	00 00 00 
  40263c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402640 <vminpd_check_zmmd>:
  402640:	55                   	push   %rbp
  402641:	48 89 e5             	mov    %rsp,%rbp
  402644:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402648:	48 83 ec 40          	sub    $0x40,%rsp
  40264c:	31 c0                	xor    %eax,%eax
  40264e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402652:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402656:	be 01 00 00 00       	mov    $0x1,%esi
  40265b:	31 ff                	xor    %edi,%edi
  40265d:	0f 1f 00             	nopl   (%rax)
  402660:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402665:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40266a:	0f 45 fe             	cmovne %esi,%edi
  40266d:	0f 4a fe             	cmovp  %esi,%edi
  402670:	48 83 c0 01          	add    $0x1,%rax
  402674:	48 83 f8 08          	cmp    $0x8,%rax
  402678:	75 e6                	jne    402660 <vminpd_check_zmmd+0x20>
  40267a:	85 ff                	test   %edi,%edi
  40267c:	75 07                	jne    402685 <vminpd_check_zmmd+0x45>
  40267e:	31 c0                	xor    %eax,%eax
  402680:	48 89 ec             	mov    %rbp,%rsp
  402683:	5d                   	pop    %rbp
  402684:	c3                   	retq   
  402685:	bf 8c 6d 40 00       	mov    $0x406d8c,%edi
  40268a:	e8 a1 e9 ff ff       	callq  401030 <puts@plt>
  40268f:	bf 01 00 00 00       	mov    $0x1,%edi
  402694:	e8 a7 e9 ff ff       	callq  401040 <exit@plt>
  402699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004026a0 <vminpd_zmmd>:
  4026a0:	55                   	push   %rbp
  4026a1:	48 89 e5             	mov    %rsp,%rbp
  4026a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4026a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4026af:	62 f1 fd 48 28 85 10 	vmovapd 0x10(%rbp),%zmm0
  4026b6:	00 00 00 
  4026b9:	62 f1 fd 48 5d 85 50 	vminpd 0x50(%rbp),%zmm0,%zmm0
  4026c0:	00 00 00 
  4026c3:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0x80(%rsp)
  4026ca:	02 
  4026cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4026d2:	00 00 00 
  4026d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4026dc:	01 
  4026dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4026e4:	02 
  4026e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4026ec:	c5 f8 77             	vzeroupper 
  4026ef:	e8 4c ff ff ff       	callq  402640 <vminpd_check_zmmd>
  4026f4:	31 c0                	xor    %eax,%eax
  4026f6:	48 89 ec             	mov    %rbp,%rsp
  4026f9:	5d                   	pop    %rbp
  4026fa:	c3                   	retq   
  4026fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402700 <vminpd_check_ymmd>:
  402700:	55                   	push   %rbp
  402701:	48 89 e5             	mov    %rsp,%rbp
  402704:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402708:	48 83 ec 40          	sub    $0x40,%rsp
  40270c:	31 c0                	xor    %eax,%eax
  40270e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402712:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402716:	be 01 00 00 00       	mov    $0x1,%esi
  40271b:	31 ff                	xor    %edi,%edi
  40271d:	0f 1f 00             	nopl   (%rax)
  402720:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  402725:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  40272a:	0f 45 fe             	cmovne %esi,%edi
  40272d:	0f 4a fe             	cmovp  %esi,%edi
  402730:	48 83 c0 01          	add    $0x1,%rax
  402734:	48 83 f8 04          	cmp    $0x4,%rax
  402738:	75 e6                	jne    402720 <vminpd_check_ymmd+0x20>
  40273a:	85 ff                	test   %edi,%edi
  40273c:	75 07                	jne    402745 <vminpd_check_ymmd+0x45>
  40273e:	31 c0                	xor    %eax,%eax
  402740:	48 89 ec             	mov    %rbp,%rsp
  402743:	5d                   	pop    %rbp
  402744:	c3                   	retq   
  402745:	bf a6 6d 40 00       	mov    $0x406da6,%edi
  40274a:	e8 e1 e8 ff ff       	callq  401030 <puts@plt>
  40274f:	bf 01 00 00 00       	mov    $0x1,%edi
  402754:	e8 e7 e8 ff ff       	callq  401040 <exit@plt>
  402759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402760 <vminpd_ymmd>:
  402760:	55                   	push   %rbp
  402761:	48 89 e5             	mov    %rsp,%rbp
  402764:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402768:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40276f:	c5 fd 28 45 10       	vmovapd 0x10(%rbp),%ymm0
  402774:	c5 fd 5d 45 50       	vminpd 0x50(%rbp),%ymm0,%ymm0
  402779:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  402780:	00 00 
  402782:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402789:	00 00 00 
  40278c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402793:	01 
  402794:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40279b:	02 
  40279c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4027a3:	c5 f8 77             	vzeroupper 
  4027a6:	e8 55 ff ff ff       	callq  402700 <vminpd_check_ymmd>
  4027ab:	31 c0                	xor    %eax,%eax
  4027ad:	48 89 ec             	mov    %rbp,%rsp
  4027b0:	5d                   	pop    %rbp
  4027b1:	c3                   	retq   
  4027b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027b9:	00 00 00 
  4027bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004027c0 <vxorpd_check_zmmd>:
  4027c0:	55                   	push   %rbp
  4027c1:	48 89 e5             	mov    %rsp,%rbp
  4027c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4027c8:	48 83 ec 40          	sub    $0x40,%rsp
  4027cc:	31 c0                	xor    %eax,%eax
  4027ce:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  4027d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4027d6:	be 01 00 00 00       	mov    $0x1,%esi
  4027db:	31 ff                	xor    %edi,%edi
  4027dd:	0f 1f 00             	nopl   (%rax)
  4027e0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4027e5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4027ea:	0f 45 fe             	cmovne %esi,%edi
  4027ed:	0f 4a fe             	cmovp  %esi,%edi
  4027f0:	48 83 c0 01          	add    $0x1,%rax
  4027f4:	48 83 f8 08          	cmp    $0x8,%rax
  4027f8:	75 e6                	jne    4027e0 <vxorpd_check_zmmd+0x20>
  4027fa:	85 ff                	test   %edi,%edi
  4027fc:	75 07                	jne    402805 <vxorpd_check_zmmd+0x45>
  4027fe:	31 c0                	xor    %eax,%eax
  402800:	48 89 ec             	mov    %rbp,%rsp
  402803:	5d                   	pop    %rbp
  402804:	c3                   	retq   
  402805:	bf c0 6d 40 00       	mov    $0x406dc0,%edi
  40280a:	e8 21 e8 ff ff       	callq  401030 <puts@plt>
  40280f:	bf 01 00 00 00       	mov    $0x1,%edi
  402814:	e8 27 e8 ff ff       	callq  401040 <exit@plt>
  402819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402820 <vxorpd_zmmd>:
  402820:	55                   	push   %rbp
  402821:	48 89 e5             	mov    %rsp,%rbp
  402824:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402828:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40282f:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  402836:	00 00 00 
  402839:	62 f1 7c 48 57 85 10 	vxorps 0x10(%rbp),%zmm0,%zmm0
  402840:	00 00 00 
  402843:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40284a:	02 
  40284b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402852:	00 00 00 
  402855:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40285c:	01 
  40285d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402864:	02 
  402865:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40286c:	c5 f8 77             	vzeroupper 
  40286f:	e8 4c ff ff ff       	callq  4027c0 <vxorpd_check_zmmd>
  402874:	31 c0                	xor    %eax,%eax
  402876:	48 89 ec             	mov    %rbp,%rsp
  402879:	5d                   	pop    %rbp
  40287a:	c3                   	retq   
  40287b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402880 <vxorpd_check_ymmd>:
  402880:	55                   	push   %rbp
  402881:	48 89 e5             	mov    %rsp,%rbp
  402884:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402888:	48 83 ec 40          	sub    $0x40,%rsp
  40288c:	31 c0                	xor    %eax,%eax
  40288e:	48 8d 4d 50          	lea    0x50(%rbp),%rcx
  402892:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402896:	be 01 00 00 00       	mov    $0x1,%esi
  40289b:	31 ff                	xor    %edi,%edi
  40289d:	0f 1f 00             	nopl   (%rax)
  4028a0:	c5 fb 10 04 c1       	vmovsd (%rcx,%rax,8),%xmm0
  4028a5:	c5 f9 2e 04 c2       	vucomisd (%rdx,%rax,8),%xmm0
  4028aa:	0f 45 fe             	cmovne %esi,%edi
  4028ad:	0f 4a fe             	cmovp  %esi,%edi
  4028b0:	48 83 c0 01          	add    $0x1,%rax
  4028b4:	48 83 f8 04          	cmp    $0x4,%rax
  4028b8:	75 e6                	jne    4028a0 <vxorpd_check_ymmd+0x20>
  4028ba:	85 ff                	test   %edi,%edi
  4028bc:	75 07                	jne    4028c5 <vxorpd_check_ymmd+0x45>
  4028be:	31 c0                	xor    %eax,%eax
  4028c0:	48 89 ec             	mov    %rbp,%rsp
  4028c3:	5d                   	pop    %rbp
  4028c4:	c3                   	retq   
  4028c5:	bf da 6d 40 00       	mov    $0x406dda,%edi
  4028ca:	e8 61 e7 ff ff       	callq  401030 <puts@plt>
  4028cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4028d4:	e8 67 e7 ff ff       	callq  401040 <exit@plt>
  4028d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004028e0 <vxorpd_ymmd>:
  4028e0:	55                   	push   %rbp
  4028e1:	48 89 e5             	mov    %rsp,%rbp
  4028e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4028e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4028ef:	c5 fc 28 45 50       	vmovaps 0x50(%rbp),%ymm0
  4028f4:	c5 fc 57 45 10       	vxorps 0x10(%rbp),%ymm0,%ymm0
  4028f9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  402900:	00 00 
  402902:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402909:	00 00 00 
  40290c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402913:	01 
  402914:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40291b:	02 
  40291c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402923:	c5 f8 77             	vzeroupper 
  402926:	e8 55 ff ff ff       	callq  402880 <vxorpd_check_ymmd>
  40292b:	31 c0                	xor    %eax,%eax
  40292d:	48 89 ec             	mov    %rbp,%rsp
  402930:	5d                   	pop    %rbp
  402931:	c3                   	retq   
  402932:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402939:	00 00 00 
  40293c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402940 <vpaddb_check_zmmi>:
  402940:	55                   	push   %rbp
  402941:	48 89 e5             	mov    %rsp,%rbp
  402944:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402948:	48 83 ec 40          	sub    $0x40,%rsp
  40294c:	31 c0                	xor    %eax,%eax
  40294e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402952:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402956:	be 01 00 00 00       	mov    $0x1,%esi
  40295b:	31 ff                	xor    %edi,%edi
  40295d:	0f 1f 00             	nopl   (%rax)
  402960:	41 0f b6 0c 00       	movzbl (%r8,%rax,1),%ecx
  402965:	3a 0c 02             	cmp    (%rdx,%rax,1),%cl
  402968:	0f 45 fe             	cmovne %esi,%edi
  40296b:	48 83 c0 01          	add    $0x1,%rax
  40296f:	48 83 f8 40          	cmp    $0x40,%rax
  402973:	75 eb                	jne    402960 <vpaddb_check_zmmi+0x20>
  402975:	85 ff                	test   %edi,%edi
  402977:	75 07                	jne    402980 <vpaddb_check_zmmi+0x40>
  402979:	31 c0                	xor    %eax,%eax
  40297b:	48 89 ec             	mov    %rbp,%rsp
  40297e:	5d                   	pop    %rbp
  40297f:	c3                   	retq   
  402980:	bf f4 6d 40 00       	mov    $0x406df4,%edi
  402985:	e8 a6 e6 ff ff       	callq  401030 <puts@plt>
  40298a:	bf 01 00 00 00       	mov    $0x1,%edi
  40298f:	e8 ac e6 ff ff       	callq  401040 <exit@plt>
  402994:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40299b:	00 00 00 
  40299e:	66 90                	xchg   %ax,%ax

00000000004029a0 <vpaddb_zmmi>:
  4029a0:	55                   	push   %rbp
  4029a1:	48 89 e5             	mov    %rsp,%rbp
  4029a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4029a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4029af:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  4029b6:	00 00 00 
  4029b9:	62 f1 7d 48 fc 85 10 	vpaddb 0x10(%rbp),%zmm0,%zmm0
  4029c0:	00 00 00 
  4029c3:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  4029ca:	02 
  4029cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4029d2:	00 00 00 
  4029d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4029dc:	01 
  4029dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4029e4:	02 
  4029e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4029ec:	c5 f8 77             	vzeroupper 
  4029ef:	e8 4c ff ff ff       	callq  402940 <vpaddb_check_zmmi>
  4029f4:	31 c0                	xor    %eax,%eax
  4029f6:	48 89 ec             	mov    %rbp,%rsp
  4029f9:	5d                   	pop    %rbp
  4029fa:	c3                   	retq   
  4029fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402a00 <vpaddb_check_ymmi>:
  402a00:	55                   	push   %rbp
  402a01:	48 89 e5             	mov    %rsp,%rbp
  402a04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402a08:	48 83 ec 40          	sub    $0x40,%rsp
  402a0c:	31 c0                	xor    %eax,%eax
  402a0e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402a12:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402a16:	be 01 00 00 00       	mov    $0x1,%esi
  402a1b:	31 ff                	xor    %edi,%edi
  402a1d:	0f 1f 00             	nopl   (%rax)
  402a20:	41 0f b6 0c 00       	movzbl (%r8,%rax,1),%ecx
  402a25:	3a 0c 02             	cmp    (%rdx,%rax,1),%cl
  402a28:	0f 45 fe             	cmovne %esi,%edi
  402a2b:	48 83 c0 01          	add    $0x1,%rax
  402a2f:	48 83 f8 20          	cmp    $0x20,%rax
  402a33:	75 eb                	jne    402a20 <vpaddb_check_ymmi+0x20>
  402a35:	85 ff                	test   %edi,%edi
  402a37:	75 07                	jne    402a40 <vpaddb_check_ymmi+0x40>
  402a39:	31 c0                	xor    %eax,%eax
  402a3b:	48 89 ec             	mov    %rbp,%rsp
  402a3e:	5d                   	pop    %rbp
  402a3f:	c3                   	retq   
  402a40:	bf 0e 6e 40 00       	mov    $0x406e0e,%edi
  402a45:	e8 e6 e5 ff ff       	callq  401030 <puts@plt>
  402a4a:	bf 01 00 00 00       	mov    $0x1,%edi
  402a4f:	e8 ec e5 ff ff       	callq  401040 <exit@plt>
  402a54:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a5b:	00 00 00 
  402a5e:	66 90                	xchg   %ax,%ax

0000000000402a60 <vpaddb_ymmi>:
  402a60:	55                   	push   %rbp
  402a61:	48 89 e5             	mov    %rsp,%rbp
  402a64:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402a68:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402a6f:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  402a74:	c5 fd fc 45 10       	vpaddb 0x10(%rbp),%ymm0,%ymm0
  402a79:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  402a80:	00 00 
  402a82:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402a89:	00 00 00 
  402a8c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402a93:	01 
  402a94:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402a9b:	02 
  402a9c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402aa3:	c5 f8 77             	vzeroupper 
  402aa6:	e8 55 ff ff ff       	callq  402a00 <vpaddb_check_ymmi>
  402aab:	31 c0                	xor    %eax,%eax
  402aad:	48 89 ec             	mov    %rbp,%rsp
  402ab0:	5d                   	pop    %rbp
  402ab1:	c3                   	retq   
  402ab2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ab9:	00 00 00 
  402abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ac0 <vpaddsb_check_zmmi>:
  402ac0:	55                   	push   %rbp
  402ac1:	48 89 e5             	mov    %rsp,%rbp
  402ac4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402ac8:	48 83 ec 40          	sub    $0x40,%rsp
  402acc:	31 c0                	xor    %eax,%eax
  402ace:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402ad2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402ad6:	be 01 00 00 00       	mov    $0x1,%esi
  402adb:	31 ff                	xor    %edi,%edi
  402add:	0f 1f 00             	nopl   (%rax)
  402ae0:	41 0f b6 0c 00       	movzbl (%r8,%rax,1),%ecx
  402ae5:	3a 0c 02             	cmp    (%rdx,%rax,1),%cl
  402ae8:	0f 45 fe             	cmovne %esi,%edi
  402aeb:	48 83 c0 01          	add    $0x1,%rax
  402aef:	48 83 f8 40          	cmp    $0x40,%rax
  402af3:	75 eb                	jne    402ae0 <vpaddsb_check_zmmi+0x20>
  402af5:	85 ff                	test   %edi,%edi
  402af7:	75 07                	jne    402b00 <vpaddsb_check_zmmi+0x40>
  402af9:	31 c0                	xor    %eax,%eax
  402afb:	48 89 ec             	mov    %rbp,%rsp
  402afe:	5d                   	pop    %rbp
  402aff:	c3                   	retq   
  402b00:	bf 28 6e 40 00       	mov    $0x406e28,%edi
  402b05:	e8 26 e5 ff ff       	callq  401030 <puts@plt>
  402b0a:	bf 01 00 00 00       	mov    $0x1,%edi
  402b0f:	e8 2c e5 ff ff       	callq  401040 <exit@plt>
  402b14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b1b:	00 00 00 
  402b1e:	66 90                	xchg   %ax,%ax

0000000000402b20 <vpaddsb_zmmi>:
  402b20:	55                   	push   %rbp
  402b21:	48 89 e5             	mov    %rsp,%rbp
  402b24:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402b28:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402b2f:	62 f1 fd 48 6f 85 10 	vmovdqa64 0x10(%rbp),%zmm0
  402b36:	00 00 00 
  402b39:	62 f1 7d 48 ec 85 50 	vpaddsb 0x50(%rbp),%zmm0,%zmm0
  402b40:	00 00 00 
  402b43:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  402b4a:	02 
  402b4b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402b52:	00 00 00 
  402b55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402b5c:	01 
  402b5d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402b64:	02 
  402b65:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402b6c:	c5 f8 77             	vzeroupper 
  402b6f:	e8 4c ff ff ff       	callq  402ac0 <vpaddsb_check_zmmi>
  402b74:	31 c0                	xor    %eax,%eax
  402b76:	48 89 ec             	mov    %rbp,%rsp
  402b79:	5d                   	pop    %rbp
  402b7a:	c3                   	retq   
  402b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402b80 <vpaddsb_check_ymmi>:
  402b80:	55                   	push   %rbp
  402b81:	48 89 e5             	mov    %rsp,%rbp
  402b84:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402b88:	48 83 ec 40          	sub    $0x40,%rsp
  402b8c:	31 c0                	xor    %eax,%eax
  402b8e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402b92:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402b96:	be 01 00 00 00       	mov    $0x1,%esi
  402b9b:	31 ff                	xor    %edi,%edi
  402b9d:	0f 1f 00             	nopl   (%rax)
  402ba0:	41 0f b6 0c 00       	movzbl (%r8,%rax,1),%ecx
  402ba5:	3a 0c 02             	cmp    (%rdx,%rax,1),%cl
  402ba8:	0f 45 fe             	cmovne %esi,%edi
  402bab:	48 83 c0 01          	add    $0x1,%rax
  402baf:	48 83 f8 20          	cmp    $0x20,%rax
  402bb3:	75 eb                	jne    402ba0 <vpaddsb_check_ymmi+0x20>
  402bb5:	85 ff                	test   %edi,%edi
  402bb7:	75 07                	jne    402bc0 <vpaddsb_check_ymmi+0x40>
  402bb9:	31 c0                	xor    %eax,%eax
  402bbb:	48 89 ec             	mov    %rbp,%rsp
  402bbe:	5d                   	pop    %rbp
  402bbf:	c3                   	retq   
  402bc0:	bf 43 6e 40 00       	mov    $0x406e43,%edi
  402bc5:	e8 66 e4 ff ff       	callq  401030 <puts@plt>
  402bca:	bf 01 00 00 00       	mov    $0x1,%edi
  402bcf:	e8 6c e4 ff ff       	callq  401040 <exit@plt>
  402bd4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bdb:	00 00 00 
  402bde:	66 90                	xchg   %ax,%ax

0000000000402be0 <vpaddsb_ymmi>:
  402be0:	55                   	push   %rbp
  402be1:	48 89 e5             	mov    %rsp,%rbp
  402be4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402be8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402bef:	c5 fd 6f 45 10       	vmovdqa 0x10(%rbp),%ymm0
  402bf4:	c5 fd ec 45 50       	vpaddsb 0x50(%rbp),%ymm0,%ymm0
  402bf9:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  402c00:	00 00 
  402c02:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402c09:	00 00 00 
  402c0c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402c13:	01 
  402c14:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402c1b:	02 
  402c1c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402c23:	c5 f8 77             	vzeroupper 
  402c26:	e8 55 ff ff ff       	callq  402b80 <vpaddsb_check_ymmi>
  402c2b:	31 c0                	xor    %eax,%eax
  402c2d:	48 89 ec             	mov    %rbp,%rsp
  402c30:	5d                   	pop    %rbp
  402c31:	c3                   	retq   
  402c32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c39:	00 00 00 
  402c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402c40 <vpaddw_check_zmmi>:
  402c40:	55                   	push   %rbp
  402c41:	48 89 e5             	mov    %rsp,%rbp
  402c44:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402c48:	48 83 ec 40          	sub    $0x40,%rsp
  402c4c:	31 c0                	xor    %eax,%eax
  402c4e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402c52:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402c56:	be 01 00 00 00       	mov    $0x1,%esi
  402c5b:	31 ff                	xor    %edi,%edi
  402c5d:	0f 1f 00             	nopl   (%rax)
  402c60:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  402c65:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  402c69:	0f 45 fe             	cmovne %esi,%edi
  402c6c:	48 83 c0 01          	add    $0x1,%rax
  402c70:	48 83 f8 20          	cmp    $0x20,%rax
  402c74:	75 ea                	jne    402c60 <vpaddw_check_zmmi+0x20>
  402c76:	85 ff                	test   %edi,%edi
  402c78:	75 07                	jne    402c81 <vpaddw_check_zmmi+0x41>
  402c7a:	31 c0                	xor    %eax,%eax
  402c7c:	48 89 ec             	mov    %rbp,%rsp
  402c7f:	5d                   	pop    %rbp
  402c80:	c3                   	retq   
  402c81:	bf 5e 6e 40 00       	mov    $0x406e5e,%edi
  402c86:	e8 a5 e3 ff ff       	callq  401030 <puts@plt>
  402c8b:	bf 01 00 00 00       	mov    $0x1,%edi
  402c90:	e8 ab e3 ff ff       	callq  401040 <exit@plt>
  402c95:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c9c:	00 00 00 
  402c9f:	90                   	nop

0000000000402ca0 <vpaddw_zmmi>:
  402ca0:	55                   	push   %rbp
  402ca1:	48 89 e5             	mov    %rsp,%rbp
  402ca4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402ca8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402caf:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  402cb6:	00 00 00 
  402cb9:	62 f1 7d 48 fd 85 10 	vpaddw 0x10(%rbp),%zmm0,%zmm0
  402cc0:	00 00 00 
  402cc3:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  402cca:	02 
  402ccb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402cd2:	00 00 00 
  402cd5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402cdc:	01 
  402cdd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402ce4:	02 
  402ce5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402cec:	c5 f8 77             	vzeroupper 
  402cef:	e8 4c ff ff ff       	callq  402c40 <vpaddw_check_zmmi>
  402cf4:	31 c0                	xor    %eax,%eax
  402cf6:	48 89 ec             	mov    %rbp,%rsp
  402cf9:	5d                   	pop    %rbp
  402cfa:	c3                   	retq   
  402cfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402d00 <vpaddw_check_ymmi>:
  402d00:	55                   	push   %rbp
  402d01:	48 89 e5             	mov    %rsp,%rbp
  402d04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402d08:	48 83 ec 40          	sub    $0x40,%rsp
  402d0c:	31 c0                	xor    %eax,%eax
  402d0e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402d12:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402d16:	be 01 00 00 00       	mov    $0x1,%esi
  402d1b:	31 ff                	xor    %edi,%edi
  402d1d:	0f 1f 00             	nopl   (%rax)
  402d20:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  402d25:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  402d29:	0f 45 fe             	cmovne %esi,%edi
  402d2c:	48 83 c0 01          	add    $0x1,%rax
  402d30:	48 83 f8 10          	cmp    $0x10,%rax
  402d34:	75 ea                	jne    402d20 <vpaddw_check_ymmi+0x20>
  402d36:	85 ff                	test   %edi,%edi
  402d38:	75 07                	jne    402d41 <vpaddw_check_ymmi+0x41>
  402d3a:	31 c0                	xor    %eax,%eax
  402d3c:	48 89 ec             	mov    %rbp,%rsp
  402d3f:	5d                   	pop    %rbp
  402d40:	c3                   	retq   
  402d41:	bf 78 6e 40 00       	mov    $0x406e78,%edi
  402d46:	e8 e5 e2 ff ff       	callq  401030 <puts@plt>
  402d4b:	bf 01 00 00 00       	mov    $0x1,%edi
  402d50:	e8 eb e2 ff ff       	callq  401040 <exit@plt>
  402d55:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d5c:	00 00 00 
  402d5f:	90                   	nop

0000000000402d60 <vpaddw_ymmi>:
  402d60:	55                   	push   %rbp
  402d61:	48 89 e5             	mov    %rsp,%rbp
  402d64:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402d68:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402d6f:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  402d74:	c5 fd fd 45 10       	vpaddw 0x10(%rbp),%ymm0,%ymm0
  402d79:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  402d80:	00 00 
  402d82:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402d89:	00 00 00 
  402d8c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402d93:	01 
  402d94:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402d9b:	02 
  402d9c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402da3:	c5 f8 77             	vzeroupper 
  402da6:	e8 55 ff ff ff       	callq  402d00 <vpaddw_check_ymmi>
  402dab:	31 c0                	xor    %eax,%eax
  402dad:	48 89 ec             	mov    %rbp,%rsp
  402db0:	5d                   	pop    %rbp
  402db1:	c3                   	retq   
  402db2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402db9:	00 00 00 
  402dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402dc0 <vpaddsw_check_zmmi>:
  402dc0:	55                   	push   %rbp
  402dc1:	48 89 e5             	mov    %rsp,%rbp
  402dc4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402dc8:	48 83 ec 40          	sub    $0x40,%rsp
  402dcc:	31 c0                	xor    %eax,%eax
  402dce:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402dd2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402dd6:	be 01 00 00 00       	mov    $0x1,%esi
  402ddb:	31 ff                	xor    %edi,%edi
  402ddd:	0f 1f 00             	nopl   (%rax)
  402de0:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  402de5:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  402de9:	0f 45 fe             	cmovne %esi,%edi
  402dec:	48 83 c0 01          	add    $0x1,%rax
  402df0:	48 83 f8 20          	cmp    $0x20,%rax
  402df4:	75 ea                	jne    402de0 <vpaddsw_check_zmmi+0x20>
  402df6:	85 ff                	test   %edi,%edi
  402df8:	75 07                	jne    402e01 <vpaddsw_check_zmmi+0x41>
  402dfa:	31 c0                	xor    %eax,%eax
  402dfc:	48 89 ec             	mov    %rbp,%rsp
  402dff:	5d                   	pop    %rbp
  402e00:	c3                   	retq   
  402e01:	bf 92 6e 40 00       	mov    $0x406e92,%edi
  402e06:	e8 25 e2 ff ff       	callq  401030 <puts@plt>
  402e0b:	bf 01 00 00 00       	mov    $0x1,%edi
  402e10:	e8 2b e2 ff ff       	callq  401040 <exit@plt>
  402e15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e1c:	00 00 00 
  402e1f:	90                   	nop

0000000000402e20 <vpaddsw_zmmi>:
  402e20:	55                   	push   %rbp
  402e21:	48 89 e5             	mov    %rsp,%rbp
  402e24:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402e28:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402e2f:	62 f1 fd 48 6f 85 10 	vmovdqa64 0x10(%rbp),%zmm0
  402e36:	00 00 00 
  402e39:	62 f1 7d 48 ed 85 50 	vpaddsw 0x50(%rbp),%zmm0,%zmm0
  402e40:	00 00 00 
  402e43:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  402e4a:	02 
  402e4b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402e52:	00 00 00 
  402e55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402e5c:	01 
  402e5d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402e64:	02 
  402e65:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402e6c:	c5 f8 77             	vzeroupper 
  402e6f:	e8 4c ff ff ff       	callq  402dc0 <vpaddsw_check_zmmi>
  402e74:	31 c0                	xor    %eax,%eax
  402e76:	48 89 ec             	mov    %rbp,%rsp
  402e79:	5d                   	pop    %rbp
  402e7a:	c3                   	retq   
  402e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402e80 <vpaddsw_check_ymmi>:
  402e80:	55                   	push   %rbp
  402e81:	48 89 e5             	mov    %rsp,%rbp
  402e84:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402e88:	48 83 ec 40          	sub    $0x40,%rsp
  402e8c:	31 c0                	xor    %eax,%eax
  402e8e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402e92:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402e96:	be 01 00 00 00       	mov    $0x1,%esi
  402e9b:	31 ff                	xor    %edi,%edi
  402e9d:	0f 1f 00             	nopl   (%rax)
  402ea0:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  402ea5:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  402ea9:	0f 45 fe             	cmovne %esi,%edi
  402eac:	48 83 c0 01          	add    $0x1,%rax
  402eb0:	48 83 f8 10          	cmp    $0x10,%rax
  402eb4:	75 ea                	jne    402ea0 <vpaddsw_check_ymmi+0x20>
  402eb6:	85 ff                	test   %edi,%edi
  402eb8:	75 07                	jne    402ec1 <vpaddsw_check_ymmi+0x41>
  402eba:	31 c0                	xor    %eax,%eax
  402ebc:	48 89 ec             	mov    %rbp,%rsp
  402ebf:	5d                   	pop    %rbp
  402ec0:	c3                   	retq   
  402ec1:	bf ad 6e 40 00       	mov    $0x406ead,%edi
  402ec6:	e8 65 e1 ff ff       	callq  401030 <puts@plt>
  402ecb:	bf 01 00 00 00       	mov    $0x1,%edi
  402ed0:	e8 6b e1 ff ff       	callq  401040 <exit@plt>
  402ed5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402edc:	00 00 00 
  402edf:	90                   	nop

0000000000402ee0 <vpaddsw_ymmi>:
  402ee0:	55                   	push   %rbp
  402ee1:	48 89 e5             	mov    %rsp,%rbp
  402ee4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402ee8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402eef:	c5 fd 6f 45 10       	vmovdqa 0x10(%rbp),%ymm0
  402ef4:	c5 fd ed 45 50       	vpaddsw 0x50(%rbp),%ymm0,%ymm0
  402ef9:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  402f00:	00 00 
  402f02:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402f09:	00 00 00 
  402f0c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402f13:	01 
  402f14:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402f1b:	02 
  402f1c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402f23:	c5 f8 77             	vzeroupper 
  402f26:	e8 55 ff ff ff       	callq  402e80 <vpaddsw_check_ymmi>
  402f2b:	31 c0                	xor    %eax,%eax
  402f2d:	48 89 ec             	mov    %rbp,%rsp
  402f30:	5d                   	pop    %rbp
  402f31:	c3                   	retq   
  402f32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f39:	00 00 00 
  402f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402f40 <vpmullw_check_zmmi>:
  402f40:	55                   	push   %rbp
  402f41:	48 89 e5             	mov    %rsp,%rbp
  402f44:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402f48:	48 83 ec 40          	sub    $0x40,%rsp
  402f4c:	31 c0                	xor    %eax,%eax
  402f4e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  402f52:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  402f56:	be 01 00 00 00       	mov    $0x1,%esi
  402f5b:	31 ff                	xor    %edi,%edi
  402f5d:	0f 1f 00             	nopl   (%rax)
  402f60:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  402f65:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  402f69:	0f 45 fe             	cmovne %esi,%edi
  402f6c:	48 83 c0 01          	add    $0x1,%rax
  402f70:	48 83 f8 20          	cmp    $0x20,%rax
  402f74:	75 ea                	jne    402f60 <vpmullw_check_zmmi+0x20>
  402f76:	85 ff                	test   %edi,%edi
  402f78:	75 07                	jne    402f81 <vpmullw_check_zmmi+0x41>
  402f7a:	31 c0                	xor    %eax,%eax
  402f7c:	48 89 ec             	mov    %rbp,%rsp
  402f7f:	5d                   	pop    %rbp
  402f80:	c3                   	retq   
  402f81:	bf c8 6e 40 00       	mov    $0x406ec8,%edi
  402f86:	e8 a5 e0 ff ff       	callq  401030 <puts@plt>
  402f8b:	bf 01 00 00 00       	mov    $0x1,%edi
  402f90:	e8 ab e0 ff ff       	callq  401040 <exit@plt>
  402f95:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f9c:	00 00 00 
  402f9f:	90                   	nop

0000000000402fa0 <vpmullw_zmmi>:
  402fa0:	55                   	push   %rbp
  402fa1:	48 89 e5             	mov    %rsp,%rbp
  402fa4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  402fa8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  402faf:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  402fb6:	00 00 00 
  402fb9:	62 f1 7d 48 d5 85 10 	vpmullw 0x10(%rbp),%zmm0,%zmm0
  402fc0:	00 00 00 
  402fc3:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  402fca:	02 
  402fcb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  402fd2:	00 00 00 
  402fd5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  402fdc:	01 
  402fdd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  402fe4:	02 
  402fe5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  402fec:	c5 f8 77             	vzeroupper 
  402fef:	e8 4c ff ff ff       	callq  402f40 <vpmullw_check_zmmi>
  402ff4:	31 c0                	xor    %eax,%eax
  402ff6:	48 89 ec             	mov    %rbp,%rsp
  402ff9:	5d                   	pop    %rbp
  402ffa:	c3                   	retq   
  402ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403000 <vpmullw_check_ymmi>:
  403000:	55                   	push   %rbp
  403001:	48 89 e5             	mov    %rsp,%rbp
  403004:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403008:	48 83 ec 40          	sub    $0x40,%rsp
  40300c:	31 c0                	xor    %eax,%eax
  40300e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403012:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403016:	be 01 00 00 00       	mov    $0x1,%esi
  40301b:	31 ff                	xor    %edi,%edi
  40301d:	0f 1f 00             	nopl   (%rax)
  403020:	41 0f b7 0c 40       	movzwl (%r8,%rax,2),%ecx
  403025:	66 3b 0c 42          	cmp    (%rdx,%rax,2),%cx
  403029:	0f 45 fe             	cmovne %esi,%edi
  40302c:	48 83 c0 01          	add    $0x1,%rax
  403030:	48 83 f8 10          	cmp    $0x10,%rax
  403034:	75 ea                	jne    403020 <vpmullw_check_ymmi+0x20>
  403036:	85 ff                	test   %edi,%edi
  403038:	75 07                	jne    403041 <vpmullw_check_ymmi+0x41>
  40303a:	31 c0                	xor    %eax,%eax
  40303c:	48 89 ec             	mov    %rbp,%rsp
  40303f:	5d                   	pop    %rbp
  403040:	c3                   	retq   
  403041:	bf e3 6e 40 00       	mov    $0x406ee3,%edi
  403046:	e8 e5 df ff ff       	callq  401030 <puts@plt>
  40304b:	bf 01 00 00 00       	mov    $0x1,%edi
  403050:	e8 eb df ff ff       	callq  401040 <exit@plt>
  403055:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40305c:	00 00 00 
  40305f:	90                   	nop

0000000000403060 <vpmullw_ymmi>:
  403060:	55                   	push   %rbp
  403061:	48 89 e5             	mov    %rsp,%rbp
  403064:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403068:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40306f:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  403074:	c5 fd d5 45 10       	vpmullw 0x10(%rbp),%ymm0,%ymm0
  403079:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  403080:	00 00 
  403082:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403089:	00 00 00 
  40308c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403093:	01 
  403094:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40309b:	02 
  40309c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4030a3:	c5 f8 77             	vzeroupper 
  4030a6:	e8 55 ff ff ff       	callq  403000 <vpmullw_check_ymmi>
  4030ab:	31 c0                	xor    %eax,%eax
  4030ad:	48 89 ec             	mov    %rbp,%rsp
  4030b0:	5d                   	pop    %rbp
  4030b1:	c3                   	retq   
  4030b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4030b9:	00 00 00 
  4030bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004030c0 <vpaddd_check_zmmi>:
  4030c0:	55                   	push   %rbp
  4030c1:	48 89 e5             	mov    %rsp,%rbp
  4030c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4030c8:	48 83 ec 40          	sub    $0x40,%rsp
  4030cc:	31 c0                	xor    %eax,%eax
  4030ce:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  4030d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4030d6:	be 01 00 00 00       	mov    $0x1,%esi
  4030db:	31 ff                	xor    %edi,%edi
  4030dd:	0f 1f 00             	nopl   (%rax)
  4030e0:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  4030e4:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  4030e7:	0f 45 fe             	cmovne %esi,%edi
  4030ea:	48 83 c0 01          	add    $0x1,%rax
  4030ee:	48 83 f8 10          	cmp    $0x10,%rax
  4030f2:	75 ec                	jne    4030e0 <vpaddd_check_zmmi+0x20>
  4030f4:	85 ff                	test   %edi,%edi
  4030f6:	75 07                	jne    4030ff <vpaddd_check_zmmi+0x3f>
  4030f8:	31 c0                	xor    %eax,%eax
  4030fa:	48 89 ec             	mov    %rbp,%rsp
  4030fd:	5d                   	pop    %rbp
  4030fe:	c3                   	retq   
  4030ff:	bf fe 6e 40 00       	mov    $0x406efe,%edi
  403104:	e8 27 df ff ff       	callq  401030 <puts@plt>
  403109:	bf 01 00 00 00       	mov    $0x1,%edi
  40310e:	e8 2d df ff ff       	callq  401040 <exit@plt>
  403113:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40311a:	00 00 00 
  40311d:	0f 1f 00             	nopl   (%rax)

0000000000403120 <vpaddd_zmmi>:
  403120:	55                   	push   %rbp
  403121:	48 89 e5             	mov    %rsp,%rbp
  403124:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403128:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40312f:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  403136:	00 00 00 
  403139:	62 f1 7d 48 fe 85 10 	vpaddd 0x10(%rbp),%zmm0,%zmm0
  403140:	00 00 00 
  403143:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40314a:	02 
  40314b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403152:	00 00 00 
  403155:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40315c:	01 
  40315d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  403164:	02 
  403165:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40316c:	c5 f8 77             	vzeroupper 
  40316f:	e8 4c ff ff ff       	callq  4030c0 <vpaddd_check_zmmi>
  403174:	31 c0                	xor    %eax,%eax
  403176:	48 89 ec             	mov    %rbp,%rsp
  403179:	5d                   	pop    %rbp
  40317a:	c3                   	retq   
  40317b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403180 <vpaddd_check_ymmi>:
  403180:	55                   	push   %rbp
  403181:	48 89 e5             	mov    %rsp,%rbp
  403184:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403188:	48 83 ec 40          	sub    $0x40,%rsp
  40318c:	31 c0                	xor    %eax,%eax
  40318e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403192:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403196:	be 01 00 00 00       	mov    $0x1,%esi
  40319b:	31 ff                	xor    %edi,%edi
  40319d:	0f 1f 00             	nopl   (%rax)
  4031a0:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  4031a4:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  4031a7:	0f 45 fe             	cmovne %esi,%edi
  4031aa:	48 83 c0 01          	add    $0x1,%rax
  4031ae:	48 83 f8 08          	cmp    $0x8,%rax
  4031b2:	75 ec                	jne    4031a0 <vpaddd_check_ymmi+0x20>
  4031b4:	85 ff                	test   %edi,%edi
  4031b6:	75 07                	jne    4031bf <vpaddd_check_ymmi+0x3f>
  4031b8:	31 c0                	xor    %eax,%eax
  4031ba:	48 89 ec             	mov    %rbp,%rsp
  4031bd:	5d                   	pop    %rbp
  4031be:	c3                   	retq   
  4031bf:	bf 18 6f 40 00       	mov    $0x406f18,%edi
  4031c4:	e8 67 de ff ff       	callq  401030 <puts@plt>
  4031c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4031ce:	e8 6d de ff ff       	callq  401040 <exit@plt>
  4031d3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4031da:	00 00 00 
  4031dd:	0f 1f 00             	nopl   (%rax)

00000000004031e0 <vpaddd_ymmi>:
  4031e0:	55                   	push   %rbp
  4031e1:	48 89 e5             	mov    %rsp,%rbp
  4031e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4031e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4031ef:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  4031f4:	c5 fd fe 45 10       	vpaddd 0x10(%rbp),%ymm0,%ymm0
  4031f9:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  403200:	00 00 
  403202:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403209:	00 00 00 
  40320c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403213:	01 
  403214:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40321b:	02 
  40321c:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403223:	c5 f8 77             	vzeroupper 
  403226:	e8 55 ff ff ff       	callq  403180 <vpaddd_check_ymmi>
  40322b:	31 c0                	xor    %eax,%eax
  40322d:	48 89 ec             	mov    %rbp,%rsp
  403230:	5d                   	pop    %rbp
  403231:	c3                   	retq   
  403232:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403239:	00 00 00 
  40323c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403240 <vpandd_check_zmmi>:
  403240:	55                   	push   %rbp
  403241:	48 89 e5             	mov    %rsp,%rbp
  403244:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403248:	48 83 ec 40          	sub    $0x40,%rsp
  40324c:	31 c0                	xor    %eax,%eax
  40324e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403252:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403256:	be 01 00 00 00       	mov    $0x1,%esi
  40325b:	31 ff                	xor    %edi,%edi
  40325d:	0f 1f 00             	nopl   (%rax)
  403260:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  403264:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  403267:	0f 45 fe             	cmovne %esi,%edi
  40326a:	48 83 c0 01          	add    $0x1,%rax
  40326e:	48 83 f8 10          	cmp    $0x10,%rax
  403272:	75 ec                	jne    403260 <vpandd_check_zmmi+0x20>
  403274:	85 ff                	test   %edi,%edi
  403276:	75 07                	jne    40327f <vpandd_check_zmmi+0x3f>
  403278:	31 c0                	xor    %eax,%eax
  40327a:	48 89 ec             	mov    %rbp,%rsp
  40327d:	5d                   	pop    %rbp
  40327e:	c3                   	retq   
  40327f:	bf 32 6f 40 00       	mov    $0x406f32,%edi
  403284:	e8 a7 dd ff ff       	callq  401030 <puts@plt>
  403289:	bf 01 00 00 00       	mov    $0x1,%edi
  40328e:	e8 ad dd ff ff       	callq  401040 <exit@plt>
  403293:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40329a:	00 00 00 
  40329d:	0f 1f 00             	nopl   (%rax)

00000000004032a0 <vpandd_zmmi>:
  4032a0:	55                   	push   %rbp
  4032a1:	48 89 e5             	mov    %rsp,%rbp
  4032a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4032a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4032af:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  4032b6:	00 00 00 
  4032b9:	62 f1 7c 48 54 85 10 	vandps 0x10(%rbp),%zmm0,%zmm0
  4032c0:	00 00 00 
  4032c3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4032ca:	02 
  4032cb:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4032d2:	00 00 00 
  4032d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4032dc:	01 
  4032dd:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4032e4:	02 
  4032e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4032ec:	c5 f8 77             	vzeroupper 
  4032ef:	e8 4c ff ff ff       	callq  403240 <vpandd_check_zmmi>
  4032f4:	31 c0                	xor    %eax,%eax
  4032f6:	48 89 ec             	mov    %rbp,%rsp
  4032f9:	5d                   	pop    %rbp
  4032fa:	c3                   	retq   
  4032fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403300 <vpminsd_check_zmmi>:
  403300:	55                   	push   %rbp
  403301:	48 89 e5             	mov    %rsp,%rbp
  403304:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403308:	48 83 ec 40          	sub    $0x40,%rsp
  40330c:	31 c0                	xor    %eax,%eax
  40330e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403312:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403316:	be 01 00 00 00       	mov    $0x1,%esi
  40331b:	31 ff                	xor    %edi,%edi
  40331d:	0f 1f 00             	nopl   (%rax)
  403320:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  403324:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  403327:	0f 45 fe             	cmovne %esi,%edi
  40332a:	48 83 c0 01          	add    $0x1,%rax
  40332e:	48 83 f8 10          	cmp    $0x10,%rax
  403332:	75 ec                	jne    403320 <vpminsd_check_zmmi+0x20>
  403334:	85 ff                	test   %edi,%edi
  403336:	75 07                	jne    40333f <vpminsd_check_zmmi+0x3f>
  403338:	31 c0                	xor    %eax,%eax
  40333a:	48 89 ec             	mov    %rbp,%rsp
  40333d:	5d                   	pop    %rbp
  40333e:	c3                   	retq   
  40333f:	bf 4c 6f 40 00       	mov    $0x406f4c,%edi
  403344:	e8 e7 dc ff ff       	callq  401030 <puts@plt>
  403349:	bf 01 00 00 00       	mov    $0x1,%edi
  40334e:	e8 ed dc ff ff       	callq  401040 <exit@plt>
  403353:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40335a:	00 00 00 
  40335d:	0f 1f 00             	nopl   (%rax)

0000000000403360 <vpminsd_zmmi>:
  403360:	55                   	push   %rbp
  403361:	48 89 e5             	mov    %rsp,%rbp
  403364:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403368:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40336f:	62 f1 fd 48 6f 85 10 	vmovdqa64 0x10(%rbp),%zmm0
  403376:	00 00 00 
  403379:	62 f2 7d 48 39 85 50 	vpminsd 0x50(%rbp),%zmm0,%zmm0
  403380:	00 00 00 
  403383:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40338a:	02 
  40338b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403392:	00 00 00 
  403395:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40339c:	01 
  40339d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4033a4:	02 
  4033a5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4033ac:	c5 f8 77             	vzeroupper 
  4033af:	e8 4c ff ff ff       	callq  403300 <vpminsd_check_zmmi>
  4033b4:	31 c0                	xor    %eax,%eax
  4033b6:	48 89 ec             	mov    %rbp,%rsp
  4033b9:	5d                   	pop    %rbp
  4033ba:	c3                   	retq   
  4033bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004033c0 <vpminsd_check_ymmi>:
  4033c0:	55                   	push   %rbp
  4033c1:	48 89 e5             	mov    %rsp,%rbp
  4033c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4033c8:	48 83 ec 40          	sub    $0x40,%rsp
  4033cc:	31 c0                	xor    %eax,%eax
  4033ce:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  4033d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4033d6:	be 01 00 00 00       	mov    $0x1,%esi
  4033db:	31 ff                	xor    %edi,%edi
  4033dd:	0f 1f 00             	nopl   (%rax)
  4033e0:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  4033e4:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  4033e7:	0f 45 fe             	cmovne %esi,%edi
  4033ea:	48 83 c0 01          	add    $0x1,%rax
  4033ee:	48 83 f8 08          	cmp    $0x8,%rax
  4033f2:	75 ec                	jne    4033e0 <vpminsd_check_ymmi+0x20>
  4033f4:	85 ff                	test   %edi,%edi
  4033f6:	75 07                	jne    4033ff <vpminsd_check_ymmi+0x3f>
  4033f8:	31 c0                	xor    %eax,%eax
  4033fa:	48 89 ec             	mov    %rbp,%rsp
  4033fd:	5d                   	pop    %rbp
  4033fe:	c3                   	retq   
  4033ff:	bf 67 6f 40 00       	mov    $0x406f67,%edi
  403404:	e8 27 dc ff ff       	callq  401030 <puts@plt>
  403409:	bf 01 00 00 00       	mov    $0x1,%edi
  40340e:	e8 2d dc ff ff       	callq  401040 <exit@plt>
  403413:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40341a:	00 00 00 
  40341d:	0f 1f 00             	nopl   (%rax)

0000000000403420 <vpminsd_ymmi>:
  403420:	55                   	push   %rbp
  403421:	48 89 e5             	mov    %rsp,%rbp
  403424:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403428:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40342f:	c5 fd 6f 45 10       	vmovdqa 0x10(%rbp),%ymm0
  403434:	c4 e2 7d 39 45 50    	vpminsd 0x50(%rbp),%ymm0,%ymm0
  40343a:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  403441:	00 00 
  403443:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  40344a:	00 00 00 
  40344d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403454:	01 
  403455:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40345c:	02 
  40345d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403464:	c5 f8 77             	vzeroupper 
  403467:	e8 54 ff ff ff       	callq  4033c0 <vpminsd_check_ymmi>
  40346c:	31 c0                	xor    %eax,%eax
  40346e:	48 89 ec             	mov    %rbp,%rsp
  403471:	5d                   	pop    %rbp
  403472:	c3                   	retq   
  403473:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40347a:	00 00 00 
  40347d:	0f 1f 00             	nopl   (%rax)

0000000000403480 <vpmuldq_check_zmmi>:
  403480:	55                   	push   %rbp
  403481:	48 89 e5             	mov    %rsp,%rbp
  403484:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403488:	48 83 ec 40          	sub    $0x40,%rsp
  40348c:	31 c0                	xor    %eax,%eax
  40348e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403492:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403496:	be 01 00 00 00       	mov    $0x1,%esi
  40349b:	31 ff                	xor    %edi,%edi
  40349d:	0f 1f 00             	nopl   (%rax)
  4034a0:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  4034a4:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  4034a7:	0f 45 fe             	cmovne %esi,%edi
  4034aa:	48 83 c0 01          	add    $0x1,%rax
  4034ae:	48 83 f8 10          	cmp    $0x10,%rax
  4034b2:	75 ec                	jne    4034a0 <vpmuldq_check_zmmi+0x20>
  4034b4:	85 ff                	test   %edi,%edi
  4034b6:	75 07                	jne    4034bf <vpmuldq_check_zmmi+0x3f>
  4034b8:	31 c0                	xor    %eax,%eax
  4034ba:	48 89 ec             	mov    %rbp,%rsp
  4034bd:	5d                   	pop    %rbp
  4034be:	c3                   	retq   
  4034bf:	bf 82 6f 40 00       	mov    $0x406f82,%edi
  4034c4:	e8 67 db ff ff       	callq  401030 <puts@plt>
  4034c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4034ce:	e8 6d db ff ff       	callq  401040 <exit@plt>
  4034d3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4034da:	00 00 00 
  4034dd:	0f 1f 00             	nopl   (%rax)

00000000004034e0 <vpmuldq_zmmi>:
  4034e0:	55                   	push   %rbp
  4034e1:	48 89 e5             	mov    %rsp,%rbp
  4034e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4034e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4034ef:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  4034f6:	00 00 00 
  4034f9:	62 f2 fd 48 28 85 10 	vpmuldq 0x10(%rbp),%zmm0,%zmm0
  403500:	00 00 00 
  403503:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40350a:	02 
  40350b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403512:	00 00 00 
  403515:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40351c:	01 
  40351d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  403524:	02 
  403525:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40352c:	c5 f8 77             	vzeroupper 
  40352f:	e8 4c ff ff ff       	callq  403480 <vpmuldq_check_zmmi>
  403534:	31 c0                	xor    %eax,%eax
  403536:	48 89 ec             	mov    %rbp,%rsp
  403539:	5d                   	pop    %rbp
  40353a:	c3                   	retq   
  40353b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403540 <vpmuldq_check_ymmi>:
  403540:	55                   	push   %rbp
  403541:	48 89 e5             	mov    %rsp,%rbp
  403544:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403548:	48 83 ec 40          	sub    $0x40,%rsp
  40354c:	31 c0                	xor    %eax,%eax
  40354e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403552:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403556:	be 01 00 00 00       	mov    $0x1,%esi
  40355b:	31 ff                	xor    %edi,%edi
  40355d:	0f 1f 00             	nopl   (%rax)
  403560:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  403564:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  403567:	0f 45 fe             	cmovne %esi,%edi
  40356a:	48 83 c0 01          	add    $0x1,%rax
  40356e:	48 83 f8 08          	cmp    $0x8,%rax
  403572:	75 ec                	jne    403560 <vpmuldq_check_ymmi+0x20>
  403574:	85 ff                	test   %edi,%edi
  403576:	75 07                	jne    40357f <vpmuldq_check_ymmi+0x3f>
  403578:	31 c0                	xor    %eax,%eax
  40357a:	48 89 ec             	mov    %rbp,%rsp
  40357d:	5d                   	pop    %rbp
  40357e:	c3                   	retq   
  40357f:	bf 9d 6f 40 00       	mov    $0x406f9d,%edi
  403584:	e8 a7 da ff ff       	callq  401030 <puts@plt>
  403589:	bf 01 00 00 00       	mov    $0x1,%edi
  40358e:	e8 ad da ff ff       	callq  401040 <exit@plt>
  403593:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40359a:	00 00 00 
  40359d:	0f 1f 00             	nopl   (%rax)

00000000004035a0 <vpmuldq_ymmi>:
  4035a0:	55                   	push   %rbp
  4035a1:	48 89 e5             	mov    %rsp,%rbp
  4035a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4035a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4035af:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  4035b4:	c4 e2 7d 28 45 10    	vpmuldq 0x10(%rbp),%ymm0,%ymm0
  4035ba:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  4035c1:	00 00 
  4035c3:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4035ca:	00 00 00 
  4035cd:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4035d4:	01 
  4035d5:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4035dc:	02 
  4035dd:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4035e4:	c5 f8 77             	vzeroupper 
  4035e7:	e8 54 ff ff ff       	callq  403540 <vpmuldq_check_ymmi>
  4035ec:	31 c0                	xor    %eax,%eax
  4035ee:	48 89 ec             	mov    %rbp,%rsp
  4035f1:	5d                   	pop    %rbp
  4035f2:	c3                   	retq   
  4035f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4035fa:	00 00 00 
  4035fd:	0f 1f 00             	nopl   (%rax)

0000000000403600 <vpmulld_check_zmmi>:
  403600:	55                   	push   %rbp
  403601:	48 89 e5             	mov    %rsp,%rbp
  403604:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403608:	48 83 ec 40          	sub    $0x40,%rsp
  40360c:	31 c0                	xor    %eax,%eax
  40360e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403612:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403616:	be 01 00 00 00       	mov    $0x1,%esi
  40361b:	31 ff                	xor    %edi,%edi
  40361d:	0f 1f 00             	nopl   (%rax)
  403620:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  403624:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  403627:	0f 45 fe             	cmovne %esi,%edi
  40362a:	48 83 c0 01          	add    $0x1,%rax
  40362e:	48 83 f8 10          	cmp    $0x10,%rax
  403632:	75 ec                	jne    403620 <vpmulld_check_zmmi+0x20>
  403634:	85 ff                	test   %edi,%edi
  403636:	75 07                	jne    40363f <vpmulld_check_zmmi+0x3f>
  403638:	31 c0                	xor    %eax,%eax
  40363a:	48 89 ec             	mov    %rbp,%rsp
  40363d:	5d                   	pop    %rbp
  40363e:	c3                   	retq   
  40363f:	bf b8 6f 40 00       	mov    $0x406fb8,%edi
  403644:	e8 e7 d9 ff ff       	callq  401030 <puts@plt>
  403649:	bf 01 00 00 00       	mov    $0x1,%edi
  40364e:	e8 ed d9 ff ff       	callq  401040 <exit@plt>
  403653:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40365a:	00 00 00 
  40365d:	0f 1f 00             	nopl   (%rax)

0000000000403660 <vpmulld_zmmi>:
  403660:	55                   	push   %rbp
  403661:	48 89 e5             	mov    %rsp,%rbp
  403664:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403668:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40366f:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  403676:	00 00 00 
  403679:	62 f2 7d 48 40 85 10 	vpmulld 0x10(%rbp),%zmm0,%zmm0
  403680:	00 00 00 
  403683:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40368a:	02 
  40368b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403692:	00 00 00 
  403695:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40369c:	01 
  40369d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4036a4:	02 
  4036a5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4036ac:	c5 f8 77             	vzeroupper 
  4036af:	e8 4c ff ff ff       	callq  403600 <vpmulld_check_zmmi>
  4036b4:	31 c0                	xor    %eax,%eax
  4036b6:	48 89 ec             	mov    %rbp,%rsp
  4036b9:	5d                   	pop    %rbp
  4036ba:	c3                   	retq   
  4036bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004036c0 <vpmulld_check_ymmi>:
  4036c0:	55                   	push   %rbp
  4036c1:	48 89 e5             	mov    %rsp,%rbp
  4036c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4036c8:	48 83 ec 40          	sub    $0x40,%rsp
  4036cc:	31 c0                	xor    %eax,%eax
  4036ce:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  4036d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4036d6:	be 01 00 00 00       	mov    $0x1,%esi
  4036db:	31 ff                	xor    %edi,%edi
  4036dd:	0f 1f 00             	nopl   (%rax)
  4036e0:	41 8b 0c 80          	mov    (%r8,%rax,4),%ecx
  4036e4:	3b 0c 82             	cmp    (%rdx,%rax,4),%ecx
  4036e7:	0f 45 fe             	cmovne %esi,%edi
  4036ea:	48 83 c0 01          	add    $0x1,%rax
  4036ee:	48 83 f8 08          	cmp    $0x8,%rax
  4036f2:	75 ec                	jne    4036e0 <vpmulld_check_ymmi+0x20>
  4036f4:	85 ff                	test   %edi,%edi
  4036f6:	75 07                	jne    4036ff <vpmulld_check_ymmi+0x3f>
  4036f8:	31 c0                	xor    %eax,%eax
  4036fa:	48 89 ec             	mov    %rbp,%rsp
  4036fd:	5d                   	pop    %rbp
  4036fe:	c3                   	retq   
  4036ff:	bf d3 6f 40 00       	mov    $0x406fd3,%edi
  403704:	e8 27 d9 ff ff       	callq  401030 <puts@plt>
  403709:	bf 01 00 00 00       	mov    $0x1,%edi
  40370e:	e8 2d d9 ff ff       	callq  401040 <exit@plt>
  403713:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40371a:	00 00 00 
  40371d:	0f 1f 00             	nopl   (%rax)

0000000000403720 <vpmulld_ymmi>:
  403720:	55                   	push   %rbp
  403721:	48 89 e5             	mov    %rsp,%rbp
  403724:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403728:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40372f:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  403734:	c4 e2 7d 40 45 10    	vpmulld 0x10(%rbp),%ymm0,%ymm0
  40373a:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  403741:	00 00 
  403743:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  40374a:	00 00 00 
  40374d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403754:	01 
  403755:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  40375c:	02 
  40375d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403764:	c5 f8 77             	vzeroupper 
  403767:	e8 54 ff ff ff       	callq  4036c0 <vpmulld_check_ymmi>
  40376c:	31 c0                	xor    %eax,%eax
  40376e:	48 89 ec             	mov    %rbp,%rsp
  403771:	5d                   	pop    %rbp
  403772:	c3                   	retq   
  403773:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40377a:	00 00 00 
  40377d:	0f 1f 00             	nopl   (%rax)

0000000000403780 <vpaddq_check_zmmi>:
  403780:	55                   	push   %rbp
  403781:	48 89 e5             	mov    %rsp,%rbp
  403784:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403788:	48 83 ec 40          	sub    $0x40,%rsp
  40378c:	31 c0                	xor    %eax,%eax
  40378e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403792:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403796:	be 01 00 00 00       	mov    $0x1,%esi
  40379b:	31 ff                	xor    %edi,%edi
  40379d:	0f 1f 00             	nopl   (%rax)
  4037a0:	49 8b 0c c0          	mov    (%r8,%rax,8),%rcx
  4037a4:	48 3b 0c c2          	cmp    (%rdx,%rax,8),%rcx
  4037a8:	0f 45 fe             	cmovne %esi,%edi
  4037ab:	48 83 c0 01          	add    $0x1,%rax
  4037af:	48 83 f8 08          	cmp    $0x8,%rax
  4037b3:	75 eb                	jne    4037a0 <vpaddq_check_zmmi+0x20>
  4037b5:	85 ff                	test   %edi,%edi
  4037b7:	75 07                	jne    4037c0 <vpaddq_check_zmmi+0x40>
  4037b9:	31 c0                	xor    %eax,%eax
  4037bb:	48 89 ec             	mov    %rbp,%rsp
  4037be:	5d                   	pop    %rbp
  4037bf:	c3                   	retq   
  4037c0:	bf ee 6f 40 00       	mov    $0x406fee,%edi
  4037c5:	e8 66 d8 ff ff       	callq  401030 <puts@plt>
  4037ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4037cf:	e8 6c d8 ff ff       	callq  401040 <exit@plt>
  4037d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4037db:	00 00 00 
  4037de:	66 90                	xchg   %ax,%ax

00000000004037e0 <vpaddq_zmmi>:
  4037e0:	55                   	push   %rbp
  4037e1:	48 89 e5             	mov    %rsp,%rbp
  4037e4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4037e8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4037ef:	62 f1 fd 48 6f 85 50 	vmovdqa64 0x50(%rbp),%zmm0
  4037f6:	00 00 00 
  4037f9:	62 f1 fd 48 d4 85 10 	vpaddq 0x10(%rbp),%zmm0,%zmm0
  403800:	00 00 00 
  403803:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40380a:	02 
  40380b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403812:	00 00 00 
  403815:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40381c:	01 
  40381d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  403824:	02 
  403825:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40382c:	c5 f8 77             	vzeroupper 
  40382f:	e8 4c ff ff ff       	callq  403780 <vpaddq_check_zmmi>
  403834:	31 c0                	xor    %eax,%eax
  403836:	48 89 ec             	mov    %rbp,%rsp
  403839:	5d                   	pop    %rbp
  40383a:	c3                   	retq   
  40383b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403840 <vpaddq_check_ymmi>:
  403840:	55                   	push   %rbp
  403841:	48 89 e5             	mov    %rsp,%rbp
  403844:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403848:	48 83 ec 40          	sub    $0x40,%rsp
  40384c:	31 c0                	xor    %eax,%eax
  40384e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403852:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403856:	be 01 00 00 00       	mov    $0x1,%esi
  40385b:	31 ff                	xor    %edi,%edi
  40385d:	0f 1f 00             	nopl   (%rax)
  403860:	49 8b 0c c0          	mov    (%r8,%rax,8),%rcx
  403864:	48 3b 0c c2          	cmp    (%rdx,%rax,8),%rcx
  403868:	0f 45 fe             	cmovne %esi,%edi
  40386b:	48 83 c0 01          	add    $0x1,%rax
  40386f:	48 83 f8 04          	cmp    $0x4,%rax
  403873:	75 eb                	jne    403860 <vpaddq_check_ymmi+0x20>
  403875:	85 ff                	test   %edi,%edi
  403877:	75 07                	jne    403880 <vpaddq_check_ymmi+0x40>
  403879:	31 c0                	xor    %eax,%eax
  40387b:	48 89 ec             	mov    %rbp,%rsp
  40387e:	5d                   	pop    %rbp
  40387f:	c3                   	retq   
  403880:	bf 08 70 40 00       	mov    $0x407008,%edi
  403885:	e8 a6 d7 ff ff       	callq  401030 <puts@plt>
  40388a:	bf 01 00 00 00       	mov    $0x1,%edi
  40388f:	e8 ac d7 ff ff       	callq  401040 <exit@plt>
  403894:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40389b:	00 00 00 
  40389e:	66 90                	xchg   %ax,%ax

00000000004038a0 <vpaddq_ymmi>:
  4038a0:	55                   	push   %rbp
  4038a1:	48 89 e5             	mov    %rsp,%rbp
  4038a4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4038a8:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4038af:	c5 fd 6f 45 50       	vmovdqa 0x50(%rbp),%ymm0
  4038b4:	c5 fd d4 45 10       	vpaddq 0x10(%rbp),%ymm0,%ymm0
  4038b9:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  4038c0:	00 00 
  4038c2:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  4038c9:	00 00 00 
  4038cc:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4038d3:	01 
  4038d4:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4038db:	02 
  4038dc:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4038e3:	c5 f8 77             	vzeroupper 
  4038e6:	e8 55 ff ff ff       	callq  403840 <vpaddq_check_ymmi>
  4038eb:	31 c0                	xor    %eax,%eax
  4038ed:	48 89 ec             	mov    %rbp,%rsp
  4038f0:	5d                   	pop    %rbp
  4038f1:	c3                   	retq   
  4038f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4038f9:	00 00 00 
  4038fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403900 <vpminsq_check_zmmi>:
  403900:	55                   	push   %rbp
  403901:	48 89 e5             	mov    %rsp,%rbp
  403904:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403908:	48 83 ec 40          	sub    $0x40,%rsp
  40390c:	31 c0                	xor    %eax,%eax
  40390e:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  403912:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  403916:	be 01 00 00 00       	mov    $0x1,%esi
  40391b:	31 ff                	xor    %edi,%edi
  40391d:	0f 1f 00             	nopl   (%rax)
  403920:	49 8b 0c c0          	mov    (%r8,%rax,8),%rcx
  403924:	48 3b 0c c2          	cmp    (%rdx,%rax,8),%rcx
  403928:	0f 45 fe             	cmovne %esi,%edi
  40392b:	48 83 c0 01          	add    $0x1,%rax
  40392f:	48 83 f8 08          	cmp    $0x8,%rax
  403933:	75 eb                	jne    403920 <vpminsq_check_zmmi+0x20>
  403935:	85 ff                	test   %edi,%edi
  403937:	75 07                	jne    403940 <vpminsq_check_zmmi+0x40>
  403939:	31 c0                	xor    %eax,%eax
  40393b:	48 89 ec             	mov    %rbp,%rsp
  40393e:	5d                   	pop    %rbp
  40393f:	c3                   	retq   
  403940:	bf 22 70 40 00       	mov    $0x407022,%edi
  403945:	e8 e6 d6 ff ff       	callq  401030 <puts@plt>
  40394a:	bf 01 00 00 00       	mov    $0x1,%edi
  40394f:	e8 ec d6 ff ff       	callq  401040 <exit@plt>
  403954:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40395b:	00 00 00 
  40395e:	66 90                	xchg   %ax,%ax

0000000000403960 <vpminsq_zmmi>:
  403960:	55                   	push   %rbp
  403961:	48 89 e5             	mov    %rsp,%rbp
  403964:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403968:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40396f:	62 f1 fd 48 6f 85 10 	vmovdqa64 0x10(%rbp),%zmm0
  403976:	00 00 00 
  403979:	62 f2 fd 48 39 85 50 	vpminsq 0x50(%rbp),%zmm0,%zmm0
  403980:	00 00 00 
  403983:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0x80(%rsp)
  40398a:	02 
  40398b:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403992:	00 00 00 
  403995:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40399c:	01 
  40399d:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  4039a4:	02 
  4039a5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4039ac:	c5 f8 77             	vzeroupper 
  4039af:	e8 4c ff ff ff       	callq  403900 <vpminsq_check_zmmi>
  4039b4:	31 c0                	xor    %eax,%eax
  4039b6:	48 89 ec             	mov    %rbp,%rsp
  4039b9:	5d                   	pop    %rbp
  4039ba:	c3                   	retq   
  4039bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004039c0 <vpminsq_check_ymmi>:
  4039c0:	55                   	push   %rbp
  4039c1:	48 89 e5             	mov    %rsp,%rbp
  4039c4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4039c8:	48 83 ec 40          	sub    $0x40,%rsp
  4039cc:	31 c0                	xor    %eax,%eax
  4039ce:	4c 8d 45 50          	lea    0x50(%rbp),%r8
  4039d2:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  4039d6:	be 01 00 00 00       	mov    $0x1,%esi
  4039db:	31 ff                	xor    %edi,%edi
  4039dd:	0f 1f 00             	nopl   (%rax)
  4039e0:	49 8b 0c c0          	mov    (%r8,%rax,8),%rcx
  4039e4:	48 3b 0c c2          	cmp    (%rdx,%rax,8),%rcx
  4039e8:	0f 45 fe             	cmovne %esi,%edi
  4039eb:	48 83 c0 01          	add    $0x1,%rax
  4039ef:	48 83 f8 04          	cmp    $0x4,%rax
  4039f3:	75 eb                	jne    4039e0 <vpminsq_check_ymmi+0x20>
  4039f5:	85 ff                	test   %edi,%edi
  4039f7:	75 07                	jne    403a00 <vpminsq_check_ymmi+0x40>
  4039f9:	31 c0                	xor    %eax,%eax
  4039fb:	48 89 ec             	mov    %rbp,%rsp
  4039fe:	5d                   	pop    %rbp
  4039ff:	c3                   	retq   
  403a00:	bf 3d 70 40 00       	mov    $0x40703d,%edi
  403a05:	e8 26 d6 ff ff       	callq  401030 <puts@plt>
  403a0a:	bf 01 00 00 00       	mov    $0x1,%edi
  403a0f:	e8 2c d6 ff ff       	callq  401040 <exit@plt>
  403a14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403a1b:	00 00 00 
  403a1e:	66 90                	xchg   %ax,%ax

0000000000403a20 <vpminsq_ymmi>:
  403a20:	55                   	push   %rbp
  403a21:	48 89 e5             	mov    %rsp,%rbp
  403a24:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403a28:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  403a2f:	c5 fd 6f 45 10       	vmovdqa 0x10(%rbp),%ymm0
  403a34:	62 f2 fd 28 39 85 50 	vpminsq 0x50(%rbp),%ymm0,%ymm0
  403a3b:	00 00 00 
  403a3e:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  403a45:	00 00 
  403a47:	62 f1 7c 48 28 85 90 	vmovaps 0x90(%rbp),%zmm0
  403a4e:	00 00 00 
  403a51:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403a58:	01 
  403a59:	62 f1 7c 48 28 44 24 	vmovaps 0x80(%rsp),%zmm0
  403a60:	02 
  403a61:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403a68:	c5 f8 77             	vzeroupper 
  403a6b:	e8 50 ff ff ff       	callq  4039c0 <vpminsq_check_ymmi>
  403a70:	31 c0                	xor    %eax,%eax
  403a72:	48 89 ec             	mov    %rbp,%rsp
  403a75:	5d                   	pop    %rbp
  403a76:	c3                   	retq   
  403a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403a7e:	00 00 

0000000000403a80 <saturate32>:
  403a80:	48 81 ff 00 00 00 80 	cmp    $0xffffffff80000000,%rdi
  403a87:	48 c7 c1 00 00 00 80 	mov    $0xffffffff80000000,%rcx
  403a8e:	48 0f 4f cf          	cmovg  %rdi,%rcx
  403a92:	48 81 f9 ff ff ff 7f 	cmp    $0x7fffffff,%rcx
  403a99:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  403a9e:	0f 4c c1             	cmovl  %ecx,%eax
  403aa1:	c3                   	retq   
  403aa2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403aa9:	00 00 00 
  403aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403ab0 <saturate16>:
  403ab0:	48 81 ff 00 80 ff ff 	cmp    $0xffffffffffff8000,%rdi
  403ab7:	48 c7 c1 00 80 ff ff 	mov    $0xffffffffffff8000,%rcx
  403abe:	48 0f 4f cf          	cmovg  %rdi,%rcx
  403ac2:	48 81 f9 ff 7f 00 00 	cmp    $0x7fff,%rcx
  403ac9:	b8 ff 7f 00 00       	mov    $0x7fff,%eax
  403ace:	0f 4c c1             	cmovl  %ecx,%eax
  403ad1:	c3                   	retq   
  403ad2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403ad9:	00 00 00 
  403adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403ae0 <saturate8>:
  403ae0:	48 83 ff 80          	cmp    $0xffffffffffffff80,%rdi
  403ae4:	48 c7 c1 80 ff ff ff 	mov    $0xffffffffffffff80,%rcx
  403aeb:	48 0f 4f cf          	cmovg  %rdi,%rcx
  403aef:	48 83 f9 7f          	cmp    $0x7f,%rcx
  403af3:	b8 7f 00 00 00       	mov    $0x7f,%eax
  403af8:	0f 4c c1             	cmovl  %ecx,%eax
  403afb:	c3                   	retq   
  403afc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403b00 <avx_test_op2>:
  403b00:	55                   	push   %rbp
  403b01:	48 89 e5             	mov    %rsp,%rbp
  403b04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  403b08:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
  403b0f:	62 f1 7c 48 28 05 27 	vmovaps 0x2527(%rip),%zmm0        # 406040 <_IO_stdin_used+0x40>
  403b16:	25 00 00 
  403b19:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  403b20:	05 
  403b21:	62 f1 7c 48 28 05 55 	vmovaps 0x2555(%rip),%zmm0        # 406080 <_IO_stdin_used+0x80>
  403b28:	25 00 00 
  403b2b:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  403b32:	04 
  403b33:	62 f1 7c 48 28 05 83 	vmovaps 0x2583(%rip),%zmm0        # 4060c0 <_IO_stdin_used+0xc0>
  403b3a:	25 00 00 
  403b3d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403b44:	03 
  403b45:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403b4c:	03 
  403b4d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403b54:	02 
  403b55:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403b5c:	04 
  403b5d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403b64:	01 
  403b65:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403b6c:	05 
  403b6d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403b74:	c5 f8 77             	vzeroupper 
  403b77:	e8 24 d6 ff ff       	callq  4011a0 <vaddps_zmm>
  403b7c:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403b83:	03 
  403b84:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403b8b:	02 
  403b8c:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403b93:	04 
  403b94:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403b9b:	01 
  403b9c:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403ba3:	05 
  403ba4:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403bab:	c5 f8 77             	vzeroupper 
  403bae:	e8 ad d6 ff ff       	callq  401260 <vaddps_ymm>
  403bb3:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403bba:	05 
  403bbb:	62 f1 7c 48 5c 44 24 	vsubps 0x100(%rsp),%zmm0,%zmm0
  403bc2:	04 
  403bc3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403bca:	03 
  403bcb:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403bd2:	03 
  403bd3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403bda:	02 
  403bdb:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403be2:	04 
  403be3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403bea:	01 
  403beb:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403bf2:	05 
  403bf3:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403bfa:	c5 f8 77             	vzeroupper 
  403bfd:	e8 1e d7 ff ff       	callq  401320 <vsubps_zmm>
  403c02:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403c09:	03 
  403c0a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403c11:	02 
  403c12:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403c19:	04 
  403c1a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403c21:	01 
  403c22:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403c29:	05 
  403c2a:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403c31:	c5 f8 77             	vzeroupper 
  403c34:	e8 a7 d7 ff ff       	callq  4013e0 <vsubps_ymm>
  403c39:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403c40:	05 
  403c41:	62 f1 7c 48 59 44 24 	vmulps 0x100(%rsp),%zmm0,%zmm0
  403c48:	04 
  403c49:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403c50:	03 
  403c51:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403c58:	03 
  403c59:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403c60:	02 
  403c61:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403c68:	04 
  403c69:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403c70:	01 
  403c71:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403c78:	05 
  403c79:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403c80:	c5 f8 77             	vzeroupper 
  403c83:	e8 18 d8 ff ff       	callq  4014a0 <vmulps_zmm>
  403c88:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403c8f:	03 
  403c90:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403c97:	02 
  403c98:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403c9f:	04 
  403ca0:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403ca7:	01 
  403ca8:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403caf:	05 
  403cb0:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403cb7:	c5 f8 77             	vzeroupper 
  403cba:	e8 a1 d8 ff ff       	callq  401560 <vmulps_ymm>
  403cbf:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403cc6:	05 
  403cc7:	62 f1 7c 48 5e 44 24 	vdivps 0x100(%rsp),%zmm0,%zmm0
  403cce:	04 
  403ccf:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403cd6:	03 
  403cd7:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403cde:	03 
  403cdf:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403ce6:	02 
  403ce7:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403cee:	04 
  403cef:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403cf6:	01 
  403cf7:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403cfe:	05 
  403cff:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403d06:	c5 f8 77             	vzeroupper 
  403d09:	e8 12 d9 ff ff       	callq  401620 <vdivps_zmm>
  403d0e:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403d15:	03 
  403d16:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403d1d:	02 
  403d1e:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403d25:	04 
  403d26:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403d2d:	01 
  403d2e:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403d35:	05 
  403d36:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403d3d:	c5 f8 77             	vzeroupper 
  403d40:	e8 9b d9 ff ff       	callq  4016e0 <vdivps_ymm>
  403d45:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403d4c:	05 
  403d4d:	62 f1 7c 48 5d 44 24 	vminps 0x100(%rsp),%zmm0,%zmm0
  403d54:	04 
  403d55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403d5c:	03 
  403d5d:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403d64:	03 
  403d65:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403d6c:	02 
  403d6d:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403d74:	04 
  403d75:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403d7c:	01 
  403d7d:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403d84:	05 
  403d85:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403d8c:	c5 f8 77             	vzeroupper 
  403d8f:	e8 0c da ff ff       	callq  4017a0 <vminps_zmm>
  403d94:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403d9b:	03 
  403d9c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403da3:	02 
  403da4:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403dab:	04 
  403dac:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403db3:	01 
  403db4:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403dbb:	05 
  403dbc:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403dc3:	c5 f8 77             	vzeroupper 
  403dc6:	e8 95 da ff ff       	callq  401860 <vminps_ymm>
  403dcb:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403dd2:	04 
  403dd3:	62 f1 7c 48 5f 44 24 	vmaxps 0x140(%rsp),%zmm0,%zmm0
  403dda:	05 
  403ddb:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403de2:	03 
  403de3:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403dea:	03 
  403deb:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403df2:	02 
  403df3:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403dfa:	04 
  403dfb:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403e02:	01 
  403e03:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403e0a:	05 
  403e0b:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403e12:	c5 f8 77             	vzeroupper 
  403e15:	e8 06 db ff ff       	callq  401920 <vmaxps_zmm>
  403e1a:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403e21:	03 
  403e22:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403e29:	02 
  403e2a:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403e31:	04 
  403e32:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403e39:	01 
  403e3a:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403e41:	05 
  403e42:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403e49:	c5 f8 77             	vzeroupper 
  403e4c:	e8 8f db ff ff       	callq  4019e0 <vmaxps_ymm>
  403e51:	62 f1 7c 48 28 05 a5 	vmovaps 0x22a5(%rip),%zmm0        # 406100 <_IO_stdin_used+0x100>
  403e58:	22 00 00 
  403e5b:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  403e62:	05 
  403e63:	62 f1 7c 48 28 05 d3 	vmovaps 0x22d3(%rip),%zmm0        # 406140 <_IO_stdin_used+0x140>
  403e6a:	22 00 00 
  403e6d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  403e74:	04 
  403e75:	62 f1 7c 48 28 05 01 	vmovaps 0x2301(%rip),%zmm0        # 406180 <_IO_stdin_used+0x180>
  403e7c:	23 00 00 
  403e7f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403e86:	03 
  403e87:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403e8e:	03 
  403e8f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403e96:	02 
  403e97:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403e9e:	04 
  403e9f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403ea6:	01 
  403ea7:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403eae:	05 
  403eaf:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403eb6:	c5 f8 77             	vzeroupper 
  403eb9:	e8 e2 db ff ff       	callq  401aa0 <vxorps_zmm>
  403ebe:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403ec5:	03 
  403ec6:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403ecd:	02 
  403ece:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403ed5:	04 
  403ed6:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403edd:	01 
  403ede:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403ee5:	05 
  403ee6:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403eed:	c5 f8 77             	vzeroupper 
  403ef0:	e8 6b dc ff ff       	callq  401b60 <vxorps_ymm>
  403ef5:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403efc:	03 
  403efd:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403f04:	02 
  403f05:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403f0c:	04 
  403f0d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403f14:	01 
  403f15:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403f1c:	05 
  403f1d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403f24:	c5 f8 77             	vzeroupper 
  403f27:	e8 f4 e8 ff ff       	callq  402820 <vxorpd_zmmd>
  403f2c:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403f33:	03 
  403f34:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403f3b:	02 
  403f3c:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403f43:	04 
  403f44:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403f4b:	01 
  403f4c:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403f53:	05 
  403f54:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403f5b:	c5 f8 77             	vzeroupper 
  403f5e:	e8 7d e9 ff ff       	callq  4028e0 <vxorpd_ymmd>
  403f63:	62 f1 7c 48 28 05 93 	vmovaps 0x2193(%rip),%zmm0        # 406100 <_IO_stdin_used+0x100>
  403f6a:	21 00 00 
  403f6d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  403f74:	05 
  403f75:	62 f1 7c 48 28 05 c1 	vmovaps 0x21c1(%rip),%zmm0        # 406140 <_IO_stdin_used+0x140>
  403f7c:	21 00 00 
  403f7f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  403f86:	04 
  403f87:	62 f1 7c 48 28 05 2f 	vmovaps 0x222f(%rip),%zmm0        # 4061c0 <_IO_stdin_used+0x1c0>
  403f8e:	22 00 00 
  403f91:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  403f98:	03 
  403f99:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403fa0:	03 
  403fa1:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403fa8:	02 
  403fa9:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403fb0:	04 
  403fb1:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403fb8:	01 
  403fb9:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403fc0:	05 
  403fc1:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403fc8:	c5 f8 77             	vzeroupper 
  403fcb:	e8 50 dc ff ff       	callq  401c20 <vandps_zmm>
  403fd0:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  403fd7:	03 
  403fd8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  403fdf:	02 
  403fe0:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  403fe7:	04 
  403fe8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  403fef:	01 
  403ff0:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  403ff7:	05 
  403ff8:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  403fff:	c5 f8 77             	vzeroupper 
  404002:	e8 d9 dc ff ff       	callq  401ce0 <vandps_ymm>
  404007:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40400e:	03 
  40400f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404016:	02 
  404017:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40401e:	04 
  40401f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404026:	01 
  404027:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40402e:	05 
  40402f:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404036:	c5 f8 77             	vzeroupper 
  404039:	e8 62 f2 ff ff       	callq  4032a0 <vpandd_zmmi>
  40403e:	31 c0                	xor    %eax,%eax
  404040:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  404044:	8d 48 14             	lea    0x14(%rax),%ecx
  404047:	c5 f2 2a c9          	vcvtsi2ss %ecx,%xmm1,%xmm1
  40404b:	c5 fa 11 84 84 40 01 	vmovss %xmm0,0x140(%rsp,%rax,4)
  404052:	00 00 
  404054:	c5 fa 11 8c 84 00 01 	vmovss %xmm1,0x100(%rsp,%rax,4)
  40405b:	00 00 
  40405d:	31 c9                	xor    %ecx,%ecx
  40405f:	83 e1 03             	and    $0x3,%ecx
  404062:	ff 24 cd 00 68 40 00 	jmpq   *0x406800(,%rcx,8)
  404069:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  40406d:	8d 48 14             	lea    0x14(%rax),%ecx
  404070:	c5 ea 2a c9          	vcvtsi2ss %ecx,%xmm2,%xmm1
  404074:	c5 fa 11 84 84 40 01 	vmovss %xmm0,0x140(%rsp,%rax,4)
  40407b:	00 00 
  40407d:	c5 fa 11 8c 84 00 01 	vmovss %xmm1,0x100(%rsp,%rax,4)
  404084:	00 00 
  404086:	89 c1                	mov    %eax,%ecx
  404088:	83 e1 03             	and    $0x3,%ecx
  40408b:	ff 24 cd 00 68 40 00 	jmpq   *0x406800(,%rcx,8)
  404092:	c5 fa 11 84 84 c0 00 	vmovss %xmm0,0xc0(%rsp,%rax,4)
  404099:	00 00 
  40409b:	48 83 c0 01          	add    $0x1,%rax
  40409f:	48 83 f8 10          	cmp    $0x10,%rax
  4040a3:	75 c4                	jne    404069 <avx_test_op2+0x569>
  4040a5:	eb 2a                	jmp    4040d1 <avx_test_op2+0x5d1>
  4040a7:	8b 8c 84 fc 00 00 00 	mov    0xfc(%rsp,%rax,4),%ecx
  4040ae:	eb 10                	jmp    4040c0 <avx_test_op2+0x5c0>
  4040b0:	8b 8c 84 3c 01 00 00 	mov    0x13c(%rsp,%rax,4),%ecx
  4040b7:	eb 07                	jmp    4040c0 <avx_test_op2+0x5c0>
  4040b9:	8b 8c 84 f8 00 00 00 	mov    0xf8(%rsp,%rax,4),%ecx
  4040c0:	89 8c 84 c0 00 00 00 	mov    %ecx,0xc0(%rsp,%rax,4)
  4040c7:	48 83 c0 01          	add    $0x1,%rax
  4040cb:	48 83 f8 10          	cmp    $0x10,%rax
  4040cf:	75 98                	jne    404069 <avx_test_op2+0x569>
  4040d1:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4040d8:	03 
  4040d9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4040e0:	02 
  4040e1:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4040e8:	04 
  4040e9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4040f0:	01 
  4040f1:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4040f8:	05 
  4040f9:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404100:	c5 f8 77             	vzeroupper 
  404103:	e8 58 dd ff ff       	callq  401e60 <vunpcklps_ymm>
  404108:	62 f1 7c 48 28 05 ee 	vmovaps 0x20ee(%rip),%zmm0        # 406200 <_IO_stdin_used+0x200>
  40410f:	20 00 00 
  404112:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404119:	05 
  40411a:	62 f1 7c 48 28 05 1c 	vmovaps 0x211c(%rip),%zmm0        # 406240 <_IO_stdin_used+0x240>
  404121:	21 00 00 
  404124:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  40412b:	04 
  40412c:	62 f1 7c 48 28 05 4a 	vmovaps 0x214a(%rip),%zmm0        # 406280 <_IO_stdin_used+0x280>
  404133:	21 00 00 
  404136:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  40413d:	03 
  40413e:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404145:	03 
  404146:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40414d:	02 
  40414e:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404155:	04 
  404156:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40415d:	01 
  40415e:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404165:	05 
  404166:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40416d:	c5 f8 77             	vzeroupper 
  404170:	e8 2b e8 ff ff       	callq  4029a0 <vpaddb_zmmi>
  404175:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40417c:	03 
  40417d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404184:	02 
  404185:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40418c:	04 
  40418d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404194:	01 
  404195:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40419c:	05 
  40419d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4041a4:	c5 f8 77             	vzeroupper 
  4041a7:	e8 b4 e8 ff ff       	callq  402a60 <vpaddb_ymmi>
  4041ac:	62 f1 7c 48 28 05 0a 	vmovaps 0x210a(%rip),%zmm0        # 4062c0 <_IO_stdin_used+0x2c0>
  4041b3:	21 00 00 
  4041b6:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  4041bd:	05 
  4041be:	62 f1 7c 48 28 05 38 	vmovaps 0x2138(%rip),%zmm0        # 406300 <_IO_stdin_used+0x300>
  4041c5:	21 00 00 
  4041c8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  4041cf:	04 
  4041d0:	62 f1 7c 48 28 05 66 	vmovaps 0x2166(%rip),%zmm0        # 406340 <_IO_stdin_used+0x340>
  4041d7:	21 00 00 
  4041da:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  4041e1:	03 
  4041e2:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4041e9:	03 
  4041ea:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4041f1:	02 
  4041f2:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4041f9:	04 
  4041fa:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404201:	01 
  404202:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404209:	05 
  40420a:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404211:	c5 f8 77             	vzeroupper 
  404214:	e8 07 e9 ff ff       	callq  402b20 <vpaddsb_zmmi>
  404219:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404220:	03 
  404221:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404228:	02 
  404229:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404230:	04 
  404231:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404238:	01 
  404239:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404240:	05 
  404241:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404248:	c5 f8 77             	vzeroupper 
  40424b:	e8 90 e9 ff ff       	callq  402be0 <vpaddsb_ymmi>
  404250:	62 f1 7c 48 28 05 26 	vmovaps 0x2126(%rip),%zmm0        # 406380 <_IO_stdin_used+0x380>
  404257:	21 00 00 
  40425a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404261:	05 
  404262:	62 f1 7c 48 28 05 54 	vmovaps 0x2154(%rip),%zmm0        # 4063c0 <_IO_stdin_used+0x3c0>
  404269:	21 00 00 
  40426c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404273:	04 
  404274:	62 f1 7c 48 28 05 82 	vmovaps 0x2182(%rip),%zmm0        # 406400 <_IO_stdin_used+0x400>
  40427b:	21 00 00 
  40427e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404285:	03 
  404286:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40428d:	03 
  40428e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404295:	02 
  404296:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40429d:	04 
  40429e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4042a5:	01 
  4042a6:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4042ad:	05 
  4042ae:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4042b5:	c5 f8 77             	vzeroupper 
  4042b8:	e8 e3 e9 ff ff       	callq  402ca0 <vpaddw_zmmi>
  4042bd:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4042c4:	03 
  4042c5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4042cc:	02 
  4042cd:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4042d4:	04 
  4042d5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4042dc:	01 
  4042dd:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4042e4:	05 
  4042e5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4042ec:	c5 f8 77             	vzeroupper 
  4042ef:	e8 6c ea ff ff       	callq  402d60 <vpaddw_ymmi>
  4042f4:	62 f1 7c 48 28 05 42 	vmovaps 0x2142(%rip),%zmm0        # 406440 <_IO_stdin_used+0x440>
  4042fb:	21 00 00 
  4042fe:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404305:	05 
  404306:	62 f1 7c 48 28 05 70 	vmovaps 0x2170(%rip),%zmm0        # 406480 <_IO_stdin_used+0x480>
  40430d:	21 00 00 
  404310:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404317:	04 
  404318:	62 f1 7c 48 28 05 9e 	vmovaps 0x219e(%rip),%zmm0        # 4064c0 <_IO_stdin_used+0x4c0>
  40431f:	21 00 00 
  404322:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404329:	03 
  40432a:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404331:	03 
  404332:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404339:	02 
  40433a:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404341:	04 
  404342:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404349:	01 
  40434a:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404351:	05 
  404352:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404359:	c5 f8 77             	vzeroupper 
  40435c:	e8 bf e7 ff ff       	callq  402b20 <vpaddsb_zmmi>
  404361:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404368:	03 
  404369:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404370:	02 
  404371:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404378:	04 
  404379:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404380:	01 
  404381:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404388:	05 
  404389:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404390:	c5 f8 77             	vzeroupper 
  404393:	e8 48 e8 ff ff       	callq  402be0 <vpaddsb_ymmi>
  404398:	31 c0                	xor    %eax,%eax
  40439a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4043a0:	66 89 84 44 40 01 00 	mov    %ax,0x140(%rsp,%rax,2)
  4043a7:	00 
  4043a8:	66 89 84 44 00 01 00 	mov    %ax,0x100(%rsp,%rax,2)
  4043af:	00 
  4043b0:	89 c1                	mov    %eax,%ecx
  4043b2:	0f af c8             	imul   %eax,%ecx
  4043b5:	66 89 8c 44 c0 00 00 	mov    %cx,0xc0(%rsp,%rax,2)
  4043bc:	00 
  4043bd:	48 83 c0 01          	add    $0x1,%rax
  4043c1:	48 83 f8 20          	cmp    $0x20,%rax
  4043c5:	0f 85 d5 ff ff ff    	jne    4043a0 <avx_test_op2+0x8a0>
  4043cb:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4043d2:	03 
  4043d3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4043da:	02 
  4043db:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4043e2:	04 
  4043e3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4043ea:	01 
  4043eb:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4043f2:	05 
  4043f3:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4043fa:	c5 f8 77             	vzeroupper 
  4043fd:	e8 9e eb ff ff       	callq  402fa0 <vpmullw_zmmi>
  404402:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404409:	03 
  40440a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404411:	02 
  404412:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404419:	04 
  40441a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404421:	01 
  404422:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404429:	05 
  40442a:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404431:	c5 f8 77             	vzeroupper 
  404434:	e8 27 ec ff ff       	callq  403060 <vpmullw_ymmi>
  404439:	62 f1 7c 48 28 05 bd 	vmovaps 0x20bd(%rip),%zmm0        # 406500 <_IO_stdin_used+0x500>
  404440:	20 00 00 
  404443:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  40444a:	05 
  40444b:	62 f1 7c 48 28 05 eb 	vmovaps 0x20eb(%rip),%zmm0        # 406540 <_IO_stdin_used+0x540>
  404452:	20 00 00 
  404455:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  40445c:	04 
  40445d:	62 f1 7c 48 28 05 19 	vmovaps 0x2119(%rip),%zmm0        # 406580 <_IO_stdin_used+0x580>
  404464:	21 00 00 
  404467:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  40446e:	03 
  40446f:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404476:	03 
  404477:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40447e:	02 
  40447f:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404486:	04 
  404487:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40448e:	01 
  40448f:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404496:	05 
  404497:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40449e:	c5 f8 77             	vzeroupper 
  4044a1:	e8 7a ec ff ff       	callq  403120 <vpaddd_zmmi>
  4044a6:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4044ad:	03 
  4044ae:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4044b5:	02 
  4044b6:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4044bd:	04 
  4044be:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4044c5:	01 
  4044c6:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4044cd:	05 
  4044ce:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4044d5:	c5 f8 77             	vzeroupper 
  4044d8:	e8 03 ed ff ff       	callq  4031e0 <vpaddd_ymmi>
  4044dd:	62 f1 fd 48 6f 44 24 	vmovdqa64 0x140(%rsp),%zmm0
  4044e4:	05 
  4044e5:	62 f2 7d 48 39 44 24 	vpminsd 0x100(%rsp),%zmm0,%zmm0
  4044ec:	04 
  4044ed:	62 f1 fd 48 7f 44 24 	vmovdqa64 %zmm0,0xc0(%rsp)
  4044f4:	03 
  4044f5:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4044fc:	03 
  4044fd:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404504:	02 
  404505:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40450c:	04 
  40450d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404514:	01 
  404515:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40451c:	05 
  40451d:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404524:	c5 f8 77             	vzeroupper 
  404527:	e8 34 ee ff ff       	callq  403360 <vpminsd_zmmi>
  40452c:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404533:	03 
  404534:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40453b:	02 
  40453c:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404543:	04 
  404544:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40454b:	01 
  40454c:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404553:	05 
  404554:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40455b:	c5 f8 77             	vzeroupper 
  40455e:	e8 bd ee ff ff       	callq  403420 <vpminsd_ymmi>
  404563:	31 c0                	xor    %eax,%eax
  404565:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40456c:	00 00 00 
  40456f:	90                   	nop
  404570:	48 63 8c c4 40 01 00 	movslq 0x140(%rsp,%rax,8),%rcx
  404577:	00 
  404578:	48 63 94 c4 00 01 00 	movslq 0x100(%rsp,%rax,8),%rdx
  40457f:	00 
  404580:	48 0f af d1          	imul   %rcx,%rdx
  404584:	48 89 94 c4 c0 00 00 	mov    %rdx,0xc0(%rsp,%rax,8)
  40458b:	00 
  40458c:	48 83 c0 01          	add    $0x1,%rax
  404590:	48 83 f8 08          	cmp    $0x8,%rax
  404594:	0f 85 d6 ff ff ff    	jne    404570 <avx_test_op2+0xa70>
  40459a:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4045a1:	03 
  4045a2:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4045a9:	02 
  4045aa:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4045b1:	04 
  4045b2:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4045b9:	01 
  4045ba:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4045c1:	05 
  4045c2:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4045c9:	c5 f8 77             	vzeroupper 
  4045cc:	e8 0f ef ff ff       	callq  4034e0 <vpmuldq_zmmi>
  4045d1:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4045d8:	03 
  4045d9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4045e0:	02 
  4045e1:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4045e8:	04 
  4045e9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4045f0:	01 
  4045f1:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4045f8:	05 
  4045f9:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404600:	c5 f8 77             	vzeroupper 
  404603:	e8 98 ef ff ff       	callq  4035a0 <vpmuldq_ymmi>
  404608:	31 c0                	xor    %eax,%eax
  40460a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404610:	8b 8c 84 00 01 00 00 	mov    0x100(%rsp,%rax,4),%ecx
  404617:	0f af 8c 84 40 01 00 	imul   0x140(%rsp,%rax,4),%ecx
  40461e:	00 
  40461f:	89 8c 84 c0 00 00 00 	mov    %ecx,0xc0(%rsp,%rax,4)
  404626:	48 83 c0 01          	add    $0x1,%rax
  40462a:	48 83 f8 10          	cmp    $0x10,%rax
  40462e:	75 e0                	jne    404610 <avx_test_op2+0xb10>
  404630:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404637:	03 
  404638:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40463f:	02 
  404640:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404647:	04 
  404648:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40464f:	01 
  404650:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404657:	05 
  404658:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40465f:	c5 f8 77             	vzeroupper 
  404662:	e8 f9 ef ff ff       	callq  403660 <vpmulld_zmmi>
  404667:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40466e:	03 
  40466f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404676:	02 
  404677:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40467e:	04 
  40467f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404686:	01 
  404687:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40468e:	05 
  40468f:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404696:	c5 f8 77             	vzeroupper 
  404699:	e8 82 f0 ff ff       	callq  403720 <vpmulld_ymmi>
  40469e:	62 f1 7c 48 28 05 18 	vmovaps 0x1f18(%rip),%zmm0        # 4065c0 <_IO_stdin_used+0x5c0>
  4046a5:	1f 00 00 
  4046a8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  4046af:	05 
  4046b0:	62 f1 7c 48 28 05 46 	vmovaps 0x1f46(%rip),%zmm0        # 406600 <_IO_stdin_used+0x600>
  4046b7:	1f 00 00 
  4046ba:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  4046c1:	04 
  4046c2:	62 f1 7c 48 28 05 74 	vmovaps 0x1f74(%rip),%zmm0        # 406640 <_IO_stdin_used+0x640>
  4046c9:	1f 00 00 
  4046cc:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  4046d3:	03 
  4046d4:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4046db:	03 
  4046dc:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4046e3:	02 
  4046e4:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4046eb:	04 
  4046ec:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4046f3:	01 
  4046f4:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4046fb:	05 
  4046fc:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404703:	c5 f8 77             	vzeroupper 
  404706:	e8 15 d8 ff ff       	callq  401f20 <vaddpd_zmmd>
  40470b:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404712:	03 
  404713:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40471a:	02 
  40471b:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404722:	04 
  404723:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40472a:	01 
  40472b:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404732:	05 
  404733:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40473a:	c5 f8 77             	vzeroupper 
  40473d:	e8 9e d8 ff ff       	callq  401fe0 <vaddpd_ymmd>
  404742:	62 f1 fd 48 28 44 24 	vmovapd 0x140(%rsp),%zmm0
  404749:	05 
  40474a:	62 f1 fd 48 5c 44 24 	vsubpd 0x100(%rsp),%zmm0,%zmm0
  404751:	04 
  404752:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0xc0(%rsp)
  404759:	03 
  40475a:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404761:	03 
  404762:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404769:	02 
  40476a:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404771:	04 
  404772:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404779:	01 
  40477a:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404781:	05 
  404782:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404789:	c5 f8 77             	vzeroupper 
  40478c:	e8 0f d9 ff ff       	callq  4020a0 <vsubpd_zmmd>
  404791:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404798:	03 
  404799:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4047a0:	02 
  4047a1:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4047a8:	04 
  4047a9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4047b0:	01 
  4047b1:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4047b8:	05 
  4047b9:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4047c0:	c5 f8 77             	vzeroupper 
  4047c3:	e8 98 d9 ff ff       	callq  402160 <vsubpd_ymmd>
  4047c8:	62 f1 fd 48 28 44 24 	vmovapd 0x140(%rsp),%zmm0
  4047cf:	05 
  4047d0:	62 f1 fd 48 59 44 24 	vmulpd 0x100(%rsp),%zmm0,%zmm0
  4047d7:	04 
  4047d8:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0xc0(%rsp)
  4047df:	03 
  4047e0:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4047e7:	03 
  4047e8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4047ef:	02 
  4047f0:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4047f7:	04 
  4047f8:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4047ff:	01 
  404800:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404807:	05 
  404808:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40480f:	c5 f8 77             	vzeroupper 
  404812:	e8 09 da ff ff       	callq  402220 <vmulpd_zmmd>
  404817:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40481e:	03 
  40481f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404826:	02 
  404827:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40482e:	04 
  40482f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404836:	01 
  404837:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40483e:	05 
  40483f:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404846:	c5 f8 77             	vzeroupper 
  404849:	e8 92 da ff ff       	callq  4022e0 <vmulpd_ymmd>
  40484e:	62 f1 fd 48 28 44 24 	vmovapd 0x140(%rsp),%zmm0
  404855:	05 
  404856:	62 f1 fd 48 5e 44 24 	vdivpd 0x100(%rsp),%zmm0,%zmm0
  40485d:	04 
  40485e:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0xc0(%rsp)
  404865:	03 
  404866:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40486d:	03 
  40486e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404875:	02 
  404876:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40487d:	04 
  40487e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404885:	01 
  404886:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40488d:	05 
  40488e:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404895:	c5 f8 77             	vzeroupper 
  404898:	e8 03 db ff ff       	callq  4023a0 <vdivpd_zmmd>
  40489d:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4048a4:	03 
  4048a5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4048ac:	02 
  4048ad:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4048b4:	04 
  4048b5:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4048bc:	01 
  4048bd:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4048c4:	05 
  4048c5:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4048cc:	c5 f8 77             	vzeroupper 
  4048cf:	e8 8c db ff ff       	callq  402460 <vdivpd_ymmd>
  4048d4:	62 f1 fd 48 28 44 24 	vmovapd 0x100(%rsp),%zmm0
  4048db:	04 
  4048dc:	62 f1 fd 48 5f 44 24 	vmaxpd 0x140(%rsp),%zmm0,%zmm0
  4048e3:	05 
  4048e4:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0xc0(%rsp)
  4048eb:	03 
  4048ec:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4048f3:	03 
  4048f4:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4048fb:	02 
  4048fc:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404903:	04 
  404904:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40490b:	01 
  40490c:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404913:	05 
  404914:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40491b:	c5 f8 77             	vzeroupper 
  40491e:	e8 fd db ff ff       	callq  402520 <vmaxpd_zmmd>
  404923:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  40492a:	03 
  40492b:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404932:	02 
  404933:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  40493a:	04 
  40493b:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404942:	01 
  404943:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  40494a:	05 
  40494b:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404952:	c5 f8 77             	vzeroupper 
  404955:	e8 86 dc ff ff       	callq  4025e0 <vmaxpd_ymmd>
  40495a:	62 f1 fd 48 28 44 24 	vmovapd 0x140(%rsp),%zmm0
  404961:	05 
  404962:	62 f1 fd 48 5d 44 24 	vminpd 0x100(%rsp),%zmm0,%zmm0
  404969:	04 
  40496a:	62 f1 fd 48 29 44 24 	vmovapd %zmm0,0xc0(%rsp)
  404971:	03 
  404972:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404979:	03 
  40497a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404981:	02 
  404982:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404989:	04 
  40498a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404991:	01 
  404992:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404999:	05 
  40499a:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4049a1:	c5 f8 77             	vzeroupper 
  4049a4:	e8 f7 dc ff ff       	callq  4026a0 <vminpd_zmmd>
  4049a9:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  4049b0:	03 
  4049b1:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  4049b8:	02 
  4049b9:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  4049c0:	04 
  4049c1:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  4049c8:	01 
  4049c9:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  4049d0:	05 
  4049d1:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4049d8:	c5 f8 77             	vzeroupper 
  4049db:	e8 80 dd ff ff       	callq  402760 <vminpd_ymmd>
  4049e0:	62 f1 7c 48 28 05 96 	vmovaps 0x1c96(%rip),%zmm0        # 406680 <_IO_stdin_used+0x680>
  4049e7:	1c 00 00 
  4049ea:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  4049f1:	05 
  4049f2:	62 f1 7c 48 28 05 c4 	vmovaps 0x1cc4(%rip),%zmm0        # 4066c0 <_IO_stdin_used+0x6c0>
  4049f9:	1c 00 00 
  4049fc:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404a03:	04 
  404a04:	62 f1 7c 48 28 05 f2 	vmovaps 0x1cf2(%rip),%zmm0        # 406700 <_IO_stdin_used+0x700>
  404a0b:	1c 00 00 
  404a0e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404a15:	03 
  404a16:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404a1d:	03 
  404a1e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404a25:	02 
  404a26:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404a2d:	04 
  404a2e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404a35:	01 
  404a36:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404a3d:	05 
  404a3e:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404a45:	c5 f8 77             	vzeroupper 
  404a48:	e8 93 ed ff ff       	callq  4037e0 <vpaddq_zmmi>
  404a4d:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404a54:	03 
  404a55:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404a5c:	02 
  404a5d:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404a64:	04 
  404a65:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404a6c:	01 
  404a6d:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404a74:	05 
  404a75:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404a7c:	c5 f8 77             	vzeroupper 
  404a7f:	e8 1c ee ff ff       	callq  4038a0 <vpaddq_ymmi>
  404a84:	62 f1 7c 48 28 05 b2 	vmovaps 0x1cb2(%rip),%zmm0        # 406740 <_IO_stdin_used+0x740>
  404a8b:	1c 00 00 
  404a8e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404a95:	05 
  404a96:	62 f1 7c 48 28 05 e0 	vmovaps 0x1ce0(%rip),%zmm0        # 406780 <_IO_stdin_used+0x780>
  404a9d:	1c 00 00 
  404aa0:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404aa7:	04 
  404aa8:	62 f1 7c 48 28 05 0e 	vmovaps 0x1d0e(%rip),%zmm0        # 4067c0 <_IO_stdin_used+0x7c0>
  404aaf:	1d 00 00 
  404ab2:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404ab9:	03 
  404aba:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404ac1:	03 
  404ac2:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404ac9:	02 
  404aca:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404ad1:	04 
  404ad2:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404ad9:	01 
  404ada:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404ae1:	05 
  404ae2:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404ae9:	c5 f8 77             	vzeroupper 
  404aec:	e8 6f ee ff ff       	callq  403960 <vpminsq_zmmi>
  404af1:	62 f1 7c 48 28 44 24 	vmovaps 0xc0(%rsp),%zmm0
  404af8:	03 
  404af9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404b00:	02 
  404b01:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404b08:	04 
  404b09:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404b10:	01 
  404b11:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404b18:	05 
  404b19:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404b20:	c5 f8 77             	vzeroupper 
  404b23:	e8 f8 ee ff ff       	callq  403a20 <vpminsq_ymmi>
  404b28:	48 89 ec             	mov    %rbp,%rsp
  404b2b:	5d                   	pop    %rbp
  404b2c:	c3                   	retq   
  404b2d:	0f 1f 00             	nopl   (%rax)

0000000000404b30 <vfmaddps_zmm>:
  404b30:	55                   	push   %rbp
  404b31:	48 89 e5             	mov    %rsp,%rbp
  404b34:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  404b38:	48 83 ec 40          	sub    $0x40,%rsp
  404b3c:	62 f1 7c 48 28 8d 10 	vmovaps 0x10(%rbp),%zmm1
  404b43:	00 00 00 
  404b46:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  404b4d:	00 00 00 
  404b50:	62 f2 75 48 a8 85 90 	vfmadd213ps 0x90(%rbp),%zmm1,%zmm0
  404b57:	00 00 00 
  404b5a:	c5 fa 10 8d d0 00 00 	vmovss 0xd0(%rbp),%xmm1
  404b61:	00 
  404b62:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404b66:	0f 85 6e 01 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404b6c:	0f 8a 68 01 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404b72:	48 8d 85 d0 00 00 00 	lea    0xd0(%rbp),%rax
  404b79:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  404b7d:	c5 fa 10 50 04       	vmovss 0x4(%rax),%xmm2
  404b82:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404b86:	0f 85 4e 01 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404b8c:	0f 8a 48 01 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404b92:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
  404b98:	c5 fa 10 50 08       	vmovss 0x8(%rax),%xmm2
  404b9d:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404ba1:	0f 85 33 01 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404ba7:	0f 8a 2d 01 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404bad:	c4 e3 79 04 c8 ff    	vpermilps $0xff,%xmm0,%xmm1
  404bb3:	c5 fa 10 50 0c       	vmovss 0xc(%rax),%xmm2
  404bb8:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404bbc:	0f 85 18 01 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404bc2:	0f 8a 12 01 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404bc8:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  404bce:	c5 fa 10 50 10       	vmovss 0x10(%rax),%xmm2
  404bd3:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404bd7:	0f 85 fd 00 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404bdd:	0f 8a f7 00 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404be3:	c5 fa 16 d1          	vmovshdup %xmm1,%xmm2
  404be7:	c5 fa 10 58 14       	vmovss 0x14(%rax),%xmm3
  404bec:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404bf0:	0f 85 e4 00 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404bf6:	0f 8a de 00 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404bfc:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
  404c02:	c5 fa 10 58 18       	vmovss 0x18(%rax),%xmm3
  404c07:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404c0b:	0f 85 c9 00 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404c11:	0f 8a c3 00 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404c17:	c4 e3 79 04 c9 ff    	vpermilps $0xff,%xmm1,%xmm1
  404c1d:	c5 fa 10 50 1c       	vmovss 0x1c(%rax),%xmm2
  404c22:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404c26:	0f 85 ae 00 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404c2c:	0f 8a a8 00 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404c32:	62 f3 7d 48 19 c1 02 	vextractf32x4 $0x2,%zmm0,%xmm1
  404c39:	c5 fa 10 50 20       	vmovss 0x20(%rax),%xmm2
  404c3e:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404c42:	0f 85 92 00 00 00    	jne    404cda <vfmaddps_zmm+0x1aa>
  404c48:	0f 8a 8c 00 00 00    	jp     404cda <vfmaddps_zmm+0x1aa>
  404c4e:	c5 fa 16 d1          	vmovshdup %xmm1,%xmm2
  404c52:	c5 fa 10 58 24       	vmovss 0x24(%rax),%xmm3
  404c57:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404c5b:	75 7d                	jne    404cda <vfmaddps_zmm+0x1aa>
  404c5d:	7a 7b                	jp     404cda <vfmaddps_zmm+0x1aa>
  404c5f:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
  404c65:	c5 fa 10 58 28       	vmovss 0x28(%rax),%xmm3
  404c6a:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404c6e:	75 6a                	jne    404cda <vfmaddps_zmm+0x1aa>
  404c70:	7a 68                	jp     404cda <vfmaddps_zmm+0x1aa>
  404c72:	c4 e3 79 04 c9 ff    	vpermilps $0xff,%xmm1,%xmm1
  404c78:	c5 fa 10 50 2c       	vmovss 0x2c(%rax),%xmm2
  404c7d:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404c81:	75 57                	jne    404cda <vfmaddps_zmm+0x1aa>
  404c83:	7a 55                	jp     404cda <vfmaddps_zmm+0x1aa>
  404c85:	62 f3 7d 48 19 c0 03 	vextractf32x4 $0x3,%zmm0,%xmm0
  404c8c:	c5 fa 10 48 30       	vmovss 0x30(%rax),%xmm1
  404c91:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404c95:	75 43                	jne    404cda <vfmaddps_zmm+0x1aa>
  404c97:	7a 41                	jp     404cda <vfmaddps_zmm+0x1aa>
  404c99:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  404c9d:	c5 fa 10 50 34       	vmovss 0x34(%rax),%xmm2
  404ca2:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404ca6:	75 32                	jne    404cda <vfmaddps_zmm+0x1aa>
  404ca8:	7a 30                	jp     404cda <vfmaddps_zmm+0x1aa>
  404caa:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
  404cb0:	c5 fa 10 50 38       	vmovss 0x38(%rax),%xmm2
  404cb5:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404cb9:	75 1f                	jne    404cda <vfmaddps_zmm+0x1aa>
  404cbb:	7a 1d                	jp     404cda <vfmaddps_zmm+0x1aa>
  404cbd:	c4 e3 79 04 c0 ff    	vpermilps $0xff,%xmm0,%xmm0
  404cc3:	c5 fa 10 48 3c       	vmovss 0x3c(%rax),%xmm1
  404cc8:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404ccc:	75 0c                	jne    404cda <vfmaddps_zmm+0x1aa>
  404cce:	7a 0a                	jp     404cda <vfmaddps_zmm+0x1aa>
  404cd0:	31 c0                	xor    %eax,%eax
  404cd2:	48 89 ec             	mov    %rbp,%rsp
  404cd5:	5d                   	pop    %rbp
  404cd6:	c5 f8 77             	vzeroupper 
  404cd9:	c3                   	retq   
  404cda:	bf 58 70 40 00       	mov    $0x407058,%edi
  404cdf:	c5 f8 77             	vzeroupper 
  404ce2:	e8 49 c3 ff ff       	callq  401030 <puts@plt>
  404ce7:	bf 01 00 00 00       	mov    $0x1,%edi
  404cec:	e8 4f c3 ff ff       	callq  401040 <exit@plt>
  404cf1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404cf8:	00 00 00 
  404cfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000404d00 <vfnmaddps_zmm>:
  404d00:	55                   	push   %rbp
  404d01:	48 89 e5             	mov    %rsp,%rbp
  404d04:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  404d08:	48 83 ec 40          	sub    $0x40,%rsp
  404d0c:	62 f1 7c 48 28 8d 10 	vmovaps 0x10(%rbp),%zmm1
  404d13:	00 00 00 
  404d16:	62 f1 7c 48 28 85 50 	vmovaps 0x50(%rbp),%zmm0
  404d1d:	00 00 00 
  404d20:	62 f2 75 48 ac 85 90 	vfnmadd213ps 0x90(%rbp),%zmm1,%zmm0
  404d27:	00 00 00 
  404d2a:	c5 fa 10 8d d0 00 00 	vmovss 0xd0(%rbp),%xmm1
  404d31:	00 
  404d32:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404d36:	0f 85 6e 01 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404d3c:	0f 8a 68 01 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404d42:	48 8d 85 d0 00 00 00 	lea    0xd0(%rbp),%rax
  404d49:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  404d4d:	c5 fa 10 50 04       	vmovss 0x4(%rax),%xmm2
  404d52:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404d56:	0f 85 4e 01 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404d5c:	0f 8a 48 01 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404d62:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
  404d68:	c5 fa 10 50 08       	vmovss 0x8(%rax),%xmm2
  404d6d:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404d71:	0f 85 33 01 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404d77:	0f 8a 2d 01 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404d7d:	c4 e3 79 04 c8 ff    	vpermilps $0xff,%xmm0,%xmm1
  404d83:	c5 fa 10 50 0c       	vmovss 0xc(%rax),%xmm2
  404d88:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404d8c:	0f 85 18 01 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404d92:	0f 8a 12 01 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404d98:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  404d9e:	c5 fa 10 50 10       	vmovss 0x10(%rax),%xmm2
  404da3:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404da7:	0f 85 fd 00 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404dad:	0f 8a f7 00 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404db3:	c5 fa 16 d1          	vmovshdup %xmm1,%xmm2
  404db7:	c5 fa 10 58 14       	vmovss 0x14(%rax),%xmm3
  404dbc:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404dc0:	0f 85 e4 00 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404dc6:	0f 8a de 00 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404dcc:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
  404dd2:	c5 fa 10 58 18       	vmovss 0x18(%rax),%xmm3
  404dd7:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404ddb:	0f 85 c9 00 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404de1:	0f 8a c3 00 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404de7:	c4 e3 79 04 c9 ff    	vpermilps $0xff,%xmm1,%xmm1
  404ded:	c5 fa 10 50 1c       	vmovss 0x1c(%rax),%xmm2
  404df2:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404df6:	0f 85 ae 00 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404dfc:	0f 8a a8 00 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e02:	62 f3 7d 48 19 c1 02 	vextractf32x4 $0x2,%zmm0,%xmm1
  404e09:	c5 fa 10 50 20       	vmovss 0x20(%rax),%xmm2
  404e0e:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404e12:	0f 85 92 00 00 00    	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e18:	0f 8a 8c 00 00 00    	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e1e:	c5 fa 16 d1          	vmovshdup %xmm1,%xmm2
  404e22:	c5 fa 10 58 24       	vmovss 0x24(%rax),%xmm3
  404e27:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404e2b:	75 7d                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e2d:	7a 7b                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e2f:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
  404e35:	c5 fa 10 58 28       	vmovss 0x28(%rax),%xmm3
  404e3a:	c5 f8 2e da          	vucomiss %xmm2,%xmm3
  404e3e:	75 6a                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e40:	7a 68                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e42:	c4 e3 79 04 c9 ff    	vpermilps $0xff,%xmm1,%xmm1
  404e48:	c5 fa 10 50 2c       	vmovss 0x2c(%rax),%xmm2
  404e4d:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404e51:	75 57                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e53:	7a 55                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e55:	62 f3 7d 48 19 c0 03 	vextractf32x4 $0x3,%zmm0,%xmm0
  404e5c:	c5 fa 10 48 30       	vmovss 0x30(%rax),%xmm1
  404e61:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404e65:	75 43                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e67:	7a 41                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e69:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  404e6d:	c5 fa 10 50 34       	vmovss 0x34(%rax),%xmm2
  404e72:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404e76:	75 32                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e78:	7a 30                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e7a:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
  404e80:	c5 fa 10 50 38       	vmovss 0x38(%rax),%xmm2
  404e85:	c5 f8 2e d1          	vucomiss %xmm1,%xmm2
  404e89:	75 1f                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e8b:	7a 1d                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404e8d:	c4 e3 79 04 c0 ff    	vpermilps $0xff,%xmm0,%xmm0
  404e93:	c5 fa 10 48 3c       	vmovss 0x3c(%rax),%xmm1
  404e98:	c5 f8 2e c8          	vucomiss %xmm0,%xmm1
  404e9c:	75 0c                	jne    404eaa <vfnmaddps_zmm+0x1aa>
  404e9e:	7a 0a                	jp     404eaa <vfnmaddps_zmm+0x1aa>
  404ea0:	31 c0                	xor    %eax,%eax
  404ea2:	48 89 ec             	mov    %rbp,%rsp
  404ea5:	5d                   	pop    %rbp
  404ea6:	c5 f8 77             	vzeroupper 
  404ea9:	c3                   	retq   
  404eaa:	bf 73 70 40 00       	mov    $0x407073,%edi
  404eaf:	c5 f8 77             	vzeroupper 
  404eb2:	e8 79 c1 ff ff       	callq  401030 <puts@plt>
  404eb7:	bf 01 00 00 00       	mov    $0x1,%edi
  404ebc:	e8 7f c1 ff ff       	callq  401040 <exit@plt>
  404ec1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404ec8:	00 00 00 
  404ecb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000404ed0 <avx_test_op3>:
  404ed0:	55                   	push   %rbp
  404ed1:	48 89 e5             	mov    %rsp,%rbp
  404ed4:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  404ed8:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
  404edf:	62 f1 7c 48 28 05 57 	vmovaps 0x1957(%rip),%zmm0        # 406840 <_IO_stdin_used+0x840>
  404ee6:	19 00 00 
  404ee9:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x1c0(%rsp)
  404ef0:	07 
  404ef1:	62 f1 7c 48 28 05 85 	vmovaps 0x1985(%rip),%zmm0        # 406880 <_IO_stdin_used+0x880>
  404ef8:	19 00 00 
  404efb:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x180(%rsp)
  404f02:	06 
  404f03:	62 f1 7c 48 28 05 b3 	vmovaps 0x19b3(%rip),%zmm0        # 4068c0 <_IO_stdin_used+0x8c0>
  404f0a:	19 00 00 
  404f0d:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404f14:	05 
  404f15:	62 f1 7c 48 28 05 e1 	vmovaps 0x19e1(%rip),%zmm0        # 406900 <_IO_stdin_used+0x900>
  404f1c:	19 00 00 
  404f1f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404f26:	04 
  404f27:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404f2e:	04 
  404f2f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404f36:	03 
  404f37:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404f3e:	05 
  404f3f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404f46:	02 
  404f47:	62 f1 7c 48 28 44 24 	vmovaps 0x180(%rsp),%zmm0
  404f4e:	06 
  404f4f:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404f56:	01 
  404f57:	62 f1 7c 48 28 44 24 	vmovaps 0x1c0(%rsp),%zmm0
  404f5e:	07 
  404f5f:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404f66:	c5 f8 77             	vzeroupper 
  404f69:	e8 c2 fb ff ff       	callq  404b30 <vfmaddps_zmm>
  404f6e:	62 f1 7c 48 28 05 c8 	vmovaps 0x18c8(%rip),%zmm0        # 406840 <_IO_stdin_used+0x840>
  404f75:	18 00 00 
  404f78:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x1c0(%rsp)
  404f7f:	07 
  404f80:	62 f1 7c 48 28 05 f6 	vmovaps 0x18f6(%rip),%zmm0        # 406880 <_IO_stdin_used+0x880>
  404f87:	18 00 00 
  404f8a:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x180(%rsp)
  404f91:	06 
  404f92:	62 f1 7c 48 28 05 24 	vmovaps 0x1924(%rip),%zmm0        # 4068c0 <_IO_stdin_used+0x8c0>
  404f99:	19 00 00 
  404f9c:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  404fa3:	05 
  404fa4:	62 f1 7c 48 28 05 92 	vmovaps 0x1992(%rip),%zmm0        # 406940 <_IO_stdin_used+0x940>
  404fab:	19 00 00 
  404fae:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  404fb5:	04 
  404fb6:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  404fbd:	04 
  404fbe:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  404fc5:	03 
  404fc6:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  404fcd:	05 
  404fce:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  404fd5:	02 
  404fd6:	62 f1 7c 48 28 44 24 	vmovaps 0x180(%rsp),%zmm0
  404fdd:	06 
  404fde:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  404fe5:	01 
  404fe6:	62 f1 7c 48 28 44 24 	vmovaps 0x1c0(%rsp),%zmm0
  404fed:	07 
  404fee:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  404ff5:	c5 f8 77             	vzeroupper 
  404ff8:	e8 03 fd ff ff       	callq  404d00 <vfnmaddps_zmm>
  404ffd:	48 89 ec             	mov    %rbp,%rsp
  405000:	5d                   	pop    %rbp
  405001:	c3                   	retq   
  405002:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405009:	00 00 00 
  40500c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405010 <main>:
  405010:	55                   	push   %rbp
  405011:	48 89 e5             	mov    %rsp,%rbp
  405014:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405018:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
  40501f:	e8 dc ea ff ff       	callq  403b00 <avx_test_op2>
  405024:	62 f1 7c 48 28 05 52 	vmovaps 0x1952(%rip),%zmm0        # 406980 <_IO_stdin_used+0x980>
  40502b:	19 00 00 
  40502e:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x1c0(%rsp)
  405035:	07 
  405036:	62 f1 7c 48 28 05 80 	vmovaps 0x1980(%rip),%zmm0        # 4069c0 <_IO_stdin_used+0x9c0>
  40503d:	19 00 00 
  405040:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x180(%rsp)
  405047:	06 
  405048:	62 f1 7c 48 28 05 ae 	vmovaps 0x19ae(%rip),%zmm0        # 406a00 <_IO_stdin_used+0xa00>
  40504f:	19 00 00 
  405052:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  405059:	05 
  40505a:	62 f1 7c 48 28 05 dc 	vmovaps 0x19dc(%rip),%zmm0        # 406a40 <_IO_stdin_used+0xa40>
  405061:	19 00 00 
  405064:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  40506b:	04 
  40506c:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  405073:	04 
  405074:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  40507b:	03 
  40507c:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  405083:	05 
  405084:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40508b:	02 
  40508c:	62 f1 7c 48 28 44 24 	vmovaps 0x180(%rsp),%zmm0
  405093:	06 
  405094:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40509b:	01 
  40509c:	62 f1 7c 48 28 44 24 	vmovaps 0x1c0(%rsp),%zmm0
  4050a3:	07 
  4050a4:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  4050ab:	c5 f8 77             	vzeroupper 
  4050ae:	e8 7d fa ff ff       	callq  404b30 <vfmaddps_zmm>
  4050b3:	62 f1 7c 48 28 05 c3 	vmovaps 0x18c3(%rip),%zmm0        # 406980 <_IO_stdin_used+0x980>
  4050ba:	18 00 00 
  4050bd:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x1c0(%rsp)
  4050c4:	07 
  4050c5:	62 f1 7c 48 28 05 f1 	vmovaps 0x18f1(%rip),%zmm0        # 4069c0 <_IO_stdin_used+0x9c0>
  4050cc:	18 00 00 
  4050cf:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x180(%rsp)
  4050d6:	06 
  4050d7:	62 f1 7c 48 28 05 1f 	vmovaps 0x191f(%rip),%zmm0        # 406a00 <_IO_stdin_used+0xa00>
  4050de:	19 00 00 
  4050e1:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x140(%rsp)
  4050e8:	05 
  4050e9:	62 f1 7c 48 28 05 8d 	vmovaps 0x198d(%rip),%zmm0        # 406a80 <_IO_stdin_used+0xa80>
  4050f0:	19 00 00 
  4050f3:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x100(%rsp)
  4050fa:	04 
  4050fb:	62 f1 7c 48 28 44 24 	vmovaps 0x100(%rsp),%zmm0
  405102:	04 
  405103:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0xc0(%rsp)
  40510a:	03 
  40510b:	62 f1 7c 48 28 44 24 	vmovaps 0x140(%rsp),%zmm0
  405112:	05 
  405113:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x80(%rsp)
  40511a:	02 
  40511b:	62 f1 7c 48 28 44 24 	vmovaps 0x180(%rsp),%zmm0
  405122:	06 
  405123:	62 f1 7c 48 29 44 24 	vmovaps %zmm0,0x40(%rsp)
  40512a:	01 
  40512b:	62 f1 7c 48 28 44 24 	vmovaps 0x1c0(%rsp),%zmm0
  405132:	07 
  405133:	62 f1 7c 48 29 04 24 	vmovaps %zmm0,(%rsp)
  40513a:	c5 f8 77             	vzeroupper 
  40513d:	e8 be fb ff ff       	callq  404d00 <vfnmaddps_zmm>
  405142:	bf 8f 70 40 00       	mov    $0x40708f,%edi
  405147:	e8 e4 be ff ff       	callq  401030 <puts@plt>
  40514c:	31 c0                	xor    %eax,%eax
  40514e:	48 89 ec             	mov    %rbp,%rsp
  405151:	5d                   	pop    %rbp
  405152:	c3                   	retq   
  405153:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40515a:	00 00 00 
  40515d:	0f 1f 00             	nopl   (%rax)

0000000000405160 <__libc_csu_init>:
  405160:	f3 0f 1e fa          	endbr64 
  405164:	41 57                	push   %r15
  405166:	4c 8d 3d 93 4c 00 00 	lea    0x4c93(%rip),%r15        # 409e00 <__frame_dummy_init_array_entry>
  40516d:	41 56                	push   %r14
  40516f:	49 89 d6             	mov    %rdx,%r14
  405172:	41 55                	push   %r13
  405174:	49 89 f5             	mov    %rsi,%r13
  405177:	41 54                	push   %r12
  405179:	41 89 fc             	mov    %edi,%r12d
  40517c:	55                   	push   %rbp
  40517d:	48 8d 2d 84 4c 00 00 	lea    0x4c84(%rip),%rbp        # 409e08 <__do_global_dtors_aux_fini_array_entry>
  405184:	53                   	push   %rbx
  405185:	4c 29 fd             	sub    %r15,%rbp
  405188:	48 83 ec 08          	sub    $0x8,%rsp
  40518c:	e8 6f be ff ff       	callq  401000 <_init>
  405191:	48 c1 fd 03          	sar    $0x3,%rbp
  405195:	74 1f                	je     4051b6 <__libc_csu_init+0x56>
  405197:	31 db                	xor    %ebx,%ebx
  405199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4051a0:	4c 89 f2             	mov    %r14,%rdx
  4051a3:	4c 89 ee             	mov    %r13,%rsi
  4051a6:	44 89 e7             	mov    %r12d,%edi
  4051a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  4051ad:	48 83 c3 01          	add    $0x1,%rbx
  4051b1:	48 39 dd             	cmp    %rbx,%rbp
  4051b4:	75 ea                	jne    4051a0 <__libc_csu_init+0x40>
  4051b6:	48 83 c4 08          	add    $0x8,%rsp
  4051ba:	5b                   	pop    %rbx
  4051bb:	5d                   	pop    %rbp
  4051bc:	41 5c                	pop    %r12
  4051be:	41 5d                	pop    %r13
  4051c0:	41 5e                	pop    %r14
  4051c2:	41 5f                	pop    %r15
  4051c4:	c3                   	retq   
  4051c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4051cc:	00 00 00 00 

00000000004051d0 <__libc_csu_fini>:
  4051d0:	f3 0f 1e fa          	endbr64 
  4051d4:	c3                   	retq   

Disassembly of section .fini:

00000000004051d8 <_fini>:
  4051d8:	f3 0f 1e fa          	endbr64 
  4051dc:	48 83 ec 08          	sub    $0x8,%rsp
  4051e0:	48 83 c4 08          	add    $0x8,%rsp
  4051e4:	c3                   	retq   

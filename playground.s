
playground:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	49 89 d1             	mov    %rdx,%r9
    1055:	5e                   	pop    %rsi
    1056:	48 89 e2             	mov    %rsp,%rdx
    1059:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    105d:	50                   	push   %rax
    105e:	54                   	push   %rsp
    105f:	4c 8d 05 5a 01 00 00 	lea    0x15a(%rip),%r8        # 11c0 <__libc_csu_fini>
    1066:	48 8d 0d f3 00 00 00 	lea    0xf3(%rip),%rcx        # 1160 <__libc_csu_init>
    106d:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1135 <main>
    1074:	ff 15 66 2f 00 00    	callq  *0x2f66(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    107a:	f4                   	hlt    
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4030 <__TMC_END__>
    1087:	48 8d 05 a2 2f 00 00 	lea    0x2fa2(%rip),%rax        # 4030 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmpq   *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	retq   
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4030 <__TMC_END__>
    10b7:	48 8d 35 72 2f 00 00 	lea    0x2f72(%rip),%rsi        # 4030 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 c1 fe 03          	sar    $0x3,%rsi
    10c5:	48 89 f0             	mov    %rsi,%rax
    10c8:	48 c1 e8 3f          	shr    $0x3f,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    0x2f15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmpq   *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 39 2f 00 00 00 	cmpb   $0x0,0x2f39(%rip)        # 4030 <__TMC_END__>
    10f7:	75 2f                	jne    1128 <__do_global_dtors_aux+0x38>
    10f9:	55                   	push   %rbp
    10fa:	48 83 3d f6 2e 00 00 	cmpq   $0x0,0x2ef6(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1101:	00 
    1102:	48 89 e5             	mov    %rsp,%rbp
    1105:	74 0c                	je     1113 <__do_global_dtors_aux+0x23>
    1107:	48 8b 3d 1a 2f 00 00 	mov    0x2f1a(%rip),%rdi        # 4028 <__dso_handle>
    110e:	e8 2d ff ff ff       	callq  1040 <__cxa_finalize@plt>
    1113:	e8 68 ff ff ff       	callq  1080 <deregister_tm_clones>
    1118:	c6 05 11 2f 00 00 01 	movb   $0x1,0x2f11(%rip)        # 4030 <__TMC_END__>
    111f:	5d                   	pop    %rbp
    1120:	c3                   	retq   
    1121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1128:	c3                   	retq   
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	e9 7b ff ff ff       	jmpq   10b0 <register_tm_clones>

0000000000001135 <main>:
    1135:	55                   	push   %rbp
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	48 83 ec 10          	sub    $0x10,%rsp
    113d:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
    1144:	48 8d 3d b9 0e 00 00 	lea    0xeb9(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    114b:	e8 e0 fe ff ff       	callq  1030 <puts@plt>
    1150:	b8 00 00 00 00       	mov    $0x0,%eax
    1155:	c9                   	leaveq 
    1156:	c3                   	retq   
    1157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    115e:	00 00 

0000000000001160 <__libc_csu_init>:
    1160:	41 57                	push   %r15
    1162:	49 89 d7             	mov    %rdx,%r15
    1165:	41 56                	push   %r14
    1167:	49 89 f6             	mov    %rsi,%r14
    116a:	41 55                	push   %r13
    116c:	41 89 fd             	mov    %edi,%r13d
    116f:	41 54                	push   %r12
    1171:	4c 8d 25 70 2c 00 00 	lea    0x2c70(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    1178:	55                   	push   %rbp
    1179:	48 8d 2d 70 2c 00 00 	lea    0x2c70(%rip),%rbp        # 3df0 <__init_array_end>
    1180:	53                   	push   %rbx
    1181:	4c 29 e5             	sub    %r12,%rbp
    1184:	48 83 ec 08          	sub    $0x8,%rsp
    1188:	e8 73 fe ff ff       	callq  1000 <_init>
    118d:	48 c1 fd 03          	sar    $0x3,%rbp
    1191:	74 1b                	je     11ae <__libc_csu_init+0x4e>
    1193:	31 db                	xor    %ebx,%ebx
    1195:	0f 1f 00             	nopl   (%rax)
    1198:	4c 89 fa             	mov    %r15,%rdx
    119b:	4c 89 f6             	mov    %r14,%rsi
    119e:	44 89 ef             	mov    %r13d,%edi
    11a1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    11a5:	48 83 c3 01          	add    $0x1,%rbx
    11a9:	48 39 dd             	cmp    %rbx,%rbp
    11ac:	75 ea                	jne    1198 <__libc_csu_init+0x38>
    11ae:	48 83 c4 08          	add    $0x8,%rsp
    11b2:	5b                   	pop    %rbx
    11b3:	5d                   	pop    %rbp
    11b4:	41 5c                	pop    %r12
    11b6:	41 5d                	pop    %r13
    11b8:	41 5e                	pop    %r14
    11ba:	41 5f                	pop    %r15
    11bc:	c3                   	retq   
    11bd:	0f 1f 00             	nopl   (%rax)

00000000000011c0 <__libc_csu_fini>:
    11c0:	c3                   	retq   

Disassembly of section .fini:

00000000000011c4 <_fini>:
    11c4:	48 83 ec 08          	sub    $0x8,%rsp
    11c8:	48 83 c4 08          	add    $0x8,%rsp
    11cc:	c3                   	retq   

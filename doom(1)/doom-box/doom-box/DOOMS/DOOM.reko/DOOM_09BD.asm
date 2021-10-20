;;; Segment 09BD (09BD:0000)
09BD:0000 00 08 46 02 66 CF 00 00 FF FF 00 00 00 00 00 00 ..F.f...........
09BD:0010 9C 8C D1 8B D4 2E 8E 16 00 00 36 8B 26 50 0F 51 ..........6.&P.Q
09BD:0020 52 E8 44 00 A1 C2 10 8B 16 C4 10 59 17 8B E1 52 R.D........Y...R
09BD:0030 50 CF 59 16 1F 80 3E 2E 00 00 74 24 E8 29 00 80 P.Y...>...t$.)..
09BD:0040 3E EF 10 00 74 1A 33 C0 2A 06 37 00 1A E4 80 E4 >...t.3.*.7.....
09BD:0050 02 80 3E 2E 00 02 74 0B 80 CC DD FA E8 72 0B FB ..>...t......r..
09BD:0060 E8 BD 23 E8 5D 0B EB F8 FC 16 1F FE 06 F8 09 75 ..#.]..........u
09BD:0070 61 68 8A 0F E8 21 12 59 06 33 FF B9 00 02 8C C8 ah...!.Y.3......
09BD:0080 8B 1E 56 00 8B 16 58 00 E3 24 F2 AF 75 20 F7 C7 ..V...X..$..u ..
09BD:0090 02 00 75 F4 26 81 7D FC CC 12 74 EC 26 81 7D FC ..u.&.}...t.&.}.
09BD:00A0 D8 14 74 E4 26 89 5D FC 26 89 55 FE EB DA 07 80 ..t.&.].&.U.....
09BD:00B0 3E D8 0C 00 75 07 FE 06 D8 0C E8 84 13 83 3E 14 >...u.........>.
09BD:00C0 0A 00 74 03 E8 FD 15 FA E8 A1 00 FB E8 30 1A E8 ..t..........0..
09BD:00D0 DB 12 80 3E 2E 00 0B 75 05 E8 03 2B EB 34 F6 06 ...>...u...+.4..
09BD:00E0 47 00 80 74 13 B8 DE BF BB 0A 00 E8 06 0E 0B C0 G..t............
09BD:00F0 7C 06 C7 06 DC 0A 00 00 80 3E 2E 00 02 7E 13 F6 |........>...~..
09BD:0100 06 47 00 01 74 0C FA B0 0F E6 70 EB 00 32 C0 E6 .G..t.....p..2..
09BD:0110 71 FB E8 D7 1C 8E 06 EA 0C A1 B8 09 26 A3 2C 00 q...........&.,.
09BD:0120 06 FF 36 0A 12 E8 DE 1B 59 33 DB 8E C3 F6 06 47 ..6.....Y3.....G
09BD:0130 00 80 74 0B B8 DE BF BB 15 00 B9 05 00 CD 15 07 ..t.............
09BD:0140 26 81 3E 0A 00 10 00 75 17 8C C8 26 39 06 0C 00 &.>....u...&9...
09BD:0150 75 0E A1 C2 10 26 A3 0A 00 A1 C4 10 26 A3 0C 00 u....&......&...
09BD:0160 80 3E 2F 00 03 72 04 66 A1 F2 10 C3             .>/..r.f....   

;; fn09BD_016C: 09BD:016C
;;   Called from:
;;     09BD:6297 (in fn09BD_625F)
;;     09BD:7C3B (in fn09BD_7C31)
fn09BD_016C proc
	xor	bx,bx
	mov	dx,0h
	mov	cx,100h
	xor	ax,ax

l09BD_0176:
	mov	[bx+0C6h],ax
	mov	word ptr [bx+0C4h],8E00h
	mov	word ptr [bx+0C2h],70h
	mov	[bx+0C0h],dx
	add	dx,4h
	add	bx,8h
	loop	0176h

l09BD_0192:
	mov	cx,11h
	mov	dx,41F1h
	xor	bx,bx

l09BD_019A:
	mov	[bx+0C0h],dx
	add	dx,1Ch
	add	bx,8h
	loop	019Ah

l09BD_01A7:
	mov	word ptr [0128h],1F96h
	mov	word ptr [01B8h],84h
	mov	word ptr [01C0h],0C80h
	mov	word ptr [01C2h],18h
	mov	word ptr [01C8h],0C9Eh
	mov	word ptr [01D8h],5EBh
	mov	word ptr [0248h],448Eh
	cmp	byte ptr [002Eh],0Bh
	jnz	01E4h

l09BD_01D8:
	mov	word ptr [03F8h],2C6Fh
	mov	word ptr [03FAh],18h

l09BD_01E4:
	call	2071h
	test	byte ptr [0047h],1h
	jz	0216h

l09BD_01EE:
	mov	word ptr [0170h],4FAh
	mov	word ptr [01B0h],0C7Ch
	mov	word ptr [01B2h],18h
	mov	bl,[0051h]
	or	bl,bl
	jz	0216h

l09BD_0208:
	add	bl,5h
	xor	bh,bh
	shl	bx,3h
	mov	word ptr [bx+0C0h],556h

l09BD_0216:
	cmp	byte ptr [003Eh],0h
	jz	0245h

l09BD_021D:
	fninit
	mov	bx,[0F82h]
	or	bx,bx
	jz	0229h

l09BD_0227:
	fsave	word ptr [bx]

l09BD_0229:
	mov	byte ptr cs:[092Ch],9Bh
	mov	byte ptr cs:[0931h],9Bh
	mov	al,[002Eh]
	or	al,al
	jz	0242h

l09BD_023C:
	cmp	al,0Bh
	jz	0242h

l09BD_0240:
	clts

l09BD_0242:
	wait
	fnsetpm

l09BD_0245:
	ret

;; fn09BD_0246: 09BD:0246
;;   Called from:
;;     09BD:0251 (in fn09BD_0D03)
;;     09BD:0251 (in fn09BD_625F)
fn09BD_0246 proc
	call	0D15h
	call	word ptr [097Ah]
	call	0D0Ch
	ret

l09BD_0251:
	call	0246h
	mov	sp,[0996h]
	mov	bp,sp
	mov	di,[bp+0Eh]
	mov	cs:[000Ch],di
	mov	ax,[bp+2h]
	mov	cs:[000Eh],ax
	call	0290h
	lea	si,[bp+1Eh]
	cld
	les	di,cs:[000Ch]
	movsd
	movsd
	movsd
	pop	word ptr [0996h]
	inc	sp
	inc	sp
	pop	ds
	pop	es
	popa
	mov	ss,cs:[000Eh]
	mov	sp,cs:[000Ch]
	iret

;; fn09BD_0290: 09BD:0290
;;   Called from:
;;     09BD:0269 (in fn09BD_0D03)
;;     09BD:0269 (in fn09BD_625F)
;;     09BD:11F2 (in fn09BD_11ED)
;;     09BD:1227 (in fn09BD_1222)
;;     09BD:2071 (in fn09BD_2071)
;;     09BD:7A1F (in fn09BD_7C31)
;;     09BD:7A5C (in fn09BD_7A57)
;;     09BD:7CBC (in fn09BD_7C31)
fn09BD_0290 proc
	mov	dx,20h
	pusha
	call	word ptr [09C0h]
	mov	ss,dx
	mov	dx,20h
	mov	ds,dx
	mov	es,dx
	mov	ax,68h
	lldt	ax
	smsw	ax
	or	ax,[0040h]
	lmsw	ax
	jmp	word ptr [09C2h]
09BD:02B5                61 C3 60 FF 16 C0 09 B8 20 00 8E      a.`..... ..
09BD:02C0 D8 8E C0 0F 01 E0 0B 06 40 00 0F 01 F0 8B 36 52 ........@.....6R
09BD:02D0 0F 83 E6 38 03 36 54 0F 83 06 52 0F 08 B8 08 00 ...8.6T...R.....
09BD:02E0 8E D8 89 7C 02 88 54 04 32 F6 88 74 07 8E D6 B8 ...|..T.2..t....
09BD:02F0 68 00 0F 00 D0 06 1F 61 C3 90 00 00 2E 8F 06 FA h......a........
09BD:0300 02 FA 9C 58 80 E4 0F 50 0E E8 B4 0E E8 FE 08 88 ...X...P........
09BD:0310 0E 35 00 B8 34 03 FF 16 BA 09 0F 01 E0 0C 01 3E .5..4..........>
09BD:0320 0F 01 16 74 09 0F 01 1E D0 08 0F 01 F0 EA 34 03 ...t..........4.
09BD:0330 18 00 87 DB E9 31 26 2E FF 26 FA 02 57 BF 56 0F .....1&..&..W.V.
09BD:0340 BE 67 04 33 DB 8E DB BB 00 08 8E C3 A5 A5 89 44 .g.3...........D
09BD:0350 FC 89 4C FE BE E0 03 B9 10 00 F3 A5 8E DB 5F C3 ..L..........._.
09BD:0360 33 DB 8E C3 BB 00 08 8E DB BE 56 0F BF 67 04 FC 3.........V..g..
09BD:0370 A5 A5 BF E0 03 B9 10 00 F3 A5 8E C3 C3 38 09 3D .............8.=
09BD:0380 09 B0 0E E6 37 33 C0 E6 F2 8B 0E 10 00 90 E2 FE ....73..........
09BD:0390 8E C0 26 8C 1E 06 04 26 C7 06 04 04 EF 09 B0 0A ..&....&........
09BD:03A0 E6 37 C3 D7 09 DC 09 33 C0 8E C0 26 C7 06 FC 03 .7.....3...&....
09BD:03B0 94 0B 26 8C 0E FE 03 8B 1E 82 0F 0B DB 74 04 9B ..&..........t..
09BD:03C0 DD 27 9B 0F 01 E0 0B 06 40 00 0F 01 F0 B0 A0 E6 .'......@.......
09BD:03D0 20 C3 0E 04 13 04 33 C0 8E C0 26 C7 06 60 01 94  .....3...&..`..
09BD:03E0 0B 26 8C 0E 62 01 0F 01 E0 0B 06 40 00 0F 01 F0 .&..b......@....
09BD:03F0 E4 F2 24 FE EB 00 E6 F2 80 3E 2F 00 03 72 0E 9C ..$......>/..r..
09BD:0400 FA 52 BA 40 01 B0 01 EE FE C8 EE 5A 9D C3 50 53 .R.@.......Z..PS
09BD:0410 BB 00 08 FA 80 3E 2F 00 03 72 03 E9 1E 24 60 89 .....>/..r...$`.
09BD:0420 1E 7C 0F 89 26 7A 0F B8 38 00 8E C0 26 C7 06 60 .|..&z..8...&..`
09BD:0430 01 43 04 A1 B6 09 26 A3 62 01 E4 F0 0C 01 EB 00 .C....&.b.......
09BD:0440 E6 F0 F4 E4 F2 0C 01 EB 00 E6 F2 BB 00 08 8E DB ................
09BD:0450 8E 16 7C 0F 8B 26 7A 0F 8E C3 61 5B 58 C3 91 04 ..|..&z...a[X...
09BD:0460 96 04 33 C0 8E C0 26 C7 06 FC 03 94 0B 26 8C 0E ..3...&......&..
09BD:0470 FE 03 0F 01 E0 0B 06 40 00 0F 01 F0 52 BA 04 04 .......@....R...
09BD:0480 EC 24 FB 0C 02 EB 00 EE 5A 8B 0E 10 00 90 E2 FE .$......Z.......
09BD:0490 C3 50 53 BB 00 08 FA 80 3E 2F 00 03 72 03 E9 9B .PS.....>/..r...
09BD:04A0 23 60 89 1E 7C 0F 89 26 7A 0F FA B8 38 00 8E C0 #`..|..&z...8...
09BD:04B0 26 C7 06 FC 03 D3 04 A1 B6 09 26 A3 FE 03 BA 84 &.........&.....
09BD:04C0 04 ED EB 00 25 FE FE EF EB 00 BA 04 04 B0 04 EB ....%...........
09BD:04D0 00 EE F4 BA 04 04 EC 24 F9 0C 01 EB 00 EE EB 00 .......$........
09BD:04E0 BB 00 08 8E DB 8E 16 7C 0F 8B 26 7A 0F 8E C3 61 .......|..&z...a
09BD:04F0 5B 58 C3 AF 05 B4 05 52 B0 1F E6 A1 33 C0 8E C0 [X.....R....3...
09BD:0500 FA 8C C9 BA 68 03 B0 18 EE EB 00 B2 6A 8A C1 24 ....h.......j..$
09BD:0510 0F EE EB 00 B2 68 B0 17 EE EB 00 8A C1 C0 E8 04 .....h..........
09BD:0520 B2 6A 24 0F EE EB 00 B2 68 B0 16 EE EB 00 8A C5 .j$.....h.......
09BD:0530 B2 6A 24 0F EE EB 00 B2 68 B0 15 EE EB 00 8A C5 .j$.....h.......
09BD:0540 B2 6A C0 E8 04 24 0F EE EB 00 B9 AB 05 B2 68 B0 .j...$........h.
09BD:0550 14 EE EB 00 8A C1 B2 6A 24 0F EE EB 00 B2 68 B0 .......j$.....h.
09BD:0560 13 EE EB 00 8A C1 C0 E8 04 B2 6A 24 0F EE B2 68 ..........j$...h
09BD:0570 B0 12 EE EB 00 8A C5 B2 6A 24 0F EE EB 00 B2 68 ........j$.....h
09BD:0580 B0 11 EE EB 00 8A C5 C0 E8 04 B2 6A 24 0F EE EB ...........j$...
09BD:0590 00 B2 68 B0 10 EE EB 00 B0 08 B2 6A EE EB 00 0F ..h........j....
09BD:05A0 01 E0 0B 06 40 00 0F 01 F0 5A C3 94 0B BD 09 50 ....@....Z.....P
09BD:05B0 53 BB 00 08 FA 60 52 89 1E 7C 0F 89 26 7A 0F A1 S....`R..|..&z..
09BD:05C0 B6 09 50 B8 65 06 50 8B CB BA 68 03 B0 18 EE EB ..P.e.P...h.....
09BD:05D0 00 B2 6A 8A C1 24 0F EE EB 00 B2 68 B0 17 EE EB ..j..$.....h....
09BD:05E0 00 8A C1 C0 E8 04 B2 6A 24 0F EE EB 00 B2 68 B0 .......j$.....h.
09BD:05F0 16 EE EB 00 8A C5 B2 6A 24 0F EE EB 00 B2 68 B0 .......j$.....h.
09BD:0600 15 EE EB 00 8A C5 B2 6A C0 E8 04 24 0F EE EB 00 .......j...$....
09BD:0610 8B CC B2 68 B0 14 EE EB 00 8A C1 B2 6A 24 0F EE ...h........j$..
09BD:0620 EB 00 B2 68 B0 13 EE EB 00 8A C1 C0 E8 04 B2 6A ...h...........j
09BD:0630 24 0F EE B2 68 B0 12 EE EB 00 8A C5 B2 6A 24 0F $...h........j$.
09BD:0640 EE EB 00 B2 68 B0 11 EE EB 00 8A C5 C0 E8 04 B2 ....h...........
09BD:0650 6A 24 0F EE EB 00 B2 68 B0 10 EE B0 08 B2 6A EE j$.....h......j.
09BD:0660 B0 5F E6 A1 F4 B0 F0 E6 A0 BB 00 08 8E DB 8E C3 ._..............
09BD:0670 5A 61 5B 58 C3 97 06 9C 06 52 B4 80 E8 7D 00 5A Za[X.....R...}.Z
09BD:0680 33 C0 8E C0 26 C7 06 67 04 94 0B 26 8C 0E 69 04 3...&..g...&..i.
09BD:0690 26 C6 06 12 04 0A C3 50 53 BB 00 08 FA 60 89 1E &......PS....`..
09BD:06A0 7C 0F 89 26 7A 0F B8 38 00 8E C0 A1 B6 09 26 A3 |..&z..8......&.
09BD:06B0 69 04 26 C7 06 67 04 CA 06 26 C6 06 12 04 0A B4 i.&..g...&......
09BD:06C0 C0 E8 38 00 33 C9 E2 FE EB F5 2E 8B 1E 00 00 8E ..8.3...........
09BD:06D0 DB 8E 16 7C 0F 8B 26 7A 0F 33 C0 8E C0 26 A2 12 ...|..&z.3...&..
09BD:06E0 04 8E C3 E8 16 00 E4 69 EB 00 0C 04 E6 69 EB 00 .......i.....i..
09BD:06F0 E4 A0 EB 00 0C 80 E6 A0 61 5B 58 C3 BA 87 FC EC ........a[X.....
09BD:0700 EB 00 B2 84 EC EB 00 24 3F 0A E0 B2 87 EC EB 00 .......$?.......
09BD:0710 8A C4 B2 84 EE C3 5E 0A 63 0A 52 BA 20 3F B0 90 ......^.c.R. ?..
09BD:0720 EE 5A 33 C0 8E C0 26 C7 06 A2 04 94 0B 26 8C 0E .Z3...&......&..
09BD:0730 A4 04 C3                                        ...            

;; fn09BD_0733: 09BD:0733
;;   Called from:
;;     09BD:669E (in fn09BD_6699)
fn09BD_0733 proc
	out	22h,al
	mov	ah,al
	jmp	0739h

l09BD_0739:
	in	al,23h
	ret
09BD:073C                                     E6 22 86 C4             ."..
09BD:0740 EB 00 E6 23 C3 6F 07 74 07 8B 0E 10 00 90 E2 FE ...#.o.t........
09BD:0750 B0 45 E8 DE FF 24 3F 86 C4 E8 E0 FF 33 C0 8E C0 .E...$?.....3...
09BD:0760 26 C7 06 67 04 94 0B 26 8C 0E 69 04 E9 AF 01 50 &..g...&..i....P
09BD:0770 53 BB 00 08 FA E4 66 60 A8 A0 75 04 0C A0 E6 66 S.....f`..u....f
09BD:0780 89 1E 7C 0F 89 26 7A 0F 6A 38 07 26 C7 06 67 04 ..|..&z.j8.&..g.
09BD:0790 B9 07 A1 B6 09 26 A3 69 04 B8 44 01 E8 9D FF EB .....&.i..D.....
09BD:07A0 00 EB 00 EB 00 B8 44 00 E8 91 FF B0 45 E8 83 FF ......D.....E...
09BD:07B0 0C 80 86 C4 E8 85 FF EB FE B8 00 08 8E D8 8E C0 ................
09BD:07C0 8E 16 7C 0F 8B 26 7A 0F 61 A8 A0 75 02 E6 66 B0 ..|..&z.a..u..f.
09BD:07D0 45 E8 5F FF 24 3F 80 3E 35 00 00 75 02 0C 40 86 E._.$?.>5..u..@.
09BD:07E0 C4 E8 58 FF 5B 58 C3 50 53 BB 00 08 FA E4 21 60 ..X.[X.PS.....!`
09BD:07F0 33 C0 E6 43 8B 16 B6 09 33 C9 B0 0B E6 20 6A 38 3..C....3.... j8
09BD:0800 E4 40 2A C8 1F E4 40 1A E8 9C E4 20 A8 01 74 04 .@*...@.... ..t.
09BD:0810 B0 20 E6 20 9D FF 36 22 00 FF 36 20 00 B0 FE E6 . . ..6"..6 ....
09BD:0820 21 B0 10 E6 43 89 16 22 00 C7 06 20 00 52 08 E6 !...C.."... .R..
09BD:0830 40 89 1E 69 04 89 26 67 04 6A 20 B0 34 E6 43 1F @..i..&g.j .4.C.
09BD:0840 33 C0 E6 40 29 0E C6 09 83 1E C8 09 00 E6 40 E9 3..@).........@.
09BD:0850 83 02 FA 83 C4 06 33 C0 8E D8 8F 06 20 00 8F 06 ......3..... ...
09BD:0860 22 00 E8 FB FA 86 06 CC 09 3C 08 74 24 0A C0 74 "........<.t$..t
09BD:0870 1C 33 C0 39 06 C8 09 7D 14 3C 21 74 08 F7 06 CA .3.9...}.<!t....
09BD:0880 09 00 02 74 08 FF 06 C8 09 CD 08 EB 04 B0 20 E6 ...t.......... .
09BD:0890 20 61 E6 21 C7 06 D0 08 FF 07 81 3E 35 00 00 80  a.!.......>5...
09BD:08A0 75 03 E8 56 03 5B 58 C3 E7 07 EC 07 EB 04 9F 0A u..V.[X.........
09BD:08B0 A4 0A 80 3E 35 00 00 75 09 E8 2D 03 8B 0E 10 00 ...>5..u..-.....
09BD:08C0 E2 FE B8 DB 09 8C D9 E8 72 FA B0 0F E6 70 EB 00 ........r....p..
09BD:08D0 A0 EE 10 E6 71 C3 9B 09 A0 09 80 3E 2F 00 03 72 ....q......>/..r
09BD:08E0 14 8C E8 A3 66 0D 8C E0 A3 64 0D A1 60 0D 8E E0 ....f....d..`...
09BD:08F0 A1 62 0D 8E E8 E4 92 0C 02 24 FE EB 00 E6 92 EB .b.......$......
09BD:0900 1D E2 0A E7 0A 80 3E 35 00 00 75 0A E8 DA 02 8B ......>5..u.....
09BD:0910 0E 10 00 90 E2 FE B8 94 0B 8C C9 E8 1E FA B0 0F ................
09BD:0920 E6 70 EB 00 B0 0A E6 71 C3                      .p.....q.      

;; fn09BD_0929: 09BD:0929
;;   Called from:
;;     09BD:1218 (in fn09BD_11ED)
;;     09BD:125C (in fn09BD_1222)
fn09BD_0929 proc
	push	20h
	pop	ds

;; fn09BD_092C: 09BD:092C
;;   Called from:
;;     09BD:092B (in fn09BD_0929)
;;     09BD:0CF4 (in fn09BD_0CEC)
;;     09BD:0CF4 (in fn09BD_0CEC)
;;     09BD:7A45 (in fn09BD_7C31)
;;     09BD:7AF3 (in fn09BD_7A57)
;;     09BD:7CE4 (in fn09BD_7C31)
;;     09BD:7CED (in fn09BD_7C31)
fn09BD_092C proc
	nop
	jmp	word ptr [09BCh]
09BD:0931    90 50 53 FF 26 BE 09 50 53 BB 00 08 FA 80 3E  .PS.&..PS.....>
09BD:0940 2F 00 03 72 03 E9 F4 1E B0 0E E6 37 B8 00 08 50 /..r.......7...P
09BD:0950 50 60 FF 36 B6 09 68 7B 09 B0 0A E6 37 B8 38 00 P`.6..h{....7.8.
09BD:0960 8E D8 89 1E 06 04 89 26 04 04 BE 78 09 B9 03 00 .......&...x....
09BD:0970 FC BA F0 00 F3 F0 2E 6E 00 00 00 B0 0F E6 37 EB .......n......7.
09BD:0980 00 E6 52 81 3E 35 00 00 80 74 06 B0 00 E6 F2 EB ..R.>5...t......
09BD:0990 04 B0 03 E6 F6 61 07 1F 5B 58 C3 50 53 BB 00 08 .....a..[X.PS...
09BD:09A0 FA 60 89 1E 7C 0F 89 26 7A 0F B8 38 00 8E C0 A1 .`..|..&z..8....
09BD:09B0 B6 09 26 A3 69 04 26 C7 06 67 04 6E 0B F6 06 0C ..&.i.&..g.n....
09BD:09C0 12 02 74 0B E4 92 0C 03 EB 00 E6 92 F4 EB FD B0 ..t.............
09BD:09D0 FE E6 64 F4 E9 65 1E 50 53 BB 00 08 FA 80 3E 2F ..d..e.PS.....>/
09BD:09E0 00 03 73 F0 53 8B 1E 82 0F 0B DB 74 03 DD 37 9B ..s.S......t..7.
09BD:09F0 5B 60 B8 00 08 50 50 B8 38 00 8E C0 26 C7 06 FC [`...PP.8...&...
09BD:0A00 03 35 0A A1 B6 09 26 A3 FE 03 E4 02 8A C8 E4 12 .5....&.........
09BD:0A10 8A E8 B0 FB E6 12 B0 FF E6 02 B0 01 BA B0 31 EE ..............1.
09BD:0A20 E4 60 C0 E8 02 24 07 60 89 1E 7C 0F 89 26 7A 0F .`...$.`..|..&z.
09BD:0A30 B0 09 E6 20 F4 B0 80 E6 20 BB 00 08 8E DB 8E 16 ... .... .......
09BD:0A40 7C 0F 8B 26 7A 0F 61 E6 60 FA 8A C5 E6 12 8A C1 |..&z.a.`.......
09BD:0A50 E6 02 32 C0 BA B0 31 EE 07 1F 61 5B 58 C3 50 53 ..2...1...a[X.PS
09BD:0A60 BB 00 08 FA 60 B8 38 00 8E C0 26 C7 06 A2 04 86 ....`.8...&.....
09BD:0A70 0A A1 B6 09 26 A3 A4 04 89 1E 7C 0F 89 26 7A 0F ....&.....|..&z.
09BD:0A80 BA 00 3F ED EB FE B8 00 08 8E D8 8E C0 8E 16 7C ..?............|
09BD:0A90 0F 8B 26 7A 0F BA 20 3F B0 00 EE 61 5B 58 C3 50 ..&z.. ?...a[X.P
09BD:0AA0 53 BB 00 08 FA E4 21 60 9C FF 36 B6 09 68 3F 0B S.....!`..6..h?.
09BD:0AB0 2B 26 C4 09 B0 FF E6 21 B8 38 00 8E C0 26 89 1E +&.....!.8...&..
09BD:0AC0 69 04 26 89 26 67 04 80 3E D0 0E 00 75 07 B0 FE i.&.&g..>...u...
09BD:0AD0 E6 64 F4 EB FD C7 06 D0 08 00 00 0F 01 1E D0 08 .d..............
09BD:0AE0 CD FF 50 53 BB 00 08 FA E4 21 60 89 1E 7C 0F 89 ..PS.....!`..|..
09BD:0AF0 26 7A 0F B8 38 00 8E C0 A1 B6 09 26 A3 69 04 26 &z..8......&.i.&
09BD:0B00 C7 06 67 04 14 0B 80 3E D0 0E 00 75 C8 B0 FE E6 ..g....>...u....
09BD:0B10 64 F4 EB FD B8 00 08 8E D8 8E 16 7C 0F 8B 26 7A d..........|..&z
09BD:0B20 0F E8 3C F8 B0 0D E6 70 61 E6 21 C7 06 D0 08 FF ..<....pa.!.....
09BD:0B30 07 81 3E 35 00 00 80 74 03 5B 58 C3 E9 AC 1D FA ..>5...t.[X.....
09BD:0B40 E8 1D F8 61 E6 21 C7 06 D0 08 FF 07 80 3E 35 00 ...a.!.......>5.
09BD:0B50 00 75 0D 80 3E 3F 00 00 74 03 E8 86 00 5B 58 C3 .u..>?..t....[X.
09BD:0B60 51 8B 0E 10 00 90 E2 FE E8 7E 00 59 EB EF B8 00 Q........~.Y....
09BD:0B70 08 8E D8 8E 16 7C 0F 8B 26 7A 0F B0 0D E6 70 61 .....|..&z....pa
09BD:0B80 E4 71 80 3E 35 00 00 E4 92 75 02 24 FD 24 FE E6 .q.>5....u.$.$..
09BD:0B90 92 5B 58 C3 B8 00 08 8E D8 8E D0 8B 26 96 09 81 .[X.........&...
09BD:0BA0 EC 80 01 8B EC 8B FC B9 2A 00 FC 33 C0 F3 AA 89 ........*..3....
09BD:0BB0 26 96 09 8B EC C7 46 18 FE FF 8B 26 50 0F 6A 00 &.....F....&P.j.
09BD:0BC0 E8 DA 16 E4 92 80 E4 02 24 FD 0A C4 EB 00 E6 92 ........$.......
09BD:0BD0 C3                                              .              

;; fn09BD_0BD1: 09BD:0BD1
;;   Called from:
;;     09BD:0BEB (in fn09BD_0BE9)
fn09BD_0BD1 proc
	call	0C28h
	mov	al,0D1h
	out	64h,al
	call	0C28h
	xchg	ah,al
	out	60h,al
	call	0C28h
	ret

l09BD_0BE3:
	mov	al,0FFh
	out	64h,al
	jmp	0C28h

;; fn09BD_0BE9: 09BD:0BE9
;;   Called from:
;;     09BD:63FF (in fn09BD_63FD)
;;     09BD:6499 (in fn09BD_6497)
fn09BD_0BE9 proc
	mov	ah,0DFh
	call	0BD1h
	test	byte ptr [0014h],1h
	jz	0BE3h

l09BD_0BF5:
	call	0C0Dh
	jz	0BF5h

l09BD_0BFA:
	ret
09BD:0BFB                                  B4 DD E8 D1 FF            .....
09BD:0C00 F6 06 14 00 01 74 DC E8 03 00 75 FB C3          .....t....u..  

;; fn09BD_0C0D: 09BD:0C0D
;;   Called from:
;;     09BD:0BF5 (in fn09BD_0BE9)
;;     09BD:626B (in fn09BD_625F)
;;     09BD:6699 (in fn09BD_6699)
;;     09BD:69A7 (in fn09BD_69A7)
fn09BD_0C0D proc
	cli
	xor	cx,cx
	push	ds
	mov	ds,cx
	push	si
	mov	si,20h
	dec	cx
	mov	es,cx
	push	di
	mov	di,30h
	cld
	mov	cx,4h

l09BD_0C22:
	rep cmpsw

l09BD_0C24:
	pop	di
	pop	si
	pop	ds
	ret

;; fn09BD_0C28: 09BD:0C28
;;   Called from:
;;     09BD:0BD1 (in fn09BD_0BD1)
;;     09BD:0BD8 (in fn09BD_0BD1)
;;     09BD:0BDF (in fn09BD_0BD1)
;;     09BD:0BE7 (in fn09BD_0BE9)
fn09BD_0C28 proc
	push	cx
	xor	cx,cx

l09BD_0C2B:
	in	al,64h
	test	al,2h
	jnz	0C33h

l09BD_0C31:
	pop	cx
	ret

l09BD_0C33:
	loopne	0C2Bh

l09BD_0C35:
	jz	0C31h

l09BD_0C37:
	push	1Ah
	call	229Dh
	call	0C9Bh
	add	al,ch
	pop	ax
	add	[bx+di],al
	call	0C9Bh
	add	ch,al
	push	ax
	add	[bp+di],al
	call	0C9Bh
	add	al,0E8h
	dec	ax
	add	[di],al
	call	0C9Bh
	push	es
	call	0C9Bh
	pop	es
	call	0C9Fh
	or	al,ch
	cmp	[bx+si],al
	or	ax,bp
	cmp	[bx+si],al
	or	ch,al
	xor	al,0h
	or	bp,ax
	xor	[bx+si],al
	or	al,0E8h
	sub	al,0h
	or	ax,28E8h
	add	[20E8h],cl
	add	[bx],cl
	call	0C9Bh
	push	ds
	call	0C9Bh
	and	[bx],bl

;; fn09BD_0C84: 09BD:0C84
;;   Called from:
;;     09BD:0CB3 (in fn09BD_0C9B)
;;     09BD:0CB3 (in fn09BD_0C9F)
fn09BD_0C84 proc
	pop	ds

;; fn09BD_0C85: 09BD:0C85
;;   Called from:
;;     09BD:0C83 (in fn09BD_0C28)
;;     09BD:0C84 (in fn09BD_0C84)
fn09BD_0C85 proc
	pop	ax
	pusha
	push	es
	push	ds
	push	ss
	mov	ax,20h
	mov	ds,ax
	push	word ptr [0996h]
	mov	bp,sp
	add	word ptr [bp+0Eh],6h
	jmp	0CECh

;; fn09BD_0C9B: 09BD:0C9B
;;   Called from:
;;     09BD:0C3C (in fn09BD_0C28)
;;     09BD:0C44 (in fn09BD_0C28)
;;     09BD:0C4C (in fn09BD_0C28)
;;     09BD:0C54 (in fn09BD_0C28)
;;     09BD:0C58 (in fn09BD_0C28)
;;     09BD:0C7C (in fn09BD_0C28)
;;     09BD:0C80 (in fn09BD_0C28)
fn09BD_0C9B proc
	push	0h
	push	0h

;; fn09BD_0C9F: 09BD:0C9F
;;   Called from:
;;     09BD:0C5C (in fn09BD_0C28)
fn09BD_0C9F proc
	cli
	push	ax
	push	ds
	mov	ax,20h
	mov	ds,ax
	mov	[0F7Ch],ss
	mov	[0F7Ah],sp
	cmp	[0F7Ch],ax
	jz	0C84h

;; fn09BD_0CB5: 09BD:0CB5
;;   Called from:
;;     09BD:0CB3 (in fn09BD_0C9F)
;;     09BD:0CB3 (in fn09BD_0C9B)
fn09BD_0CB5 proc
	mov	ss,ax
	mov	sp,[0996h]
	sub	sp,180h
	pusha
	push	es
	push	ds
	push	word ptr [0F7Ch]
	push	word ptr [0996h]
	mov	bp,sp
	mov	es,ax
	lds	si,[0F7Ah]
	cld
	lodsw
	mov	[bp+4h],ax
	lea	di,[bp+16h]
	movsw
	movsw
	movsd
	mov	[bp+0Eh],si
	movsd
	movsd
	movsd
	mov	ax,20h
	mov	ds,ax

;; fn09BD_0CEC: 09BD:0CEC
;;   Called from:
;;     09BD:0C99 (in fn09BD_0C85)
;;     09BD:0C99 (in fn09BD_0C85)
;;     09BD:0CEA (in fn09BD_0CB5)
fn09BD_0CEC proc
	mov	[0996h],bp
	mov	sp,[0F50h]
	call	092Ch
	xor	ax,ax
	mov	bx,[bp+18h]
	or	bx,bx
	jnz	0D03h

;; fn09BD_0D00: 09BD:0D00
;;   Called from:
;;     09BD:0CFE (in fn09BD_0CEC)
;;     09BD:0CFE (in fn09BD_0CEC)
fn09BD_0D00 proc
	xchg	[bp+1Ch],bx

;; fn09BD_0D03: 09BD:0D03
;;   Called from:
;;     09BD:0CFE (in fn09BD_0CEC)
;;     09BD:0CFE (in fn09BD_0CEC)
;;     09BD:0D00 (in fn09BD_0D00)
fn09BD_0D03 proc
	mov	al,cs:[bx]
	mov	[bp+18h],ax
	jmp	0251h

;; fn09BD_0D0C: 09BD:0D0C
;;   Called from:
;;     09BD:024D (in fn09BD_0246)
fn09BD_0D0C proc
	cli
	push	1026h
	call	1298h
	pop	cx
	ret

;; fn09BD_0D15: 09BD:0D15
;;   Called from:
;;     09BD:0246 (in fn09BD_0246)
fn09BD_0D15 proc
	cli
	push	1026h
	call	1280h
	pop	cx
	push	0F8Ah
	call	1298h
	pop	cx
	sti
	ret
09BD:0D26                   55 8B EC 1E 06 56 57 C5 76 0A       U....VW.v.
09BD:0D30 8B C6 8C DA 8C D1 3B CA 75 22 8B CE 2B CC 2B F1 ......;.u"..+.+.
09BD:0D40 C4 7E 06 2B F9 01 7E 00 29 76 00 8C C3 8E D3 8B .~.+..~.)v......
09BD:0D50 E7 D1 E9 FC F3 A5 5F 5E 07 1F 5D CB 33 C0 33 D2 ......_^..].3.3.
09BD:0D60 EB F4 80 E3 F8 8A 77 07 8A 57 04 8B 5F 02 80 E3 ......w..W.._...
09BD:0D70 F0 0A DA C1 CB 04 F7 C2 F0 FF 74 03 BB 00 E0 C3 ..........t.....
09BD:0D80 55 8B EC 8C D9 B8 08 00 8E D8 8B 5E 04 E8 D2 FF U..........^....
09BD:0D90 75 1A 93 8B D9 E8 CA FF 53 8C D3 E8 C4 FF 75 0C u.......S.....u.
09BD:0DA0 87 46 04 6A 20 1F E8 88 FB 1F 5D CB 33 C0 8E D9 .F.j .....].3...
09BD:0DB0 C9 CB 55 8B EC 8B 56 08 33 C0 75 17 B8 00 08 8E ..U...V.3.u.....
09BD:0DC0 D8 E8 CF F4 8B 46 06 89 46 04 8E 5E 0A 8E 46 0C .....F..F..^..F.
09BD:0DD0 B8 01 00 5D CB 90 00 00 00 00 00 00 00 00 58 5B ...]..........X[
09BD:0DE0 9C FA 53 50 55 8B EC 83 EC 06 06 1E 56 57 83 EC ..SPU.......VW..
09BD:0DF0 14 C5 76 0A FC 16 07 8B FC B9 0A 00 F3 A5 16 8D ..v.............
09BD:0E00 46 0A 50 6A 20 1F 1E A1 0A 00 03 06 0E 00 03 06 F.Pj ...........
09BD:0E10 48 00 81 2E 0E 00 00 02 81 2E 96 09 80 01 8B 1E H...............
09BD:0E20 96 09 8C 57 02 8D 4E 02 89 4F 0E 24 FE 50 0E E8 ...W..N..O.$.P..
09BD:0E30 F4 FE 83 C4 08 89 46 FC 89 56 FE 0E E8 41 FF 89 ......F..V...A..
09BD:0E40 46 FA 8A 46 08 2E 86 06 72 0E 2E A2 DC 0D FF 76 F..F....r......v
09BD:0E50 06 0E E8 6B 03 1F 07 61 2E FF 36 D6 0D 2E FF 36 ...k...a..6....6
09BD:0E60 D8 0D 2E FF 36 DC 0D 2E 8C 16 D8 0D 2E 89 26 D6 ....6.........&.
09BD:0E70 0D CD 00 2E 8E 16 D8 0D 2E 8B 26 D6 0D 9C FA 2E ..........&.....
09BD:0E80 8F 06 DA 0D 2E 8F 06 DC 0D 2E 8F 06 D8 0D 2E 8F ................
09BD:0E90 06 D6 0D 60 2E A0 DC 0D 2E A2 72 0E 06 1E 8B EC ...`......r.....
09BD:0EA0 9C 83 C5 22 FF 76 F8 FF 76 F6 6A 20 6A 18 0E E8 ...".v..v.j j...
09BD:0EB0 00 FF 36 81 06 96 09 80 01 36 81 06 0E 00 00 02 ..6......6......
09BD:0EC0 83 C4 08 16 8D 46 0A 50 FF 76 FE FF 76 FC 0E E8 .....F.P.v..v...
09BD:0ED0 54 FE 83 C4 08 FC 58 C4 7E 0E 16 1F 8B F4 B9 0A T.....X.~.......
09BD:0EE0 00 F3 A5 83 C4 14 5F 5E 1F 07 8B E5 5D 2E A1 DA ......_^....]...
09BD:0EF0 0D 0C 02 CF                                     ....           

;; fn09BD_0EF4: 09BD:0EF4
;;   Called from:
;;     09BD:697C (in fn09BD_696B)
;;     09BD:6992 (in fn09BD_698C)
;;     09BD:72A7 (in fn09BD_7270)
;;     09BD:7797 (in fn09BD_76B6)
;;     09BD:7959 (in fn09BD_78FA)
;;     09BD:79D1 (in fn09BD_7C31)
;;     09BD:79F5 (in fn09BD_7C31)
fn09BD_0EF4 proc
	int	15h
	ret
09BD:0EF7                      90 8C 4F 1E 93 8B EC 8A 87        ..O......
09BD:0F00 BE 10 03 DB 03 DB 33 C9 8D 57 E0 81 FA 98 00 77 ......3..W.....w
09BD:0F10 0B 84 C0 74 07 B9 00 08 81 C3 6A 0F 8E C1 26 8B ...t......j...&.
09BD:0F20 4F 02 E3 0D 26 8B 07 89 4E 16 89 46 14 1F 07 61 O...&...N..F...a
09BD:0F30 CF E9 1D F3 9C FA 52 66 53 55 1E BA 00 08 06 8E ......RfSU......
09BD:0F40 DA 8B 2E 96 09 E8 48 F3 5A EA 7C 04 70 00 E8 1D ......H.Z.|.p...
09BD:0F50 00 00 E8 19 00 00 E8 15 00 00 E8 11 00 00 E8 0D ................
09BD:0F60 00 00 E8 09 00 00 E8 05 00 00 E8 01 00 00 FA 1E ................
09BD:0F70 06 55 52 8B EC 56 8D 76 04 57 BF 00 08 8E C7 26 .UR..V.v.W.....&
09BD:0F80 8B 3E 96 09 83 EF 0C 16 1F 26 8C 55 FE 2E 8B 16 .>.......&.U....
09BD:0F90 08 00 26 89 55 FC FC 51 B9 06 00 F3 A5 59 06 1F ..&.U..Q.....Y..
09BD:0FA0 81 66 0E FF 0C 8B 7E 08 2E 8B 3D 81 E7 FF 00 57 .f....~...=....W
09BD:0FB0 2E 89 3E 08 00 8C D2 81 FA 00 08 75 3B E8 D0 F2 ..>........u;...
09BD:0FC0 BA 48 00 8E C2 5A 80 FA 24 74 28 80 FA 23 74 1E .H...Z..$t(..#t.
09BD:0FD0 26 88 16 E8 0F EB 01 90 5F 5E 5A BD 00 00 8E C5 &......._^Z.....
09BD:0FE0 8E DD 5D 83 C4 0A 9D CD 21 EA 6A 05 70 00 EA BE ..].....!.j.p...
09BD:0FF0 05 70 00 EA F0 05 70 00 C1 C2 04 8B FA 83 E7 F0 .p....p.........
09BD:1000 80 E2 0F 68 C0 0F E9 AE F2 E8 25 F9 5B 56 8B 37 ...h......%.[V.7
09BD:1010 2E 89 36 08 00 8B 77 08 2E 80 3C 24 C4 77 0A 89 ..6...w...<$.w..
09BD:1020 76 02 8C 46 04 75 1A 83 3E F0 10 00 74 13 8B 36 v..F.u..>...t..6
09BD:1030 F0 10 C6 46 06 00 09 76 06 C7 46 02 B7 10 8C 4E ...F...v..F....N
09BD:1040 04 5E 50 8B 07 2E A3 08 00 58 8E 47 04 8E 5F 06 .^P......X.G.._.
09BD:1050 5B 5D CF 00 00 00 00 00 00 00 00 00 00 00 00 00 []..............
09BD:1060 00 00 00 00 00 00 00 00 2E FF 36 64 10 89 67 1E ..........6d..g.
09BD:1070 8B 46 26 89 47 EE B8 20 00 8E D0 8D 67 EE C6 06 .F&.G.. ....g...
09BD:1080 CC 09 21 E8 A6 F8 8D 47 18 2E A3 64 10 8B 47 16 ..!....G...d..G.
09BD:1090 2E C6 06 06 00 21 2E 88 26 07 00 FF 77 10 8B 4F .....!..&...w..O
09BD:10A0 14 8B 57 12 8B 6F 0C 8B 77 0A 8B 7F 08 8E 47 06 ..W..o..w.....G.
09BD:10B0 8E 5F 04 5B 9D CD 21 9C 2E 8F 06 66 10 FA 2E 8E ._.[..!....f....
09BD:10C0 16 00 00 2E 8B 26 64 10 60 06 1E 2E 8E 1E 00 00 .....&d.`.......
09BD:10D0 E8 BD F1 2E A1 66 10 EA 81 0D 70 00 66 9C 66 0E .....f....p.f.f.
09BD:10E0 6A 00 68 E9 10 E8 B3 FB FF EA 89 0A 70 00 E8 AA j.h.........p...
09BD:10F0 FB 21 0E E8 8A FC 5B FE 06 82 11 E8 B4 21 59 59 .!....[......!YY
09BD:1100 8B C4 2D 06 00 50 E8 AC 1D 59 FE 0E 82 11 0E E8 ..-..P...Y......
09BD:1110 A0 FC EA DA 09 70 00 90 98 00 00 08 E8 4F FE 08 .....p.......O..
09BD:1120 E8 4B FE 09 E8 47 FE 0A E8 43 FE 0B E8 3F FE 0C .K...G...C...?..
09BD:1130 E8 3B FE 0D E8 37 FE 0E E8 33 FE 0F E8 2F FE 10 .;...7...3.../..
09BD:1140 E8 2B FE 11 E8 27 FE 12 E8 23 FE 13 E8 1F FE 14 .+...'...#......
09BD:1150 E8 1B FE 15 E8 17 FE 16 E8 13 FE 17 E8 0F FE 18 ................
09BD:1160 E8 0B FE 19 E8 07 FE 1A E8 03 FE 1B E8 FF FD 1C ................
09BD:1170 E8 FB FD 1D E8 F7 FD 1E E8 F3 FD 1F E8 EF FD 20 ............... 
09BD:1180 E8 EB FD 21 E8 E7 FD 22 E8 E3 FD 23 E8 DF FD 24 ...!..."...#...$
09BD:1190 E8 DB FD 25 E8 D7 FD 26 E8 D3 FD 27 E8 CF FD 28 ...%...&...'...(
09BD:11A0 E8 CB FD 29 E8 C7 FD 2A E8 C3 FD 2B E8 BF FD 2C ...)...*...+...,
09BD:11B0 E8 BB FD 2D E8 B7 FD 2E 00 00 00 00 00 00 00 00 ...-............
09BD:11C0 CF 0E E8 BB FB FB C3 A0 17 0A 3C FF 74 0E 91 B4 ..........<.t...
09BD:11D0 0F CD 10 3A C1 74 05 91 32 E4 CD 10 C3 8B DC 36 ...:.t..2......6
09BD:11E0 8B 47 02 05 10 00 D1 D8 B1 03 D3 E8 C3          .G...........  

;; fn09BD_11ED: 09BD:11ED
;;   Called from:
;;     09BD:4EA8 (in fn09BD_4E9A)
;;     09BD:4EC8 (in fn09BD_4E9A)
;;     09BD:4F1E (in fn09BD_4F10)
;;     09BD:4F3E (in fn09BD_4F10)
;;     09BD:5014 (in fn09BD_4FE3)
fn09BD_11ED proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	call	0290h
	push	8h
	pop	ds
	mov	ax,[bp+4h]
	mov	[0062h],ax
	mov	ax,[bp+6h]
	mov	[0064h],al
	mov	[0067h],ah
	mov	cx,[bp+0Ah]
	push	60h
	pop	ds
	xor	si,si
	mov	di,[bp+8h]
	cld

l09BD_1214:
	rep movsb

l09BD_1216:
	push	ss
	pop	ds
	call	0929h
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	sti
	ret

;; fn09BD_1222: 09BD:1222
;;   Called from:
;;     09BD:5002 (in fn09BD_4FE3)
;;     09BD:52A3 (in fn09BD_5248)
;;     09BD:5560 (in fn09BD_5666)
;;     09BD:559F (in fn09BD_5666)
;;     09BD:55DB (in fn09BD_5666)
fn09BD_1222 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	call	0290h
	push	60h
	mov	ax,[bp+4h]
	push	8h
	pop	es
	mov	es:[0062h],ax
	mov	ax,[bp+6h]
	mov	es:[0064h],al
	mov	es:[0067h],ah
	pop	es
	xor	di,di
	mov	si,[bp+8h]
	mov	cx,[bp+0Ah]
	cld
	shr	cx,1h

l09BD_124E:
	rep movsw

l09BD_1250:
	rcl	cx,1h

l09BD_1252:
	rep movsb

l09BD_1254:
	push	8h
	pop	es
	mov	es:[0066h],cx
	call	0929h
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	sti
	ret
09BD:1266                   8B DC 9C 58 36 83 7F 02 00 FA       ...X6.....
09BD:1270 74 01 FB C1 E8 09 25 01 00 C3 58 CC 00 01 00 01 t.....%...X.....

;; fn09BD_1280: 09BD:1280
;;   Called from:
;;     09BD:0D19 (in fn09BD_0D15)
;;     09BD:62A6 (in fn09BD_625F)
fn09BD_1280 proc
	mov	bx,sp
	mov	di,[bx+2h]
	xor	ax,ax
	mov	ds,ax
	push	ss
	pop	es
	mov	si,20h
	cld
	mov	cx,4Eh
	cli

l09BD_1293:
	rep movsw

l09BD_1295:
	push	ss
	pop	ds
	ret

;; fn09BD_1298: 09BD:1298
;;   Called from:
;;     09BD:0D10 (in fn09BD_0D0C)
;;     09BD:0D20 (in fn09BD_0D15)
fn09BD_1298 proc
	mov	bx,sp
	mov	si,[bx+2h]
	xor	ax,ax
	mov	es,ax
	mov	bx,8h
	cld
	cli
	mov	di,20h

l09BD_12A9:
	cmp	byte ptr [bx+10BEh],0h
	jnz	12BAh

l09BD_12B0:
	cmpsw
	cmpsw

l09BD_12B2:
	inc	bx
	cmp	bl,2Eh
	jbe	12A9h

l09BD_12B8:
	jmp	1295h

l09BD_12BA:
	cmp	bl,[0034h]
	jz	12B0h

l09BD_12C0:
	movsw
	movsw
	jmp	12B2h
09BD:12C4             00 00 00 00 CC 12 00 00 80 FC 88 74     ...........t
09BD:12D0 0A 80 FC BF 74 32 2E FF 2E C4 12 1E 2E 8E 1E 00 ....t2..........
09BD:12E0 00 80 3E 2E 00 0B 74 1D 83 3E DC 0A 00 75 16 52 ..>...t..>...u.R
09BD:12F0 A1 98 00 8B 16 9A 00 C1 E8 06 C1 E2 0A 0B C2 2D ...............-
09BD:1300 00 04 5A 1F CF 1F EB CE 3C 05 74 27 1E 2E 8E 1E ..Z.....<.t'....
09BD:1310 00 00 3C DC 74 0F 3C 06 77 EB 3C 02 77 2A 80 3E ..<.t.<.w.<.w*.>
09BD:1320 16 0A 00 75 E0 83 3E 14 0A 00 75 D9 BE 98 00 8C ...u..>...u.....
09BD:1330 DA 1F CF E8 C0 19 CF 06 8E C3 E8 03 EE 07 E8 02 ................
09BD:1340 03 B8 04 BF 5B 1F EB 8E 53 3B 1E EA 0C 75 F5 3C ....[...S;...u.<
09BD:1350 04 74 E4 53 50 FE 06 D8 11 8C D0 3B 06 B4 09 8B .t.SP......;....
09BD:1360 D4 74 06 1E 17 8B 26 50 0F 50 52 E8 FA EC 5A 17 .t....&P.PR...Z.
09BD:1370 8B E2 58 5A 3C 06 74 32 B4 52 CD 21 26 8B 77 FE ..XZ<.t2.R.!&.w.
09BD:1380 8E DE 80 3E 00 00 5A 74 1C 8B DE 03 1E 03 00 43 ...>..Zt.......C
09BD:1390 8E DB 39 16 01 00 74 04 8B F3 EB E4 B4 49 43 8E ..9...t......IC.
09BD:13A0 C3 CD 21 EB DB B8 03 BF EB 9A 5B 1F CF          ..!.......[..  

;; fn09BD_13AD: 09BD:13AD
;;   Called from:
;;     09BD:7302 (in fn09BD_7270)
fn09BD_13AD proc
	call	166Bh
	jnz	1427h

l09BD_13B2:
	xor	bx,bx
	mov	es,bx
	mov	bl,[0034h]
	shl	bx,2h
	mov	dx,cs
	cmp	dx,es:[bx+2h]
	jnz	13E4h

l09BD_13C5:
	mov	ah,25h
	cmp	byte ptr [0034h],15h
	lds	dx,cs:[12C4h]
	jz	13D8h

l09BD_13D3:
	lds	dx,ss:[0F84h]

l09BD_13D8:
	cli
	mov	es:[bx],dx
	mov	es:[bx+2h],ds
	sti
	push	ss
	pop	ds
	ret

l09BD_13E4:
	xchg	cx,ax

l09BD_13E5:
	mov	ds,ax
	cmp	ax,[bx-2h]
	jnz	1427h

l09BD_13EC:
	cmp	bx,[bx-4h]
	jnz	1427h

l09BD_13F1:
	mov	ax,[bx-6h]
	cmp	dx,ax
	jz	13FDh

l09BD_13F8:
	mov	bx,[bx-8h]
	jmp	13E5h

l09BD_13FD:
	mov	ax,cs:[12C4h]
	cli
	mov	[bx-8h],ax
	mov	ax,cs:[12C6h]
	mov	[bx-6h],ax
	sti
	mov	ax,[0000h]
	or	ax,ax
	jnz	1417h

l09BD_1414:
	mov	ax,[0010h]

l09BD_1417:
	or	ax,ax
	jz	1427h

l09BD_141B:
	sub	ax,11h
	mov	ds,ax
	inc	ax
	cmp	[0001h],ax
	jz	142Ah

l09BD_1427:
	mov	ax,0FFFFh

l09BD_142A:
	mov	bx,ss:[0CEAh]
	dec	bx
	mov	ds,bx
	mov	[0001h],ax
	push	ss
	pop	ds
	ret
09BD:1438                         A1 88 0F 0C 01 0F 01 F0         ........
09BD:1440 C3 8B 1E B2 08 81 FB 80 00 72 4B A1 AA 08 3D 80 .........rK...=.
09BD:1450 00 72 43 E8 3A EE 33 C9 0F 02 CB 80 E5 18 80 FD .rC.:.3.........
09BD:1460 18 75 30 33 C9 0F 02 C8 80 E5 18 80 FD 10 75 23 .u03..........u#
09BD:1470 89 26 50 0F 8E D0 8B 26 A8 08 6A 20 FF 36 96 09 .&P....&..j .6..
09BD:1480 8E 1E AE 08 26 FF 1E B0 08 6A 20 1F 6A 20 17 8B ....&....j .j ..
09BD:1490 26 50 0F E8 93 F4 C3                            &P.....        

;; fn09BD_1497: 09BD:1497
;;   Called from:
;;     09BD:17DC (in fn09BD_17D8)
;;     09BD:2D54 (in fn09BD_2D3E)
;;     09BD:2D5C (in fn09BD_2D3E)
;;     09BD:2D67 (in fn09BD_2D3E)
fn09BD_1497 proc
	mov	bx,sp
	mov	ax,[bx+2h]
	push	ax
	push	ax
	call	2610h
	xchg	cx,ax
	pop	ax
	pop	dx
	mov	bx,2h
	mov	ah,40h
	int	21h
	ret

;; fn09BD_14AC: 09BD:14AC
;;   Called from:
;;     09BD:6C4C (in fn09BD_6C64)
fn09BD_14AC proc
	mov	bx,sp
	push	word ptr [0AC2h]
	mov	word ptr [0AC2h],14C4h
	push	word ptr ss:[bx+2h]
	call	229Dh
	pop	cx
	pop	word ptr [0AC2h]
	ret
09BD:14C5                00 00 00 00 00 00 00 00 00 00 00      ...........
09BD:14D0 44 31 36 2F 00 00 00 00 3D 05 16 74 15 3D 06 16 D16/....=..t.=..
09BD:14E0 74 10 3D 07 16 74 05 2E FF 2E D4 14 81 FB C0 22 t.=..t........."
09BD:14F0 75 F5 50 9C 2E FF 1E D4 14 58 FB 50 52 56 57 1E u.P......X.PRVW.
09BD:1500 2E 8E 1E 00 00 3C 05 74 57 3C 07 74 26 83 3E 14 .....<.tW<.t&.>.
09BD:1510 0A 00 74 19 FA A1 89 0A A3 C0 09 A1 8B 0A A3 BC ..t.............
09BD:1520 09 A1 8D 0A A3 BE 09 C7 06 14 0A 00 00 1F 5F 5E .............._^
09BD:1530 5A 58 CF F7 06 82 15 04 00 75 1A 89 3E 54 15 8C ZX.......u..>T..
09BD:1540 06 56 15 8C C0 0B C7 74 0C 26 C7 45 08 50 15 26 .V.....t.&.E.P.&
09BD:1550 C7 45 0A 00 08 1E 07 BF 50 15 1F 58 5E 5A 58 CF .E......P..X^ZX.
09BD:1560 F7 C2 01 00 75 C7 85 C9 75 C3 89 0E 2A 0A C7 06 ....u...u...*...
09BD:1570 99 0A 00 00 8C 06 1C 0A 89 1E 1A 0A 83 3E 87 0A .............>..
09BD:1580 00 75 21 B8 25 00 89 26 95 0A 8C 16 97 0A 1E 17 .u!.%..&........
09BD:1590 8B 26 50 0F 50 E8 14 FF 0F B2 26 95 0A C6 06 2A .&P.P.....&....*
09BD:15A0 0A 01 EB 2A BA 2C 0A B8 00 43 CD 21 72 06 F7 C1 ...*.,...C.!r...
09BD:15B0 1E 00 74 0C F6 06 15 00 08 74 10 B8 24 00 EB C6 ..t......t..$...
09BD:15C0 8C 1E 20 0A BA 2C 0A 89 16 1E 0A E8 0C 00 1E 07 .. ..,..........
09BD:15D0 BB 18 0A 8B 0E 2A 0A E9 53 FF A1 87 0A A3 78 15 .....*..S.....x.
09BD:15E0 83 26 82 15 FD 80 3E 3E 00 00 74 05 83 0E 82 15 .&....>>..t.....
09BD:15F0 02 A1 C8 08 A3 60 15 A1 CA 08 A3 62 15 A0 CC 08 .....`.....b....
09BD:1600 8A 26 CF 08 A3 64 15 A1 D0 08 A3 66 15 A1 D2 08 .&...d.....f....
09BD:1610 A3 68 15 A0 D4 08 8A 26 D7 08 A3 6A 15 FA B8 06 .h.....&...j....
09BD:1620 17 87 06 C0 09 A3 89 0A B8 3D 17 87 06 BC 09 A3 .........=......
09BD:1630 8B 0A B8 49 17 87 06 BE 09 A3 8D 0A C7 06 14 0A ...I............
09BD:1640 01 00 C3 60 1E 06 A1 2E 00 80 FC 03 72 19 B8 2F ...`........r../
09BD:1650 35 CD 21 2E 89 1E D4 14 2E 8C 06 D6 14 0E 1F BA 5.!.............
09BD:1660 D8 14 B8 2F 25 CD 21 07 1F 61 C3                .../%.!..a.    

;; fn09BD_166B: 09BD:166B
;;   Called from:
;;     09BD:13AD (in fn09BD_13AD)
fn09BD_166B proc
	pusha
	push	ds
	push	es
	mov	dx,cs:[14D4h]
	mov	cx,cs:[14D6h]
	mov	ds,cx
	or	cx,dx
	jz	16B4h

l09BD_167E:
	push	0h
	pop	es
	mov	bx,es:[00BEh]
	mov	cx,cs
	sub	cx,bx
	jc	168Fh

l09BD_168C:
	mov	cx,0h

l09BD_168F:
	jnz	169Bh

l09BD_1691:
	mov	es:[00BCh],dx
	mov	es:[00BEh],ds

l09BD_169B:
	push	ss
	pop	ds
	test	word ptr [1582h],1h
	jz	16B4h

l09BD_16A5:
	mov	ax,1706h
	mov	[09C0h],ax
	mov	ax,2h
	call	dword ptr [155Ch]
	rcl	cx,1h

l09BD_16B4:
	pop	es
	pop	ds
	xor	ax,ax
	mov	cs:[14D4h],ax
	mov	cs:[14D6h],ax
	test	cx,cx
	popa
	ret
09BD:16C4             F7 06 82 15 01 00 74 0D B8 06 17 A3     ......t.....
09BD:16D0 C0 09 B8 02 00 FF 1E 5C 15 C3 F7 06 82 15 01 00 .......\........
09BD:16E0 75 30 B8 24 00 83 3E 99 0A 00 75 10 C7 06 99 0A u0.$..>...u.....
09BD:16F0 01 00 1E 17 8B 26 50 0F 50 E8 B0 FD B8 00 4C CD .....&P.P.....L.
09BD:1700 21 B8 27 00 EB DF F7 06 82 15 01 00 75 04 FF 26 !.'.........u..&
09BD:1710 89 0A 83 3E 88 15 6D 72 E8 5B 8B F4 B8 01 00 B9 ...>..mr.[......
09BD:1720 18 00 38 06 00 00 2E 38 06 2C 2D FF 1E 5C 15 B8 ..8....8.,-..\..
09BD:1730 20 00 8E D8 66 89 26 7C 15 8B E6 FF E3 F7 06 82  ...f.&|........
09BD:1740 15 01 00 75 10 FF 26 8B 0A F7 06 82 15 01 00 75 ...u..&........u
09BD:1750 09 FF 26 8D 0A 50 53 BB 00 08 51 FA 89 1E 97 0A ..&..PS...Q.....
09BD:1760 89 26 95 0A 66 0F B2 26 7C 15 B8 00 00 8B 0E B6 .&..f..&|.......
09BD:1770 09 66 FF 1E 72 15 0F B2 26 95 0A 59 5B 58 C3 8B .f..r...&..Y[X..
09BD:1780 F4 8B 0E B6 09 B8 03 00 66 0F B2 26 7C 15 66 FF ........f..&|.f.
09BD:1790 1E 72 15 B8 00 08 8E D0 8B E6 8E D8 FB FA E8 65 .r.............e
09BD:17A0 FF 8E D0 83 C4 10 B8 68 00 0F 00 D0 8F 06 96 09 .......h........
09BD:17B0 8F 06 93 0A 66 8F 06 8F 0A EA 33 1E 70 00 3F 6B ....f.....3.p.?k
09BD:17C0 18 00 00 00 20 00 E8 D6 F4 0D 2E FF 2E 60 10 E8 .... ........`..
09BD:17D0 C9 F4 FE 00 2B C0 C3 00                         ....+...       

;; fn09BD_17D8: 09BD:17D8
;;   Called from:
;;     09BD:2D60 (in fn09BD_2D3E)
;;     09BD:2D6B (in fn09BD_2D3E)
fn09BD_17D8 proc
	mov	ax,0AACh
	push	ax
	call	1497h
	pop	bx
	ret
09BD:17E1    55 8B EC 2B C0 50 FF 76 04 E8 06 00 5B 5B 8B  U..+.P.v....[[.
09BD:17F0 E5 5D C3 55 8B EC B8 18 0E 50 E8 9A FC 5B B8 C4 .].U.....P...[..
09BD:1800 0A 50 E8 92 FC 5B FF 76 04 E8 8B FC 5B 83 7E 06 .P...[.v....[.~.
09BD:1810 00 74 17 B8 CD 0A 50 E8 7D FC 5B FF 76 06 E8 76 .t....P.}.[.v..v
09BD:1820 FC 5B B8 D0 0A 50 E8 6E FC 5B E8 AB FF 83 3E D4 .[...P.n.[....>.
09BD:1830 11 00 75 06 C7 06 D4 11 FF FF FF 36 D4 11 FF 16 ..u........6....
09BD:1840 C2 0A 5B 8B E5 5D C3 55 8B EC 83 EC 06 56 83 7E ..[..].U.....V.~
09BD:1850 04 00 74 0F FF 76 04 E8 3D FC 5B B8 D2 0A 50 E8 ..t..v..=.[...P.
09BD:1860 35 FC 5B BE 05 00 EB 1A 8D 4C FF D0 E1 D0 E1 8B 5.[......L......
09BD:1870 5E 06 D3 EB 83 E3 0F 8A 87 B0 0A 8D 5E FE 2B DE ^...........^.+.
09BD:1880 88 07 4E 79 E3 C6 46 FE 00 8D 46 FA 50 E8 07 FC ..Ny..F...F.P...
09BD:1890 5B 83 7E 04 00 74 08 B8 D4 0A 50 E8 F9 FB 5B 5E [.~..t....P...[^
09BD:18A0 8B E5 5D C3                                     ..].           

;; fn09BD_18A4: 09BD:18A4
;;   Called from:
;;     09BD:18CE (in fn09BD_18BA)
;;     09BD:5A47 (in fn09BD_5978)
fn09BD_18A4 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+4h]
	mov	ax,[11F8h]
	add	ax,1190h
	push	ax
	call	25DEh
	pop	bx
	pop	bx
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_18BA: 09BD:18BA
;;   Called from:
;;     09BD:2DEF (in fn09BD_2D88)
fn09BD_18BA proc
	push	bp
	mov	bp,sp
	mov	ax,1190h
	push	ax
	call	2610h
	pop	bx
	cmp	ax,[11F8h]
	jnz	18D2h

l09BD_18CB:
	push	word ptr [bp+4h]
	call	18A4h
	pop	bx

l09BD_18D2:
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_18D6: 09BD:18D6
;;   Called from:
;;     09BD:18FA (in fn09BD_18F1)
fn09BD_18D6 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+4h]
	sub	ax,61h
	cmp	ax,19h
	ja	18ECh

l09BD_18E4:
	mov	ax,[bp+4h]
	sub	ax,20h
	pop	bp
	ret

l09BD_18EC:
	mov	ax,[bp+4h]
	pop	bp
	ret

;; fn09BD_18F1: 09BD:18F1
;;   Called from:
;;     09BD:192A (in fn09BD_191D)
;;     09BD:3F75 (in fn09BD_3EBE)
fn09BD_18F1 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	jmp	1906h

l09BD_18F9:
	push	ax
	call	18D6h
	pop	bx
	mov	bx,[bp+4h]
	inc	word ptr [bp+4h]
	mov	[bx],al

l09BD_1906:
	mov	bx,[bp+6h]
	inc	word ptr [bp+6h]
	mov	al,[bx]
	cbw
	or	ax,ax
	jnz	18F9h

l09BD_1913:
	mov	bx,[bp+4h]
	mov	byte ptr [bx],0h
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_191D: 09BD:191D
;;   Called from:
;;     09BD:2DAF (in fn09BD_2D88)
;;     09BD:2DE7 (in fn09BD_2D88)
fn09BD_191D proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	word ptr [bp+4h]
	mov	ax,1190h
	push	ax
	call	18F1h
	pop	bx
	pop	bx
	mov	ax,1190h
	push	ax
	call	2610h
	pop	bx
	mov	[bp-2h],ax
	mov	[11F8h],ax
	jmp	1954h

l09BD_193F:
	mov	bx,[bp-2h]
	cmp	byte ptr [bx+1190h],5Ch
	jz	1959h

l09BD_1949:
	cmp	byte ptr [bx+1190h],2Eh
	jnz	1954h

l09BD_1950:
	mov	[11F8h],bx

l09BD_1954:
	dec	word ptr [bp-2h]
	jns	193Fh

l09BD_1959:
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_195D: 09BD:195D
;;   Called from:
;;     09BD:3F82 (in fn09BD_3EBE)
;;     09BD:3F9A (in fn09BD_3EBE)
;;     09BD:3FAB (in fn09BD_3EBE)
;;     09BD:3FBF (in fn09BD_3EBE)
;;     09BD:3FFD (in fn09BD_3EBE)
;;     09BD:400B (in fn09BD_3EBE)
;;     09BD:45C5 (in fn09BD_45A9)
;;     09BD:4E44 (in fn09BD_4E1C)
;;     09BD:4EB5 (in fn09BD_4E9A)
;;     09BD:4F2B (in fn09BD_4F10)
fn09BD_195D proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	jmp	197Bh

l09BD_1965:
	mov	[bp-4h],bx
	inc	word ptr [bp+6h]
	mov	al,[bx]
	mov	bx,[bp+4h]
	inc	word ptr [bp+4h]
	cmp	[bx],al
	jz	197Bh

l09BD_1977:
	sub	ax,ax
	jmp	1986h

l09BD_197B:
	mov	bx,[bp+6h]
	cmp	byte ptr [bx],0h
	jnz	1965h

l09BD_1983:
	mov	ax,1h

l09BD_1986:
	mov	sp,bp
	pop	bp
	ret
09BD:198A                               6A 20 6A 20 6A 20           j j j 
09BD:1990 6A 18 FF 1E 1E 00 83 C4 08 C3                   j.........     

;; fn09BD_199A: 09BD:199A
;;   Called from:
;;     09BD:6280 (in fn09BD_625F)
;;     09BD:7C38 (in fn09BD_7C31)
fn09BD_199A proc
	enter	10h,0h
	push	si
	mov	ax,[09B4h]
	sub	dx,dx
	mov	cl,4h
	call	2794h
	mov	bx,dx
	mov	[08E2h],ax
	mov	dx,ax
	mov	si,bx
	mov	[08E4h],bl
	mov	[bp-8h],dx
	mov	[bp-6h],si
	add	dx,8C0h
	adc	si,0h
	mov	[0976h],dx
	mov	[0978h],si
	mov	word ptr [08C8h],9Fh
	mov	[bp-0Ch],dx
	mov	[bp-0Ah],si
	mov	[08CAh],dx
	mov	al,[bp-0Ah]
	mov	[08CCh],al
	mov	ax,960h
	sub	ax,8C0h
	sub	dx,dx
	add	ax,[bp-0Ch]
	adc	dx,si
	mov	cx,ax
	mov	bx,dx
	mov	[0912h],ax
	mov	dx,ax
	mov	si,bx
	mov	[0914h],bl
	sub	ax,ax
	mov	[08CEh],ax
	mov	[0916h],ax
	mov	ax,960h
	sub	ax,0C0h
	sub	dx,ax
	sbb	si,0h
	mov	[bp-0Eh],si
	mov	[08D2h],dx
	mov	al,[bp-0Eh]
	mov	[08D4h],al
	mov	ax,[09B6h]
	sub	dx,dx
	mov	cl,4h
	call	2794h
	mov	bx,dx
	mov	[090Ah],ax
	mov	[08DAh],ax
	mov	[090Ch],bl
	mov	[08DCh],bl
	mov	ax,0D74h
	sub	dx,dx
	add	ax,[bp-8h]
	adc	dx,[bp-6h]
	mov	cx,ax
	mov	bx,dx
	mov	[091Ah],ax
	mov	[091Ch],bl
	mov	ax,[0A10h]
	mov	dx,[0A12h]
	mov	cl,4h
	call	2794h
	mov	[bp-2h],dx
	mov	[0932h],ax
	mov	al,[bp-2h]
	mov	[0934h],al
	mov	word ptr [0D70h],80h
	cmp	byte ptr [002Fh],3h
	jl	1A78h

l09BD_1A72:
	mov	word ptr [08FEh],8Fh

l09BD_1A78:
	pop	si
	leave
	ret
09BD:1A7B                                  C8 18 00 00 83            .....
09BD:1A80 7E 04 00 75 05 B8 01 00 C9 C3 8B 46 04 89 46 F0 ~..u.......F..F.
09BD:1A90 89 46 EA C6 46 F3 49 8D 46 EA 50 8D 46 F2 50 50 .F..F.I.F.P.F.PP
09BD:1AA0 E8 65 0C 8B 46 FE F7 D0 25 01 00 C9 C3 C8 02 00 .e..F...%.......
09BD:1AB0 00 C4 5E 04 26 F6 47 05 10 74 42 26 8A 47 07 2A ..^.&.G..tB&.G.*
09BD:1AC0 E4 89 46 FE 26 F6 47 04 F0 75 04 0B C0 74 2E 26 ..F.&.G..u...t.&
09BD:1AD0 FF 37 E8 08 F7 5B 6A 00 50 C4 5E 04 26 8B 47 02 .7...[j.P.^.&.G.
09BD:1AE0 26 8B 57 04 24 F0 2A F6 8A 6E FE 2A C9 2B DB 03 &.W.$.*..n.*.+..
09BD:1AF0 C3 13 D1 B1 04 E8 A8 0C 52 50 E8 65 03 C9 C3 C8 ........RP.e....
09BD:1B00 10 00 00 57 56 2B C0 A3 60 0D A3 62 0D A1 90 09 ...WV+..`..b....
09BD:1B10 0B 06 8E 09 75 03 E9 0B 01 B8 38 09 56 8B F8 BE ....u.....8.V...
09BD:1B20 C8 08 1E 07 A5 A5 A5 A5 5E BE 08 00 80 3E D8 11 ........^....>..
09BD:1B30 00 75 34 6A 50 E8 FC 00 5B 56 8D 7E F8 BE E4 11 .u4jP...[V.~....
09BD:1B40 16 07 A5 A5 A5 A5 5E E8 50 FE 83 3E 14 0A 00 75 ......^.P..>...u
09BD:1B50 03 E8 18 E6 B8 10 09 56 8B F8 8D 76 F8 1E 07 A5 .......V...v....
09BD:1B60 A5 A5 A5 5E BE 78 00 C7 46 F0 00 00 C7 46 F2 50 ...^.x..F....F.P
09BD:1B70 00 A1 38 09 24 F8 89 46 F4 89 76 F6 E8 0B FE 6A ..8.$..F..v....j
09BD:1B80 01 E8 E2 F6 5B EB 1E 8B 5E F4 C1 EB 03 C4 7E F0 ....[...^.....~.
09BD:1B90 26 F6 01 01 74 0B FF 76 F6 FF 76 F4 E8 0E FF 5B &...t..v..v....[
09BD:1BA0 5B 83 6E F4 08 81 7E F4 80 00 73 DB C7 46 F4 50 [.n...~...s..F.P
09BD:1BB0 00 FF 76 F6 FF 76 F4 E8 F3 FE 5B 5B C7 46 F4 08 ..v..v....[[.F..
09BD:1BC0 00 FF 76 F6 FF 76 F4 E8 E3 FE 5B 5B C7 46 F4 70 ..v..v....[[.F.p
09BD:1BD0 00 80 3E F8 09 00 75 12 F6 06 47 00 80 75 0B FF ..>...u...G..u..
09BD:1BE0 76 F6 FF 76 F4 E8 C5 FE 5B 5B E8 4B F8 E8 D1 F5 v..v....[[.K....
09BD:1BF0 80 3E D8 11 00 75 2D A1 90 09 0B 06 8E 09 74 24 .>...u-.......t$
09BD:1C00 83 3E 90 09 10 7F 1D 7D 1B A1 8E 09 8B 16 90 09 .>.....}........
09BD:1C10 B1 04 E8 8B 0B 50 E8 62 FE 5B 0B C0 75 06 6A 16 .....P.b.[..u.j.
09BD:1C20 E8 7A 06 5B C7 06 7E 09 00 00 C7 06 7C 09 FF 02 .z.[..~.....|...
09BD:1C30 5E 5F C9 C3 55 8B EC A1 7C 09 39 46 04 76 15 2A ^_..U...|.9F.v.*
09BD:1C40 C0 A2 E9 11 A2 E8 11 2B C0 A3 EA 11 A3 E6 11 A3 .......+........
09BD:1C50 E4 11 C9 C3 6A 08 68 E4 11 8B 46 04 24 F8 2B D2 ....j.h...F.$.+.
09BD:1C60 03 06 8E 09 13 16 90 09 52 50 E8 80 F5 B8 01 00 ........RP......
09BD:1C70 C9 C3 55 8B EC A1 7C 09 39 46 04 76 04 2B C0 C9 ..U...|.9F.v.+..
09BD:1C80 C3 6A 08 68 E4 11 8B 46 04 24 F8 2B D2 03 06 8E .j.h...F.$.+....
09BD:1C90 09 13 16 90 09 52 50 E8 88 F5 B8 01 00 C9 C3 C8 .....RP.........
09BD:1CA0 08 00 00 8B 46 0A 89 46 F8 8A 46 0C 88 46 FD 8B ....F..F..F..F..
09BD:1CB0 46 06 C1 E0 04 89 46 FA 8B 46 06 8B 56 08 B1 0C F.....F..F..V...
09BD:1CC0 E8 DD 0A 88 46 FC 8B 46 08 C1 F8 04 8A E0 2A C0 ....F..F......*.
09BD:1CD0 89 46 FE 6A 08 8D 46 F8 50 8B 46 04 C1 E0 03 2B .F.j..F.P.F....+
09BD:1CE0 D2 03 06 8E 09 13 16 90 09 52 50 E8 34 F5 C9 C3 .........RP.4...
09BD:1CF0 55 8B EC 68 92 00 FF 76 08 6A 00 FF 76 06 FF 76 U..h...v.j..v..v
09BD:1D00 04 E8 9B FF C9 C3                               ......         

;; fn09BD_1D06: 09BD:1D06
;;   Called from:
;;     09BD:53B0 (in fn09BD_52D5)
fn09BD_1D06 proc
	enter	56h,0h
	push	si
	cmp	word ptr [bp+4h],0h
	jnz	1D16h

l09BD_1D11:
	sub	ax,ax
	pop	si
	leave
	ret

l09BD_1D16:
	push	30h
	push	0h
	lea	ax,[bp-56h]
	push	ax
	call	2766h
	add	sp,6h
	lea	ax,[bp-1Eh]
	mov	[bp-1Ah],ax
	mov	[bp-18h],ss
	mov	ax,ss
	sub	dx,dx
	mov	cl,4h
	call	2794h
	add	ax,[bp-1Ah]
	adc	dx,0h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	bx,dx
	mov	[bp-44h],ax
	mov	[bp-42h],bl
	mov	byte ptr [bp-3Ah],0C0h
	mov	word ptr [bp-38h],8000h
	mov	al,0F2h
	mov	[bp-39h],al
	mov	[bp-41h],al
	mov	byte ptr [bp-11h],87h
	mov	ax,1h
	mov	[bp-46h],ax
	mov	[bp-3Eh],ax
	mov	[bp-0Eh],ax
	lea	ax,[bp-56h]
	mov	[bp-1Ah],ax
	mov	[bp-18h],ss
	mov	[bp-0Ah],ax
	mov	ax,ss
	mov	[bp-26h],ax
	mov	word ptr [bp-1Eh],0FEh
	lea	ax,[bp-26h]
	push	ax
	lea	cx,[bp-12h]
	push	cx
	push	cx
	push	15h
	call	262Ch
	add	sp,8h
	mov	ax,[11ECh]
	mov	dx,0F000h
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	mov	es,dx
	mov	bx,ax
	mov	cx,[bp+4h]
	sub	es:[bx+4h],cx
	mov	si,es:[bx+6h]
	mov	[bp-1Ch],si
	sub	es:[bx+6h],cx
	mov	word ptr [bp-1Eh],0FCh
	mov	byte ptr [bp-11h],87h
	mov	word ptr [bp-0Eh],1h
	lea	ax,[bp-26h]
	push	ax
	lea	ax,[bp-12h]
	push	ax
	push	ax
	push	15h
	call	262Ch
	add	sp,8h
	mov	ax,[bp-1Ch]
	les	bx,[bp-16h]
	sub	ax,es:[bx+6h]
	mov	[bp+4h],ax
	sub	[120Ah],ax
	mov	ax,[120Ah]
	pop	si
	leave
	ret
09BD:1DEA                               00 00                       ..   

;; fn09BD_1DEC: 09BD:1DEC
;;   Called from:
;;     09BD:6CCB (in fn09BD_6C64)
;;     09BD:7B7C (in fn09BD_7B1F)
;;     09BD:7D08 (in fn09BD_7C31)
fn09BD_1DEC proc
	mov	bx,10h

l09BD_1DEF:
	dec	bx
	dec	bx
	js	1E11h

l09BD_1DF3:
	mov	dx,[bx+0ADCh]
	or	dx,dx
	jz	1DEFh

l09BD_1DFB:
	push	bx
	mov	ah,0Dh
	call	dword ptr [0AECh]
	mov	ah,0Ah
	call	dword ptr [0AECh]
	pop	bx
	mov	word ptr [bx+0ADCh],0h
	jmp	1DEFh

l09BD_1E11:
	ret
09BD:1E12       33 C0 99 EB 3C E8 A7 F3 5A 0B D2 74 19 B4   3...<...Z..t..
09BD:1E20 09 FF 1E EC 0A 0B C0 74 E9 89 14 B4 0C FF 1E EC .......t........
09BD:1E30 0A 0B C0 74 DD 93 EB 1B B4 08 FF 1E EC 0A 2E 2B ...t...........+
09BD:1E40 06 EA 1D 72 CD 3B 06 F0 0A 76 03 A1 F0 0A B9 00 ...r.;...v......
09BD:1E50 04 F7 E1 52 50 E8 32 FB EA 3C 3E 70 00 E8 1B 00 ...RP.2..<>p....
09BD:1E60 99 22 E8 16 00 D9 24 E8 11 00 C0 21 E8 0C 00 6E ."....$....!...n
09BD:1E70 3F E8 07 00 2F 3F E8 02 00 79 39 5B 2E 8B 0F 8B ?.../?...y9[....
09BD:1E80 1E FA 0A 43 43 89 1E FA 0A 8F 07 68 4A 3E FF 2E ...CC......hJ>..
09BD:1E90 F2 0A FF E1 8B DC 57 56 36 8B 7F 04 83 3E 12 0A ......WV6....>..
09BD:1EA0 00 75 5C E8 73 00 D1 E8 91 83 C7 0F 83 E7 F0 8B .u\.s...........
09BD:1EB0 C7 C1 E8 04 8B 1E 10 0A 8C CA 2B DA 2B D8 03 C2 ..........+.+...
09BD:1EC0 FC 87 06 10 0A 33 F6 8E D8 8E C2 F3 A5 16 1F 53 .....3.........S
09BD:1ED0 E8 50 00 59 C1 E1 03 0E 07 B8 CC CC 8B DF F3 AB .P.Y............
09BD:1EE0 83 C3 0F C1 EB 04 03 1E B6 09 A1 EA 0C 2B D8 89 .............+..
09BD:1EF0 1E 5A 00 8E C0 B4 4A CD 21 5E 5F 58 5C 5D C3 8B .Z....J.!^_X\]..
09BD:1F00 0E EA 0C 49 8E C1 26 03 0E 03 00 41 8C C8 2B C8 ...I..&....A..+.
09BD:1F10 C1 E1 04 2B CF D1 E9 EB BE                      ...+.....      

;; fn09BD_1F19: 09BD:1F19
;;   Called from:
;;     09BD:700F (in fn09BD_6E00)
fn09BD_1F19 proc
	mov	ax,170Bh
	sub	ax,118Eh
	shl	ax,4h
	ret
09BD:1F23          68 9B 00 E8 F0 FF 48 50 A3 30 09 8B 16    h.....HP.0...
09BD:1F30 12 0A A1 10 0A 52 50 B9 04 00 D1 E0 D1 D2 E2 FA .....RP.........
09BD:1F40 A3 32 09 88 16 34 09 6A 0E E8 53 FD 83 C4 0A C3 .2...4.j..S.....
09BD:1F50 E8 85 00 00 E8 81 00 01 E8 7D 00 02 E8 79 00 03 .........}...y..
09BD:1F60 E8 75 00 04 E8 71 00 05 E8 6D 00 06 E8 69 00 07 .u...q...m...i..
09BD:1F70 E8 65 00 08 E8 61 00 09 E8 5D 00 0A E8 59 00 0B .e...a...]...Y..
09BD:1F80 E8 55 00 0C E8 51 00 0D E8 4D 00 0E E8 49 00 0F .U...Q...M...I..
09BD:1F90 00 00 00 00 00 00 E8 93 E9 2E 87 0E AB 1F 89 4E ...............N
09BD:1FA0 14 EB 00 58 17 94 1F 07 66 61 9D FF FF 9C FA 2E ...X....fa......
09BD:1FB0 8F 06 94 1F 68 00 08 17 36 8B 26 96 09 66 60 06 ....h...6.&..f`.
09BD:1FC0 1E 16 1F 8B EC 8B 46 38 2E A3 AB 1F E8 C1 E2 2E ......F8........
09BD:1FD0 A1 94 1F EA 5D 4C 70 00 9C FA 2E 8F 06 94 1F 2E ....]Lp.........
09BD:1FE0 8C 16 92 1F 2E 89 26 90 1F 68 00 08 17 36 8B 26 ......&..h...6.&
09BD:1FF0 96 09 81 EC 80 01 66 60 06 1E 16 1F 2E FF 36 94 ......f`......6.
09BD:2000 1F 2E C4 1E 90 1F 06 53 26 8B 1F 2E FF 37 E8 7F .......S&....7..
09BD:2010 E2 EA 75 4E 70 00 E8 13 E9 8E DF 2E 89 3E 92 1F ..uNp........>..
09BD:2020 2E 89 36 90 1F 8F 04 8F 44 02 8F 44 04 1F 07 66 ..6.....D..D...f
09BD:2030 61 2E 8E 16 92 1F 2E 8B 26 90 1F CF CB 9C FA 2E a.......&.......
09BD:2040 8F 06 94 1F 68 00 08 17 36 8B 26 96 09 81 EC 80 ....h...6.&.....
09BD:2050 00 60 16 1F E8 39 E2 61 8E D8 8E C1 8E D2 8B E3 .`...9.a........
09BD:2060 2E FF 36 94 1F 56 57 CF E8 C1 E8 EB EA E8 2B EC ..6..VW.......+.
09BD:2070 07                                              .              

;; fn09BD_2071: 09BD:2071
;;   Called from:
;;     09BD:01E4 (in fn09BD_016C)
fn09BD_2071 proc
	call	0290h
	jmp	far 0070h:5401h
09BD:2079                            E8 B0 E8 C3 00 20 00          ..... .
09BD:2080 58 5B 59 50 6A 00 51 53 FF 36 3A 0C 68 E2 54 CB X[YPj.QS.6:.h.T.
09BD:2090 57 56 A0 D8 0C FE 06 D8 0C 0A C0 75 03 E8 A1 F3 WV.........u....
09BD:20A0 8B 1E 96 09 83 7F 18 21 75 09 8A 47 16 98 50 E8 .......!u..G..P.
09BD:20B0 80 DF 5B E8 11 F1 E8 1F F7 8B 1E 96 09 83 7F 18 ..[.............
09BD:20C0 00 7D 03 E9 91 01 B8 4C 0C 50 E8 CA F3 5B 8B 1E .}.....L.P...[..
09BD:20D0 96 09 83 7F 18 0D 75 05 B8 59 0C EB 09 83 7F 18 ......u..Y......
09BD:20E0 06 75 09 B8 72 0C 50 E8 AD F3 EB 26 83 7F 18 0E .u..r.P....&....
09BD:20F0 75 15 FF 36 32 0D B8 81 0C 50 E8 4A F7 5B 5B FF u..62....P.J.[[.
09BD:2100 36 30 0D 2B C0 EB 06 FF 77 18 B8 8C 0C 50 E8 36 60.+....w....P.6
09BD:2110 F7 5B 5B B8 A1 0C 50 E8 7D F3 5B 8B 36 F8 11 81 .[[...P.}.[.6...
09BD:2120 C6 90 11 EB 0A 80 3C 3A 74 0C 80 3C 5C 74 07 4E ......<:t..<\t.N
09BD:2130 81 FE 90 11 73 EF 8D 44 01 50 E8 5A F3 5B B8 A6 ....s..D.P.Z.[..
09BD:2140 0C 50 E8 52 F3 5B 8B 1E 96 09 FF 77 22 2B C0 50 .P.R.[.....w"+.P
09BD:2150 E8 F4 F6 5B 5B B8 AB 0C 50 E8 3B F3 5B 8B 1E 96 ...[[...P.;.[...
09BD:2160 09 FF 77 1E 2B C0 50 E8 DD F6 5B 5B 8B 1E 96 09 ..w.+.P...[[....
09BD:2170 FF 77 22 E8 EC 00 5B 8B F8 0B FF 74 0A 57 B8 AD .w"...[....t.W..
09BD:2180 0C 50 E8 C2 F6 5B 5B E8 4E F6 8B 1E 96 09 FF 77 .P...[[.N......w
09BD:2190 1A B8 B2 0C 50 E8 AF F6 5B 5B 8B 1E 96 09 FF 77 ....P...[[.....w
09BD:21A0 02 B8 B7 0C 50 E8 9F F6 5B 5B 8B 1E 96 09 FF 77 ....P...[[.....w
09BD:21B0 04 B8 BA 0C 50 E8 8F F6 5B 5B 8B 1E 96 09 FF 77 ....P...[[.....w
09BD:21C0 06 B8 BD 0C 50 E8 7F F6 5B 5B E8 0B F6 8B 1E 96 ....P...[[......
09BD:21D0 09 FF 77 16 B8 C0 0C 50 E8 6C F6 5B 5B 8B 1E 96 ..w....P.l.[[...
09BD:21E0 09 FF 77 10 B8 C3 0C 50 E8 5C F6 5B 5B 8B 1E 96 ..w....P.\.[[...
09BD:21F0 09 FF 77 14 B8 C6 0C 50 E8 4C F6 5B 5B 8B 1E 96 ..w....P.L.[[...
09BD:2200 09 FF 77 12 B8 C9 0C 50 E8 3C F6 5B 5B 8B 1E 96 ..w....P.<.[[...
09BD:2210 09 FF 77 0E B8 CC 0C 50 E8 2C F6 5B 5B 8B 1E 96 ..w....P.,.[[...
09BD:2220 09 FF 77 0C B8 CF 0C 50 E8 1C F6 5B 5B 8B 1E 96 ..w....P...[[...
09BD:2230 09 FF 77 0A B8 D2 0C 50 E8 0C F6 5B 5B 8B 1E 96 ..w....P...[[...
09BD:2240 09 FF 77 08 B8 D5 0C 50 E8 FC F5 5B 5B F6 06 15 ..w....P...[[...
09BD:2250 00 80 74 03 E8 23 F0 B8 FF FF 50 E8 D4 DD 5B 5E ..t..#....P...[^
09BD:2260 5F C3 55 8B EC 57 56 83 3E D6 0E 00 74 27 C4 1E _.U..WV.>...t'..
09BD:2270 D4 0E 26 8B 77 02 EB 01 4E 83 FE 10 7C 17 8B 46 ..&.w...N...|..F
09BD:2280 04 8B FE D1 E7 26 39 01 75 EE 8B C6 B1 03 D3 E0 .....&9.u.......
09BD:2290 26 03 07 EB 02 2B C0 5E 5F 8B E5 5D C3          &....+.^_..].  

;; fn09BD_229D: 09BD:229D
;;   Called from:
;;     09BD:0C39 (in fn09BD_0C28)
;;     09BD:14BC (in fn09BD_14AC)
;;     09BD:2D39 (in fn09BD_2D2F)
;;     09BD:2E92 (in fn09BD_2D88)
;;     09BD:30B6 (in fn09BD_303B)
;;     09BD:385F (in fn09BD_3829)
;;     09BD:39D9 (in fn09BD_396B)
;;     09BD:4226 (in fn09BD_3EBE)
;;     09BD:43AC (in fn09BD_3EBE)
;;     09BD:4500 (in fn09BD_3EBE)
;;     09BD:4B45 (in fn09BD_4B1D)
;;     09BD:551F (in fn09BD_5666)
;;     09BD:6DF1 (in fn09BD_6E00)
;;     09BD:713D (in fn09BD_6E00)
;;     09BD:726D (in fn09BD_7270)
;;     09BD:72FF (in fn09BD_7270)
;;     09BD:755D (in fn09BD_74FE)
;;     09BD:7877 (in fn09BD_7875)
;;     09BD:788C (in fn09BD_7875)
;;     09BD:78FF (in fn09BD_78FA)
fn09BD_229D proc
	push	bp
	mov	bp,sp
	sub	sp,9Ch
	push	di
	push	si
	mov	word ptr [bp-2h],0h
	cmp	word ptr [bp+4h],0h
	jge	22B9h

l09BD_22B1:
	mov	word ptr [bp-2h],1h
	neg	word ptr [bp+4h]

l09BD_22B9:
	mov	ax,[bp+4h]
	mov	[bp+0FF66h],ax
	lea	si,[bp+0FF68h]
	cmp	byte ptr [0F21h],1h
	jz	231Dh

l09BD_22CB:
	mov	byte ptr [bp+0FF68h],5Bh
	lea	si,[bp+0FF69h]

l09BD_22D4:
	inc	si
	mov	cx,0Ah
	mov	ax,[bp+0FF66h]
	cwd
	idiv	cx
	mov	[bp+0FF66h],ax
	or	ax,ax
	jnz	22D4h

l09BD_22E7:
	mov	di,si
	mov	ax,[bp+4h]
	mov	[bp+0FF66h],ax

l09BD_22F0:
	cwd
	idiv	cx
	mov	bx,dx
	mov	al,[bx+0AB0h]
	dec	di
	mov	[di],al
	mov	ax,[bp+0FF66h]
	cwd
	idiv	cx
	mov	[bp+0FF66h],ax
	or	ax,ax
	jnz	22F0h

l09BD_230B:
	inc	si
	mov	byte ptr [si-1h],5Dh
	inc	si
	mov	byte ptr [si-1h],20h
	inc	si
	mov	byte ptr [si-1h],20h
	mov	byte ptr [si],0h

l09BD_231D:
	mov	di,15E8h
	jmp	233Dh

l09BD_2322:
	cmp	[0F22h],di
	jbe	2349h

l09BD_2328:
	cmp	ax,[bp+4h]
	jnz	2336h

l09BD_232D:
	push	di
	push	si
	call	25DEh
	pop	bx
	pop	bx
	jmp	2349h

l09BD_2336:
	inc	di
	cmp	byte ptr [di-1h],0h
	jnz	2336h

l09BD_233D:
	mov	ax,[di]
	inc	di
	inc	di
	mov	[bp+0FF66h],ax
	or	ax,ax
	jge	2322h

l09BD_2349:
	cmp	word ptr [bp-2h],0h
	jz	235Eh

l09BD_234F:
	mov	ax,1190h
	push	ax
	lea	ax,[bp+0FF68h]
	push	ax
	call	word ptr [0E6Ch]
	pop	bx
	pop	bx

l09BD_235E:
	sub	ax,ax
	push	ax
	lea	ax,[bp+0FF68h]
	push	ax
	call	word ptr [0E6Ch]
	pop	bx
	pop	bx
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_2372: 09BD:2372
fn09BD_2372 proc
	mov	di,800h
	mov	ss,di
	add	sp,120Eh
	mov	si,9BDh
	sub	si,di
	mov	ax,si
	mov	cl,4h
	shl	ax,cl
	dec	ax
	mov	ss:[0CE4h],ax
	mov	ss:[0CDAh],sp
	mov	si,170Bh
	inc	si
	mov	[0002h],si
	mov	bx,es
	sub	bx,si
	neg	bx
	mov	ah,4Ah
	int	21h
	mov	ss:[0CEAh],ds
	push	ss
	pop	es
	cld
	mov	di,1186h
	mov	cx,1210h
	sub	cx,di
	xor	ax,ax

l09BD_23B4:
	rep stosb

l09BD_23B6:
	push	ss
	pop	ds
	mov	ah,30h
	int	21h
	mov	[0CECh],ax
	mov	bx,4h

l09BD_23C2:
	mov	ax,4400h
	int	21h
	jc	23D3h

l09BD_23C9:
	test	dl,80h
	jz	23D3h

l09BD_23CE:
	or	byte ptr [bx+0CF8h],40h

l09BD_23D3:
	dec	bx
	jns	23C2h

l09BD_23D6:
	call	2450h
	xor	bp,bp
	push	ss
	pop	ds
	push	word ptr [0CF4h]
	push	word ptr [0CF2h]
	push	word ptr [0CF0h]
	call	2D88h
	ret
09BD:23ED                                        00 00 00              ...
09BD:23F0 00 00 08 00 55 8B EC 83 EC 0E C6 46 F3 4C 8A 46 ....U......F.L.F
09BD:2400 04 88 46 F2 8D 46 F2 50 50 E8 B4 02 5B 5B 8B E5 ..F..F.PP...[[..
09BD:2410 5D C3 55 8B EC FF 76 04 E8 D9 FF 5B 8B E5 5D C3 ].U...v....[..].
09BD:2420 55 8B EC FF 76 04 E8 E9 FF 5B 8B E5 5D C3       U...v....[..]. 

;; fn09BD_242E: 09BD:242E
;;   Called from:
;;     09BD:3852 (in fn09BD_3829)
;;     09BD:39DE (in fn09BD_396B)
;;     09BD:4435 (in fn09BD_3EBE)
;;     09BD:728E (in fn09BD_7270)
fn09BD_242E proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	word ptr [bp+4h]
	call	65A3h
	pop	bx
	mov	[bp-2h],ax
	inc	ax
	jz	2446h

l09BD_2441:
	mov	ax,[bp-2h]
	jmp	2448h

l09BD_2446:
	sub	ax,ax

l09BD_2448:
	mov	sp,bp
	pop	bp
	ret
09BD:244C                                     2B C0 99 C3             +...

;; fn09BD_2450: 09BD:2450
;;   Called from:
;;     09BD:23D6 (in fn09BD_2372)
fn09BD_2450 proc
	pop	word ptr [0D0Eh]
	mov	ah,30h
	int	21h
	mov	[0CECh],ax
	mov	dx,1h
	cmp	al,2h
	jz	248Bh

l09BD_2462:
	mov	es,[0CEAh]
	mov	es,es:[002Ch]
	mov	[0CF8h],es
	xor	ax,ax
	cwd
	mov	cx,8000h
	xor	di,di

l09BD_2477:
	repne scasb

l09BD_2479:
	scasb
	jnz	2477h

l09BD_247C:
	inc	di
	inc	di
	mov	[0CF6h],di
	mov	cx,0FFFFh

l09BD_2485:
	repne scasb

l09BD_2487:
	not	cx
	mov	dx,cx

l09BD_248B:
	mov	di,1h
	mov	si,81h
	mov	ds,[0CEAh]

l09BD_2495:
	lodsb
	cmp	al,20h
	jz	2495h

l09BD_249A:
	cmp	al,9h
	jz	2495h

l09BD_249E:
	cmp	al,0Dh
	jz	2511h

l09BD_24A2:
	or	al,al
	jz	2511h

l09BD_24A6:
	inc	di

l09BD_24A7:
	dec	si

l09BD_24A8:
	lodsb
	cmp	al,20h
	jz	2495h

l09BD_24AD:
	cmp	al,9h
	jz	2495h

l09BD_24B1:
	cmp	al,0Dh
	jz	2511h

l09BD_24B5:
	or	al,al
	jz	2511h

l09BD_24B9:
	cmp	al,22h
	jz	24E1h

l09BD_24BD:
	cmp	al,5Ch
	jz	24C4h

l09BD_24C1:
	inc	dx
	jmp	24A8h

l09BD_24C4:
	xor	cx,cx

l09BD_24C6:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	24C6h

l09BD_24CC:
	cmp	al,22h
	jz	24D4h

l09BD_24D0:
	add	dx,cx
	jmp	24A7h

l09BD_24D4:
	mov	ax,cx
	shr	cx,1h
	adc	dx,cx
	test	al,1h
	jnz	24A8h

l09BD_24DE:
	jmp	24E1h

l09BD_24E0:
	dec	si

l09BD_24E1:
	lodsb
	cmp	al,0Dh
	jz	2511h

l09BD_24E6:
	or	al,al
	jz	2511h

l09BD_24EA:
	cmp	al,22h
	jz	24A8h

l09BD_24EE:
	cmp	al,5Ch
	jz	24F5h

l09BD_24F2:
	inc	dx
	jmp	24E1h

l09BD_24F5:
	xor	cx,cx

l09BD_24F7:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	24F7h

l09BD_24FD:
	cmp	al,22h
	jz	2505h

l09BD_2501:
	add	dx,cx
	jmp	24E0h

l09BD_2505:
	mov	ax,cx
	shr	cx,1h
	adc	dx,cx
	test	al,1h
	jnz	24E1h

l09BD_250F:
	jmp	24A8h

l09BD_2511:
	push	ss
	pop	ds
	mov	[0CF0h],di
	add	dx,di
	inc	di
	shl	di,1h
	add	dx,di
	inc	dx
	and	dl,0FEh
	sub	sp,dx
	mov	ax,sp
	mov	[0CF2h],ax
	mov	bx,ax
	add	di,bx
	push	ss
	pop	es
	mov	ss:[bx],di
	inc	bx
	inc	bx
	lds	si,[0CF6h]

l09BD_2538:
	lodsb
	stosb
	or	al,al
	jnz	2538h

l09BD_253E:
	mov	ds,ss:[0CEAh]
	mov	si,81h
	jmp	254Bh

l09BD_2548:
	xor	ax,ax
	stosb

l09BD_254B:
	lodsb
	cmp	al,20h
	jz	254Bh

l09BD_2550:
	cmp	al,9h
	jz	254Bh

l09BD_2554:
	cmp	al,0Dh
	jz	25D4h

l09BD_2558:
	or	al,al
	jz	25D4h

l09BD_255C:
	mov	ss:[bx],di
	inc	bx
	inc	bx

l09BD_2561:
	dec	si

l09BD_2562:
	lodsb
	cmp	al,20h
	jz	2548h

l09BD_2567:
	cmp	al,9h
	jz	2548h

l09BD_256B:
	cmp	al,0Dh
	jz	25D1h

l09BD_256F:
	or	al,al
	jz	25D1h

l09BD_2573:
	cmp	al,22h
	jz	259Eh

l09BD_2577:
	cmp	al,5Ch
	jz	257Eh

l09BD_257B:
	stosb
	jmp	2562h

l09BD_257E:
	xor	cx,cx

l09BD_2580:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	2580h

l09BD_2586:
	cmp	al,22h
	jz	2590h

l09BD_258A:
	mov	al,5Ch

l09BD_258C:
	rep stosb

l09BD_258E:
	jmp	2561h

l09BD_2590:
	mov	al,5Ch
	shr	cx,1h

l09BD_2594:
	rep stosb

l09BD_2596:
	jnc	259Eh

l09BD_2598:
	mov	al,22h
	stosb
	jmp	2562h

l09BD_259D:
	dec	si

l09BD_259E:
	lodsb
	cmp	al,0Dh
	jz	25D1h

l09BD_25A3:
	or	al,al
	jz	25D1h

l09BD_25A7:
	cmp	al,22h
	jz	2562h

l09BD_25AB:
	cmp	al,5Ch
	jz	25B2h

l09BD_25AF:
	stosb
	jmp	259Eh

l09BD_25B2:
	xor	cx,cx

l09BD_25B4:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	25B4h

l09BD_25BA:
	cmp	al,22h
	jz	25C4h

l09BD_25BE:
	mov	al,5Ch

l09BD_25C0:
	rep stosb

l09BD_25C2:
	jmp	259Dh

l09BD_25C4:
	mov	al,5Ch
	shr	cx,1h

l09BD_25C8:
	rep stosb

l09BD_25CA:
	jnc	2562h

l09BD_25CC:
	mov	al,22h
	stosb
	jmp	259Eh

l09BD_25D1:
	xor	ax,ax
	stosb

l09BD_25D4:
	push	ss
	pop	ds
	mov	word ptr [bx],0h
	jmp	word ptr [0D0Eh]

;; fn09BD_25DE: 09BD:25DE
;;   Called from:
;;     09BD:18B1 (in fn09BD_18A4)
;;     09BD:232F (in fn09BD_229D)
;;     09BD:44E0 (in fn09BD_3EBE)
;;     09BD:5A3E (in fn09BD_5978)
;;     09BD:5A5C (in fn09BD_5978)
fn09BD_25DE proc
	push	bp
	mov	bp,sp
	mov	dx,di
	mov	bx,si
	mov	si,[bp+6h]
	mov	di,si
	mov	ax,ds
	mov	es,ax
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_25F3:
	repne scasb

l09BD_25F5:
	not	cx
	mov	di,[bp+4h]
	mov	ax,di
	test	al,1h
	jz	2602h

l09BD_2600:
	movsb
	dec	cx

l09BD_2602:
	shr	cx,1h

l09BD_2604:
	rep movsw

l09BD_2606:
	adc	cx,cx

l09BD_2608:
	rep movsb

l09BD_260A:
	mov	si,bx
	mov	di,dx
	pop	bp
	ret

;; fn09BD_2610: 09BD:2610
;;   Called from:
;;     09BD:149E (in fn09BD_1497)
;;     09BD:18C1 (in fn09BD_18BA)
;;     09BD:1933 (in fn09BD_191D)
;;     09BD:3FD9 (in fn09BD_3EBE)
fn09BD_2610 proc
	push	bp
	mov	bp,sp
	mov	dx,di
	mov	ax,ds
	mov	es,ax
	mov	di,[bp+4h]
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_2621:
	repne scasb

l09BD_2623:
	not	cx
	dec	cx
	xchg	cx,ax
	mov	di,dx
	pop	bp
	ret
09BD:262B                                  00                        .   

;; fn09BD_262C: 09BD:262C
;;   Called from:
;;     09BD:1D8C (in fn09BD_1D06)
;;     09BD:1DCD (in fn09BD_1D06)
fn09BD_262C proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	ds
	sub	sp,0Ah
	mov	byte ptr [bp-0Ch],0CDh
	mov	ax,[bp+4h]
	mov	[bp-0Bh],al
	cmp	al,25h
	jz	264Dh

l09BD_2643:
	cmp	al,26h
	jz	264Dh

l09BD_2647:
	mov	byte ptr [bp-0Ah],0CBh
	jmp	2659h

l09BD_264D:
	mov	byte ptr [bp-8h],0CBh
	mov	byte ptr [bp-9h],44h
	mov	byte ptr [bp-0Ah],44h

l09BD_2659:
	mov	[bp-0Eh],ss
	lea	ax,[bp-0Ch]
	mov	[bp-10h],ax
	mov	di,[bp+6h]
	mov	ax,[di]
	mov	bx,[di+2h]
	mov	cx,[di+4h]
	mov	dx,[di+6h]
	mov	si,[di+8h]
	push	word ptr [di+0Ah]
	mov	di,[bp+0Ah]
	mov	es,[di]
	mov	ds,[di+6h]
	pop	di
	push	bp
	call	dword ptr [bp-10h]
	pop	bp
	cld
	push	di
	push	ds
	push	ss
	pop	ds
	mov	di,[bp+0Ah]
	mov	[di],es
	pop	word ptr [di+6h]
	mov	di,[bp+8h]
	mov	[di],ax
	mov	[di+2h],bx
	mov	[di+4h],cx
	mov	[di+6h],dx
	mov	[di+8h],si
	pop	word ptr [di+0Ah]
	jc	26ABh

l09BD_26A7:
	xor	si,si
	jmp	26B3h

l09BD_26AB:
	call	27CEh
	mov	si,1h
	mov	ax,[di]

l09BD_26B3:
	mov	[di+0Ch],si
	add	sp,0Ah
	pop	ds
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_26C0: 09BD:26C0
;;   Called from:
;;     09BD:5D74 (in fn09BD_5D5F)
;;     09BD:5E7B (in fn09BD_5DB8)
fn09BD_26C0 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+4h]
	mov	ax,[di]
	mov	bx,[di+2h]
	mov	cx,[di+4h]
	mov	dx,[di+6h]
	mov	si,[di+8h]
	mov	di,[di+0Ah]
	int	21h
	push	di
	mov	di,[bp+6h]
	mov	[di],ax
	mov	[di+2h],bx
	mov	[di+4h],cx
	mov	[di+6h],dx
	mov	[di+8h],si
	pop	word ptr [di+0Ah]
	jc	26F6h

l09BD_26F2:
	xor	si,si
	jmp	26FEh

l09BD_26F6:
	call	27CEh
	mov	si,1h
	mov	ax,[di]

l09BD_26FE:
	mov	[di+0Ch],si
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret
09BD:2707                      00                                .       

;; fn09BD_2708: 09BD:2708
;;   Called from:
;;     09BD:4F99 (in fn09BD_4F69)
;;     09BD:515E (in fn09BD_5034)
;;     09BD:5DB1 (in fn09BD_5D98)
fn09BD_2708 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+4h]
	mov	ax,[di]
	mov	bx,[di+2h]
	mov	cx,[di+4h]
	mov	dx,[di+6h]
	mov	si,[di+8h]
	push	word ptr [di+0Ah]
	mov	di,[bp+8h]
	mov	es,[di]
	mov	ds,[di+6h]
	pop	di
	int	21h
	push	di
	push	ds
	mov	di,ss
	mov	ds,di
	mov	di,[bp+8h]
	mov	[di],es
	pop	word ptr [di+6h]
	mov	di,[bp+6h]
	mov	[di],ax
	mov	[di+2h],bx
	mov	[di+4h],cx
	mov	[di+6h],dx
	mov	[di+8h],si
	pop	word ptr [di+0Ah]
	jc	2754h

l09BD_2750:
	xor	si,si
	jmp	275Ch

l09BD_2754:
	call	27CEh
	mov	si,1h
	mov	ax,[di]

l09BD_275C:
	mov	[di+0Ch],si
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret
09BD:2765                00                                    .         

;; fn09BD_2766: 09BD:2766
;;   Called from:
;;     09BD:1D1E (in fn09BD_1D06)
;;     09BD:386C (in fn09BD_3829)
fn09BD_2766 proc
	push	bp
	mov	bp,sp
	mov	dx,di
	mov	ax,ds
	mov	es,ax
	mov	di,[bp+4h]
	mov	bx,di
	mov	cx,[bp+8h]
	jcxz	278Eh

l09BD_2779:
	mov	al,[bp+6h]
	mov	ah,al
	test	di,1h
	jz	2786h

l09BD_2784:
	stosb
	dec	cx

l09BD_2786:
	shr	cx,1h

l09BD_2788:
	rep stosw

l09BD_278A:
	adc	cx,cx

l09BD_278C:
	rep stosb

l09BD_278E:
	mov	di,dx
	xchg	bx,ax
	pop	bp
	ret
09BD:2793          00                                        .           

;; fn09BD_2794: 09BD:2794
;;   Called from:
;;     09BD:19A6 (in fn09BD_199A)
;;     09BD:1A24 (in fn09BD_199A)
;;     09BD:1A56 (in fn09BD_199A)
;;     09BD:1D33 (in fn09BD_1D06)
;;     09BD:3005 (in fn09BD_2FF7)
;;     09BD:4F56 (in fn09BD_4F10)
;;     09BD:529E (in fn09BD_5248)
;;     09BD:555B (in fn09BD_5666)
;;     09BD:559A (in fn09BD_5666)
;;     09BD:55D6 (in fn09BD_5666)
;;     09BD:5658 (in fn09BD_5666)
;;     09BD:5AFF (in fn09BD_5AEF)
;;     09BD:619F (in fn09BD_6190)
fn09BD_2794 proc
	xor	ch,ch
	jcxz	279Eh

l09BD_2798:
	shl	ax,1h
	rcl	dx,1h
	loop	2798h

l09BD_279E:
	ret
09BD:279F                                              00                .

;; fn09BD_27A0: 09BD:27A0
;;   Called from:
;;     09BD:4E59 (in fn09BD_4E1C)
fn09BD_27A0 proc
	xor	ch,ch
	jcxz	27AAh

l09BD_27A4:
	sar	dx,1h
	rcr	ax,1h
	loop	27A4h

l09BD_27AA:
	ret
09BD:27AB                                  00 72 15 33 C0            .r.3.
09BD:27B0 8B E5 5D C3 73 F8 50 E8 1A 00 58 32 E4 8B E5 5D ..].s.P...X2...]
09BD:27C0 C3 73 07 E8 0E 00 B8 FF FF 99 8B E5 5D C3       .s..........]. 

;; fn09BD_27CE: 09BD:27CE
;;   Called from:
;;     09BD:26AB (in fn09BD_262C)
;;     09BD:26F6 (in fn09BD_26C0)
;;     09BD:2754 (in fn09BD_2708)
;;     09BD:60D4 (in fn09BD_606A)
fn09BD_27CE proc
	xor	ah,ah
	call	27D4h
	ret

;; fn09BD_27D4: 09BD:27D4
;;   Called from:
;;     09BD:27D0 (in fn09BD_27CE)
fn09BD_27D4 proc
	mov	[0CEEh],al
	or	ah,ah
	jnz	27FDh

l09BD_27DB:
	cmp	byte ptr [0CECh],3h
	jc	27EEh

l09BD_27E2:
	cmp	al,22h
	jnc	27F2h

l09BD_27E6:
	cmp	al,20h
	jc	27EEh

l09BD_27EA:
	mov	al,5h
	jmp	27F4h

l09BD_27EE:
	cmp	al,13h
	jbe	27F4h

l09BD_27F2:
	mov	al,13h

l09BD_27F4:
	mov	bx,0D10h
	xlat

l09BD_27F8:
	cbw
	mov	[0CE6h],ax
	ret

l09BD_27FD:
	mov	al,ah
	jmp	27F8h
09BD:2801    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ...............
09BD:2810 54 28 3C 28 8C 2E 66 0D 8C 26 64 0D 8E 26 60 0D T(<(..f..&d..&`.
09BD:2820 8E 2E 62 0D 33 C0 38 06 35 00 75 03 E8 BA E3 80 ..b.3.8.5.u.....
09BD:2830 3E F0 11 00 75 05 B1 09 E9 87 E0 C3 53 8C D3 80 >...u.......S...
09BD:2840 E3 F8 6A 08 07 B8 FF FF FA 26 87 07 8E D3 26 87 ..j......&....&.
09BD:2850 07 5B EB 07 50 53 8B 1E B4 09 FA 80 3E F0 11 00 .[..PS......>...
09BD:2860 75 0A B0 0F E6 70 EB 00 32 C0 E6 71 8C D8 8E C0 u....p..2..q....
09BD:2870 8C 2E 62 0D 8C 26 60 0D 8E E0 8E E8 66 50 51 0F ..b..&`.....fPQ.
09BD:2880 20 C0 C6 06 FE 0D 00 66 0F BA F0 1F 0F 83 0A 00  ......f........
09BD:2890 C6 06 FE 0D 01 0F 00 0E FC 0D 8B 0E 40 00 F7 D1 ............@...
09BD:28A0 23 C1 59 0F 22 C0 EA AB 28 BD 09 8E D3 2E 8E 1E #.Y."...(.......
09BD:28B0 00 00 8E 2E 66 0D 8E 26 64 0D 0F 01 1E DC 0D 66 ....f..&d......f
09BD:28C0 58 81 3E 35 00 00 80 75 25 80 3E F0 11 00 75 28 X.>5...u%.>...u(
09BD:28D0 33 C0 8E C0 A1 56 0F 26 A3 67 04 A1 58 0F 26 A3 3....V.&.g..X.&.
09BD:28E0 69 04 8E C3 80 3E 2E 00 02 74 06 E8 0D E3 5B 58 i....>...t....[X
09BD:28F0 C3 32 E4 E8 CD E2 EB F6 80 3E 2E 00 05 74 18 80 .2.......>...t..
09BD:2900 3E 2E 00 0E 74 19 80 3E 2E 00 0F 74 2D 80 3E 2E >...t..>...t-.>.
09BD:2910 00 01 74 33 5B 58 C3 8E C3 B0 80 E6 20 EB CF B0 ..t3[X...... ...
09BD:2920 FF E6 F2 9C FA 52 BA 40 01 B0 01 EE FE C8 EE 5A .....R.@.......Z
09BD:2930 9D 51 B9 A0 0F E2 FE 59 EB B4 52 BA 04 04 EC 24 .Q.....Y..R....$
09BD:2940 F9 EB 00 EE 5A EB A7 B0 03 E6 F6 EB A1 66 50 0F ....Z........fP.
09BD:2950 20 C0 A1 88 0F 0F 22 C0 66 58 5B 58 C3 8E 26 60  .....".fX[X..&`
09BD:2960 0D 8E 2E 62 0D E9 4D D9 80 3E FE 0D 01 0F 85 34 ...b..M..>.....4
09BD:2970 00 66 50 0F 20 C0 66 0D 00 00 00 80 0F 22 C0 A1 .fP. .f......"..
09BD:2980 FC 0D 0B C0 0F 84 1B 00 53 8B 1E FC 0D B8 08 00 ........S.......
09BD:2990 8E D8 C6 47 05 89 8B C3 BB 20 00 8E DB 5B 0F 00 ...G..... ...[..
09BD:29A0 D8 0F 06 66 58 E9 8F D9 46 2A 4C 2A 93 58 8C 2E ...fX...F*L*.X..
09BD:29B0 66 0D 8C 26 64 0D 66 A3 6C 0D 66 89 36 68 0D 8B f..&d.f.l.f.6h..
09BD:29C0 CC 66 A1 C8 08 66 A3 4E 0D A0 CC 08 A2 52 0D A1 .f...f.N.....R..
09BD:29D0 D2 08 A3 56 0D A0 D4 08 A2 58 0D C7 06 FE 08 80 ...V.....X......
09BD:29E0 00 C6 06 1D 09 89 89 26 78 0D 89 26 B0 0D 66 8B .......&x..&..f.
09BD:29F0 36 34 0D A1 70 0D A3 5E 0D 33 C0 8E E0 8E E8 B8 64..p..^.3......
09BD:2A00 0C DE CD 67 8B E1 B9 20 00 8E D9 F6 06 47 00 20 ...g... .....G. 
09BD:2A10 75 13 66 A1 6C 0D 66 8B 36 68 0D 8E 26 60 0D 8E u.f.l.f.6h..&`..
09BD:2A20 2E 62 0D FF E3 66 8B 36 E4 0D B8 38 00 8E E0 66 .b...f.6...8...f
09BD:2A30 97 C4 3E E8 0D 66 0F B7 FF FC 67 66 64 A5 67 66 ..>..f....gfd.gf
09BD:2A40 64 A5 66 97 EB CC 50 53 8B 1E B4 09 FA 66 50 66 d.f...PS.....fPf
09BD:2A50 52 66 51 66 56 0F 01 E1 A1 40 00 F7 D0 23 C1 0F RfQfV....@...#..
09BD:2A60 01 F0 A1 70 0D A3 5E 0D 66 0F B7 0E B4 09 66 8B ...p..^.f.....f.
09BD:2A70 D4 8C 2E 62 0D 8C 26 60 0D 66 33 C0 8E E0 8E E8 ...b..&`.f3.....
09BD:2A80 50 0F A8 50 0F A0 66 51 66 51 50 53 66 52 66 50 P..P..fQfQPSfRfP
09BD:2A90 50 FF 36 B6 09 50 68 B0 2A B8 20 00 8E C0 B8 38 P.6..Ph.*. ....8
09BD:2AA0 00 8E D8 B8 0C DE 66 0F B7 E4 66 26 FF 1E 5A 0D ......f...f&..Z.
09BD:2AB0 26 8E 2E 66 0D 26 8E 26 64 0D 66 5E 66 59 66 5A &..f.&.&d.f^fYfZ
09BD:2AC0 66 58 5B 58 C3 00 00                            fX[X...        

;; fn09BD_2AC7: 09BD:2AC7
;;   Called from:
;;     09BD:771F (in fn09BD_76B6)
;;     09BD:78FA (in fn09BD_78FA)
fn09BD_2AC7 proc
	mov	dx,cs:[2AC5h]
	or	dx,dx
	jz	2AD4h

l09BD_2AD0:
	mov	ah,45h
	int	67h

l09BD_2AD4:
	ret
09BD:2AD5                5D C3 FA 6A 38 07 66 0F B7 36 AA      ]..j8.f..6.
09BD:2AE0 00 81 C6 00 01 66 C1 E6 04 80 3E FF 0D 00 74 06 .....f....>...t.
09BD:2AF0 66 BE 00 F0 3F 00 33 C9 8E E1 8E E9 CB 51 81 E2 f...?.3......Q..
09BD:2B00 00 F0 8B 0E EE 0D 49 75 25 B8 05 DE 66 FF 1E 5A ......Iu%...f..Z
09BD:2B10 0D 8B 46 0E 26 67 21 07 FF 06 F8 0D 66 81 2E A8 ..F.&g!.....f...
09BD:2B20 0A 00 10 00 00 66 83 C7 04 49 79 E8 59 C3 B8 01 .....f...Iy.Y...
09BD:2B30 DF EB D9 55 8B EC 66 60 0F A0 0F A8 FF 36 F8 0D ...U..f`.....6..
09BD:2B40 F6 06 82 15 01 75 7F F6 06 47 00 80 74 05 B8 1B .....u...G..t...
09BD:2B50 10 CD 15 0E E8 80 FF 66 0F BF 0E F0 0D 66 F7 D1 .......f.....f..
09BD:2B60 66 0F B7 3E CA 0E 66 C1 E7 06 66 8B 56 06 66 3B f..>..f...f.V.f;
09BD:2B70 FA 77 03 66 8B FA 66 03 F9 66 F7 D1 23 F9 66 C1 .w.f..f..f..#.f.
09BD:2B80 EF 06 66 23 4E 0A 66 C1 E9 06 66 03 FE 66 03 CE ..f#N.f...f..f..
09BD:2B90 66 89 4E 0A EB 04 66 83 C7 04 66 3B F9 73 1B 26 f.N...f...f;.s.&
09BD:2BA0 67 66 8B 17 F6 C6 04 75 ED 8B C2 23 06 F2 0D 3B gf.....u...#...;
09BD:2BB0 06 F2 0D 75 E1 E8 45 FF EB E0 F6 06 47 00 80 74 ...u..E.....G..t
09BD:2BC0 05 B8 1C 10 CD 15 5B A1 F8 0D 2B C3 89 46 FC 74 ......[...+..F.t
09BD:2BD0 06 0F 20 DB 0F 22 DB 0F A9 0F A1 66 61 5D CB 66 .. ..".....fa].f
09BD:2BE0 60 E8 E3 FE 33 C9 86 0E 00 0E E3 49 F6 06 47 00 `...3......I..G.
09BD:2BF0 80 74 1A C4 1E A0 00 26 66 8B 47 14 66 A3 AC 00 .t.....&f.G.f...
09BD:2C00 B8 DE BF BB 0A 00 E8 EB E2 0B C0 7D 28 C7 06 CA ...........}(...
09BD:2C10 0E 00 10 FB 68 FF F7 66 FF 36 9C 00 66 0F B7 06 ....h..f.6..f...
09BD:2C20 CA 0E 66 C1 E0 06 66 50 E8 65 D6 0E E8 04 FF 83 ..f...fP.e......
09BD:2C30 C4 0A E8 F7 DC 66 61 C3 33 C0 33 D2 F6 06 82 15 .....fa.3.3.....
09BD:2C40 01 75 2B 80 3E 2E 00 0B 75 24 B8 03 DE 66 FF 1E .u+.>...u$...f..
09BD:2C50 5A 0D 66 69 C2 00 01 00 00 66 2B 06 9C 00 66 03 Z.fi.....f+...f.
09BD:2C60 06 AC 00 66 83 E8 09 66 8B D0 66 C1 EA 10 C3 50 ...f...f..f....P
09BD:2C70 66 9C 66 0E 6A 00 68 7E 2C EA C0 57 70 00 60 8B f.f.j.h~,..Wp.`.
09BD:2C80 EC 8A 46 11 2C 40 3C 0F 77 08 91 B8 82 0D D3 E0 ..F.,@<.w.......
09BD:2C90 79 33 1E 6A 20 1F F6 06 82 15 01 75 27 8C D1 8B y3.j ......u'...
09BD:2CA0 DC 81 2E 96 09 80 01 0F B2 26 96 09 83 EC 10 51 .........&.....Q
09BD:2CB0 53 E8 78 DC E8 3F 00 E8 D0 EC 81 06 96 09 80 01 S.x..?..........
09BD:2CC0 5B 17 8B E3 1F 61 44 44 66 CF 66 50 0F 20 D0 1E [....aDDf.fP. ..
09BD:2CD0 6A 20 1F 66 A3 30 0D 1F 66 58 E8 C2 DF 0E BF 00 j .f.0..fX......
09BD:2CE0 08 8E C7 EB 0E 33 FF 8E DF BF 00 08 8E C7 2E 87 .....3..........
09BD:2CF0 3E 00 00 68 7F 0F 66 60 1E 06 2E 8E 1E 00 00 F6 >..h..f`........
09BD:2D00 06 82 15 01 75 21 81 3E EC 0D 02 06 73 19 8B 0E ....u!.>....s...
09BD:2D10 AA 00 FE C5 8E C1 33 FF 16 1F 83 EC 18 8B F4 B8 ......3.........
09BD:2D20 01 DE CD 67 83 C4 18 07 1F 66 61 C3             ...g.....fa.   

;; fn09BD_2D2C: 09BD:2D2C
;;   Called from:
;;     09BD:3F1E (in fn09BD_3EBE)
fn09BD_2D2C proc
	sub	ax,ax
	ret

;; fn09BD_2D2F: 09BD:2D2F
;;   Called from:
;;     09BD:2E81 (in fn09BD_2D88)
fn09BD_2D2F proc
	mov	word ptr [11D4h],7h
	mov	ax,15h
	push	ax
	call	229Dh
	pop	bx
	ret

;; fn09BD_2D3E: 09BD:2D3E
;;   Called from:
;;     09BD:727D (in fn09BD_7270)
fn09BD_2D3E proc
	mov	ax,1h
	push	ax
	call	6635h
	pop	bx
	mov	[1186h],al
	cmp	byte ptr [0026h],0h
	jz	2D6Eh

l09BD_2D50:
	mov	ax,0E20h
	push	ax
	call	1497h
	pop	bx
	mov	ax,0AD6h
	push	ax
	call	1497h
	pop	bx
	call	17D8h
	push	word ptr [0030h]
	call	1497h
	pop	bx
	call	17D8h

l09BD_2D6E:
	mov	word ptr [000Eh],2000h
	jmp	6529h

;; fn09BD_2D77: 09BD:2D77
;;   Called from:
;;     09BD:72D5 (in fn09BD_7270)
fn09BD_2D77 proc
	mov	al,[1186h]
	cbw
	push	ax
	call	6635h
	pop	bx
	ret

;; fn09BD_2D81: 09BD:2D81
;;   Called from:
;;     09BD:599E (in fn09BD_5978)
fn09BD_2D81 proc
	mov	ax,0FFFFh
	ret

;; fn09BD_2D85: 09BD:2D85
;;   Called from:
;;     09BD:2EA0 (in fn09BD_2D88)
fn09BD_2D85 proc
	sub	ax,ax
	ret

;; fn09BD_2D88: 09BD:2D88
;;   Called from:
;;     09BD:23E9 (in fn09BD_2372)
fn09BD_2D88 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	call	65C1h
	mov	[002Fh],al
	mov	ax,2h
	push	ax
	mov	ax,9B8h
	push	ax
	mov	ax,2Ch
	push	ax
	push	word ptr [0CEAh]
	call	66C1h
	add	sp,8h
	mov	bx,[bp+6h]
	push	word ptr [bx]
	call	191Dh
	pop	bx
	mov	ax,0E4Eh
	push	ax
	mov	ax,1190h
	push	ax
	call	6130h
	pop	bx
	pop	bx
	or	ax,ax
	jnz	2DD8h

l09BD_2DC4:
	mov	ax,0E56h
	push	ax
	mov	ax,1190h
	push	ax
	call	6130h
	pop	bx
	pop	bx
	or	ax,ax
	jnz	2DD8h

l09BD_2DD5:
	jmp	2E6Ch

l09BD_2DD8:
	cmp	word ptr [bp+4h],1h
	jg	2DE1h

l09BD_2DDE:
	jmp	2E6Ch

l09BD_2DE1:
	mov	bx,[bp+6h]
	push	word ptr [bx+2h]
	call	191Dh
	pop	bx
	mov	ax,0E62h
	push	ax
	call	18BAh
	pop	bx
	mov	ax,80h
	mov	dx,[0CEAh]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	es,dx
	mov	bx,ax
	mov	cl,es:[bx]
	sub	ch,ch
	mov	[bp-0Ah],cx
	inc	ax
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	2E1Dh

l09BD_2E15:
	dec	word ptr [bp-0Ah]
	js	2E38h

l09BD_2E1A:
	inc	word ptr [bp-4h]

l09BD_2E1D:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	sub	ah,ah
	push	ax
	call	2F6Bh
	pop	bx
	or	ax,ax
	jnz	2E15h

l09BD_2E2E:
	jmp	2E38h

l09BD_2E30:
	dec	word ptr [bp-0Ah]
	js	2E49h

l09BD_2E35:
	inc	word ptr [bp-4h]

l09BD_2E38:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	sub	ah,ah
	push	ax
	call	2F6Bh
	pop	bx
	or	ax,ax
	jz	2E30h

l09BD_2E49:
	mov	al,[bp-0Ah]
	les	bx,[bp-8h]
	mov	es:[bx],al

l09BD_2E52:
	les	bx,[bp-4h]
	inc	word ptr [bp-4h]
	mov	al,es:[bx]
	inc	word ptr [bp-8h]
	les	bx,[bp-8h]
	mov	es:[bx],al
	dec	word ptr [bp-0Ah]
	jns	2E52h

l09BD_2E69:
	call	2F91h

l09BD_2E6C:
	call	5978h
	mov	ax,0E67h
	push	ax
	mov	bx,[bp+6h]
	push	word ptr [bx]
	call	600Eh
	pop	bx
	pop	bx
	or	ax,ax
	jnz	2E87h

l09BD_2E81:
	call	2D2Fh
	call	5978h

l09BD_2E87:
	cmp	byte ptr [002Fh],3h
	jge	2E96h

l09BD_2E8E:
	mov	ax,0Fh
	push	ax
	call	229Dh
	pop	bx

l09BD_2E96:
	call	3EBEh
	cmp	byte ptr [002Fh],3h
	jl	2EAEh

l09BD_2EA0:
	call	2D85h
	push	ax
	mov	bx,[bp+6h]
	push	word ptr [bx]
	call	6A0Dh
	pop	bx
	pop	bx

l09BD_2EAE:
	call	625Fh
	mov	sp,bp
	pop	bp
	ret
09BD:2EB5                55 8B EC 83 EC 18 C6 46 F3 1A C7      U......F...
09BD:2EC0 46 F8 80 00 A1 EA 0C 89 46 F0 8D 46 EA 50 8D 46 F.......F..F.P.F
09BD:2ED0 F2 50 50 E8 32 F8 83 C4 06 80 3E 6A 0E 00 75 54 .PP.2.....>j..uT
09BD:2EE0 80 3E 80 09 01 74 0A 80 3E 80 09 03 74 03 E8 DB .>...t..>...t...
09BD:2EF0 29 C7 46 E8 2C 2D 80 3E 2E 00 0B 74 0C F6 06 47 ).F.,-.>...t...G
09BD:2F00 00 80 75 05 C7 46 E8 AC 29 F6 06 14 00 08 74 05 ..u..F..).....t.
09BD:2F10 C7 46 E8 5F 62 83 3E 6E 0E 00 74 09 8B 46 E8 39 .F._b.>n..t..F.9
09BD:2F20 06 6E 0E 76 0F 8B 46 E8 A3 6E 0E 50 FF 76 04 E8 .n.v..F..n.P.v..
09BD:2F30 62 EF 5B 5B 8B E5 5D C3 55 8B EC C7 06 7A 09 90 b.[[..].U....z..
09BD:2F40 20 C7 06 7E 09 00 00 E8 F4 FD E8 1F 27 A1 EA 0C  ..~........'...
09BD:2F50 A3 E2 11 C7 06 E0 11 80 00 E8 A6 08 E8 18 FE 8B ................
09BD:2F60 C5 50 E8 50 FF 5B 8B E5 5D C3 C3                .P.P.[..]..    

;; fn09BD_2F6B: 09BD:2F6B
;;   Called from:
;;     09BD:2E26 (in fn09BD_2D88)
;;     09BD:2E41 (in fn09BD_2D88)
fn09BD_2F6B proc
	push	bp
	mov	bp,sp
	cmp	word ptr [bp+4h],20h
	jz	2F86h

l09BD_2F74:
	cmp	word ptr [bp+4h],9h
	jz	2F86h

l09BD_2F7A:
	cmp	word ptr [bp+4h],0Ah
	jz	2F86h

l09BD_2F80:
	cmp	word ptr [bp+4h],0Dh
	jnz	2F8Bh

l09BD_2F86:
	mov	ax,1h
	pop	bp
	ret

l09BD_2F8B:
	sub	ax,ax
	pop	bp
	ret

;; fn09BD_2F8F: 09BD:2F8F
;;   Called from:
;;     09BD:6276 (in fn09BD_625F)
fn09BD_2F8F proc
	ret
09BD:2F90 C3                                              .              

;; fn09BD_2F91: 09BD:2F91
;;   Called from:
;;     09BD:2E69 (in fn09BD_2D88)
fn09BD_2F91 proc
	ret
09BD:2F92       55 8B EC A1 7C 09 39 46 04 73 14 FF 76 06   U...|.9F.s..v.
09BD:2FA0 6A FF 6A 00 FF 76 04 8B 46 04 C1 E8 03 50 E8 EE j.j..v..F....P..
09BD:2FB0 EC C9 C3 56 BE 00 9F EB 03 83 C6 40 81 FE 00 A0 ...V.......@....
09BD:2FC0 74 0F 68 92 00 56 E8 C9 FF 5B 5B EB EC 81 C6 00 t.h..V...[[.....
09BD:2FD0 02 0B F6 74 20 8B CE C1 E9 0C B8 00 D0 D3 E8 25 ...t ..........%
09BD:2FE0 01 00 3D 01 00 1B C0 24 F8 05 9A 00 50 56 E8 A1 ..=....$....PV..
09BD:2FF0 FF 5B 5B EB D8 5E C3                            .[[..^.        

;; fn09BD_2FF7: 09BD:2FF7
;;   Called from:
;;     09BD:308B (in fn09BD_303B)
fn09BD_2FF7 proc
	enter	6h,0h
	mov	bx,[bp+4h]
	mov	ax,[bx+4h]
	sub	dx,dx
	mov	cl,9h
	call	2794h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	word ptr [bp-6h],0h
	mov	bx,[bp+4h]
	cmp	word ptr [bx+2h],0h
	jz	3033h

l09BD_301C:
	cmp	byte ptr [bx],4Dh
	jnz	3026h

l09BD_3021:
	mov	word ptr [bp-6h],200h

l09BD_3026:
	mov	ax,[bx+2h]
	sub	ax,[bp-6h]
	cwd
	add	[bp-4h],ax
	adc	[bp-2h],dx

l09BD_3033:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	leave
	ret

;; fn09BD_303B: 09BD:303B
;;   Called from:
;;     09BD:3108 (in fn09BD_30C4)
fn09BD_303B proc
	enter	2h,0h
	mov	word ptr [bp-2h],2h

l09BD_3044:
	push	word ptr [11DCh]
	push	word ptr [11DAh]
	call	5FB0h
	pop	bx
	pop	bx
	push	word ptr [bp+8h]
	push	word ptr [bp+4h]
	call	5FC8h
	pop	bx
	pop	bx
	cmp	ax,[bp+8h]
	jnz	30AEh

l09BD_3061:
	mov	bx,[bp+4h]
	cmp	byte ptr [bx],4Dh
	jnz	307Fh

l09BD_3069:
	cmp	byte ptr [bx+1h],46h
	jnz	307Fh

l09BD_306F:
	mov	ax,[bx+2h]
	mov	dx,[bx+4h]

l09BD_3075:
	add	[11DAh],ax
	adc	[11DCh],dx
	jmp	30A8h

l09BD_307F:
	cmp	byte ptr [bx],4Dh
	jnz	3091h

l09BD_3084:
	cmp	byte ptr [bx+1h],5Ah
	jnz	3091h

l09BD_308A:
	push	bx
	call	2FF7h
	pop	bx
	jmp	3075h

l09BD_3091:
	cmp	byte ptr [bx],42h
	jnz	30A1h

l09BD_3096:
	cmp	byte ptr [bx+1h],57h
	jnz	30A1h

l09BD_309C:
	mov	ax,1h
	leave
	ret

l09BD_30A1:
	mov	ah,0Dh
	int	21h
	dec	word ptr [bp-2h]

l09BD_30A8:
	cmp	word ptr [bp-2h],0h
	jge	3044h

l09BD_30AE:
	cmp	word ptr [bp+6h],0h
	jz	30BAh

l09BD_30B4:
	push	0FEh
	call	229Dh
	pop	bx

l09BD_30BA:
	sub	ax,ax
	mov	[11DCh],ax
	mov	[11DAh],ax
	leave
	ret

;; fn09BD_30C4: 09BD:30C4
;;   Called from:
;;     09BD:4564 (in fn09BD_3EBE)
;;     09BD:7751 (in fn09BD_76B6)
fn09BD_30C4 proc
	enter	0BCh,0h
	mov	al,[0E72h]
	inc	byte ptr [0E72h]
	or	al,al
	jz	30D6h

l09BD_30D3:
	jmp	3256h

l09BD_30D6:
	cmp	word ptr [0E70h],0h
	jge	30E4h

l09BD_30DD:
	push	1190h
	call	5F9Eh
	pop	bx

l09BD_30E4:
	cmp	word ptr [0E70h],0h
	jge	30EEh

l09BD_30EB:
	jmp	3256h

l09BD_30EE:
	sub	ax,ax
	mov	[bp+0FF46h],ax
	mov	[bp-2h],ax
	mov	[bp+0FF48h],ax
	mov	[bp+0FF4Ah],ax
	push	0B0h
	push	ax
	lea	ax,[bp+0FF4Eh]
	push	ax
	call	303Bh
	add	sp,6h
	or	ax,ax
	jnz	3115h

l09BD_3112:
	jmp	319Fh

l09BD_3115:
	cmp	byte ptr [bp+0FF4Eh],42h
	jnz	3123h

l09BD_311C:
	cmp	byte ptr [bp+0FF4Fh],57h
	jz	3125h

l09BD_3123:
	jmp	319Fh

l09BD_3125:
	mov	ax,[bp+0FF7Eh]
	or	[0014h],ax
	mov	ax,[bp+0FF4Ah]
	cmp	[bp+0FF58h],ax
	jbe	313Fh

l09BD_3137:
	mov	ax,[bp+0FF58h]
	mov	[bp+0FF4Ah],ax

l09BD_313F:
	mov	ax,[bp+0FF48h]
	cmp	[bp+0FF5Ah],ax
	jbe	3151h

l09BD_3149:
	mov	ax,[bp+0FF5Ah]
	mov	[bp+0FF48h],ax

l09BD_3151:
	mov	ax,[bp-2h]
	cmp	[bp+0FF76h],ax
	jbe	3161h

l09BD_315A:
	mov	ax,[bp+0FF76h]
	mov	[bp-2h],ax

l09BD_3161:
	mov	ax,[bp+0FF46h]
	cmp	[bp+0FF74h],ax
	jbe	3173h

l09BD_316B:
	mov	ax,[bp+0FF74h]
	mov	[bp+0FF46h],ax

l09BD_3173:
	mov	ax,[bp+0FF6Ch]
	or	ax,[bp+0FF6Ah]
	jz	319Fh

l09BD_317D:
	push	word ptr [bp+0FF6Ch]
	push	word ptr [bp+0FF6Ah]
	call	5FB0h
	pop	bx
	pop	bx
	push	0B0h
	lea	ax,[bp+0FF4Eh]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	cmp	ax,0B0h
	jnz	319Fh

l09BD_319C:
	jmp	3115h

l09BD_319F:
	cmp	word ptr [bp+0FF4Ah],0h
	jz	31B3h

l09BD_31A6:
	mov	ax,[bp+0FF4Ah]
	cmp	[0ECCh],ax
	jbe	31B3h

l09BD_31B0:
	mov	[120Eh],ax

l09BD_31B3:
	mov	ax,[bp+0FF46h]
	mov	[bp+0FF4Ch],ax
	or	ax,ax
	jz	31D0h

l09BD_31BF:
	mov	byte ptr [0A16h],2h
	mov	ax,[bp-2h]
	cmp	[1206h],ax
	jnc	31D0h

l09BD_31CD:
	mov	[1206h],ax

l09BD_31D0:
	cmp	byte ptr [002Eh],0h
	jnz	31EBh

l09BD_31D7:
	mov	ax,[bp+0FF48h]
	mov	[bp+0FF4Ch],ax
	mov	ax,[bp-2h]
	cmp	[1206h],ax
	jnc	31EBh

l09BD_31E8:
	mov	[1206h],ax

l09BD_31EB:
	cmp	word ptr [bp+0FF4Ch],0h
	jz	320Dh

l09BD_31F2:
	cmp	word ptr [bp+0FF4Ch],7FFFh
	jz	320Dh

l09BD_31FA:
	test	byte ptr [11D2h],1h
	jnz	320Dh

l09BD_3201:
	mov	ax,[bp+0FF4Ch]
	mov	[0ECCh],ax
	or	byte ptr [11D2h],1h

l09BD_320D:
	test	byte ptr [0015h],20h
	jz	3239h

l09BD_3214:
	cmp	byte ptr [002Eh],0h
	jz	3239h

l09BD_321B:
	test	byte ptr [11D2h],4h
	jnz	3228h

l09BD_3222:
	mov	word ptr [0ECEh],0FFFEh

l09BD_3228:
	test	byte ptr [11D2h],1h
	jnz	3239h

l09BD_322F:
	mov	ax,[0ECEh]
	sub	ax,[0ECAh]
	mov	[0ECCh],ax

l09BD_3239:
	cmp	word ptr [0ECCh],3C00h
	ja	3251h

l09BD_3241:
	cmp	word ptr [0ECAh],4000h
	ja	3251h

l09BD_3249:
	cmp	word ptr [0ECEh],4000h
	jbe	3256h

l09BD_3251:
	or	byte ptr [0015h],20h

l09BD_3256:
	leave
	ret
09BD:3258                         C8 40 00 00 A1 DA 11 8B         .@......
09BD:3260 16 DC 11 05 40 00 83 D2 00 52 50 E8 42 2D 5B 5B ....@....RP.B-[[
09BD:3270 6A 40 8D 46 C0 50 E8 4F 2D 5B 5B 68 73 0E 8D 46 j@.F.P.O-[[hs..F
09BD:3280 C0 50 E8 AB 2E 5B 5B 0B C0 75 10 68 7B 0E 8D 46 .P...[[..u.h{..F
09BD:3290 C0 50 E8 9B 2E 5B 5B 0B C0 74 13 A1 F4 11 8B 16 .P...[[..t......
09BD:32A0 F6 11 A3 DA 11 89 16 DC 11 B8 01 00 C9 C3 2B C0 ..............+.
09BD:32B0 C9 C3 C8 4A 00 00 57 56 C7 46 E2 00 00 C7 46 BC ...J..WV.F....F.
09BD:32C0 00 00 6A 1C 6A 01 8D 46 C4 50 E8 6E FD 83 C4 06 ..j.j..F.P.n....
09BD:32D0 6A 04 68 F4 11 E8 F0 2C 5B 5B 83 06 DA 11 30 83 j.h....,[[....0.
09BD:32E0 16 DC 11 00 FF 36 DC 11 FF 36 DA 11 E8 C1 2C 5B .....6...6....,[
09BD:32F0 5B 6A 10 8D 46 EA 50 E8 CE 2C 5B 5B 80 3E F1 11 [j..F.P..,[[.>..
09BD:3300 00 74 07 E8 52 FF 0B C0 75 B8 83 7E F8 00 74 0D .t..R...u..~..t.
09BD:3310 83 3E 0A 00 00 75 06 8B 46 F8 A3 0E 00 8B 46 F2 .>...u..F.....F.
09BD:3320 89 46 C2 3B 06 7C 09 76 06 80 C4 02 A3 7C 09 A1 .F.;.|.v.....|..
09BD:3330 7C 09 39 46 C2 76 06 C7 06 7C 09 FF FF 8B 46 F4 |.9F.v...|....F.
09BD:3340 A3 F2 11 3D 80 00 73 06 C7 06 F2 11 80 00 83 7E ...=..s........~
09BD:3350 04 00 75 17 E8 A8 E7 8B 46 DC A3 7C 09 E8 0B 06 ..u.....F..|....
09BD:3360 8A 46 F6 A2 80 09 E8 03 23 EB 03 E8 FD 05 83 7E .F......#......~
09BD:3370 04 00 7D 0A C7 46 04 00 00 80 26 14 00 F7 F6 46 ..}..F....&....F
09BD:3380 EE 02 74 0A C7 46 04 FF FF 80 0E 14 00 08 83 7E ..t..F.........~
09BD:3390 04 00 74 41 A1 F2 11 F7 D8 89 46 BC F6 46 EE 01 ..tA......F..F..
09BD:33A0 74 24 8B 46 C2 40 C1 E8 03 F7 66 04 F7 D8 50 E8 t$.F.@....f...P.
09BD:33B0 FF 07 5B C1 E0 03 A3 F2 11 8B 5E 06 89 47 08 0B ..[.......^..G..
09BD:33C0 C0 75 03 E9 38 04 A1 F2 11 01 46 BC 8B 46 BC 01 .u..8.....F..F..
09BD:33D0 46 D2 01 46 DA 8B 46 EA 09 06 14 00 A1 DA 11 8B F..F..F.........
09BD:33E0 16 DC 11 05 80 00 83 D2 00 52 50 E8 C2 2B 5B 5B .........RP..+[[
09BD:33F0 E8 97 E5 8B 46 C2 2D 7F 00 A3 EE 11 50 FF 36 F2 ....F.-.....P.6.
09BD:3400 11 6A 08 E8 68 06 83 C4 06 A1 F2 11 01 06 EE 11 .j..h...........
09BD:3410 C7 46 FA 00 00 C7 46 FC 08 00 C7 46 BE 00 00 C7 .F....F....F....
09BD:3420 46 C0 50 00 8E 46 FC 83 2E EE 11 08 8B 1E EE 11 F.P..F..........
09BD:3430 80 E3 F8 03 5E FA 26 80 7F 05 00 74 EA A1 F2 11 ....^.&....t....
09BD:3440 89 46 E8 8B 46 E8 89 46 E4 24 F8 03 46 FA 8B 56 .F..F..F.$..F..V
09BD:3450 FC BB E4 11 56 57 1E 8B FB 8B F0 1E 07 8E DA A5 ....VW..........
09BD:3460 A5 A5 A5 1F 5F 5E 8B 36 E4 11 A0 E9 11 2A E4 89 ...._^.6.....*..
09BD:3470 46 FE 0B C0 75 03 E9 1B 02 A1 EA 11 80 E4 1F 89 F...u...........
09BD:3480 46 B6 2B FF 0B F6 74 07 56 E8 51 DD 5B 8B F8 F6 F.+...t.V.Q.[...
09BD:3490 06 EB 11 20 74 02 2B F6 39 7E B6 76 03 8B 7E B6 ... t.+.9~.v..~.
09BD:34A0 2B C0 A3 04 12 A3 02 12 0B FF 75 03 E9 05 01 F6 +.........u.....
09BD:34B0 06 EB 11 80 75 03 E9 DE 00 8B 46 D2 39 46 E8 74 ....u.....F.9F.t
09BD:34C0 09 8A 46 FE 24 18 3C 18 75 07 C7 46 E0 07 00 EB ..F.$.<.u..F....
09BD:34D0 09 C7 46 E0 00 00 80 4E FE 60 E8 E4 DC 8B 46 E0 ..F....N.`....F.
09BD:34E0 03 C7 89 46 E6 3D 08 00 73 05 C7 46 E6 08 00 FF ...F.=..s..F....
09BD:34F0 76 E6 E8 4C 04 5B A3 02 12 89 16 04 12 89 46 E6 v..L.[........F.
09BD:3500 0B C0 75 06 6A 03 E8 94 ED 5B A1 02 12 03 46 E0 ..u.j....[....F.
09BD:3510 8B 4E E0 F7 D1 23 C8 2B C0 89 0E 02 12 A3 04 12 .N...#.+........
09BD:3520 89 4E E4 3B 0E 7C 09 72 06 6A 04 E8 6F ED 5B FF .N.;.|.r.j..o.[.
09BD:3530 76 E4 FF 76 E8 E8 5A 2A 5B 5B B9 10 12 83 C1 64 v..v..Z*[[.....d
09BD:3540 3B C1 7F 06 6A 05 E8 BA 2A 5B E8 3D E4 8B 5E E4 ;...j...*[.=..^.
09BD:3550 80 E3 F8 03 5E FA 8E 46 FC 26 80 7F 05 00 74 05 ....^..F.&....t.
09BD:3560 E8 5E DC EB C4 83 7E E0 00 74 27 8B 46 D2 39 46 .^....~..t'.F.9F
09BD:3570 E8 75 06 8B 46 E4 89 46 D2 8B 46 DA 39 46 E8 75 .u..F..F..F.9F.u
09BD:3580 06 8B 46 E4 89 46 DA FF 76 E6 FF 76 E4 E8 E6 E8 ..F..F..v..v....
09BD:3590 5B 5B FF 46 E2 EB 1D 57 E8 4B 03 5B A3 02 12 89 [[.F...W.K.[....
09BD:35A0 16 04 12 8B C2 0B 06 02 12 75 09 E8 13 DC 6A 06 .........u....j.
09BD:35B0 E8 EA EC 5B C6 06 E9 11 F2 A1 02 12 C1 E0 04 A3 ...[............
09BD:35C0 E6 11 A1 02 12 8B 16 04 12 B1 0C E8 D2 F1 A2 E8 ................
09BD:35D0 11 C7 06 E4 11 00 00 0B FF 74 19 8B C7 C1 E0 04 .........t......
09BD:35E0 48 A3 E4 11 8B 5E E4 C1 EB 03 03 5E BE 8E 46 C0 H....^.....^..F.
09BD:35F0 26 C6 07 01 F6 06 EB 11 40 74 10 8B 5E E4 C1 EB &.......@t..^...
09BD:3600 03 03 5E BE 8E 46 C0 26 80 0F 02 C7 06 EA 11 00 ..^..F.&........
09BD:3610 00 8B 46 E4 24 F8 03 46 FA 8B 56 FC 56 57 8B F8 ..F.$..F..V.VW..
09BD:3620 BE E4 11 8E C2 A5 A5 A5 A5 5F 5E 0B F6 74 13 F7 ........._^..t..
09BD:3630 C6 0F 00 74 01 46 56 6A 00 FF 76 E4 E8 2F 04 83 ...t.FVj..v../..
09BD:3640 C4 06 83 7E B6 00 74 17 8B 7E B6 C1 E7 04 2B FE ...~..t..~....+.
09BD:3650 74 0D 6A 00 57 56 FF 76 E4 E8 10 E8 83 C4 08 8A t.j.WV.v........
09BD:3660 46 FE A2 E9 11 8B 5E E4 80 E3 F8 03 5E FA 8E 46 F.....^.....^..F
09BD:3670 FC 26 88 47 05 8B 46 E8 39 46 E4 74 17 24 F8 03 .&.G..F.9F.t.$..
09BD:3680 46 FA 8B 56 FC 56 57 8B F8 BE E4 11 8E C2 A5 A5 F..V.VW.........
09BD:3690 A5 A5 5F 5E A1 EE 11 83 46 E8 08 39 46 E8 77 03 .._^....F..9F.w.
09BD:36A0 E9 A0 FD 83 7E 04 00 7F 0A C1 E8 03 C4 5E FA 26 ....~........^.&
09BD:36B0 89 47 02 8B 46 D4 2D 0C 00 24 FE 8B 5E 06 89 47 .G..F.-..$..^..G
09BD:36C0 0E 8B 46 D2 89 47 02 8B 46 DA 89 47 22 8B 46 D8 ..F..G..F..G".F.
09BD:36D0 89 47 1E A1 F2 11 89 47 0A 8B 46 E8 2D 18 00 89 .G.....G..F.-...
09BD:36E0 47 08 E8 DC DA FF 76 06 FF 76 04 E8 A2 F8 5B 5B G.....v..v....[[
09BD:36F0 83 7E 04 00 7C 0D E8 E4 28 2B C0 A3 DC 11 A3 DA .~..|...(+......
09BD:3700 11 EB 0E A1 F4 11 8B 16 F6 11 A3 DA 11 89 16 DC ................
09BD:3710 11 83 6E E8 08 83 7E D6 00 74 51 E8 6C E2 6A 01 ..n...~..tQ.l.j.
09BD:3720 E8 43 DB 5B 83 7E BC 00 74 25 FF 76 BC FF 76 E8 .C.[.~..t%.v..v.
09BD:3730 8B 46 BC 01 46 D6 FF 76 D6 E8 29 06 83 C4 06 EB .F..F..v..).....
09BD:3740 0E FF 76 E8 FF 76 D6 E8 B4 06 5B 5B E8 4A 28 FF ..v..v....[[.J(.
09BD:3750 4E E2 79 ED FF 76 D6 E8 21 E3 5B 8B 46 D6 2D 08 N.y..v..!.[.F.-.
09BD:3760 00 8B 5E 06 89 47 08 E8 57 DA EB 45 83 7E BC 00 ..^..G..W..E.~..
09BD:3770 74 0B FF 76 BC FF 76 E8 E8 8B 03 5B 5B 83 7E E2 t..v..v....[[.~.
09BD:3780 00 7E 2E FF 76 E8 E8 AB E4 5B A0 E9 11 24 18 3C .~..v....[...$.<
09BD:3790 10 74 06 6A 07 E8 05 EB 5B 83 3E E4 11 00 74 11 .t.j....[.>...t.
09BD:37A0 EB 0A FF 76 E8 E8 DA 04 5B E8 ED 27 FF 4E E2 79 ...v....[..'.N.y
09BD:37B0 F1 83 7E E2 00 7C 06 F6 46 EE 01 74 0D 83 7E D6 ..~..|..F..t..~.
09BD:37C0 00 75 07 FF 76 E8 E8 7E 05 5B B8 28 00 8B 5E 06 .u..v..~.[.(..^.
09BD:37D0 89 47 04 89 47 06 C7 47 26 00 02 83 7E 04 00 7F .G..G..G&...~...
09BD:37E0 1D E8 CF F7 A1 EA 0C A3 7E 09 B9 2C 00 8B D0 89 ........~..,....
09BD:37F0 4E B8 89 56 BA 8E C0 8B D9 26 C7 07 30 00 5E 5F N..V.....&..0.^_
09BD:3800 C9 C3 83 3E 70 0E 00 7D 07 68 90 11 E8 8F 27 5B ...>p..}.h....'[
09BD:3810 83 3E 70 0E 00 7D 06 6A F8 E8 81 EA 5B FF 36 96 .>p..}.j....[.6.
09BD:3820 09 6A 00 E8 8C FA 5B 5B C3                      .j....[[.      

;; fn09BD_3829: 09BD:3829
;;   Called from:
;;     09BD:6268 (in fn09BD_625F)
;;     09BD:7754 (in fn09BD_76B6)
fn09BD_3829 proc
	enter	2h,0h
	mov	ax,[0D0Ch]
	mov	cx,180h
	imul	cx
	add	ax,2Ah
	mov	[bp-2h],ax
	cmp	word ptr [0F4Eh],0h
	jnz	3863h

l09BD_3842:
	mov	word ptr [11D4h],8h
	push	ax
	call	far 0800h:0B12h
	pop	bx
	push	word ptr [bp-2h]
	call	242Eh
	pop	bx
	mov	[0F4Eh],ax
	or	ax,ax
	jnz	3863h

l09BD_385D:
	push	9h
	call	229Dh
	pop	bx

l09BD_3863:
	push	word ptr [bp-2h]
	push	0h
	push	word ptr [0F4Eh]
	call	2766h
	mov	ax,[bp-2h]
	add	ax,[0F4Eh]
	mov	[0F4Ch],ax
	sub	ax,2Ah
	mov	[0996h],ax
	mov	bx,ax
	mov	cx,[0F4Ch]
	mov	[bx],cx
	mov	word ptr [bx+18h],0FFFFh
	mov	word ptr [099Eh],0h
	leave
	ret
09BD:3894             C8 04 00 00 80 3E 80 09 01 75 19 FF     .....>...u..
09BD:38A0 76 04 E8 9C 00 5B 89 46 FC 89 56 FE 0B D0 74 08 v....[.F..V...t.
09BD:38B0 8B 46 FC 8B 56 FE C9 C3 80 3E 80 09 03 7D 1E E8 .F..V....>...}..
09BD:38C0 C8 E0 6A 00 FF 76 04 E8 93 E5 5B 5B 89 46 FC 89 ..j..v....[[.F..
09BD:38D0 56 FE E8 EC D8 8B 46 FE 0B 46 FC 75 D3 FF 76 04 V.....F..F.u..v.
09BD:38E0 E8 5E 00 5B C9 C3 C8 04 00 00 80 3E 80 09 01 74 .^.[.......>...t
09BD:38F0 23 80 3E 80 09 03 7D 1C 6A 00 FF 76 04 E8 5D E5 #.>...}.j..v..].
09BD:3900 5B 5B 89 46 FC 89 56 FE 0B D0 74 08 8B 46 FC 8B [[.F..V...t..F..
09BD:3910 56 FE C9 C3 E8 AA D8 FF 76 04 E8 24 00 5B 89 46 V.......v..$.[.F
09BD:3920 FC 89 56 FE E8 63 E0 8B 46 FE 0B 46 FC 75 DD 6A ..V..c..F..F.u.j
09BD:3930 00 FF 76 04 E8 26 E5 5B 5B 89 46 FC 89 56 FE EB ..v..&.[[.F..V..
09BD:3940 CB C8 18 00 00 C6 46 F3 48 8B 46 04 89 46 F4 8D ......F.H.F..F..
09BD:3950 46 F2 50 50 E8 69 ED 5B 5B F6 46 FE 01 74 05 2B F.PP.i.[[.F..t.+
09BD:3960 C0 99 C9 C3 8B 46 F2 2B D2 C9 C3                .....F.+...    

;; fn09BD_396B: 09BD:396B
;;   Called from:
;;     09BD:7280 (in fn09BD_7270)
fn09BD_396B proc
	push	di
	push	si
	sub	ax,ax
	mov	[11D0h],ax
	mov	[1208h],ax
	cmp	[000Ah],ax
	jnz	39F5h

l09BD_397B:
	mov	si,[000Eh]
	cmp	[11D6h],ax
	jz	3989h

l09BD_3985:
	mov	si,[11D6h]

l09BD_3989:
	or	si,si
	jnz	3990h

l09BD_398D:
	mov	si,800h

l09BD_3990:
	cmp	si,400h
	jnc	3999h

l09BD_3996:
	mov	si,400h

l09BD_3999:
	mov	ax,[09B8h]
	dec	ax
	sub	bx,bx
	mov	es,ax
	cmp	byte ptr es:[bx],4Dh
	jnz	39C0h

l09BD_39A7:
	mov	ax,[0CEAh]
	cmp	es:[bx+1h],ax
	jnz	39C0h

l09BD_39B0:
	mov	di,es:[bx+3h]
	add	di,20h
	shl	di,4h
	cmp	di,si
	jbe	39C0h

l09BD_39BE:
	mov	si,di

l09BD_39C0:
	cmp	si,8200h
	jbe	39C9h

l09BD_39C6:
	mov	si,8200h

l09BD_39C9:
	add	si,0Fh
	push	si
	call	far 0800h:0B12h
	pop	bx
	or	ax,ax
	jnz	39DDh

l09BD_39D7:
	push	0Dh
	call	229Dh
	pop	bx

l09BD_39DD:
	push	si
	call	242Eh
	pop	bx
	add	ax,0Fh
	and	al,0F0h
	mov	[000Ah],ax
	or	ax,ax
	jz	39D7h

l09BD_39EE:
	mov	ax,si
	and	al,0F0h
	mov	[000Eh],ax

l09BD_39F5:
	pop	si
	pop	di
	ret
09BD:39F8                         C8 10 00 00 E8 C2 D7 6A         .......j
09BD:3A00 01 E8 62 D8 5B C7 46 F2 01 42 A1 70 0E 89 46 F4 ..b.[.F..B.p..F.
09BD:3A10 2B C0 89 46 F8 89 46 F6 8D 46 F2 50 50 E8 A0 EC +..F..F..F.PP...
09BD:3A20 5B 5B 8A 26 0F 00 25 00 FE 8B 4E F2 80 E5 01 2B [[.&..%...N....+
09BD:3A30 C1 89 46 F6 C6 46 F3 3F A1 0A 00 A3 D0 11 89 46 ..F..F.?.......F
09BD:3A40 F8 8D 46 F2 50 50 E8 77 EC 5B 5B F6 46 FE 01 74 ..F.PP.w.[[.F..t
09BD:3A50 05 C7 46 F2 00 00 8B 46 F2 03 06 D0 11 A3 08 12 ..F....F........
09BD:3A60 E8 27 DF 6A 01 E8 FE D7 5B 8B 46 F2 C9 C3 C8 02 .'.j....[.F.....
09BD:3A70 00 00 57 56 8B 46 08 F7 D8 25 0F 00 89 46 FE 8B ..WV.F...%...F..
09BD:3A80 3E 08 12 2B 3E D0 11 75 03 E8 6C FF 8B 3E 08 12 >..+>..u..l..>..
09BD:3A90 2B 3E D0 11 75 22 83 7E 06 00 74 13 6A 00 FF 76 +>..u".~..t.j..v
09BD:3AA0 08 FF 76 06 FF 76 04 E8 C2 E3 83 C4 08 EB 53 E8 ..v..v........S.
09BD:3AB0 0F D7 6A F2 E8 E6 E7 5B 8B 76 08 3B F7 77 04 0B ..j....[.v.;.w..
09BD:3AC0 F6 75 02 8B F7 56 FF 76 06 FF 76 04 FF 36 D0 11 .u...V.v..v..6..
09BD:3AD0 6A 20 E8 13 26 83 C4 0A 01 76 06 01 36 D0 11 29 j ..&....v..6..)
09BD:3AE0 76 08 75 9B EB 07 E8 0F FF 0B C0 74 15 8B 46 FE v.u........t..F.
09BD:3AF0 01 06 D0 11 A1 D0 11 2B 06 08 12 89 46 FE 0B C0 .......+....F...
09BD:3B00 7F E4 5E 5F C9 C3 C8 16 00 00 57 56 E8 7B DE 8B ..^_......WV.{..
09BD:3B10 46 04 2B D2 8B C8 8B DA 89 56 FA 89 46 FC 2D 08 F.+......V..F.-.
09BD:3B20 00 89 56 F2 89 46 F4 80 CB 08 89 4E F6 89 5E F8 ..V..F.....N..^.
09BD:3B30 8E C3 8B D9 26 8B 37 46 D1 EE EB 6B 8B DE D1 E3 ....&.7F...k....
09BD:3B40 03 5E F2 8E 46 F4 26 8B 3F 81 FF 80 00 72 58 03 .^..F.&.?....rX.
09BD:3B50 7E 06 8B DE D1 E3 8B C3 03 5E F2 26 89 3F 8B CF ~........^.&.?..
09BD:3B60 2B D2 89 4E EA 80 CA 08 89 4E F6 89 56 F8 8E C2 +..N.....N..V...
09BD:3B70 8B DF 26 8A 4F 05 88 4E FE 26 C6 47 05 92 8B D8 ..&.O..N.&.G....
09BD:3B80 03 5E FA 8E 46 FC 8B 46 EA 26 8B 0F 8E C0 8B D9 .^..F..F.&......
09BD:3B90 26 81 3F 80 00 72 06 8B 56 06 26 01 17 8A 46 FE &.?..r..V.&...F.
09BD:3BA0 C4 5E F6 26 88 47 05 4E 79 92 E8 14 D6 5E 5F C9 .^.&.G.Ny....^_.
09BD:3BB0 C3 C8 08 00 00 57 56 C7 46 F8 00 00 E8 CB DD C7 .....WV.F.......
09BD:3BC0 46 FA 00 00 C7 46 FC 08 00 83 7E 04 00 7E 54 BB F....F....~..~T.
09BD:3BD0 08 00 8E C3 26 8B 37 C1 EE 03 4E 4E 8B 46 04 05 ....&.7...NN.F..
09BD:3BE0 10 00 89 46 FE EB 09 39 76 FE 7C 03 E9 89 00 4E ...F...9v.|....N
09BD:3BF0 8B DE C1 E3 03 03 5E FA 8E 46 FC 26 80 7F 05 00 ......^..F.&....
09BD:3C00 75 E5 8B 7E 04 4F 4F 79 05 89 76 F8 EB 6A 4E 8B u..~.OOy..v..jN.
09BD:3C10 DE C1 E3 03 03 5E FA 8E 46 FC 26 80 7F 05 00 74 .....^..F.&....t
09BD:3C20 E5 EB CD C4 5E FA 26 8B 47 08 C1 E8 03 03 46 04 ....^.&.G.....F.
09BD:3C30 48 48 89 46 FE BE 10 00 EB 38 8B DE C1 E3 03 03 HH.F.....8......
09BD:3C40 5E FA 26 80 7F 05 00 75 21 8B 7E 04 F7 DF 03 F7 ^.&....u!.~.....
09BD:3C50 4E 8B DE C1 E3 03 03 5E FA 8E 46 FC 26 80 7F 05 N......^..F.&...
09BD:3C60 00 75 0F 4F 0B FF 7F E8 EB 9F 46 39 76 FE 7F CA .u.O......F9v...
09BD:3C70 EB 06 83 7E F8 00 74 C2 E8 46 D5 8B 46 F8 5E 5F ...~..t..F..F.^_
09BD:3C80 C9 C3 C8 12 00 00 57 56 E8 FF DC 8B 46 04 2B D2 ......WV....F.+.
09BD:3C90 8B C8 8B DA 89 56 FA 89 46 FC 2D 08 00 89 56 F2 .....V..F.-...V.
09BD:3CA0 89 46 F4 80 CB 08 8E C3 8B D9 26 8B 37 46 D1 EE .F........&.7F..
09BD:3CB0 EB 73 8B DE D1 E3 03 5E F2 8E 46 F4 26 8B 3F 81 .s.....^..F.&.?.
09BD:3CC0 FF 80 00 72 60 39 7E 06 75 0D 8B 46 08 8B DE D1 ...r`9~.u..F....
09BD:3CD0 E3 03 5E F2 26 89 07 8B 46 06 8B DE D1 E3 03 5E ..^.&...F......^
09BD:3CE0 FA 8E 46 FC 26 8B 1F 8B CF 8E C1 89 5E EE 8C 46 ..F.&.......^..F
09BD:3CF0 F0 26 39 07 75 2F 8B C7 24 F8 8B D8 B9 08 00 8E .&9.u/..$.......
09BD:3D00 C1 26 8A 47 05 88 46 FE 26 C6 47 05 F2 8B 46 08 .&.G..F.&.G...F.
09BD:3D10 8B CB 8C C2 C4 5E EE 26 89 07 8A 46 FE 8E C2 8B .....^.&...F....
09BD:3D20 D9 26 88 47 05 4E 79 8A 8B 46 06 24 F8 8B D8 B9 .&.G.Ny..F.$....
09BD:3D30 08 00 8E C1 26 C6 47 05 80 8B 46 08 26 89 47 06 ....&.G...F.&.G.
09BD:3D40 E8 7E D4 5E 5F C9 C3 C8 16 00 00 E8 3C DC FF 76 .~.^_.......<..v
09BD:3D50 04 E8 27 DD 5B 8B 46 04 2D 08 00 50 E8 1C DD 5B ..'.[.F.-..P...[
09BD:3D60 E8 5E D4 C9 C3 C8 10 00 00 57 56 C7 46 F8 00 00 .^.......WV.F...
09BD:3D70 C7 46 FA 08 00 8B 46 04 C7 46 FC 00 00 89 46 FE .F....F..F....F.
09BD:3D80 C4 5E FC 26 8B 07 89 46 F0 8B 46 08 26 01 07 8B .^.&...F..F.&...
09BD:3D90 4E F0 80 E1 F8 03 C1 8B F0 89 46 F8 C4 5E F8 26 N.........F..^.&
09BD:3DA0 8A 47 05 2A E4 89 46 F2 26 C6 47 05 92 83 46 FC .G.*..F.&.G...F.
09BD:3DB0 02 C4 5E FC 26 8B 3F 8D 47 02 89 46 FC EB 1B C4 ..^.&.?.G..F....
09BD:3DC0 5E FC 83 46 FC 02 26 8B 1F 8B CE 8E C1 26 81 3F ^..F..&......&.?
09BD:3DD0 80 00 72 06 8B 46 08 26 01 07 4F 79 E2 8A 46 F2 ..r..F.&..Oy..F.
09BD:3DE0 C4 5E F8 26 88 47 05 F6 46 F0 03 74 93 83 46 04 .^.&.G..F..t..F.
09BD:3DF0 08 F6 46 F0 02 75 03 E9 7B FF 5E 5F C9 C3 C8 14 ..F..u..{.^_....
09BD:3E00 00 00 57 56 C7 46 F8 00 00 C7 46 FA 08 00 8B 46 ..WV.F....F....F
09BD:3E10 04 C7 46 FC 00 00 89 46 FE C4 5E FC 26 8B 37 89 ..F....F..^.&.7.
09BD:3E20 76 F0 83 E6 F8 3B 76 08 75 0F 8A 46 F0 32 46 0A v....;v.u..F.2F.
09BD:3E30 25 07 00 33 46 0A 26 89 07 89 76 F8 89 76 F6 C4 %..3F.&...v..v..
09BD:3E40 5E F8 26 8A 47 05 2A E4 89 46 F2 26 C6 47 05 92 ^.&.G.*..F.&.G..
09BD:3E50 83 46 FC 02 C4 5E FC 26 8B 3F 8D 47 02 89 46 FC .F...^.&.?.G..F.
09BD:3E60 EB 1F C4 5E FC 83 46 FC 02 26 8B 07 8B 56 F6 8E ...^..F..&...V..
09BD:3E70 C2 8B D8 8B 4E 08 26 39 0F 75 06 8B 4E 0A 26 89 ....N.&9.u..N.&.
09BD:3E80 0F 4F 79 DE 8A 46 F2 C4 5E F8 26 88 47 05 F6 46 .Oy..F..^.&.G..F
09BD:3E90 F0 03 74 85 83 46 04 08 F6 46 F0 02 75 03 E9 6D ..t..F...F..u..m
09BD:3EA0 FF 8B 46 08 89 46 F8 C4 5E F8 26 C6 47 05 80 8B ..F..F..^.&.G...
09BD:3EB0 46 0A C4 5E F8 26 89 47 06 5E 5F C9 C3 00       F..^.&.G.^_... 

;; fn09BD_3EBE: 09BD:3EBE
;;   Called from:
;;     09BD:2E96 (in fn09BD_2D88)
fn09BD_3EBE proc
	push	bp
	mov	bp,sp
	sub	sp,0ECh
	push	di
	push	si
	sub	al,al
	mov	[bp+0FF18h],al
	mov	[bp-56h],al
	mov	[bp-5Eh],al
	mov	word ptr [bp-5Ch],0h
	call	62D8h
	mov	word ptr [00ACh],0h
	mov	word ptr [00AEh],10h
	mov	word ptr [bp+0FF1Ah],0FFFEh
	mov	word ptr [bp+0FF1Ch],0F000h
	mov	word ptr [11D4h],2h
	mov	bx,0F000h
	mov	es,bx
	mov	bx,0FFFEh
	mov	si,es:[bx]
	and	si,0FFh
	cmp	si,0FBh
	jz	3F14h

l09BD_3F0E:
	cmp	si,0FDh
	jl	3F18h

l09BD_3F14:
	inc	byte ptr [11F0h]

l09BD_3F18:
	call	68A2h
	mov	[003Eh],al
	call	2D2Ch
	mov	si,ax
	mov	word ptr [11D4h],3h
	mov	al,1h
	mov	[bp-4h],al
	mov	[bp-5Eh],al
	or	si,si
	jz	3F38h

l09BD_3F35:
	jmp	418Ah

l09BD_3F38:
	mov	si,0Ah
	sub	al,al
	mov	[bp-4h],al
	mov	[bp-5Eh],al
	lea	ax,[bp+0FF1Eh]
	push	ax
	mov	cx,0E84h
	push	cx
	call	464Bh
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jnz	3F6Eh

l09BD_3F57:
	lea	ax,[bp+0FF1Eh]
	push	ax
	mov	ax,0E8Ch
	push	ax
	call	464Bh
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jnz	3F6Eh

l09BD_3F6B:
	jmp	418Ah

l09BD_3F6E:
	push	di
	call	462Bh
	pop	bx
	push	ax
	push	di
	call	18F1h
	pop	bx
	pop	bx
	mov	[bp-5Ch],di
	mov	ax,0E94h
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	3F95h

l09BD_3F8B:
	mov	si,3h
	inc	byte ptr [11F0h]
	inc	byte ptr [bp-4h]

l09BD_3F95:
	mov	ax,0E9Ch
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	3FA6h

l09BD_3FA3:
	inc	byte ptr [bp-4h]

l09BD_3FA6:
	mov	ax,0EA1h
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	3FBAh

l09BD_3FB4:
	mov	si,0Bh
	inc	byte ptr [bp-4h]

l09BD_3FBA:
	mov	ax,0EA6h
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	3FF8h

l09BD_3FC8:
	mov	ax,31h
	push	ax
	push	word ptr [0030h]
	call	6106h
	pop	bx
	pop	bx
	mov	[bp-2h],ax
	push	ax
	call	2610h
	pop	bx
	mov	[bp-58h],ax
	jmp	3FEDh

l09BD_3FE2:
	mov	bx,[bp-58h]
	add	bx,[bp-2h]
	mov	al,[bx]
	mov	[bx+1h],al

l09BD_3FED:
	dec	word ptr [bp-58h]
	jns	3FE2h

l09BD_3FF2:
	mov	bx,[bp-2h]
	mov	byte ptr [bx],20h

l09BD_3FF8:
	mov	ax,0EABh
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jnz	4014h

l09BD_4006:
	mov	ax,0EAFh
	push	ax
	push	di
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	401Ch

l09BD_4014:
	mov	si,2h
	inc	byte ptr [bp-4h]
	jmp	404Bh

l09BD_401C:
	push	di
	call	6066h
	pop	bx
	mov	[bp-62h],ax
	mov	[bp-60h],dx
	or	dx,ax
	jz	404Bh

l09BD_402B:
	inc	byte ptr [bp-4h]
	cmp	word ptr [bp-60h],1h
	jl	4049h

l09BD_4034:
	jg	403Ah

l09BD_4036:
	or	ax,ax
	jz	4049h

l09BD_403A:
	mov	dx,[bp-60h]
	sub	ax,3880h
	sbb	dx,1h
	mov	[bp-62h],ax
	mov	[bp-60h],dx

l09BD_4049:
	mov	si,ax

l09BD_404B:
	mov	ax,2Ch
	push	ax
	mov	[bp-2h],di
	push	di
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	4078h

l09BD_405E:
	lea	ax,[di+1h]
	push	ax
	call	6062h
	pop	bx
	mov	[bp-58h],ax
	or	ax,ax
	jl	4078h

l09BD_406D:
	inc	ax
	mov	[0012h],ax
	mov	[0010h],ax
	inc	byte ptr [bp+0FF18h]

l09BD_4078:
	mov	ax,40h
	push	ax
	push	word ptr [bp-2h]
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	40C5h

l09BD_408A:
	push	di
	call	45A9h
	pop	bx
	mov	[bp-58h],ax
	or	ax,ax
	jz	409Eh

l09BD_4096:
	mov	[0ECAh],ax
	or	byte ptr [11D2h],2h

l09BD_409E:
	mov	ax,2Dh
	push	ax
	push	di
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	40C5h

l09BD_40AE:
	push	di
	call	45A9h
	pop	bx
	mov	[bp-58h],ax
	or	ax,ax
	jz	40C5h

l09BD_40BA:
	mov	[0ECEh],ax
	inc	byte ptr [bp-5Eh]
	or	byte ptr [11D2h],4h

l09BD_40C5:
	mov	ax,3Ah
	push	ax
	push	word ptr [bp-2h]
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	40E7h

l09BD_40D7:
	push	di
	call	45A9h
	pop	bx
	mov	[0ECCh],ax
	inc	byte ptr [bp-5Eh]
	or	byte ptr [11D2h],1h

l09BD_40E7:
	mov	ax,5Eh
	push	ax
	push	word ptr [bp-2h]
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	4101h

l09BD_40F9:
	push	di
	call	45A9h
	pop	bx
	mov	[0014h],ax

l09BD_4101:
	mov	ax,0EB4h
	push	ax
	push	word ptr [bp-2h]
	call	6130h
	pop	bx
	pop	bx
	or	ax,ax
	jz	4115h

l09BD_4111:
	inc	byte ptr [11F1h]

l09BD_4115:
	mov	ax,0EB9h
	push	ax
	push	word ptr [bp-2h]
	call	6130h
	pop	bx
	pop	bx
	or	ax,ax
	jz	412Ah

l09BD_4125:
	mov	byte ptr [0036h],80h

l09BD_412A:
	mov	ax,2Bh
	push	ax
	push	word ptr [bp-2h]
	call	6106h
	pop	bx
	pop	bx
	or	ax,ax
	jz	413Fh

l09BD_413A:
	or	byte ptr [0047h],2h

l09BD_413F:
	mov	ax,56h
	push	ax
	push	word ptr [bp-2h]
	call	6106h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	4166h

l09BD_4151:
	cmp	byte ptr [di+1h],43h
	jz	4166h

l09BD_4157:
	push	di
	call	45A9h
	pop	bx
	mov	[bp-58h],ax
	or	ax,ax
	jz	4166h

l09BD_4163:
	mov	[0034h],al

l09BD_4166:
	mov	ax,0EBDh
	push	ax
	push	word ptr [bp-2h]
	call	6130h
	pop	bx
	pop	bx
	mov	di,ax
	or	di,di
	jz	418Ah

l09BD_4178:
	lea	ax,[di+3h]
	push	ax
	call	45A9h
	pop	bx
	mov	[bp-58h],ax
	or	ax,ax
	jz	418Ah

l09BD_4187:
	mov	[0D0Ch],ax

l09BD_418A:
	push	si
	call	456Dh
	pop	bx
	or	ax,ax
	jz	4198h

l09BD_4193:
	call	6375h
	jmp	419Dh

l09BD_4198:
	or	byte ptr [0047h],1h

l09BD_419D:
	call	696Bh
	or	si,si
	jge	41BBh

l09BD_41A4:
	inc	byte ptr [bp-56h]
	mov	ax,si
	neg	ax
	mov	si,ax
	cmp	si,0Bh
	jz	41B5h

l09BD_41B2:
	jmp	42ADh

l09BD_41B5:
	call	76B6h
	jmp	42ADh

l09BD_41BB:
	call	6682h
	or	ax,ax
	jz	41C5h

l09BD_41C2:
	mov	si,10h

l09BD_41C5:
	cmp	si,2h
	jnz	41CDh

l09BD_41CA:
	call	6647h

l09BD_41CD:
	cmp	byte ptr [002Fh],3h
	jl	423Dh

l09BD_41D4:
	mov	word ptr [09C2h],295Dh
	call	65F8h
	mov	[002Fh],al
	call	6D7Ch
	mov	[bp-58h],ax
	or	ax,ax
	jz	4203h

l09BD_41EA:
	mov	ax,si
	mov	[0046h],al
	cmp	si,0Bh
	jnz	41FEh

l09BD_41F4:
	call	76B6h
	or	ax,ax
	jle	41FEh

l09BD_41FB:
	jmp	42ADh

l09BD_41FE:
	sub	si,si
	jmp	452Eh

l09BD_4203:
	call	76B6h
	mov	[bp-58h],ax
	or	ax,ax
	jle	4218h

l09BD_420D:
	mov	ax,si
	mov	[0046h],al
	mov	si,0Bh
	jmp	42ADh

l09BD_4218:
	mov	word ptr [11D4h],4h
	or	ax,ax
	jge	422Ah

l09BD_4222:
	mov	ax,11h
	push	ax
	call	229Dh
	pop	bx

l09BD_422A:
	push	si
	call	456Dh
	pop	bx
	or	ax,ax
	jnz	423Dh

l09BD_4233:
	mov	si,3h
	call	6652h
	or	ax,ax
	jz	42ADh

l09BD_423D:
	push	si
	call	456Dh
	pop	bx
	or	ax,ax
	jnz	4252h

l09BD_4246:
	call	6652h
	or	ax,ax
	jz	4252h

l09BD_424D:
	mov	si,2h
	jmp	42ADh

l09BD_4252:
	cmp	byte ptr [bp-4h],0h
	jnz	42ADh

l09BD_4258:
	call	687Eh
	push	dx
	push	ax
	call	6849h
	pop	bx
	pop	bx
	mov	[bp+0FF14h],ax
	mov	[bp+0FF16h],dx
	or	dx,ax
	jnz	4290h

l09BD_426E:
	call	6899h
	push	dx
	push	ax
	call	6849h
	pop	bx
	pop	bx
	mov	[bp+0FF14h],ax
	mov	[bp+0FF16h],dx
	or	dx,ax
	jnz	4290h

l09BD_4284:
	mov	word ptr [bp+0FF14h],0h
	mov	word ptr [bp+0FF16h],9h

l09BD_4290:
	cmp	byte ptr [bp+0FF18h],0h
	jnz	42A9h

l09BD_4297:
	cmp	word ptr [bp+0FF14h],0h
	jz	42A9h

l09BD_429E:
	mov	ax,[bp+0FF14h]
	inc	ax
	mov	[0012h],ax
	mov	[0010h],ax

l09BD_42A9:
	mov	si,[bp+0FF16h]

l09BD_42AD:
	cmp	si,0Bh
	jz	42BCh

l09BD_42B2:
	test	byte ptr [0047h],80h
	jz	42BCh

l09BD_42B9:
	call	698Ch

l09BD_42BC:
	mov	byte ptr [10EEh],0FFh
	mov	ax,si
	dec	ax
	jnz	42C9h

l09BD_42C6:
	jmp	4354h

l09BD_42C9:
	dec	ax
	jnz	42CFh

l09BD_42CC:
	jmp	43D3h

l09BD_42CF:
	dec	ax
	jnz	42D5h

l09BD_42D2:
	jmp	43F4h

l09BD_42D5:
	dec	ax
	jnz	42DBh

l09BD_42D8:
	jmp	444Fh

l09BD_42DB:
	dec	ax
	jnz	42E1h

l09BD_42DE:
	jmp	4409h

l09BD_42E1:
	dec	ax
	jnz	42E7h

l09BD_42E4:
	jmp	4442h

l09BD_42E7:
	dec	ax
	jnz	42EDh

l09BD_42EA:
	jmp	4452h

l09BD_42ED:
	dec	ax
	jnz	42F3h

l09BD_42F0:
	jmp	446Ch

l09BD_42F3:
	dec	ax
	jnz	42F9h

l09BD_42F6:
	jmp	4452h

l09BD_42F9:
	dec	ax
	jnz	42FFh

l09BD_42FC:
	jmp	4489h

l09BD_42FF:
	dec	ax
	jnz	4305h

l09BD_4302:
	jmp	4491h

l09BD_4305:
	dec	ax
	jnz	430Bh

l09BD_4308:
	jmp	4498h

l09BD_430B:
	dec	ax
	jnz	4311h

l09BD_430E:
	jmp	449Fh

l09BD_4311:
	dec	ax
	jnz	4317h

l09BD_4314:
	jmp	44ACh

l09BD_4317:
	dec	ax
	jnz	431Dh

l09BD_431A:
	jmp	44B4h

l09BD_431D:
	dec	ax
	jnz	4323h

l09BD_4320:
	jmp	44C6h

l09BD_4323:
	sub	ax,3h
	jnz	432Bh

l09BD_4328:
	jmp	444Ah

l09BD_432B:
	dec	ax
	jnz	4331h

l09BD_432E:
	jmp	4481h

l09BD_4331:
	sub	ax,10Ah
	jnz	4339h

l09BD_4336:
	jmp	444Fh

l09BD_4339:
	sub	ax,64h
	jnz	4341h

l09BD_433E:
	jmp	43F1h

l09BD_4341:
	sub	ax,171Ah
	jnz	4349h

l09BD_4346:
	jmp	443Fh

l09BD_4349:
	sub	ax,0DADh
	jz	4351h

l09BD_434E:
	jmp	44CDh

l09BD_4351:
	mov	si,1h

l09BD_4354:
	mov	word ptr [bp-5Ah],381h
	cmp	byte ptr [bp-5Eh],0h
	jnz	436Ch

l09BD_435F:
	call	6C54h
	or	ax,ax
	jnz	436Ch

l09BD_4366:
	call	63E0h
	mov	[bp-5Eh],al

l09BD_436C:
	mov	word ptr [11FEh],146h
	mov	word ptr [1200h],40h
	les	bx,[11FEh]
	test	byte ptr es:[bx],80h
	jz	4390h

l09BD_4382:
	cmp	word ptr [0ECAh],500h
	jnc	4390h

l09BD_438A:
	mov	word ptr [0ECAh],500h

l09BD_4390:
	or	byte ptr [0014h],4h
	mov	word ptr [11D4h],5h
	cmp	byte ptr [bp-5Eh],0h
	jnz	43B0h

l09BD_43A1:
	call	6C54h
	or	ax,ax
	jnz	43B0h

l09BD_43A8:
	mov	ax,12h
	push	ax
	call	229Dh
	pop	bx

l09BD_43B0:
	mov	ax,[0ECAh]
	add	ax,[0ECCh]
	mov	[bp-58h],ax
	cmp	ax,[0ECEh]
	jge	43C3h

l09BD_43C0:
	mov	[0ECEh],ax

l09BD_43C3:
	mov	ax,[0ECEh]
	sub	ax,400h
	mov	[00A8h],ax
	inc	byte ptr [11F0h]
	jmp	4504h

l09BD_43D3:
	mov	word ptr [bp-5Ah],8DAh
	call	6652h
	mov	[120Ch],al
	cmp	byte ptr [bp-56h],0h
	jz	43E9h

l09BD_43E4:
	or	byte ptr [120Ch],2h

l09BD_43E9:
	mov	byte ptr [10EFh],1h
	jmp	4504h

l09BD_43F1:
	mov	si,3h

l09BD_43F4:
	mov	word ptr [bp-5Ah],2814h
	mov	byte ptr [10EEh],9h

l09BD_43FE:
	mov	byte ptr [10EFh],1h
	call	69C0h
	jmp	4504h

l09BD_4409:
	mov	word ptr [bp-5Ah],3A7h
	cmp	byte ptr [002Fh],3h
	jl	441Dh

l09BD_4415:
	mov	byte ptr [0036h],80h
	jmp	4390h

l09BD_441D:
	cmp	byte ptr [003Eh],0h
	jnz	4427h

l09BD_4424:
	jmp	4390h

l09BD_4427:
	mov	ax,5Eh
	push	ax
	call	far 0800h:0B12h
	pop	bx
	mov	ax,5Eh
	push	ax
	call	242Eh
	pop	bx
	mov	[0F82h],ax
	jmp	4390h

l09BD_443F:
	mov	si,6h

l09BD_4442:
	mov	word ptr [bp-5Ah],71Ah
	jmp	4504h

l09BD_444A:
	mov	byte ptr [0ED0h],0h

l09BD_444F:
	mov	si,9h

l09BD_4452:
	mov	word ptr [bp-5Ah],8B2h
	cmp	byte ptr [11F0h],0h
	jz	43FEh

l09BD_445E:
	cmp	byte ptr [002Fh],2h
	jnz	43FEh

l09BD_4465:
	call	6699h
	or	ax,ax
	jz	447Ch

l09BD_446C:
	mov	si,8h
	mov	byte ptr [10EEh],0Ah
	mov	word ptr [bp-5Ah],749h
	jmp	4504h

l09BD_447C:
	mov	ax,13h
	jmp	44FFh

l09BD_4481:
	mov	byte ptr [0ED0h],0h
	mov	si,0Ah

l09BD_4489:
	mov	word ptr [bp-5Ah],905h
	jmp	43FEh

l09BD_4491:
	mov	word ptr [bp-5Ah],29ACh
	jmp	4504h

l09BD_4498:
	mov	word ptr [bp-5Ah],679h
	jmp	4504h

l09BD_449F:
	mov	word ptr [bp-5Ah],8ACh
	mov	byte ptr [10EEh],9h
	jmp	43E9h

l09BD_44AC:
	mov	word ptr [bp-5Ah],3D6h
	jmp	4390h

l09BD_44B4:
	mov	word ptr [bp-5Ah],462h
	cmp	byte ptr [002Fh],3h
	jge	44C3h

l09BD_44C0:
	jmp	4390h

l09BD_44C3:
	jmp	4415h

l09BD_44C6:
	mov	word ptr [bp-5Ah],4F7h
	jmp	4504h

l09BD_44CD:
	mov	di,1190h
	mov	byte ptr [di],0h
	cmp	word ptr [bp-5Ch],0h
	jz	44F6h

l09BD_44D9:
	mov	ax,0EC2h
	push	ax
	mov	ax,di
	push	ax
	call	25DEh
	pop	bx
	pop	bx
	mov	ax,14h
	push	ax
	push	word ptr [bp-5Ch]
	mov	ax,1197h
	push	ax
	call	603Ah
	add	sp,6h

l09BD_44F6:
	mov	word ptr [11D4h],6h
	mov	ax,0FFECh

l09BD_44FF:
	push	ax
	call	229Dh
	pop	bx

l09BD_4504:
	cmp	byte ptr [10EEh],0FFh
	jnz	4510h

l09BD_450B:
	mov	ax,si
	mov	[10EEh],al

l09BD_4510:
	mov	ax,si
	mov	[002Eh],al
	push	word ptr [bp-5Ah]
	mov	[bp+0FF14h],ax
	call	6230h
	pop	bx
	cmp	byte ptr [0046h],0h
	jnz	452Eh

l09BD_4527:
	mov	al,[bp+0FF14h]
	mov	[0046h],al

l09BD_452E:
	mov	word ptr [0042h],9FAh
	mov	word ptr [0044h],20h
	and	byte ptr [0047h],0FEh
	mov	al,[0046h]
	cbw
	push	ax
	call	456Dh
	pop	bx
	or	ax,ax
	jnz	4551h

l09BD_454C:
	or	byte ptr [0047h],1h

l09BD_4551:
	mov	ax,si
	mov	[002Eh],al
	cmp	si,0Bh
	jnz	455Eh

l09BD_455B:
	call	7C31h

l09BD_455E:
	cmp	byte ptr [bp-56h],0h
	jnz	4567h

l09BD_4564:
	call	30C4h

l09BD_4567:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_456D: 09BD:456D
;;   Called from:
;;     09BD:418B (in fn09BD_3EBE)
;;     09BD:422B (in fn09BD_3EBE)
;;     09BD:423E (in fn09BD_3EBE)
;;     09BD:4544 (in fn09BD_3EBE)
fn09BD_456D proc
	push	bp
	mov	bp,sp
	cmp	word ptr [bp+4h],1h
	jz	4588h

l09BD_4576:
	cmp	word ptr [bp+4h],5h
	jz	4588h

l09BD_457C:
	cmp	word ptr [bp+4h],0Eh
	jz	4588h

l09BD_4582:
	cmp	word ptr [bp+4h],0Fh
	jnz	458Dh

l09BD_4588:
	mov	ax,1h
	pop	bp
	ret

l09BD_458D:
	sub	ax,ax
	pop	bp
	ret

;; fn09BD_4591: 09BD:4591
;;   Called from:
;;     09BD:45D9 (in fn09BD_45A9)
fn09BD_4591 proc
	push	bp
	mov	bp,sp
	cmp	word ptr [bp+4h],30h
	jl	45A5h

l09BD_459A:
	cmp	word ptr [bp+4h],39h
	jg	45A5h

l09BD_45A0:
	mov	ax,1h
	pop	bp
	ret

l09BD_45A5:
	sub	ax,ax
	pop	bp
	ret

;; fn09BD_45A9: 09BD:45A9
;;   Called from:
;;     09BD:408B (in fn09BD_3EBE)
;;     09BD:40AF (in fn09BD_3EBE)
;;     09BD:40D8 (in fn09BD_3EBE)
;;     09BD:40FA (in fn09BD_3EBE)
;;     09BD:4158 (in fn09BD_3EBE)
;;     09BD:417C (in fn09BD_3EBE)
fn09BD_45A9 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	di
	push	si
	mov	si,[bp+4h]
	sub	di,di
	mov	ax,0ED1h
	push	ax
	lea	ax,[si+1h]
	push	ax
	call	462Bh
	pop	bx
	mov	si,ax
	push	si
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jnz	45E4h

l09BD_45CE:
	push	si
	call	6066h
	pop	bx
	mov	di,ax

l09BD_45D5:
	mov	al,[si]
	cbw
	push	ax
	call	4591h
	pop	bx
	or	ax,ax
	jz	4608h

l09BD_45E1:
	inc	si
	jmp	45D5h

l09BD_45E4:
	inc	si
	inc	si
	jmp	4603h

l09BD_45E8:
	mov	al,[si]
	cbw
	push	ax
	mov	ax,0AB0h
	push	ax
	call	6106h
	pop	bx
	pop	bx
	or	ax,ax
	jz	4608h

l09BD_45F9:
	mov	cl,4h
	shl	di,cl
	sub	ax,0AB0h
	add	di,ax
	inc	si

l09BD_4603:
	cmp	byte ptr [si],0h
	jnz	45E8h

l09BD_4608:
	push	si
	call	462Bh
	pop	bx
	mov	bx,ax
	cmp	byte ptr [bx],4Dh
	jnz	4623h

l09BD_4614:
	test	di,0FFC0h
	jz	461Fh

l09BD_461A:
	mov	di,0FFFFh
	jmp	4623h

l09BD_461F:
	mov	cl,0Ah
	shl	di,cl

l09BD_4623:
	mov	ax,di
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_462B: 09BD:462B
;;   Called from:
;;     09BD:3F6F (in fn09BD_3EBE)
;;     09BD:45BE (in fn09BD_45A9)
;;     09BD:4609 (in fn09BD_45A9)
fn09BD_462B proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,[bp+4h]
	jmp	463Fh

l09BD_4634:
	cmp	byte ptr [si],20h
	jz	463Eh

l09BD_4639:
	cmp	byte ptr [si],9h
	jnz	4644h

l09BD_463E:
	inc	si

l09BD_463F:
	cmp	byte ptr [si],0h
	jnz	4634h

l09BD_4644:
	mov	ax,si
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_464B: 09BD:464B
;;   Called from:
;;     09BD:3F4C (in fn09BD_3EBE)
;;     09BD:3F60 (in fn09BD_3EBE)
;;     09BD:59B1 (in fn09BD_5978)
fn09BD_464B proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	cmp	word ptr [09B8h],0h
	jnz	465Dh

l09BD_4659:
	sub	ax,ax
	jmp	46BFh

l09BD_465D:
	mov	ax,[09B8h]
	mov	word ptr [bp-4h],0h
	mov	[bp-2h],ax

l09BD_4668:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx],0h
	jz	4659h

l09BD_4671:
	mov	si,[bp+4h]
	jmp	4692h

l09BD_4676:
	mov	al,[si]
	les	bx,[bp-4h]
	cmp	es:[bx],al
	jz	468Eh

l09BD_4680:
	mov	bx,[bp-4h]
	inc	word ptr [bp-4h]
	cmp	byte ptr es:[bx],0h
	jz	4668h

l09BD_468C:
	jmp	4680h

l09BD_468E:
	inc	si
	inc	word ptr [bp-4h]

l09BD_4692:
	cmp	byte ptr [si],0h
	jnz	4676h

l09BD_4697:
	mov	word ptr [bp-6h],80h
	mov	si,[bp+6h]

l09BD_469F:
	dec	word ptr [bp-6h]
	cmp	word ptr [bp-6h],0h
	jle	46B9h

l09BD_46A8:
	les	bx,[bp-4h]
	inc	word ptr [bp-4h]
	mov	al,es:[bx]
	inc	si
	mov	[si-1h],al
	or	al,al
	jnz	469Fh

l09BD_46B9:
	mov	byte ptr [si],0h
	mov	ax,[bp+6h]

l09BD_46BF:
	pop	si
	mov	sp,bp
	pop	bp
	ret
09BD:46C4             C8 04 00 00 83 7E 06 00 74 07 81 7E     .....~..t..~
09BD:46D0 06 FF 7F 75 05 C7 46 06 00 08 81 3E CC 0E 00 3C ...u..F....>...<
09BD:46E0 74 06 A1 CC 0E 89 46 06 83 7E 06 00 75 03 E9 8D t.....F..~..u...
09BD:46F0 00 8B 46 06 2B D2 B1 0A E8 99 E0 52 50 E8 80 D9 ..F.+......RP...
09BD:4700 5B 5B 89 46 FC 89 56 FE 6A 0A 8D 46 FC 50 E8 9B [[.F..V.j..F.P..
09BD:4710 1A 8B 4E 04 2B DB 3B DA 7C 0C 7F 04 3B C8 76 06 ..N.+.;.|...;.v.
09BD:4720 6A 06 E8 78 DB 5B 80 3E D8 0E 00 75 51 FE 06 D8 j..x.[.>...uQ...
09BD:4730 0E 83 3E DE 11 5A 72 46 83 7E FE 00 7F 08 7C 3E ..>..ZrF.~....|>
09BD:4740 83 7E FC 28 72 38 83 7E 08 01 1B C0 F7 D8 A8 04 .~.(r8.~........
09BD:4750 75 2C FF 36 32 0C E8 E7 29 5B FF 36 4A 0C E8 DF u,.62...)[.6J...
09BD:4760 29 5B FF 36 3A 0C E8 D7 29 5B B1 04 E8 59 1A A3 )[.6:...)[...Y..
09BD:4770 10 0A 89 16 12 0A 83 FA 01 7C 03 E8 07 2A C9 C3 .........|...*..
09BD:4780 55 8B EC B8 80 FF BA 01 13 8E 46 04 CD 21 73 06 U.........F..!s.
09BD:4790 6A 22 E8 08 DB 5B C9 C3 C8 CE 00 00 57 56 2B C0 j"...[......WV+.
09BD:47A0 89 46 FC 89 46 FA C7 06 7C 09 FF FF 68 B0 00 6A .F..F...|...h..j
09BD:47B0 01 8D 86 38 FF 50 E8 82 E8 83 C4 06 8B 86 54 FF ...8.P........T.
09BD:47C0 8B 96 56 FF A3 F4 11 89 16 F6 11 68 D9 0E 8D 46 ..V........h...F
09BD:47D0 A8 50 E8 5B 19 5B 5B 0B C0 75 10 68 DE 0E 8D 46 .P.[.[[..u.h...F
09BD:47E0 A8 50 E8 4B 19 5B 5B 0B C0 74 10 A1 F4 11 8B 16 .P.K.[[..t......
09BD:47F0 F6 11 A3 DA 11 89 16 DC 11 EB B1 81 06 DA 11 B0 ................
09BD:4800 00 83 16 DC 11 00 FF 36 DC 11 FF 36 DA 11 E8 9F .......6...6....
09BD:4810 17 5B 5B 8B 86 70 FF 89 46 E8 83 7E 06 00 75 07 .[[..p..F..~..u.
09BD:4820 8A 86 74 FF A2 80 09 83 7E 06 00 7D 0A C7 46 06 ..t.....~..}..F.
09BD:4830 00 00 80 26 14 00 F7 F6 86 6C FF 02 74 0A C7 46 ...&.....l..t..F
09BD:4840 06 FF FF 80 0E 14 00 08 F6 86 6C FF 01 75 06 6A ..........l..u.j
09BD:4850 1E E8 49 DA 5B 8B 86 68 FF 09 06 14 00 8B 86 72 ..I.[..h.......r
09BD:4860 FF 89 46 EA 0B C0 75 05 C7 46 EA 80 00 FF B6 6C ..F...u..F.....l
09BD:4870 FF FF B6 44 FF FF B6 42 FF E8 48 FE 83 C4 06 8B ...D...B..H.....
09BD:4880 46 EA 03 46 E8 2D 7F 00 89 46 EC 05 0F 00 C1 E8 F..F.-...F......
09BD:4890 04 50 E8 D1 02 5B 89 46 FC 0B C0 75 06 6A 0A E8 .P...[.F...u.j..
09BD:48A0 FB D9 5B 6A 00 FF 76 EC 6A 00 FF 76 FC E8 BC D5 ..[j..v.j..v....
09BD:48B0 83 C4 08 8B 76 EC 2B 76 EA 56 8B 46 EA 24 F8 03 ....v.+v.V.F.$..
09BD:48C0 46 FA 8B 56 FC 52 50 E8 1F 17 83 C4 06 3B F0 76 F..V.RP......;.v
09BD:48D0 06 6A 0E E8 C7 D9 5B 83 6E EC 08 8B 5E EC 80 E3 .j....[.n...^...
09BD:48E0 F8 03 5E FA 8E 46 FC 26 80 7F 05 00 74 E9 8B 46 ..^..F.&....t..F
09BD:48F0 EA 89 46 FA 8B 46 FA 8B 56 FC 56 57 1E 8D 7E F0 ..F..F..V.VW..~.
09BD:4900 8B F0 16 07 8E DA A5 A5 A5 A5 1F 5F 5E 8B 76 F0 ..........._^.v.
09BD:4910 8A 46 F5 2A E4 89 46 FE 0B C0 75 03 E9 03 01 8B .F.*..F...u.....
09BD:4920 46 F6 80 E4 1F 89 86 36 FF 2B FF 0B F6 74 07 56 F......6.+...t.V
09BD:4930 E8 AA C8 5B 8B F8 F6 46 F7 20 74 02 2B F6 39 BE ...[...F. t.+.9.
09BD:4940 36 FF 76 04 8B BE 36 FF A0 80 09 98 89 46 EE 8B 6.v...6......F..
09BD:4950 8E 46 FF 39 4E FA 75 10 0B C0 75 0C F6 86 6C FF .F.9N.u...u...l.
09BD:4960 04 75 05 C6 06 80 09 01 57 E8 FA 01 5B 89 46 F8 .u......W...[.F.
09BD:4970 0B C0 75 06 6A 06 E8 24 D9 5B 8A 46 EE A2 80 09 ..u.j..$.[.F....
09BD:4980 8B 86 46 FF 39 46 FA 75 07 FF 76 F8 E8 F1 FD 5B ..F.9F.u..v....[
09BD:4990 8B 46 F8 C4 5E FA 26 89 47 06 8B D8 C1 EB 03 03 .F..^.&.G.......
09BD:49A0 1E A0 0A 8E 06 A2 0A 26 C6 07 01 F6 46 F7 40 74 .......&....F.@t
09BD:49B0 04 26 C6 07 03 0B F6 74 35 F7 C6 0F 00 74 01 46 .&.....t5....t.F
09BD:49C0 8D 44 FF 50 8B 4E F8 2B D2 51 52 89 96 32 FF 89 .D.P.N.+.QR..2..
09BD:49D0 8E 34 FF E8 13 16 83 C4 06 6A 01 8D 44 FF 0B 86 .4.......j..D...
09BD:49E0 32 FF 8B 96 34 FF 52 50 E8 FE 15 83 C4 06 83 BE 2...4.RP........
09BD:49F0 36 FF 00 74 18 8B BE 36 FF C1 E7 04 2B FE 74 0D 6..t...6....+.t.
09BD:4A00 6A 00 57 56 FF 76 F8 E8 62 D4 83 C4 08 8B 46 EA j.WV.v..b.....F.
09BD:4A10 39 46 FA 75 06 8B 46 F8 A3 3E 0C FF 76 F8 E8 90 9F.u..F..>..v...
09BD:4A20 27 5B 8B 46 EC 83 46 FA 08 39 46 FA 77 03 E9 C3 '[.F..F..9F.w...
09BD:4A30 FE C7 46 FA 00 00 8B 9E 46 FF 80 E3 F8 03 5E FA ..F.....F.....^.
09BD:4A40 8E 46 FC 26 8B 47 06 C4 5E 08 26 89 47 02 50 E8 .F.&.G..^.&.G.P.
09BD:4A50 2E FD 5B 8B 86 48 FF 2D 0C 00 24 FE C4 5E 08 26 ..[..H.-..$..^.&
09BD:4A60 89 47 0E 8B 9E 4E FF 80 E3 F8 03 5E FA 8E 46 FC .G...N.....^..F.
09BD:4A70 26 8B 47 06 C4 5E 08 26 89 47 22 8B 86 4C FF 26 &.G..^.&.G"..L.&
09BD:4A80 89 47 1E A1 3E 0C 26 89 47 0A 8B 46 F8 26 89 47 .G..>.&.G..F.&.G
09BD:4A90 08 06 53 FF 76 06 E8 F7 E4 83 C4 06 83 7E 06 00 ..S.v........~..
09BD:4AA0 7C 0D E8 38 15 2B C0 A3 DC 11 A3 DA 11 EB 0E A1 |..8.+..........
09BD:4AB0 F4 11 8B 16 F6 11 A3 DA 11 89 16 DC 11 A1 28 0C ..............(.
09BD:4AC0 C4 5E 08 26 89 47 04 26 89 47 06 26 C7 47 26 00 .^.&.G.&.G.&.G&.
09BD:4AD0 02 83 BE 4A FF 00 74 16 8B 86 4A FF 89 46 EC FF ...J..t...J..F..
09BD:4AE0 76 EA 50 FF 76 FC FF 76 FA E8 D7 00 EB 0F FF 76 v.P.v..v.......v
09BD:4AF0 EA FF 76 EC FF 76 FC FF 76 FA E8 8A 01 83 C4 08 ..v..v..v.......
09BD:4B00 FF 76 EA FF 76 EC FF 76 FC FF 76 FA E8 68 00 83 .v..v..v..v..h..
09BD:4B10 C4 08 FF 76 FC E8 63 CF 5B 5E 5F C9 CB          ...v..c.[^_..  

;; fn09BD_4B1D: 09BD:4B1D
;;   Called from:
;;     09BD:72D2 (in fn09BD_7270)
fn09BD_4B1D proc
	enter	8h,0h
	mov	word ptr [bp-4h],4798h
	mov	word ptr [bp-2h],9BDh
	mov	[bp-6h],ds
	cmp	word ptr [0E70h],0h
	jge	4B3Ch

l09BD_4B35:
	push	1190h
	call	5F9Eh
	pop	bx

l09BD_4B3C:
	cmp	word ptr [0E70h],0h
	jge	4B49h

l09BD_4B43:
	push	0F8h
	call	229Dh
	pop	bx

l09BD_4B49:
	mov	ax,[0C24h]
	mov	[bp-2h],ax
	push	ds
	push	word ptr [bp+4h]
	push	0h
	call	dword ptr [bp-4h]
	mov	ax,[bp-6h]
	mov	word ptr [0042h],9FAh
	mov	[0044h],ax
	leave
	ret
09BD:4B66                   55 8B EC B4 48 8B 5E 04 CD 21       U...H.^..!
09BD:4B70 F5 1B DB 23 C3 C9 C3 C8 0E 00 00 56 C1 6E 08 03 ...#.......V.n..
09BD:4B80 FF 36 24 0C E8 89 21 5B 89 46 F6 8B 76 0A C1 EE .6$...![.F..v...
09BD:4B90 03 EB 28 8B DE C1 E3 03 03 5E 04 8E 46 06 26 8A ..(......^..F.&.
09BD:4BA0 47 05 24 18 3C 18 75 12 26 8B 47 06 89 46 F4 8D G.$.<.u.&.G..F..
09BD:4BB0 46 F2 50 6A 09 E8 EA 21 5B 5B 46 39 76 08 77 D3 F.Pj...![[F9v.w.
09BD:4BC0 5E C9 C3 C8 0E 00 00 57 56 8B 46 08 C1 E8 03 89 ^......WV.F.....
09BD:4BD0 46 F4 C1 6E 0A 03 8B 5E F4 C1 E3 03 03 5E 04 8E F..n...^.....^..
09BD:4BE0 46 06 26 8B 47 06 C7 46 FC 00 00 89 46 FE C4 5E F.&.G..F....F..^
09BD:4BF0 FC 83 46 FC 02 26 8B 1F 89 5E F2 80 E3 F8 03 5E ..F..&...^.....^
09BD:4C00 04 8E 46 06 26 8B 77 06 C4 5E FC 83 46 FC 02 26 ..F.&.w..^..F..&
09BD:4C10 8B 3F EB 46 C4 5E FC 83 46 FC 02 26 8B 1F 8B CE .?.F.^..F..&....
09BD:4C20 8E C6 89 5E F6 8C 46 F8 26 8B 07 89 46 FA 3D 80 ...^..F.&...F.=.
09BD:4C30 00 72 14 8B D8 80 E3 F8 03 5E 04 8E 46 06 26 8B .r.......^..F.&.
09BD:4C40 47 06 C4 5E F6 EB 10 8B 5E FA 80 E3 FB C1 EB 02 G..^....^.......
09BD:4C50 8B 87 1E 0C 8B 5E F6 26 89 07 4F 79 B7 F6 46 F2 .....^.&..Oy..F.
09BD:4C60 03 74 8B FF 46 F4 F6 46 F2 02 75 03 E9 67 FF 8B .t..F..F..u..g..
09BD:4C70 5E 08 80 E3 F8 03 5E 04 8E 46 06 26 FF 77 06 E8 ^.....^..F.&.w..
09BD:4C80 F9 CD 5B 5E 5F C9 C3 C8 0C 00 00 57 56 C1 6E 08 ..[^_......WV.n.
09BD:4C90 03 8B 5E 08 C1 E3 03 03 5E 04 8E 46 06 26 8B 47 ..^.....^..F.&.G
09BD:4CA0 06 C7 46 FC 00 00 89 46 FE 26 8B 47 FE C7 46 F8 ..F....F.&.G..F.
09BD:4CB0 00 00 89 46 FA 26 8B 37 46 D1 EE EB 74 8B DE D1 ...F.&.7F...t...
09BD:4CC0 E3 03 5E F8 8E 46 FA 26 8B 3F 81 FF 80 00 72 61 ..^..F.&.?....ra
09BD:4CD0 8B DF 80 E3 F8 03 5E 04 8E 46 06 26 8B 7F 06 8B ......^..F.&....
09BD:4CE0 DE D1 E3 8B C3 03 5E F8 8E 46 FA 26 89 3F 8B D8 ......^..F.&.?..
09BD:4CF0 03 5E FC 8E 46 FE 26 8B 07 8B D7 89 46 F4 89 56 .^..F.&.....F..V
09BD:4D00 F6 8E C7 8B D8 26 8B 3F 81 FF 80 00 72 11 8B DF .....&.?....r...
09BD:4D10 80 E3 F8 03 5E 04 8E 46 06 26 8B 47 06 EB 0C 8B ....^..F.&.G....
09BD:4D20 DF 80 E3 FB C1 EB 02 8B 87 1E 0C C4 5E F4 26 89 ............^.&.
09BD:4D30 07 4E 79 89 FF 76 FA E8 41 CD 5B FF 76 FE E8 3A .Ny..v..A.[.v..:
09BD:4D40 CD 5B 80 3E 2E 00 00 74 03 E9 8D 00 83 3E D6 0E .[.>...t.....>..
09BD:4D50 00 74 03 E9 83 00 8B 46 08 D1 E0 05 0F 00 C1 E8 .t.....F........
09BD:4D60 04 50 E8 01 FE 5B 8B F0 0B F6 74 6D 2B C9 89 0E .P...[....tm+...
09BD:4D70 D4 0E A3 D6 0E 89 4E F8 89 46 FA BE 10 00 EB 11 ......N..F......
09BD:4D80 8B DE D1 E3 8B 87 1E 0C 03 5E F8 8E 46 FA 26 89 .........^..F.&.
09BD:4D90 07 4E 0B F6 7F EA 8B 46 0A 2D 80 00 C4 5E F8 26 .N.....F.-...^.&
09BD:4DA0 89 07 C1 E8 03 8B F8 2B 46 08 F7 D8 48 26 89 47 .......+F...H&.G
09BD:4DB0 02 8B F0 EB 1F 8B DF 03 DE C1 E3 03 03 5E 04 8E .............^..
09BD:4DC0 46 06 26 8B 47 06 8B DE D1 E3 03 5E F8 8E 46 FA F.&.G......^..F.
09BD:4DD0 26 89 07 4E 83 FE 10 7D DC 5E 5F C9 C3 00 C8 0A &..N...}.^_.....
09BD:4DE0 00 00 6A 08 8D 46 F6 50 6A 0A FF 76 04 E8 D1 18 ..j..F.Pj..v....
09BD:4DF0 83 C4 08 68 E4 0E 8D 46 F6 50 E8 60 CB 5B 5B 0B ...h...F.P.`.[[.
09BD:4E00 C0 74 13 C6 06 36 00 80 81 3E CA 0E 40 04 73 06 .t...6...>..@.s.
09BD:4E10 C7 06 CA 0E 40 04 A0 36 00 98 C9 C3             ....@..6....   

;; fn09BD_4E1C: 09BD:4E1C
;;   Called from:
;;     09BD:5169 (in fn09BD_5034)
fn09BD_4E1C proc
	enter	3Eh,0h
	push	30h
	lea	ax,[bp-34h]
	push	ax
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	66C1h
	add	sp,8h
	mov	byte ptr [bp-1Dh],0h
	cmp	byte ptr [0CECh],4h
	jge	4E68h

l09BD_4E3D:
	push	0EEEh
	lea	ax,[bp-22h]
	push	ax
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	4E68h

l09BD_4E4D:
	mov	ax,[bp-8h]
	mov	dx,[bp-6h]
	and	al,0F0h
	sub	dh,dh
	mov	cl,4h
	call	27A0h
	mov	[0098h],ax
	mov	[009Ah],dx
	mov	ax,1h
	leave
	ret

l09BD_4E68:
	push	0Ah
	lea	ax,[bp-3Eh]
	push	ax
	push	0C8h
	push	word ptr [bp+4h]
	call	66C1h
	add	sp,8h
	cmp	word ptr [bp-3Eh],0FF2Eh
	jnz	4E96h

l09BD_4E81:
	cmp	byte ptr [bp-39h],24h
	jnz	4E96h

l09BD_4E87:
	push	word ptr [bp-38h]
	call	672Ch
	pop	bx
	add	[0098h],ax
	adc	[009Ah],dx

l09BD_4E96:
	sub	ax,ax
	leave
	ret

;; fn09BD_4E9A: 09BD:4E9A
;;   Called from:
;;     09BD:5179 (in fn09BD_5034)
fn09BD_4E9A proc
	enter	0Ch,0h
	push	5h
	lea	ax,[bp-8h]
	push	ax
	push	10h
	push	3h
	call	11EDh
	add	sp,8h
	push	0EEEh
	lea	ax,[bp-8h]
	push	ax
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	4F0Eh

l09BD_4EBE:
	push	2h
	lea	ax,[bp-0Ch]
	push	ax
	push	10h
	push	1Eh
	call	11EDh
	add	sp,8h
	push	word ptr [bp-0Ch]
	call	672Ch
	pop	bx
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	mov	ax,[0098h]
	mov	dx,[009Ah]
	cmp	[bp-0Ah],dx
	jc	4F0Eh

l09BD_4EE7:
	ja	4EEEh

l09BD_4EE9:
	cmp	[bp-0Ch],ax
	jbe	4F0Eh

l09BD_4EEE:
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	cmp	[bp-0Ah],dx
	ja	4F0Eh

l09BD_4EFA:
	jc	4F01h

l09BD_4EFC:
	cmp	[bp-0Ch],ax
	jnc	4F0Eh

l09BD_4F01:
	mov	ax,[bp-0Ch]
	mov	dx,[bp-0Ah]
	mov	[0098h],ax
	mov	[009Ah],dx

l09BD_4F0E:
	leave
	ret

;; fn09BD_4F10: 09BD:4F10
;;   Called from:
;;     09BD:5149 (in fn09BD_5034)
fn09BD_4F10 proc
	enter	16h,0h
	push	12h
	lea	ax,[bp-16h]
	push	ax
	push	10h
	push	0h
	call	11EDh
	add	sp,8h
	push	0EF4h
	lea	ax,[bp-16h]
	push	ax
	call	195Dh
	pop	bx
	pop	bx
	or	ax,ax
	jz	4F65h

l09BD_4F34:
	push	4h
	lea	ax,[bp-4h]
	push	ax
	push	10h
	push	32h
	call	11EDh
	add	sp,8h
	mov	ax,[bp-4h]
	sub	ax,[bp-2h]
	add	ah,4h
	sub	dx,dx
	add	ax,1h
	adc	dx,dx
	mov	cl,6h
	call	2794h
	mov	[0098h],ax
	mov	[009Ah],dx
	mov	ax,1h
	leave
	ret

l09BD_4F65:
	sub	ax,ax
	leave
	ret

;; fn09BD_4F69: 09BD:4F69
;;   Called from:
;;     09BD:4FDE (in fn09BD_4FD8)
;;     09BD:5175 (in fn09BD_5034)
fn09BD_4F69 proc
	enter	1Ah,0h
	push	si
	mov	si,22h
	cmp	byte ptr [0CECh],2h
	jnz	4F7Bh

l09BD_4F78:
	mov	si,17h

l09BD_4F7B:
	cmp	byte ptr [0CECh],3h
	jnz	4F8Ch

l09BD_4F82:
	cmp	byte ptr [0CEDh],0h
	jnz	4F8Ch

l09BD_4F89:
	mov	si,28h

l09BD_4F8C:
	mov	byte ptr [bp-0Dh],52h
	lea	ax,[bp-16h]
	push	ax
	lea	cx,[bp-0Eh]
	push	cx
	push	cx
	call	2708h
	add	sp,6h
	mov	ax,[bp-0Ch]
	add	ax,si
	mov	[bp-1Ah],ax
	mov	ax,[bp-16h]
	mov	[bp-18h],ax
	mov	si,28h
	jmp	4FC2h

l09BD_4FB2:
	dec	si
	jz	4FD5h

l09BD_4FB5:
	push	word ptr [bp-1Ah]
	push	dx
	call	word ptr [bp+4h]
	pop	bx
	pop	bx
	or	ax,ax
	jnz	4FD5h

l09BD_4FC2:
	les	bx,[bp-1Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-1Ah],ax
	mov	[bp-18h],dx
	inc	ax
	jnz	4FB2h

l09BD_4FD5:
	pop	si
	leave
	ret

;; fn09BD_4FD8: 09BD:4FD8
;;   Called from:
;;     09BD:511B (in fn09BD_5034)
;;     09BD:6581 (in fn09BD_6538)
fn09BD_4FD8 proc
	call	6C54h
	push	4DDEh
	call	4F69h
	pop	bx
	ret

;; fn09BD_4FE3: 09BD:4FE3
;;   Called from:
;;     09BD:5271 (in fn09BD_5248)
;;     09BD:5288 (in fn09BD_5248)
;;     09BD:5393 (in fn09BD_52D5)
;;     09BD:53A4 (in fn09BD_52D5)
;;     09BD:53F5 (in fn09BD_5666)
;;     09BD:5420 (in fn09BD_5666)
;;     09BD:544C (in fn09BD_5666)
fn09BD_4FE3 proc
	enter	4h,0h
	push	4h
	lea	ax,[bp+4h]
	push	ax
	call	6190h
	cmp	dx,10h
	jg	4FF7h

l09BD_4FF5:
	jl	5030h

l09BD_4FF7:
	push	4h
	push	0F08h
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	1222h
	add	sp,8h
	push	4h
	lea	ax,[bp-4h]
	push	ax
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	11EDh
	add	sp,8h
	mov	ax,[0F08h]
	mov	dx,[0F0Ah]
	cmp	[bp-4h],ax
	jnz	5030h

l09BD_5026:
	cmp	[bp-2h],dx
	jnz	5030h

l09BD_502B:
	mov	ax,1h
	leave
	ret

l09BD_5030:
	sub	ax,ax
	leave
	ret

;; fn09BD_5034: 09BD:5034
;;   Called from:
;;     09BD:5666 (in fn09BD_5666)
fn09BD_5034 proc
	enter	1Ch,0h
	sub	ax,ax
	mov	[00A6h],ax
	mov	[00A4h],ax
	mov	[009Eh],ax
	mov	[009Ch],ax
	mov	[009Ah],ax
	mov	[0098h],ax
	mov	word ptr [00A0h],98h
	mov	[00A2h],ds
	cmp	byte ptr [002Eh],0Bh
	jnz	5092h

l09BD_505D:
	push	word ptr [0ECAh]
	call	672Ch
	pop	bx
	mov	[0098h],ax
	mov	[009Ah],dx
	mov	ax,[0ECCh]
	add	ax,[0ECAh]
	mov	[bp-1Ch],ax
	cmp	ax,[0ECAh]
	jnc	5081h

l09BD_507C:
	mov	word ptr [bp-1Ch],0FF00h

l09BD_5081:
	push	word ptr [bp-1Ch]
	call	672Ch
	pop	bx
	mov	[009Ch],ax
	mov	[009Eh],dx
	jmp	517Ch

l09BD_5092:
	test	byte ptr [0047h],1h
	jnz	50DDh

l09BD_5099:
	push	word ptr [0ECAh]
	call	672Ch
	pop	bx
	mov	[0098h],ax
	mov	[009Ah],dx
	push	word ptr [0ECEh]
	call	672Ch
	pop	bx
	mov	[009Ch],ax
	mov	[009Eh],dx
	call	6C64h
	or	ax,ax
	jnz	50C1h

l09BD_50BE:
	jmp	517Ch

l09BD_50C1:
	mov	ax,[0ECCh]
	mov	[00A8h],ax
	push	ax
	call	672Ch
	pop	bx
	add	ax,[0098h]
	adc	dx,[009Ah]

l09BD_50D4:
	mov	[009Ch],ax
	mov	[009Eh],dx
	leave
	ret

l09BD_50DD:
	mov	byte ptr [bp-0Dh],88h
	lea	ax,[bp-0Eh]
	push	ax
	push	ax
	push	15h
	call	606Ah
	add	sp,6h
	mov	ax,[bp-0Eh]
	mov	[00A8h],ax
	call	6C64h
	or	ax,ax
	jnz	50C1h

l09BD_50FB:
	cmp	word ptr [00A8h],0FC00h
	jc	5107h

l09BD_5103:
	dec	word ptr [00A8h]

l09BD_5107:
	push	word ptr [00A8h]
	call	672Ch
	pop	bx
	add	ax,0h
	adc	dx,1h
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	call	4FD8h
	cmp	word ptr [bp-0Eh],0h
	jz	517Ch

l09BD_5124:
	mov	word ptr [0AA4h],1B20h
	mov	word ptr [0AA6h],1B94h
	mov	word ptr [0098h],0h
	mov	word ptr [009Ah],1h
	mov	ax,[bp-12h]
	mov	dx,[bp-10h]
	mov	[009Ch],ax
	mov	[009Eh],dx
	call	4F10h
	or	ax,ax
	jnz	517Ch

l09BD_5150:
	mov	word ptr [bp-0Eh],3519h
	lea	ax,[bp-1Ah]
	push	ax
	lea	cx,[bp-0Eh]
	push	cx
	push	cx
	call	2708h
	add	sp,6h
	push	0h
	push	word ptr [bp-1Ah]
	call	4E1Ch
	pop	bx
	pop	bx
	or	ax,ax
	jnz	5179h

l09BD_5172:
	push	4E1Ch
	call	4F69h
	pop	bx

l09BD_5179:
	call	4E9Ah

l09BD_517C:
	cmp	word ptr [0ECCh],0h
	jnz	518Dh

l09BD_5183:
	sub	ax,ax
	mov	[009Eh],ax
	mov	[009Ch],ax
	leave
	ret

l09BD_518D:
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	mov	cl,6h
	call	61C8h
	cmp	ax,[0ECEh]
	jbe	51AEh

l09BD_519F:
	push	word ptr [0ECEh]
	call	672Ch
	pop	bx
	mov	[009Ch],ax
	mov	[009Eh],dx

l09BD_51AE:
	push	word ptr [0ECCh]
	call	672Ch
	pop	bx
	add	ax,[0098h]
	adc	dx,[009Ah]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	ax,[0098h]
	mov	dx,[009Ah]
	mov	cl,6h
	call	61C8h
	cmp	ax,[0ECAh]
	jnc	5217h

l09BD_51D6:
	push	word ptr [0ECAh]
	call	672Ch
	pop	bx
	mov	[0098h],ax
	mov	[009Ah],dx
	push	word ptr [0ECCh]
	call	672Ch
	pop	bx
	add	ax,[0098h]
	adc	dx,[009Ah]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	cmp	[bp-10h],dx
	ja	5246h

l09BD_5207:
	jc	520Eh

l09BD_5209:
	cmp	[bp-12h],ax
	jnc	5246h

l09BD_520E:
	mov	ax,[bp-12h]
	mov	dx,[bp-10h]
	jmp	50D4h

l09BD_5217:
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	cmp	[bp-10h],dx
	ja	5246h

l09BD_5223:
	jc	522Ah

l09BD_5225:
	cmp	[bp-12h],ax
	jnc	5246h

l09BD_522A:
	push	word ptr [0ECCh]
	call	672Ch
	pop	bx
	mov	cx,[009Ch]
	mov	bx,[009Eh]
	sub	cx,ax
	sbb	bx,dx
	mov	[0098h],cx
	mov	[009Ah],bx

l09BD_5246:
	leave
	ret

;; fn09BD_5248: 09BD:5248
;;   Called from:
;;     09BD:5493 (in fn09BD_5666)
fn09BD_5248 proc
	enter	4h,0h
	test	byte ptr [0047h],2h
	jz	52CBh

l09BD_5253:
	mov	word ptr [bp-4h],0A000h
	mov	word ptr [bp-2h],0Fh

l09BD_525D:
	cmp	word ptr [bp-2h],0Fh
	jg	52B4h

l09BD_5263:
	jl	526Bh

l09BD_5265:
	cmp	word ptr [bp-4h],0FFh
	jnc	52B4h

l09BD_526B:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	52B4h

l09BD_527A:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	add	ax,3FFh
	adc	dx,0h
	push	dx
	push	ax
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	52B4h

l09BD_5291:
	push	4000h
	push	0h
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	cl,4h
	call	2794h
	push	dx
	push	ax
	call	1222h
	add	sp,8h
	add	word ptr [bp-4h],400h
	adc	word ptr [bp-2h],0h
	jmp	525Dh

l09BD_52B4:
	mov	ax,[bp-4h]
	add	ah,60h
	mov	bx,[bp+4h]
	mov	[bx],ax
	or	ax,ax
	jz	52CBh

l09BD_52C3:
	mov	ax,0A000h
	mov	dx,0Fh
	leave
	ret

l09BD_52CB:
	and	byte ptr [0047h],0FDh
	sub	ax,ax
	cwd
	leave
	ret

;; fn09BD_52D5: 09BD:52D5
;;   Called from:
;;     09BD:5481 (in fn09BD_5666)
fn09BD_52D5 proc
	enter	0Ah,0h
	push	di
	push	si
	mov	word ptr [bp-4h],0FFE0h
	mov	word ptr [bp-2h],0F000h
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	cmp	dx,1h
	jg	5303h

l09BD_52F7:
	jge	5303h

l09BD_52F9:
	mov	word ptr [bp-8h],0h
	mov	word ptr [bp-6h],1h

l09BD_5303:
	mov	ax,[0F0Ch]
	mov	dx,[0F0Eh]
	les	bx,[bp-4h]
	cmp	es:[bx+0Ah],ax
	jnz	5343h

l09BD_5313:
	cmp	es:[bx+0Ch],dx
	jnz	5343h

l09BD_5319:
	mov	ax,[0F11h]
	cmp	es:[bx+0Eh],ax
	jnz	5343h

l09BD_5322:
	cmp	word ptr [0ECEh],3E00h
	jc	5343h

l09BD_532A:
	mov	ax,[bp-8h]
	mov	dx,[bp-6h]
	sub	ax,[0098h]
	sbb	dx,[009Ah]
	mov	cl,6h
	call	61C8h
	cmp	ax,[0ECCh]
	jc	5348h

l09BD_5343:
	sub	ax,ax
	cwd
	jmp	53C2h

l09BD_5348:
	les	bx,[bp-4h]
	mov	ax,es:[bx]
	mov	[bp-4h],ax
	mov	[11ECh],ax
	mov	bx,ax
	cmp	word ptr es:[bx],0FFh
	jz	5343h

l09BD_535C:
	mov	ax,es:[bx+4h]
	cmp	es:[bx+2h],ax
	jc	5343h

l09BD_5366:
	cmp	ax,es:[bx+6h]
	jnc	5343h

l09BD_536C:
	mov	[bp-0Ah],ax
	mov	bx,[bp+4h]
	mov	[bx],ax
	cmp	ax,1000h
	jc	5343h

l09BD_5379:
	mov	bx,[bp-4h]
	mov	ax,es:[bx+6h]
	mov	dx,0Fh
	mov	cx,ax
	mov	bx,dx
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	mov	si,cx
	mov	di,bx
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	5343h

l09BD_539C:
	sub	si,[bp-0Ah]
	sbb	di,0h
	push	di
	push	si
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	5343h

l09BD_53AD:
	push	word ptr [bp-0Ah]
	call	1D06h
	pop	bx
	or	ax,ax
	jz	5343h

l09BD_53B8:
	les	bx,[bp-4h]
	mov	ax,es:[bx+6h]
	mov	dx,0Fh

l09BD_53C2:
	pop	si
	pop	di
	leave
	ret

l09BD_53C6:
	enter	28h,0h
	push	di
	push	si
	mov	ax,[0098h]
	mov	dx,[009Ah]
	cmp	[009Eh],dx
	jnc	53DCh

l09BD_53D9:
	jmp	5462h

l09BD_53DC:
	ja	53E4h

l09BD_53DE:
	cmp	[009Ch],ax
	jbe	53EBh

l09BD_53E4:
	cmp	byte ptr [002Eh],0Bh
	jnz	53EDh

l09BD_53EB:
	jmp	5462h

l09BD_53ED:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	5455h

l09BD_53FE:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	add	ax,3FFh
	adc	dx,0h
	mov	[bp-1Ah],ax
	mov	[bp-18h],dx
	cmp	dx,[009Eh]
	ja	543Dh

l09BD_5416:
	jc	541Eh

l09BD_5418:
	cmp	ax,[009Ch]
	jnc	543Dh

l09BD_541E:
	push	dx
	push	ax
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jz	5455h

l09BD_5429:
	mov	ax,[bp-1Ah]
	mov	dx,[bp-18h]
	add	ax,1h
	adc	dx,0h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	53FEh

l09BD_543D:
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	4FE3h
	pop	bx
	pop	bx
	or	ax,ax
	jnz	5462h

l09BD_5455:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	[009Ch],ax
	mov	[009Eh],dx

l09BD_5462:
	sub	ax,ax
	mov	[00A6h],ax
	mov	[00A4h],ax
	mov	[bp-10h],ax
	mov	[bp-12h],ax
	mov	[bp-18h],ax
	mov	[bp-1Ah],ax
	cmp	byte ptr [002Eh],3h
	jnz	548Fh

l09BD_547D:
	lea	ax,[bp-6h]
	push	ax
	call	52D5h
	pop	bx
	mov	[bp-1Ah],ax
	mov	[bp-18h],dx
	or	dx,ax
	jnz	54A1h

l09BD_548F:
	lea	ax,[bp-6h]
	push	ax
	call	5248h
	pop	bx
	mov	[bp-1Ah],ax
	mov	[bp-18h],dx
	or	dx,ax
	jz	54D8h

l09BD_54A1:
	mov	ax,[0098h]
	mov	dx,[009Ah]
	cmp	[009Eh],dx
	ja	54D8h

l09BD_54AE:
	jc	54B6h

l09BD_54B0:
	cmp	[009Ch],ax
	ja	54D8h

l09BD_54B6:
	mov	ax,[bp-1Ah]
	mov	dx,[bp-18h]
	mov	[0098h],ax
	mov	[009Ah],dx
	add	ax,[bp-6h]
	adc	dx,0h
	mov	[009Ch],ax
	mov	[009Eh],dx
	sub	ax,ax
	mov	[bp-18h],ax
	mov	[bp-1Ah],ax

l09BD_54D8:
	mov	ax,[0098h]
	mov	dx,[009Ah]
	cmp	[009Eh],dx
	jnc	54E8h

l09BD_54E5:
	jmp	55F4h

l09BD_54E8:
	ja	54F3h

l09BD_54EA:
	cmp	[009Ch],ax
	ja	54F3h

l09BD_54F0:
	jmp	55F4h

l09BD_54F3:
	add	ax,1h
	adc	dx,0h
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	word ptr [11D4h],9h
	cmp	byte ptr [002Eh],0Bh
	jnz	554Ch

l09BD_5512:
	push	dx
	push	ax
	call	7A57h
	pop	bx
	pop	bx
	or	ax,ax
	jnz	5523h

l09BD_551D:
	push	1Bh
	call	229Dh
	pop	bx

l09BD_5523:
	test	byte ptr [0A16h],2h
	jz	554Ch

l09BD_552A:
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	7A57h
	pop	bx
	pop	bx
	mov	ax,[00ACh]
	mov	dx,[00AEh]
	mov	[009Ch],ax
	mov	[009Eh],dx

l09BD_554C:
	push	10h
	lea	ax,[bp-16h]
	push	ax
	mov	ax,[0098h]
	mov	dx,[009Ah]
	mov	cl,4h
	call	2794h
	push	dx
	push	ax
	call	1222h
	add	sp,8h
	mov	ax,[009Ch]
	mov	dx,[009Eh]
	sub	ax,[bp-16h]
	sbb	dx,[bp-14h]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	[00A4h],ax
	mov	[00A6h],dx
	mov	ax,[bp-1Ah]
	mov	dx,[bp-18h]
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	push	10h
	lea	cx,[bp-16h]
	push	cx
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	cl,4h
	call	2794h
	push	dx
	push	ax
	call	1222h
	add	sp,8h
	mov	ax,[bp-18h]
	or	ax,[bp-1Ah]
	jz	55F4h

l09BD_55AD:
	sub	ax,ax
	mov	[bp-14h],ax
	mov	[bp-16h],ax
	mov	ax,[bp-6h]
	sub	dx,dx
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	add	[00A4h],ax
	adc	[00A6h],dx
	push	10h
	lea	ax,[bp-16h]
	push	ax
	mov	ax,[bp-1Ah]
	mov	dx,[bp-18h]
	mov	cl,4h
	call	2794h
	push	dx
	push	ax
	call	1222h
	add	sp,8h
	mov	ax,[bp-1Ah]
	mov	dx,[bp-18h]
	add	ax,[bp-12h]
	adc	dx,[bp-10h]
	mov	[009Ch],ax
	mov	[009Eh],dx

l09BD_55F4:
	test	byte ptr [0047h],80h
	jz	5648h

l09BD_55FB:
	mov	byte ptr [0A16h],1h
	mov	word ptr [bp-28h],0BFDEh
	mov	word ptr [bp-26h],4h
	mov	word ptr [bp-24h],1h
	cmp	word ptr [0ADCh],0h
	jnz	561Dh

l09BD_5616:
	cmp	byte ptr [002Eh],0Bh
	jnz	5622h

l09BD_561D:
	mov	word ptr [bp-24h],0h

l09BD_5622:
	lea	ax,[bp-28h]
	push	ax
	push	ax
	push	15h
	call	606Ah
	add	sp,6h
	mov	ax,[bp-22h]
	mov	dx,[bp-24h]
	mov	[00A0h],ax
	mov	[00A2h],dx
	mov	di,ax
	mov	si,98h
	mov	es,dx
	mov	cx,0Ch

l09BD_5646:
	rep movsw

l09BD_5648:
	cmp	byte ptr [002Eh],0Bh
	jz	5662h

l09BD_564F:
	mov	ax,[00A4h]
	mov	dx,[00A6h]
	mov	cl,4h
	call	2794h
	mov	[0AA8h],ax
	mov	[0AAAh],dx

l09BD_5662:
	pop	si
	pop	di
	leave
	ret

;; fn09BD_5666: 09BD:5666
;;   Called from:
;;     09BD:658D (in fn09BD_6586)
fn09BD_5666 proc
	call	5034h
	jmp	53C6h
09BD:566C                                     C8 0A 00 00             ....
09BD:5670 57 56 FF 36 0E 12 E8 B3 10 5B C4 1E A0 00 26 8B WV.6.....[....&.
09BD:5680 4F 0C 26 8B 77 0E 83 C1 01 83 D6 00 3B F2 7F 0C O.&.w.......;...
09BD:5690 7C 04 3B C8 73 06 6A 28 E8 02 CC 5B E8 FB C2 E8 |.;.s.j(...[....
09BD:56A0 CA AA FF 36 7C 09 E8 34 BB 5B 89 46 FE D1 E0 50 ...6|..4.[.F...P
09BD:56B0 E8 2A BB 5B 89 46 F6 8B 46 FE 03 46 F6 50 80 3E .*.[.F..F..F.P.>
09BD:56C0 81 09 00 74 05 B8 41 39 EB 03 B8 94 38 FF D0 5B ...t..A9....8..[
09BD:56D0 B1 04 E8 BF D0 A3 8E 09 89 16 90 09 C7 06 D4 11 ................
09BD:56E0 0B 00 8B C2 0B 06 8E 09 75 06 6A 0A E8 AE CB 5B ........u.j....[
09BD:56F0 C7 06 D4 11 0A 00 C1 66 F6 04 8B 46 F6 48 A3 10 .......f...F.H..
09BD:5700 09 8B 46 FE 2B D2 B1 04 E8 89 D0 03 06 8E 09 13 ..F.+...........
09BD:5710 16 90 09 8B DA A3 12 09 88 1E 14 09 8B C2 8A C4 ................
09BD:5720 98 8A E0 2A C0 A3 16 09 A1 7C 09 A3 38 09 A3 28 ...*.....|..8..(
09BD:5730 09 8B 0E 8E 09 89 0E 3A 09 89 0E 2A 09 8A 0E 90 .......:...*....
09BD:5740 09 88 0E 3C 09 88 0E 2C 09 A0 91 09 98 8A E0 2A ...<...,.......*
09BD:5750 C0 A3 3E 09 A3 2E 09 B0 92 A2 15 09 A2 3D 09 FF ..>..........=..
09BD:5760 36 7C 09 6A 00 6A 78 E8 77 0F 83 C4 06 A1 C8 08 6|.j.jx.w.......
09BD:5770 40 50 68 C0 08 FF 36 90 09 FF 36 8E 09 E8 A2 BA @Ph...6...6.....
09BD:5780 83 C4 08 68 FF 00 FF 36 EA 0C 6A 05 E8 61 C5 83 ...h...6..j..a..
09BD:5790 C4 06 68 FF 7F FF 36 B8 09 6A 06 E8 52 C5 83 C4 ..h...6..j..R...
09BD:57A0 06 6A 08 68 38 09 A1 8E 09 8B 16 90 09 05 08 00 .j.h8...........
09BD:57B0 83 D2 00 52 50 E8 6A BA 83 C4 08 B8 C8 08 8B F8 ...RP.j.........
09BD:57C0 BE 38 09 1E 07 A5 A5 A5 A5 A1 8E 09 8B 16 90 09 .8..............
09BD:57D0 A3 76 09 89 16 78 09 A1 7C 09 A3 74 09 FF 76 F6 .v...x..|..t..v.
09BD:57E0 6A 00 6A 50 E8 FA 0E 83 C4 06 E8 C6 D7 B8 1C 00 j.jP............
09BD:57F0 89 46 FC 50 E8 BA E3 5B A3 54 0F 0B C0 75 06 6A .F.P...[.T...u.j
09BD:5800 0B E8 99 CA 5B A1 54 0F 05 08 00 C1 E0 03 A3 9C ....[.T.........
09BD:5810 0A 05 08 00 A3 14 0C EB 13 6A FF 68 00 E0 8B 46 .........j.h...F
09BD:5820 FC 03 06 54 0F 50 E8 C7 C4 83 C4 06 FF 4E FC 79 ...T.P.......N.y
09BD:5830 E8 C1 26 54 0F 03 80 3E 2F 00 03 7C 31 B8 03 00 ..&T...>/..|1...
09BD:5840 89 46 FC 50 E8 6A E3 5B A3 87 0A 0B C0 74 1F EB .F.P.j.[.....t..
09BD:5850 13 6A FF 68 00 D0 8B 46 FC 03 06 87 0A 50 E8 8F .j.h...F.....P..
09BD:5860 C4 83 C4 06 FF 4E FC 79 E8 C1 26 87 0A 03 E8 DA .....N.y..&.....
09BD:5870 1D F6 06 47 00 80 74 16 A1 98 00 8B 16 9A 00 39 ...G..t........9
09BD:5880 06 AC 00 75 09 39 16 AE 00 75 03 E8 38 FB 80 3E ...u.9...u..8..>
09BD:5890 2E 00 0B 75 33 6A 03 E8 17 E3 5B 89 46 FC 0B C0 ...u3j....[.F...
09BD:58A0 75 06 6A 0C E8 F6 C9 5B 6A 18 68 40 09 8B 46 FC u.j....[j.h@..F.
09BD:58B0 C1 E0 03 A3 70 0D 2B D2 03 06 8E 09 13 16 90 09 ....p.+.........
09BD:58C0 52 50 E8 5D B9 83 C4 08 5E 5F C9 C3 C8 14 00 00 RP.]....^_......
09BD:58D0 83 3E 12 0A 01 7C 03 E9 9C 00 2B C0 89 46 F0 89 .>...|....+..F..
09BD:58E0 46 EE F6 06 47 00 80 74 27 A1 F4 0D A3 AA 00 C7 F...G..t'.......
09BD:58F0 46 F2 DE BF C7 46 F4 02 00 2B C0 89 46 F6 89 46 F....F...+..F..F
09BD:5900 F8 8D 46 F2 50 50 6A 15 E8 5F 07 83 C4 06 C9 C3 ..F.PPj.._......
09BD:5910 8B 46 F0 0B 46 EE 75 46 E8 FE C5 89 46 EC E8 69 .F..F.uF....F..i
09BD:5920 C0 8B 46 EC C1 E8 04 6A 00 50 E8 30 C5 5B 5B 89 ..F....j.P.0.[[.
09BD:5930 46 EE 89 56 F0 0B D0 74 22 68 92 00 6A FF FF 76 F..V...t"h..j..v
09BD:5940 F0 50 6A 60 E8 2A C5 83 C4 0A FF 76 EC 6A 00 6A .Pj`.*.....v.j.j
09BD:5950 60 6A 00 6A 70 E8 90 07 83 C4 0A E8 63 B8 8B 46 `j.jp.......c..F
09BD:5960 F0 0B 46 EE 74 10 8B 46 EE 8B 56 F0 A3 10 0A 89 ..F.t..F..V.....
09BD:5970 16 12 0A E8 AD C5 C9 C3                         ........       

;; fn09BD_5978: 09BD:5978
;;   Called from:
;;     09BD:2E6C (in fn09BD_2D88)
;;     09BD:2E84 (in fn09BD_2D88)
fn09BD_5978 proc
	push	bp
	mov	bp,sp
	sub	sp,10Ah
	mov	ax,[0E70h]
	mov	[bp+0FEF8h],ax
	cmp	byte ptr [0F21h],0h
	jg	5994h

l09BD_598D:
	cmp	byte ptr [0CECh],3h
	jge	5997h

l09BD_5994:
	jmp	5AB8h

l09BD_5997:
	call	68CCh
	mov	[bp+0FEFAh],ax
	call	2D81h
	mov	[0E70h],ax
	or	ax,ax
	jge	59C3h

l09BD_59A8:
	lea	ax,[bp+0FF00h]
	push	ax
	mov	cx,0F14h
	push	cx
	call	464Bh
	pop	bx
	pop	bx
	or	ax,ax
	jz	59C3h

l09BD_59BA:
	lea	ax,[bp+0FF00h]
	push	ax
	call	5F9Eh
	pop	bx

l09BD_59C3:
	cmp	word ptr [0E70h],0h
	jge	5A2Eh

l09BD_59CA:
	mov	ax,[bp+0FEF8h]
	mov	[0E70h],ax
	call	5FDDh
	mov	word ptr [bp+0FEF8h],0FFFFh
	mov	ax,1190h
	push	ax
	call	5F9Eh
	pop	bx
	mov	ax,1Ch
	push	ax
	lea	ax,[bp+0FEFCh]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	lea	ax,[bp+0FEFCh]
	push	ax
	call	5AEFh
	pop	bx
	push	dx
	push	ax
	call	5FB0h
	pop	bx
	pop	bx
	mov	byte ptr [bp+0FEFCh],0h
	mov	ax,6h
	push	ax
	lea	ax,[bp+0FEFCh]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	cmp	byte ptr [bp+0FEFCh],4Dh
	jnz	5A21h

l09BD_5A1A:
	cmp	byte ptr [bp+0FEFDh],46h
	jz	5A2Eh

l09BD_5A21:
	mov	ax,[0E70h]
	mov	[bp+0FEF8h],ax
	mov	word ptr [0E70h],0FFFFh

l09BD_5A2E:
	cmp	word ptr [0E70h],0h
	jge	5A61h

l09BD_5A35:
	mov	ax,1190h
	push	ax
	lea	cx,[bp+0FF00h]
	push	cx
	call	25DEh
	pop	bx
	pop	bx
	mov	ax,0F1Ch
	push	ax
	call	18A4h
	pop	bx
	mov	ax,1190h
	push	ax
	call	5F9Eh
	pop	bx
	lea	ax,[bp+0FF00h]
	push	ax
	mov	ax,1190h
	push	ax
	call	25DEh
	pop	bx
	pop	bx

l09BD_5A61:
	cmp	word ptr [0E70h],0h
	jl	5AA7h

l09BD_5A68:
	lea	ax,[bp+0FEFCh]
	mov	[1188h],ax
	sub	ax,ax
	mov	[bp+0FEFEh],ax
	mov	[bp+0FEF6h],ax
	mov	ax,1h
	push	ax
	lea	ax,[bp+0FEF6h]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	cmp	word ptr [bp+0FEF6h],4Dh
	jnz	5A93h

l09BD_5A8E:
	call	5DB8h
	jmp	5AA2h

l09BD_5A93:
	push	word ptr [bp+0FEFAh]
	call	5BC1h
	pop	bx
	or	ax,ax
	jz	5AA7h

l09BD_5A9F:
	call	5C71h

l09BD_5AA2:
	mov	byte ptr [0F21h],1h

l09BD_5AA7:
	cmp	word ptr [bp+0FEF8h],0h
	jl	5AB8h

l09BD_5AAE:
	call	5FDDh
	mov	ax,[bp+0FEF8h]
	mov	[0E70h],ax

l09BD_5AB8:
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5ABC: 09BD:5ABC
;;   Called from:
;;     09BD:5B43 (in fn09BD_5B37)
;;     09BD:5B7C (in fn09BD_5B37)
;;     09BD:5B9F (in fn09BD_5B91)
;;     09BD:5BC9 (in fn09BD_5BC1)
;;     09BD:5BE3 (in fn09BD_5BC1)
;;     09BD:5C24 (in fn09BD_5BC1)
;;     09BD:5C58 (in fn09BD_5BC1)
;;     09BD:5C7F (in fn09BD_5C71)
;;     09BD:5D1C (in fn09BD_5C71)
;;     09BD:5D48 (in fn09BD_5C71)
fn09BD_5ABC proc
	push	si
	mov	si,[1188h]
	inc	word ptr [si]
	mov	ax,[si]
	cmp	[si+2h],ax
	ja	5AE7h

l09BD_5ACA:
	mov	ax,100h
	push	ax
	lea	ax,[si+4h]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	mov	[si+2h],ax
	or	ax,ax
	jg	5AE3h

l09BD_5ADE:
	mov	ax,0FFFFh
	pop	si
	ret

l09BD_5AE3:
	mov	word ptr [si],0h

l09BD_5AE7:
	mov	bx,[si]
	mov	al,[bx+si+4h]
	cbw
	pop	si
	ret

;; fn09BD_5AEF: 09BD:5AEF
;;   Called from:
;;     09BD:59F5 (in fn09BD_5978)
fn09BD_5AEF proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	bx,[bp+4h]
	mov	ax,[bx+4h]
	sub	dx,dx
	mov	cl,9h
	call	2794h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	word ptr [bp-6h],0h
	mov	bx,[bp+4h]
	cmp	word ptr [bx+2h],0h
	jz	5B2Dh

l09BD_5B16:
	cmp	byte ptr [bx],4Dh
	jnz	5B20h

l09BD_5B1B:
	mov	word ptr [bp-6h],200h

l09BD_5B20:
	mov	ax,[bx+2h]
	sub	ax,[bp-6h]
	cwd
	add	[bp-4h],ax
	adc	[bp-2h],dx

l09BD_5B2D:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5B37: 09BD:5B37
;;   Called from:
;;     09BD:5BF7 (in fn09BD_5BC1)
;;     09BD:5CC1 (in fn09BD_5C71)
fn09BD_5B37 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h

l09BD_5B43:
	call	5ABCh
	mov	si,ax
	cmp	si,0Ah
	jnz	5B52h

l09BD_5B4D:
	mov	ax,0FFFEh
	jmp	5B8Ch

l09BD_5B52:
	cmp	si,2Ah
	jnz	5B5Ch

l09BD_5B57:
	mov	ax,0FFFDh
	jmp	5B8Ch

l09BD_5B5C:
	cmp	si,40h
	jnz	5B66h

l09BD_5B61:
	mov	ax,0FFFCh
	jmp	5B8Ch

l09BD_5B66:
	lea	ax,[si-30h]
	cmp	ax,9h
	ja	5B43h

l09BD_5B6E:
	mov	ax,0Ah
	imul	word ptr [bp-2h]
	add	ax,si
	sub	ax,30h
	mov	[bp-2h],ax
	call	5ABCh
	mov	si,ax
	lea	ax,[si-30h]
	cmp	ax,9h
	jbe	5B6Eh

l09BD_5B89:
	mov	ax,[bp-2h]

l09BD_5B8C:
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5B91: 09BD:5B91
;;   Called from:
;;     09BD:5BEF (in fn09BD_5BC1)
;;     09BD:5CAF (in fn09BD_5C71)
;;     09BD:5CD2 (in fn09BD_5C71)
;;     09BD:5CF6 (in fn09BD_5C71)
fn09BD_5B91 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	jmp	5BB2h

l09BD_5B99:
	mov	[bp-2h],bx
	inc	word ptr [bp+4h]
	call	5ABCh
	mov	bx,[bp-2h]
	mov	cx,ax
	mov	al,[bx]
	cbw
	cmp	cx,ax
	jz	5BB2h

l09BD_5BAE:
	sub	ax,ax
	jmp	5BBDh

l09BD_5BB2:
	mov	bx,[bp+4h]
	cmp	byte ptr [bx],0h
	jnz	5B99h

l09BD_5BBA:
	mov	ax,1h

l09BD_5BBD:
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5BC1: 09BD:5BC1
;;   Called from:
;;     09BD:5A97 (in fn09BD_5978)
fn09BD_5BC1 proc
	push	bp
	mov	bp,sp
	sub	sp,42h
	push	di
	push	si

l09BD_5BC9:
	call	5ABCh
	inc	ax
	jz	5C10h

l09BD_5BCF:
	sub	ax,3Ch
	jnz	5BD7h

l09BD_5BD4:
	jmp	5C58h

l09BD_5BD7:
	sub	ax,0Ah
	jz	5BE3h

l09BD_5BDC:
	sub	ax,0Dh

l09BD_5BDF:
	jz	5BEBh

l09BD_5BE1:
	jmp	5BC9h

l09BD_5BE3:
	call	5ABCh
	cmp	ax,52h
	jmp	5BDFh

l09BD_5BEB:
	mov	ax,0F24h
	push	ax
	call	5B91h
	pop	bx
	or	ax,ax
	jz	5BC9h

l09BD_5BF7:
	call	5B37h
	mov	si,ax
	cmp	si,[bp+4h]
	jz	5C06h

l09BD_5C01:
	cmp	si,0FDh
	jnz	5C0Bh

l09BD_5C06:
	mov	ax,1h
	jmp	5C6Bh

l09BD_5C0B:
	cmp	si,0FFh
	jnz	5C14h

l09BD_5C10:
	sub	ax,ax
	jmp	5C6Bh

l09BD_5C14:
	cmp	si,3Bh
	jz	5C58h

l09BD_5C19:
	cmp	si,0FCh
	jnz	5C50h

l09BD_5C1E:
	lea	di,[bp-42h]
	jmp	5C24h

l09BD_5C23:
	inc	di

l09BD_5C24:
	call	5ABCh
	mov	[di],al
	cmp	al,20h
	jg	5C23h

l09BD_5C2D:
	call	5FDDh
	mov	bx,[1188h]
	mov	word ptr [bx+2h],0h
	mov	byte ptr [di],0h
	lea	ax,[bp-42h]
	push	ax
	call	5F9Eh
	pop	bx
	cmp	word ptr [0E70h],0h
	jl	5C4Eh

l09BD_5C4B:
	jmp	5BC9h

l09BD_5C4E:
	jmp	5C10h

l09BD_5C50:
	cmp	si,0FEh
	jnz	5BF7h

l09BD_5C55:
	jmp	5BC9h

l09BD_5C58:
	call	5ABCh
	mov	si,ax
	cmp	si,0Ah
	jnz	5C65h

l09BD_5C62:
	jmp	5BC9h

l09BD_5C65:
	or	si,si
	jge	5C58h

l09BD_5C69:
	jmp	5C10h

l09BD_5C6B:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5C71: 09BD:5C71
;;   Called from:
;;     09BD:5A9F (in fn09BD_5978)
fn09BD_5C71 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	byte ptr [bp-2h],0h
	mov	si,15E8h

l09BD_5C7F:
	call	5ABCh
	mov	[bp-4h],ax
	inc	ax
	jz	5CFEh

l09BD_5C88:
	sub	ax,23h
	jnz	5C90h

l09BD_5C8D:
	jmp	5D11h

l09BD_5C90:
	sub	ax,5h
	jz	5D11h

l09BD_5C95:
	sub	ax,14h
	jnz	5C9Dh

l09BD_5C9A:
	jmp	5D48h

l09BD_5C9D:
	sub	ax,8h
	jz	5CCEh

l09BD_5CA2:
	dec	ax
	dec	ax
	jz	5CF2h

l09BD_5CA6:
	sub	ax,8h
	jnz	5C7Fh

l09BD_5CAB:
	mov	ax,0F29h
	push	ax
	call	5B91h
	pop	bx
	or	ax,ax
	jz	5C7Fh

l09BD_5CB7:
	cmp	byte ptr [bp-2h],0h
	jz	5CC1h

l09BD_5CBD:
	mov	byte ptr [si],0h
	inc	si

l09BD_5CC1:
	call	5B37h
	mov	[si],ax
	inc	si
	inc	si
	mov	byte ptr [bp-2h],1h
	jmp	5C7Fh

l09BD_5CCE:
	mov	ax,0F30h
	push	ax
	call	5B91h
	pop	bx
	or	ax,ax
	jz	5C7Fh

l09BD_5CDA:
	cmp	byte ptr [bp-2h],0h
	jnz	5CE1h

l09BD_5CE0:
	dec	si

l09BD_5CE1:
	mov	byte ptr [si],0Dh
	inc	si
	mov	byte ptr [si],0Ah
	sub	al,al
	mov	[bp-2h],al
	inc	si
	mov	[si],al
	jmp	5D24h

l09BD_5CF2:
	mov	ax,0F38h
	push	ax
	call	5B91h
	pop	bx
	or	ax,ax
	jz	5C7Fh

l09BD_5CFE:
	mov	word ptr [si],0FFFFh
	inc	si
	inc	si
	mov	[0F22h],si
	mov	ax,si
	and	al,0FEh
	mov	[0CDCh],ax
	jmp	5D5Ah

l09BD_5D11:
	cmp	byte ptr [bp-2h],0h
	jnz	5D18h

l09BD_5D17:
	dec	si

l09BD_5D18:
	mov	byte ptr [bp-2h],0h

l09BD_5D1C:
	call	5ABCh
	cmp	ax,[bp-4h]
	jnz	5D28h

l09BD_5D24:
	inc	si
	jmp	5C7Fh

l09BD_5D28:
	sub	ah,ah
	mov	[si],ax
	mov	ax,[0CE4h]
	sub	ax,10h
	inc	si
	cmp	ax,si
	jnc	5D1Ch

l09BD_5D37:
	mov	ax,200h
	push	ax
	call	far 0800h:0B12h
	pop	bx
	or	ax,ax
	jnz	5D1Ch

l09BD_5D45:
	inc	si
	jmp	5CFEh

l09BD_5D48:
	call	5ABCh
	mov	[bp-4h],ax
	cmp	ax,0Ah
	jnz	5D56h

l09BD_5D53:
	jmp	5C7Fh

l09BD_5D56:
	or	ax,ax
	jge	5D48h

l09BD_5D5A:
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5D5F: 09BD:5D5F
;;   Called from:
;;     09BD:5DE0 (in fn09BD_5DB8)
;;     09BD:5E22 (in fn09BD_5DB8)
fn09BD_5D5F proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	mov	ax,[bp+6h]
	mov	[bp-0Ch],ax

l09BD_5D6B:
	mov	byte ptr [bp-0Dh],48h
	lea	ax,[bp-0Eh]
	push	ax
	push	ax
	call	26C0h
	pop	bx
	pop	bx
	cmp	word ptr [bp-2h],0h
	jnz	5D84h

l09BD_5D7F:
	mov	ax,[bp-0Eh]
	jmp	5D94h

l09BD_5D84:
	cmp	word ptr [bp-0Eh],8h
	jnz	5D92h

l09BD_5D8A:
	mov	ax,[bp+4h]
	cmp	[bp-0Ch],ax
	jnc	5D6Bh

l09BD_5D92:
	sub	ax,ax

l09BD_5D94:
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5D98: 09BD:5D98
;;   Called from:
;;     09BD:5F40 (in fn09BD_5DB8)
;;     09BD:5F47 (in fn09BD_5DB8)
;;     09BD:5F87 (in fn09BD_5DB8)
fn09BD_5D98 proc
	push	bp
	mov	bp,sp
	sub	sp,16h
	mov	byte ptr [bp-0Dh],49h
	mov	ax,[bp+4h]
	mov	[bp-16h],ax
	lea	ax,[bp-16h]
	push	ax
	lea	ax,[bp-0Eh]
	push	ax
	push	ax
	call	2708h
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_5DB8: 09BD:5DB8
;;   Called from:
;;     09BD:5A8E (in fn09BD_5978)
fn09BD_5DB8 proc
	push	bp
	mov	bp,sp
	sub	sp,26h
	push	di
	push	si
	mov	si,[1188h]
	mov	byte ptr [si],4Dh
	mov	ax,1Bh
	push	ax
	lea	ax,[si+1h]
	push	ax
	call	5FC8h
	pop	bx
	pop	bx
	or	ax,ax
	jl	5E2Eh

l09BD_5DD8:
	mov	ax,[si+8h]
	mov	[bp-1Ah],ax
	push	ax
	push	ax
	call	5D5Fh
	pop	bx
	pop	bx
	mov	[bp-1Ch],ax
	or	ax,ax
	jz	5E2Eh

l09BD_5DEC:
	mov	cl,4h
	shl	word ptr [bp-1Ah],cl
	mov	ax,[bp-1Ah]
	sub	ax,1Ch
	mov	[bp-1Eh],ax
	push	ax
	mov	cx,[bp-1Ch]
	sub	dx,dx
	push	cx
	push	dx
	mov	di,ax
	call	5FE9h
	add	sp,6h
	cmp	ax,di
	jl	5E2Eh

l09BD_5E0E:
	mov	cl,5h
	mov	ax,[si+4h]
	shl	ax,cl
	mov	[bp-1Eh],ax
	push	word ptr [si+0Ch]
	add	ax,[si+0Ah]
	add	ax,10h
	push	ax
	call	5D5Fh
	pop	bx
	pop	bx
	mov	[bp-2h],ax
	or	ax,ax
	jnz	5E31h

l09BD_5E2E:
	jmp	5F8Bh

l09BD_5E31:
	mov	cl,4h
	shl	word ptr [bp-1Eh],cl
	cmp	word ptr [si+2h],0h
	jz	5E45h

l09BD_5E3C:
	mov	ax,[si+2h]
	sub	ax,200h
	add	[bp-1Eh],ax

l09BD_5E45:
	mov	ax,[bp-1Ah]
	sub	[bp-1Eh],ax
	mov	ax,[bp-2h]
	add	ax,10h
	sub	cx,cx
	mov	[bp-18h],cx
	mov	[bp-16h],ax
	push	word ptr [bp-1Eh]
	push	ax
	push	cx
	call	5FE9h
	add	sp,6h
	cmp	ax,[bp-1Eh]
	jge	5E6Ch

l09BD_5E69:
	jmp	5F8Bh

l09BD_5E6C:
	mov	byte ptr [bp-13h],26h
	mov	ax,[bp-2h]
	mov	[bp-0Eh],ax
	lea	cx,[bp-14h]
	push	cx
	push	cx
	call	26C0h
	pop	bx
	pop	bx
	mov	ax,[bp-2h]
	dec	ax
	mov	bx,3h
	mov	es,ax
	mov	ax,es:[bx]
	mov	cx,[bp-2h]
	sub	bx,bx
	mov	[bp-26h],bx
	mov	[bp-24h],cx
	or	bl,2h
	mov	es,cx
	mov	es:[bx],ax
	mov	ax,[bp-26h]
	mov	dx,[bp-24h]
	or	al,18h
	mov	cx,18h
	mov	bx,[0CEAh]
	push	si
	push	ds
	mov	di,ax
	mov	si,cx
	mov	es,dx
	mov	ds,bx
	mov	cx,0Ah

l09BD_5EBB:
	rep movsw

l09BD_5EBD:
	pop	ds
	pop	si
	mov	ax,[si+18h]
	sub	ax,1Ch
	mov	cx,[bp-1Ch]
	mov	[bp-6h],ax
	mov	[bp-4h],cx
	mov	ax,[si+6h]
	mov	[bp-1Ah],ax
	jmp	5EF1h

l09BD_5ED6:
	mov	ax,[bp-16h]
	les	bx,[bp-6h]
	mov	cx,es:[bx+2h]
	mov	bx,es:[bx]
	add	bx,[bp-18h]
	adc	cx,ax
	mov	es,cx
	add	es:[bx],ax
	add	word ptr [bp-6h],4h

l09BD_5EF1:
	dec	word ptr [bp-1Ah]
	jns	5ED6h

l09BD_5EF6:
	mov	word ptr [bp-20h],15E8h
	lea	ax,[si+68h]
	mov	[bp-22h],ax
	jmp	5F0Eh

l09BD_5F03:
	mov	bx,[bp-20h]
	inc	word ptr [bp-20h]
	cmp	byte ptr [bx],0h
	jnz	5F03h

l09BD_5F0E:
	mov	bx,[bp-20h]
	mov	ax,[bx]
	mov	bx,[bp-22h]
	add	word ptr [bp-22h],2h
	mov	[bx],ax
	add	word ptr [bp-20h],2h
	cmp	word ptr [bx],0FFh
	jnz	5F03h

l09BD_5F25:
	lea	ax,[bp-1Ah]
	push	ax
	lea	cx,[si+68h]
	push	cx
	push	si
	push	word ptr [bp-2h]
	call	68E7h
	add	sp,8h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	word ptr [bp-1Ch]
	call	5D98h
	pop	bx
	push	word ptr [bp-2h]
	call	5D98h
	pop	bx
	cmp	word ptr [bp-4h],0h
	jz	5F8Bh

l09BD_5F51:
	push	word ptr [bp-1Ah]
	call	far 0800h:0B12h
	pop	bx
	or	ax,ax
	jz	5F84h

l09BD_5F5E:
	push	word ptr [bp-1Ah]
	mov	ax,15E8h
	push	ax
	push	word ptr [09B4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-4h]
	call	60E8h
	add	sp,0Ah
	mov	ax,[bp-1Ah]
	add	ax,15E8h
	mov	[0F22h],ax
	inc	ax
	and	al,0FEh
	mov	[0CDCh],ax

l09BD_5F84:
	push	word ptr [bp-4h]
	call	5D98h
	pop	bx

l09BD_5F8B:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret
09BD:5F91    00 59 51 51 8B C4 FF E1 59 58 58 FF E1        .YQQ....YXX.. 

;; fn09BD_5F9E: 09BD:5F9E
;;   Called from:
;;     09BD:30E0 (in fn09BD_30C4)
;;     09BD:4B38 (in fn09BD_4B1D)
;;     09BD:59BF (in fn09BD_5978)
;;     09BD:59DE (in fn09BD_5978)
;;     09BD:5A4F (in fn09BD_5978)
;;     09BD:5C40 (in fn09BD_5BC1)
fn09BD_5F9E proc
	mov	bx,sp
	mov	dx,[bx+2h]
	mov	ax,3D00h
	int	21h
	sbb	bx,bx
	or	ax,bx
	mov	[0E70h],ax
	ret

;; fn09BD_5FB0: 09BD:5FB0
;;   Called from:
;;     09BD:304C (in fn09BD_303B)
;;     09BD:3185 (in fn09BD_30C4)
;;     09BD:59FB (in fn09BD_5978)
fn09BD_5FB0 proc
	mov	bx,sp
	mov	dx,[bx+2h]
	mov	cx,[bx+4h]
	mov	bx,[0E70h]
	mov	ax,4200h
	int	21h
	sbb	bx,bx
	or	ax,bx
	or	dx,bx
	ret

;; fn09BD_5FC8: 09BD:5FC8
;;   Called from:
;;     09BD:3057 (in fn09BD_303B)
;;     09BD:3192 (in fn09BD_30C4)
;;     09BD:59EB (in fn09BD_5978)
;;     09BD:5A0E (in fn09BD_5978)
;;     09BD:5A82 (in fn09BD_5978)
;;     09BD:5AD2 (in fn09BD_5ABC)
;;     09BD:5DCF (in fn09BD_5DB8)
fn09BD_5FC8 proc
	mov	bx,sp
	mov	dx,[bx+2h]
	mov	cx,[bx+4h]
	mov	bx,[0E70h]
	mov	ah,3Fh
	int	21h
	sbb	bx,bx
	or	ax,bx
	ret

;; fn09BD_5FDD: 09BD:5FDD
;;   Called from:
;;     09BD:59D1 (in fn09BD_5978)
;;     09BD:5AAE (in fn09BD_5978)
;;     09BD:5C2D (in fn09BD_5BC1)
fn09BD_5FDD proc
	mov	bx,0FFFFh
	xchg	[0E70h],bx
	mov	ah,3Eh
	int	21h
	ret

;; fn09BD_5FE9: 09BD:5FE9
;;   Called from:
;;     09BD:5E04 (in fn09BD_5DB8)
;;     09BD:5E5E (in fn09BD_5DB8)
fn09BD_5FE9 proc
	mov	bx,sp
	push	ds
	mov	ax,[0E70h]
	mov	cx,[bx+6h]
	mov	dx,[bx+2h]
	mov	ds,[bx+4h]
	xchg	bx,ax
	mov	ah,3Fh
	int	21h
	pop	ds
	sbb	bx,bx
	or	ax,bx
	ret
09BD:6003          58 5B 8B 26 50 0F 53 50 E9 8F C2          X[.&P.SP... 

;; fn09BD_600E: 09BD:600E
;;   Called from:
;;     09BD:2E78 (in fn09BD_2D88)
fn09BD_600E proc
	push	bp
	mov	bp,sp
	mov	dx,di
	mov	bx,si
	mov	ax,ds
	mov	es,ax
	mov	si,[bp+4h]
	mov	di,[bp+6h]
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_6024:
	repne scasb

l09BD_6026:
	not	cx
	sub	di,cx

l09BD_602A:
	rep cmpsb

l09BD_602C:
	jz	6033h

l09BD_602E:
	sbb	ax,ax
	sbb	ax,0FFFFh

l09BD_6033:
	mov	si,bx
	mov	di,dx
	pop	bp
	ret
09BD:6039                            00                            .     

;; fn09BD_603A: 09BD:603A
;;   Called from:
;;     09BD:44F0 (in fn09BD_3EBE)
fn09BD_603A proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	push	ds
	pop	es
	mov	di,[bp+4h]
	mov	si,[bp+6h]
	mov	bx,di
	mov	cx,[bp+8h]
	jcxz	605Ah

l09BD_604E:
	lodsb
	or	al,al
	jz	6056h

l09BD_6053:
	stosb
	loop	604Eh

l09BD_6056:
	xor	al,al

l09BD_6058:
	rep stosb

l09BD_605A:
	mov	ax,bx
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_6062: 09BD:6062
;;   Called from:
;;     09BD:4062 (in fn09BD_3EBE)
fn09BD_6062 proc
	jmp	61D4h
09BD:6065                00                                    .         

;; fn09BD_6066: 09BD:6066
;;   Called from:
;;     09BD:401D (in fn09BD_3EBE)
;;     09BD:45CF (in fn09BD_45A9)
fn09BD_6066 proc
	jmp	61D4h
09BD:6069                            00                            .     

;; fn09BD_606A: 09BD:606A
;;   Called from:
;;     09BD:50E8 (in fn09BD_5034)
;;     09BD:5629 (in fn09BD_5666)
fn09BD_606A proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	sub	sp,0Ah
	mov	byte ptr [bp-0Ah],0CDh
	mov	ax,[bp+4h]
	mov	[bp-9h],al
	cmp	al,25h
	jz	608Ah

l09BD_6080:
	cmp	al,26h
	jz	608Ah

l09BD_6084:
	mov	byte ptr [bp-8h],0CBh
	jmp	6096h

l09BD_608A:
	mov	byte ptr [bp-6h],0CBh
	mov	byte ptr [bp-7h],44h
	mov	byte ptr [bp-8h],44h

l09BD_6096:
	mov	[bp-0Ch],ss
	lea	ax,[bp-0Ah]
	mov	[bp-0Eh],ax
	mov	di,[bp+6h]
	mov	ax,[di]
	mov	bx,[di+2h]
	mov	cx,[di+4h]
	mov	dx,[di+6h]
	mov	si,[di+8h]
	mov	di,[di+0Ah]
	push	bp
	call	dword ptr [bp-0Eh]
	pop	bp
	cld
	push	di
	mov	di,[bp+8h]
	mov	[di],ax
	mov	[di+2h],bx
	mov	[di+4h],cx
	mov	[di+6h],dx
	mov	[di+8h],si
	pop	word ptr [di+0Ah]
	jc	60D4h

l09BD_60D0:
	xor	si,si
	jmp	60DCh

l09BD_60D4:
	call	27CEh
	mov	si,1h
	mov	ax,[di]

l09BD_60DC:
	mov	[di+0Ch],si
	add	sp,0Ah
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_60E8: 09BD:60E8
;;   Called from:
;;     09BD:5F6F (in fn09BD_5DB8)
fn09BD_60E8 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	ds
	mov	ds,[bp+4h]
	mov	si,[bp+6h]
	mov	es,[bp+8h]
	mov	di,[bp+0Ah]
	mov	cx,[bp+0Ch]

l09BD_60FD:
	rep movsb

l09BD_60FF:
	pop	ds
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_6106: 09BD:6106
;;   Called from:
;;     09BD:3FD0 (in fn09BD_3EBE)
;;     09BD:4053 (in fn09BD_3EBE)
;;     09BD:407F (in fn09BD_3EBE)
;;     09BD:40A3 (in fn09BD_3EBE)
;;     09BD:40CC (in fn09BD_3EBE)
;;     09BD:40EE (in fn09BD_3EBE)
;;     09BD:4131 (in fn09BD_3EBE)
;;     09BD:4146 (in fn09BD_3EBE)
;;     09BD:45F0 (in fn09BD_45A9)
fn09BD_6106 proc
	push	bp
	mov	bp,sp
	push	di
	mov	di,[bp+4h]
	push	ds
	pop	es
	mov	bx,di
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_6116:
	repne scasb

l09BD_6118:
	inc	cx
	neg	cx
	mov	al,[bp+6h]
	mov	di,bx

l09BD_6120:
	repne scasb

l09BD_6122:
	dec	di
	cmp	[di],al
	jz	6129h

l09BD_6127:
	xor	di,di

l09BD_6129:
	mov	ax,di
	pop	di
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_6130: 09BD:6130
;;   Called from:
;;     09BD:2DBB (in fn09BD_2D88)
;;     09BD:2DCC (in fn09BD_2D88)
;;     09BD:4108 (in fn09BD_3EBE)
;;     09BD:411C (in fn09BD_3EBE)
;;     09BD:416D (in fn09BD_3EBE)
fn09BD_6130 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	push	di
	push	ds
	pop	es
	mov	di,[bp+6h]
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_6142:
	repne scasb

l09BD_6144:
	not	cx
	dec	cx
	jcxz	6183h

l09BD_6149:
	dec	cx
	mov	[bp-2h],cx
	mov	di,[bp+4h]
	mov	bx,di
	xor	ax,ax
	mov	cx,0FFFFh

l09BD_6157:
	repne scasb

l09BD_6159:
	not	cx
	dec	cx
	mov	dx,cx
	sub	dx,[bp-2h]
	jbe	6188h

l09BD_6163:
	mov	di,bx

l09BD_6165:
	mov	si,[bp+6h]
	lodsb
	mov	di,bx
	mov	cx,dx

l09BD_616D:
	repne scasb

l09BD_616F:
	jnz	6188h

l09BD_6171:
	mov	dx,cx
	mov	bx,di
	mov	cx,[bp-2h]
	jcxz	617Eh

l09BD_617A:
	rep cmpsb

l09BD_617C:
	jnz	6165h

l09BD_617E:
	lea	ax,[bx-1h]
	jmp	618Ah

l09BD_6183:
	mov	ax,[bp+4h]
	jmp	618Ah

l09BD_6188:
	xor	ax,ax

l09BD_618A:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn09BD_6190: 09BD:6190
;;   Called from:
;;     09BD:4FED (in fn09BD_4FE3)
fn09BD_6190 proc
	push	bp
	mov	bp,sp
	push	bx
	mov	bx,[bp+4h]
	mov	ax,[bx]
	mov	dx,[bx+2h]
	mov	cx,[bp+6h]
	call	2794h
	mov	[bx],ax
	mov	[bx+2h],dx
	pop	bx
	pop	bp
	ret	4h
09BD:61AC                                     55 8B EC 53             U..S
09BD:61B0 8B 5E 04 8B 07 8B 57 02 8B 4E 06 E8 E2 C5 89 07 .^....W..N......
09BD:61C0 89 57 02 5B 5D C2 04 00                         .W.[]...       

;; fn09BD_61C8: 09BD:61C8
;;   Called from:
;;     09BD:5196 (in fn09BD_5034)
;;     09BD:51CD (in fn09BD_5034)
;;     09BD:533A (in fn09BD_52D5)
fn09BD_61C8 proc
	xor	ch,ch
	jcxz	61D2h

l09BD_61CC:
	shr	dx,1h
	rcr	ax,1h
	loop	61CCh

l09BD_61D2:
	ret
09BD:61D3          00                                        .           

;; fn09BD_61D4: 09BD:61D4
;;   Called from:
;;     09BD:6062 (in fn09BD_6062)
;;     09BD:6066 (in fn09BD_6066)
fn09BD_61D4 proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	mov	si,[bp+4h]
	xor	ax,ax
	cwd
	xor	bx,bx

l09BD_61E1:
	lodsb
	cmp	al,20h
	jz	61E1h

l09BD_61E6:
	cmp	al,9h
	jz	61E1h

l09BD_61EA:
	push	ax
	cmp	al,2Dh
	jz	61F3h

l09BD_61EF:
	cmp	al,2Bh
	jnz	61F4h

l09BD_61F3:
	lodsb

l09BD_61F4:
	cmp	al,39h
	ja	6217h

l09BD_61F8:
	sub	al,30h
	jc	6217h

l09BD_61FC:
	shl	bx,1h
	rcl	dx,1h
	mov	cx,bx
	mov	di,dx
	shl	bx,1h
	rcl	dx,1h
	shl	bx,1h
	rcl	dx,1h
	add	bx,cx
	adc	dx,di
	add	bx,ax
	adc	dx,0h
	jmp	61F3h

l09BD_6217:
	pop	ax
	cmp	al,2Dh
	xchg	bx,ax
	jnz	6224h

l09BD_621D:
	neg	ax
	adc	dx,0h
	neg	dx

l09BD_6224:
	pop	si
	pop	di
	pop	bp
	ret
09BD:6228                         00 00 00 00 00 00 00 00         ........

;; fn09BD_6230: 09BD:6230
;;   Called from:
;;     09BD:451C (in fn09BD_3EBE)
fn09BD_6230 proc
	mov	bx,sp
	mov	bx,[bx+2h]
	mov	[09BAh],bx
	cmp	byte ptr [002Fh],3h
	jc	6250h

l09BD_6240:
	mov	byte ptr cs:[031Fh],66h
	cmp	byte ptr [002Eh],2h
	jnz	6250h

l09BD_624D:
	mov	bx,2814h

l09BD_6250:
	mov	ax,cs:[bx-4h]
	mov	[09BCh],ax
	mov	ax,cs:[bx-2h]
	mov	[09BEh],ax
	ret

;; fn09BD_625F: 09BD:625F
;;   Called from:
;;     09BD:2EAE (in fn09BD_2D88)
fn09BD_625F proc
	mov	sp,[0CDAh]
	smsw	word ptr [0F88h]
	call	3829h
	call	0C0Dh
	mov	[0035h],cl
	mov	[0037h],cl
	call	2F8Fh
	cmp	byte ptr [002Eh],0h
	jz	62A3h

l09BD_6280:
	call	199Ah
	cmp	byte ptr [002Eh],0Ah
	jnz	628Dh

l09BD_628A:
	call	6497h

l09BD_628D:
	cmp	byte ptr [002Eh],9h
	jnz	6297h

l09BD_6294:
	call	63FDh

l09BD_6297:
	call	016Ch
	call	6586h
	mov	word ptr [0AC2h],32h

l09BD_62A3:
	push	0F8Ah
	call	1280h
	pop	cx
	mov	es,[0CEAh]
	mov	bx,0Ah
	mov	ax,es:[bx]
	mov	[10C2h],ax
	mov	ax,es:[bx+2h]
	mov	[10C4h],ax
	mov	[0F50h],sp
	cmp	byte ptr [002Eh],0h
	jz	62D5h

l09BD_62C9:
	mov	word ptr es:[bx],10h
	mov	es:[bx+2h],cs
	jmp	0251h

l09BD_62D5:
	call	7270h

;; fn09BD_62D8: 09BD:62D8
;;   Called from:
;;     09BD:3ED8 (in fn09BD_3EBE)
;;     09BD:62D5 (in fn09BD_625F)
fn09BD_62D8 proc
	pusha
	push	ds
	mov	ax,0h
	mov	ds,ax
	mov	si,2F6h
	std

l09BD_62E3:
	mov	bx,si
	lodsw
	mov	dx,ax
	lodsw

l09BD_62E9:
	cmp	bx,2FAh
	jnc	62E3h

l09BD_62EF:
	inc	bx
	inc	bx
	cmp	[bx],ax
	pushf
	inc	bx
	inc	bx
	popf
	jnz	62E9h

l09BD_62F9:
	cmp	[bx],dx
	jnz	62E9h

l09BD_62FD:
	pop	ds
	mov	[0056h],ax
	mov	[0058h],dx
	popa
	cld
	ret
09BD:6308                         55 8B EC 52 57 A1 56 00         U..RW.V.
09BD:6310 8B 16 58 00 1E BF 00 00 8E DF 8B 7E 04 83 EF 04 ..X........~....
09BD:6320 39 55 02 75 F8 39 05 75 F4 8B C7 1F 5F 5A C3 0F 9U.u.9.u...._Z..
09BD:6330 00 10 04 14 04 02 00 08 10 00 00 02 00 05 00 00 ................
09BD:6340 00 10 00 02 00 40 48 40 00 02 00 0E 00 10 00 18 .....@H@........
09BD:6350 00 02 00 08 10 08 00 02 00 10 00 20 00 A0 00 01 ........... ....
09BD:6360 00 08 70 40 00 01 00 01 00 00 00 08 00 02 00 08 ..p@............
09BD:6370 10 71 00 02 00                                  .q...          

;; fn09BD_6375: 09BD:6375
;;   Called from:
;;     09BD:4193 (in fn09BD_3EBE)
fn09BD_6375 proc
	push	es
	mov	di,6321h

l09BD_6379:
	add	di,0Eh
	cmp	word ptr cs:[di],1h
	jz	6387h

l09BD_6382:
	cmp	cs:[di],si
	jnz	6379h

l09BD_6387:
	push	si
	mov	si,di
	push	ss
	pop	es
	mov	di,4Ah
	cld
	lodsw
	mov	cx,6h

l09BD_6394:
	rep movsw

l09BD_6397:
	pop	si
	cmp	byte ptr [0034h],15h
	jnz	63A4h

l09BD_639F:
	mov	byte ptr [0034h],7Fh

l09BD_63A4:
	mov	bx,0h
	mov	es,bx
	mov	bl,[0034h]
	shl	bx,2h
	lds	di,es:[bx]
	mov	ax,ds
	mov	ss:[0F86h],ax
	mov	ss:[0F84h],di
	sub	ax,[di-2h]
	sub	di,[di-4h]
	push	ss
	pop	ds
	or	ax,di
	jz	63D3h

l09BD_63CA:
	mov	word ptr es:[bx],9F9h
	mov	es:[bx+2h],ds

l09BD_63D3:
	mov	al,[0034h]
	mov	cs:[0EF5h],al
	mov	cs:[982Eh],al
	pop	es
	ret

;; fn09BD_63E0: 09BD:63E0
;;   Called from:
;;     09BD:4366 (in fn09BD_3EBE)
fn09BD_63E0 proc
	xor	ax,ax
	xor	bx,bx
	mov	cl,82h
	int	0DCh
	mov	al,bl
	or	al,bh
	jz	63FCh

l09BD_63EE:
	shl	bx,6h
	mov	[0ECAh],bx
	shl	dx,6h
	mov	[0ECEh],dx

l09BD_63FC:
	ret

;; fn09BD_63FD: 09BD:63FD
;;   Called from:
;;     09BD:6294 (in fn09BD_625F)
fn09BD_63FD proc
	push	bp
	cli
	call	0BE9h
	xor	ax,ax
	mov	ds,ax
	push	word ptr [0000h]
	push	word ptr [0002h]
	push	word ptr [0004h]
	mov	ss:[0F7Ah],sp
	mov	cx,14h

l09BD_641A:
	push	ax
	loop	641Ah

l09BD_641D:
	mov	[0469h],ss
	mov	[0467h],sp
	mov	al,0Fh
	out	70h,al
	mov	byte ptr [0000h],0EAh
	mov	word ptr [0001h],6465h
	mov	[0003h],cs
	mov	al,9h
	out	71h,al
	lgdt	ss:[08C8h]
	lidt	ss:[08D0h]
	smsw	ax
	or	al,1h
	lmsw	ax
	jmp	far 0018h:6455h
09BD:6455                B8 20 00 8E D8 8E C0 8E D0 B0 FE      . .........
09BD:6460 E6 64 F4 EB FD E8 A5 A7 36 A1 7A 0F 94 2B C4 6A .d......6.z..+.j
09BD:6470 00 1F 8F 06 04 00 8F 06 02 00 8F 06 00 00 16 1F ................
09BD:6480 E3 04 88 0E 3F 00 01 06 C4 09 80 3E 35 00 00 74 ....?......>5..t
09BD:6490 03 E8 55 A7 FB 5D C3                            ..U..].        

;; fn09BD_6497: 09BD:6497
;;   Called from:
;;     09BD:628A (in fn09BD_625F)
fn09BD_6497 proc
	push	bp
	cli
	call	0BE9h
	in	al,21h
	mov	ah,al
	mov	al,0FFh
	out	21h,al
	in	al,0A1h
	push	ax
	not	al
	out	0A1h,al
	xor	ax,ax
	mov	ds,ax
	mov	al,0Fh
	out	70h,al
	mov	[0469h],cs
	mov	word ptr [0467h],64E6h
	mov	al,0Ah
	out	71h,al
	mov	ss:[0F7Ah],sp
	lgdt	ss:[08C8h]
	lidt	ss:[08D0h]
	smsw	ax
	or	al,1h
	lmsw	ax
	jmp	far 0018h:64DFh
09BD:64DF                                              B0                .
09BD:64E0 FE E6 64 F4 EB FD FA B8 00 08 8E D8 8E D0 8B 26 ..d............&
09BD:64F0 7A 0F E4 A1 F6 D0 8A D8 E4 21 8A F8 58 E6 A1 8A z........!..X...
09BD:6500 C8 8A C4 E6 21 B5 FF 3B D9 74 11 C6 06 2E 00 09 ....!..;.t......
09BD:6510 C6 06 EE 10 09 68 B2 08 E8 15 FD 58 80 3E 35 00 .....h.....X.>5.
09BD:6520 00 75 03 E8 D5 A6 FB 5D C3                      .u.....].      

l09BD_6529:
	test	byte ptr [0047h],1h
	jz	6537h

l09BD_6530:
	mov	ah,0Fh
	int	10h
	mov	[0A17h],al

l09BD_6537:
	ret

;; fn09BD_6538: 09BD:6538
;;   Called from:
;;     09BD:6586 (in fn09BD_6586)
fn09BD_6538 proc
	mov	ah,35h
	mov	al,[0034h]
	int	21h
	mov	cs:[12C4h],bx
	mov	cs:[12C6h],es
	cmp	word ptr [00A2h],0h
	jnz	6585h

l09BD_6550:
	xor	si,si
	xor	dx,dx
	mov	ax,0BF01h
	pushf
	call	dword ptr cs:[12C4h]
	push	dx
	or	dx,dx
	jz	6584h

l09BD_6562:
	mov	byte ptr [0A16h],0h
	push	ss
	pop	es
	mov	di,98h
	mov	ds,dx
	mov	cx,0Ch

l09BD_6571:
	rep movsw

l09BD_6573:
	push	ss
	pop	ds
	mov	word ptr [00A4h],0h
	mov	word ptr [00A6h],0h
	call	4FD8h

l09BD_6584:
	pop	ax

l09BD_6585:
	ret

;; fn09BD_6586: 09BD:6586
;;   Called from:
;;     09BD:629A (in fn09BD_625F)
fn09BD_6586 proc
	call	6538h
	or	ax,ax
	jnz	6590h

l09BD_658D:
	call	5666h

l09BD_6590:
	mov	dx,12CCh
	mov	ah,25h
	mov	al,[0034h]
	push	cs
	pop	ds
	mov	[12CAh],cs
	int	21h
	push	ss
	pop	ds
	ret

;; fn09BD_65A3: 09BD:65A3
;;   Called from:
;;     09BD:2437 (in fn09BD_242E)
;;     09BD:786C (in fn09BD_76B6)
fn09BD_65A3 proc
	mov	ax,[0CDCh]
	inc	ax
	and	al,0FEh
	mov	bx,sp
	mov	cx,[bx+2h]
	add	cx,ax
	jc	65BDh

l09BD_65B2:
	cmp	cx,[0CE4h]
	ja	65BDh

l09BD_65B8:
	mov	[0CDCh],cx
	ret

l09BD_65BD:
	mov	ax,0FFFFh
	ret

;; fn09BD_65C1: 09BD:65C1
;;   Called from:
;;     09BD:2D8E (in fn09BD_2D88)
fn09BD_65C1 proc
	pushf
	xor	ax,ax
	push	ax
	popf
	pushf
	pop	ax
	and	ah,0F0h
	cmp	ah,0F0h
	jz	65F4h

l09BD_65D0:
	push	sp
	pop	bx
	cmp	bx,sp
	jnz	65EFh

l09BD_65D6:
	mov	ax,0F000h
	push	ax
	popf
	pushf
	pop	bx
	and	bx,ax
	jz	65EAh

l09BD_65E1:
	mov	ax,3h
	mov	[10F2h],eax
	jmp	65F6h

l09BD_65EA:
	mov	ax,2h
	jmp	65F6h

l09BD_65EF:
	mov	ax,1h
	jmp	65F6h

l09BD_65F4:
	xor	ax,ax

l09BD_65F6:
	popf
	ret

;; fn09BD_65F8: 09BD:65F8
;;   Called from:
;;     09BD:41DA (in fn09BD_3EBE)
fn09BD_65F8 proc
	pushf
	pushf
	pop	edx
	mov	ecx,edx
	btc	edx,15h
	btc	edx,12h
	push	edx
	popf
	pushf
	pop	edx
	mov	ax,3h
	xor	edx,ecx
	shr	edx,13h
	jnc	6632h

l09BD_661F:
	inc	ax
	test	dl,4h
	jz	6632h

l09BD_6625:
	mov	eax,1h
	cpuid
	mov	al,ah
	and	ax,0Fh

l09BD_6632:
	popf
	ret

;; fn09BD_6635: 09BD:6635
;;   Called from:
;;     09BD:2D42 (in fn09BD_2D3E)
;;     09BD:2D7C (in fn09BD_2D77)
fn09BD_6635 proc
	mov	ax,3300h
	int	21h
	mov	cl,dl
	mov	bx,sp
	mov	dl,[bx+2h]
	inc	ax
	int	21h
	xchg	cx,ax
	cbw
	ret

;; fn09BD_6647: 09BD:6647
;;   Called from:
;;     09BD:41CA (in fn09BD_3EBE)
fn09BD_6647 proc
	mov	al,0FFh
	out	94h,al
	jmp	664Dh

l09BD_664D:
	xor	al,al
	out	96h,al
	ret

;; fn09BD_6652: 09BD:6652
;;   Called from:
;;     09BD:4236 (in fn09BD_3EBE)
;;     09BD:4246 (in fn09BD_3EBE)
;;     09BD:43D8 (in fn09BD_3EBE)
fn09BD_6652 proc
	cmp	byte ptr [0034h],15h
	mov	ax,0h
	jnz	6681h

l09BD_665C:
	mov	ah,0C0h
	int	15h
	mov	ax,0h
	jc	6681h

l09BD_6665:
	mov	cx,es:[bx+2h]
	cmp	cl,0E0h
	jc	6681h

l09BD_666E:
	cmp	cl,0F8h
	jle	667Dh

l09BD_6673:
	cmp	cl,0FCh
	jnz	6681h

l09BD_6678:
	cmp	ch,4h
	jl	6681h

l09BD_667D:
	mov	al,es:[bx+5h]

l09BD_6681:
	ret

;; fn09BD_6682: 09BD:6682
;;   Called from:
;;     09BD:41BB (in fn09BD_3EBE)
fn09BD_6682 proc
	push	es
	mov	ax,0F000h
	mov	es,ax
	mov	ax,0h
	mov	cl,es:[0FFFEh]
	pop	es
	cmp	cl,0E1h
	jnz	6698h

l09BD_6696:
	mov	ax,cx

l09BD_6698:
	ret

;; fn09BD_6699: 09BD:6699
;;   Called from:
;;     09BD:4465 (in fn09BD_3EBE)
fn09BD_6699 proc
	call	0C0Dh
	mov	al,45h
	call	0733h
	test	al,80h
	jnz	66B1h

l09BD_66A5:
	neg	cx
	and	ch,40h
	xor	ch,al
	jz	66B1h

l09BD_66AE:
	mov	al,1h
	ret

l09BD_66B1:
	xor	ax,ax
	ret

;; fn09BD_66B4: 09BD:66B4
;;   Called from:
;;     09BD:771B (in fn09BD_76B6)
;;     09BD:772C (in fn09BD_76B6)
fn09BD_66B4 proc
	pushf
	pop	ax
	and	ah,0CFh
	push	ax
	popf
	pushf
	pop	ax
	and	ax,3000h
	ret

;; fn09BD_66C1: 09BD:66C1
;;   Called from:
;;     09BD:2DA4 (in fn09BD_2D88)
;;     09BD:4E2C (in fn09BD_4E1C)
;;     09BD:4E74 (in fn09BD_4E1C)
fn09BD_66C1 proc
	mov	bx,sp
	push	si
	push	di
	mov	ax,ds
	push	ax
	mov	es,ax
	mov	cx,ss:[bx+8h]
	mov	di,ss:[bx+6h]
	mov	si,ss:[bx+4h]
	mov	ds,ss:[bx+2h]
	cld

l09BD_66DB:
	rep movsb

l09BD_66DD:
	pop	ds
	pop	di
	pop	si
	ret
09BD:66E1    55 8B EC 57 8B 4E 08 E3 3C E8 A3 9B 6A 08 07  U..W.N..<...j..
09BD:66F0 8B 5E 04 80 E3 F8 26 8B 47 02 26 A3 62 00 26 8A .^....&.G.&.b.&.
09BD:6700 47 04 26 A2 64 00 26 8A 47 07 26 A2 67 00 6A 60 G.&.d.&.G.&.g.j`
09BD:6710 07 8B 7E 06 FC 33 C0 8B 4E 08 D1 E9 74 02 F3 AB ..~..3..N...t...
09BD:6720 73 01 AA E8 03 A2 5F 8B E5 5D FB C3             s....._..]..   

;; fn09BD_672C: 09BD:672C
;;   Called from:
;;     09BD:4E8A (in fn09BD_4E1C)
;;     09BD:4ED1 (in fn09BD_4E9A)
;;     09BD:5061 (in fn09BD_5034)
;;     09BD:5084 (in fn09BD_5034)
;;     09BD:509D (in fn09BD_5034)
;;     09BD:50AC (in fn09BD_5034)
;;     09BD:50C8 (in fn09BD_5034)
;;     09BD:510B (in fn09BD_5034)
;;     09BD:51A3 (in fn09BD_5034)
;;     09BD:51B2 (in fn09BD_5034)
;;     09BD:51DA (in fn09BD_5034)
;;     09BD:51E9 (in fn09BD_5034)
;;     09BD:522E (in fn09BD_5034)
fn09BD_672C proc
	mov	cx,6h
	pop	bx
	pop	ax
	push	ax
	xor	dx,dx

l09BD_6734:
	shl	ax,1h
	rcl	dx,1h
	loop	6734h

l09BD_673A:
	jmp	bx
09BD:673C                                     B9 04 00 EB             ....
09BD:6740 EE 96 71 12 9F 0A 00 4E 3F AC 04 0A 00 05 D5 C0 ..q....N?.......
09BD:6750 9B 0A 00 D6 46 73 F3 01 00 1E 07 61 7D 01 00 EA ....Fs.....a}...
09BD:6760 30 1E 09 01 00 BD C6 9F 55 01 00 64 89 F8 61 0A 0.......U..d..a.
09BD:6770 00 89 08 79 3F 0A 00 60 B5 82 3F 0A 00 00 4B 22 ...y?..`..?...K"
09BD:6780 61 01 00 65 91 F6 37 0A 00 00 7A 18 D4 0A 00 E7 a..e..7...z.....
09BD:6790 8C AD B4 0A 00 E9 8F FA 42 0D 00 1E AE 4A C5 0D ........B....J..
09BD:67A0 00 52 A2 BC 1F 06 00 B0 99 55 57 06 00 91 F8 ED .R.......UW.....
09BD:67B0 67 06 00 01 6A A7 E1 06 00 70 A4 60 62 13 00 C6 g...j....p.`b...
09BD:67C0 5C C9 67 0A 00 CE 72 1A D3 0A 00 BE 3C 84 5F 0A \.g...r.....<._.
09BD:67D0 00 F7 BF F6 A2 0A 00 42 00 95 E3 0A 00 63 15 55 .......B.....c.U
09BD:67E0 E1 0A 00 F4 F5 06 4F 0A 00 00 4A A6 02 0A 00 B0 ......O...J.....
09BD:67F0 6C D9 DA 0A 00 15 6C 40 B5 0D 00 E3 0E C7 96 0D l.....l@........
09BD:6800 00 5C 9F 77 FC 0D 00 15 AE 2F A7 0A 00 34 44 3E .\.w...../...4D>
09BD:6810 54 0A 2F 4F DB 53 24 0A 00 CF 72 00 03 09 15 18 T./O.S$...r.....
09BD:6820 7E 7E 8E 0A 00 08 AA D5 86 0A 00 74 05 D9 D6 09 ~~.........t....
09BD:6830 FF BC BA 31 31 0A 00 1E 16 C7 0E 0A 40 0B CE 0E ...11.......@...
09BD:6840 3E 03 40 C0 56 77 25 03 40                      >.@.Vw%.@      

;; fn09BD_6849: 09BD:6849
;;   Called from:
;;     09BD:425D (in fn09BD_3EBE)
;;     09BD:4273 (in fn09BD_3EBE)
fn09BD_6849 proc
	mov	bx,sp
	mov	dx,[bx+4h]
	mov	bx,[bx+2h]
	push	si
	push	di
	push	cs
	pop	ds
	mov	cx,2Ch
	mov	si,6741h
	jmp	685Dh

l09BD_685D:
	lodsw
	xchg	di,ax
	lodsw
	cmp	ax,dx
	lodsb
	jnz	6869h

l09BD_6865:
	cmp	di,bx
	jz	6871h

l09BD_6869:
	loop	685Dh

l09BD_686B:
	xor	ax,ax
	xor	dx,dx
	jmp	6879h

l09BD_6871:
	xor	ah,ah
	mov	dx,ax
	lodsb
	shl	ax,4h

l09BD_6879:
	push	ss
	pop	ds
	pop	di
	pop	si
	ret

;; fn09BD_687E: 09BD:687E
;;   Called from:
;;     09BD:4258 (in fn09BD_3EBE)
fn09BD_687E proc
	push	si
	xor	si,si
	mov	cx,4000h

;; fn09BD_6884: 09BD:6884
;;   Called from:
;;     09BD:6881 (in fn09BD_687E)
;;     09BD:68A0 (in fn09BD_6899)
fn09BD_6884 proc
	xor	dx,dx
	push	0F000h
	pop	ds
	xor	bx,bx

;; fn09BD_688C: 09BD:688C
;;   Called from:
;;     09BD:688A (in fn09BD_6884)
;;     09BD:688A (in fn09BD_6884)
fn09BD_688C proc
	lodsw
	add	bx,ax
	lodsw
	adc	dx,ax
	loop	688Ch

l09BD_6894:
	pop	si
	push	ss
	pop	ds
	xchg	bx,ax
	ret

;; fn09BD_6899: 09BD:6899
;;   Called from:
;;     09BD:426E (in fn09BD_3EBE)
fn09BD_6899 proc
	push	si
	mov	si,8000h
	mov	cx,2000h
	jmp	6884h

;; fn09BD_68A2: 09BD:68A2
;;   Called from:
;;     09BD:3F18 (in fn09BD_3EBE)
fn09BD_68A2 proc
	push	bp
	mov	bp,sp
	xor	cx,cx
	push	0FFh
	smsw	ax
	test	al,4h
	jnz	68C9h

l09BD_68B0:
	fninit
	fstsw	word ptr [bp-2h]
	cmp	[bp-2h],cl
	jnz	68C9h

l09BD_68BA:
	fstcw	word ptr [bp-2h]
	mov	ax,[bp-2h]
	and	ax,103Fh
	cmp	ax,3Fh
	jnz	68C9h

l09BD_68C8:
	inc	cx

l09BD_68C9:
	leave
	xchg	cx,ax
	ret

;; fn09BD_68CC: 09BD:68CC
;;   Called from:
;;     09BD:5997 (in fn09BD_5978)
fn09BD_68CC proc
	mov	ax,1h
	cmp	byte ptr [0CECh],2h
	jbe	68E4h

l09BD_68D6:
	sub	sp,22h
	mov	dx,sp
	mov	ax,3800h
	int	21h
	add	sp,22h
	xchg	bx,ax

l09BD_68E4:
	ret
09BD:68E5                00 00                                 ..        

;; fn09BD_68E7: 09BD:68E7
;;   Called from:
;;     09BD:5F31 (in fn09BD_5DB8)
fn09BD_68E7 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	dx,[bp+4h]
	mov	bx,dx
	add	dx,10h
	mov	di,80h
	xor	ax,ax
	mov	es,ax
	push	word ptr es:[0002h]
	push	word ptr es:[0000h]
	mov	es,bx
	stosb
	mov	ax,6936h
	stosw
	mov	ax,cs
	stosw
	mov	ax,[bp+8h]
	stosw
	mov	ax,ss
	stosw
	mov	al,0Dh
	stosb
	mov	cs:[68E5h],sp
	mov	bx,[bp+6h]
	mov	ax,[bx+16h]
	add	ax,dx
	mov	cx,[bx+14h]
	add	dx,[bx+0Eh]
	mov	ss,dx
	mov	sp,[bx+10h]
	push	es
	pop	ds
	push	ax
	push	cx
	retf
09BD:6936                   58 58 58 5A 59 2E 8E 16 00 00       XXXZY.....
09BD:6940 2E 8B 26 E5 68 33 DB 8E DB 8F 06 00 00 8F 06 02 ..&.h3..........
09BD:6950 00 16 1F 8B EC 8D 6E 04 8B 5E 0A 89 0F 8B 1E EA ......n..^......
09BD:6960 0C 50 B4 50 CD 21 58 5F 5E 5D C3                .P.P.!X_^].    

;; fn09BD_696B: 09BD:696B
;;   Called from:
;;     09BD:419D (in fn09BD_3EBE)
;;     09BD:76B8 (in fn09BD_76B6)
fn09BD_696B proc
	test	byte ptr [0047h],80h
	jnz	698Bh

l09BD_6972:
	mov	ax,0BFDEh
	mov	bx,8h
	mov	cx,cs
	xor	dx,dx
	call	0EF4h
	or	bx,bx
	jnz	698Bh

l09BD_6983:
	or	[0047h],al
	mov	[0DECh],dx

l09BD_698B:
	ret

;; fn09BD_698C: 09BD:698C
;;   Called from:
;;     09BD:42B9 (in fn09BD_3EBE)
fn09BD_698C proc
	mov	bx,0Bh
	mov	ax,0BFDEh
	jmp	0EF4h
09BD:6995                E4 92 0C 02 EB 00 E6 92 C3 E4 92      ...........
09BD:69A0 24 FD EB 00 E6 92 C3                            $......        

;; fn09BD_69A7: 09BD:69A7
;;   Called from:
;;     09BD:69C4 (in fn09BD_69C0)
;;     09BD:69CF (in fn09BD_69C0)
;;     09BD:69E6 (in fn09BD_69C0)
fn09BD_69A7 proc
	call	0C0Dh
	cmp	cl,1h
	sbb	dx,dx
	in	al,92h
	mov	bx,ax
	and	bx,2h
	cmp	bl,2h
	sbb	bx,bx
	xor	bx,dx
	or	si,bx
	ret

;; fn09BD_69C0: 09BD:69C0
;;   Called from:
;;     09BD:4403 (in fn09BD_3EBE)
fn09BD_69C0 proc
	push	si
	push	di
	xor	si,si
	call	69A7h
	jnz	6A09h

l09BD_69C9:
	push	dx
	xor	al,2h
	push	ax
	out	92h,al
	call	69A7h
	pop	cx
	pop	bx
	mov	ch,al
	and	cx,303h
	cmp	ch,cl
	jnz	6A09h

l09BD_69DE:
	xor	al,2h
	out	92h,al
	xor	dx,bx
	jz	6A09h

l09BD_69E6:
	call	69A7h
	jnz	6A09h

l09BD_69EB:
	push	cs
	pop	ds
	push	cs
	pop	es
	mov	si,6995h
	mov	di,0BE9h
	mov	cx,9h

l09BD_69F8:
	rep movsb

l09BD_69FA:
	mov	di,0BFBh
	mov	cx,9h

l09BD_6A00:
	rep movsb

l09BD_6A02:
	push	ss
	pop	ds
	mov	byte ptr [003Fh],0FFh

l09BD_6A09:
	sti
	pop	di
	pop	si
	ret

;; fn09BD_6A0D: 09BD:6A0D
;;   Called from:
;;     09BD:2EA9 (in fn09BD_2D88)
fn09BD_6A0D proc
	push	bp
	mov	bp,sp
	call	6A48h
	mov	si,[bp+6h]
	test	si,si
	jz	6A22h

l09BD_6A1A:
	push	ds
	pop	es
	mov	di,0A2Ch
	cld
	jmp	6A40h

l09BD_6A22:
	mov	si,[bp+4h]
	push	ds
	pop	es
	cld
	mov	di,0A2Ch
	mov	bx,di

l09BD_6A2D:
	lodsb
	test	al,al
	jz	6A3Bh

l09BD_6A32:
	stosb
	cmp	al,5Ch
	jnz	6A2Dh

l09BD_6A37:
	mov	bx,di
	jmp	6A2Dh

l09BD_6A3B:
	mov	di,bx
	mov	si,0A7Ch

l09BD_6A40:
	lodsb
	stosb
	test	al,al
	jnz	6A40h

l09BD_6A46:
	pop	bp
	ret

;; fn09BD_6A48: 09BD:6A48
;;   Called from:
;;     09BD:6A10 (in fn09BD_6A0D)
fn09BD_6A48 proc
	mov	[1586h],ds
	mov	ax,98h
	mov	[1584h],ax
	mov	word ptr [158Eh],20h
	mov	word ptr [158Ch],70h
	mov	word ptr [158Ah],1BA6h
	mov	ax,1D2Fh
	sub	ax,1D26h
	mov	[1590h],ax
	mov	ax,ds
	movzx	eax,ax
	shl	eax,4h
	mov	bx,98Eh
	movzx	ebx,bx
	add	eax,ebx
	mov	[1598h],eax
	mov	word ptr [1596h],1h
	ret
09BD:6A8C                                     8B 76 1E 8E             .v..
09BD:6A90 5E 22 C7 04 00 00 5D 5E 1F 66 CB 1E 56 55 8B EC ^"....]^.f..VU..
09BD:6AA0 8B 76 12 8E 5E 16 80 3C 07 74 E1 80 3C 1F 74 DC .v..^..<.t..<.t.
09BD:6AB0 5D 5E 1F E8 01 00 0D 50 60 06 1E 16 6A 00 8B F4 ]^.....P`...j...
09BD:6AC0 16 1F 8B 5C 1A 2E 8A 07 0A C0 78 17 25 1F 00 89 ...\......x.%...
09BD:6AD0 44 18 8B 44 34 89 44 0E 8B 44 38 89 44 02 BB 0A D..D4.D..D8.D...
09BD:6AE0 00 EB 0C 25 1F 00 89 44 18 83 44 0E 0A 33 DB 2E ...%...D..D..3..
09BD:6AF0 C4 3E C2 17 8B C7 FC B9 0D 00 F3 A5 03 F3 66 A5 .>............f.
09BD:6B00 66 A5 66 A5 66 A5 0B DB 74 23 8B F4 8C 44 38 89 f.f.f...t#...D8.
09BD:6B10 44 34 8C 4C 2C C7 44 28 31 6B 2B C0 89 44 36 89 D4.L,.D(1k+..D6.
09BD:6B20 44 2A 83 C4 04 1F 07 61 83 C4 04 66 CB 06 17 8B D*.....a...f....
09BD:6B30 E0 FB 8B EC 83 7E 18 0D 74 73 2E FF 2E BE 17 EB .....~..ts......
09BD:6B40 16 66 52 66 2E 8B 16 46 6D 2E 8B 0E 4A 6D B3 21 .fRf...Fm...Jm.!
09BD:6B50 B8 05 02 CD 31 66 5A 2E A1 7E 20 8E D8 FE 0E 9E ....1fZ..~ .....
09BD:6B60 0A 74 11 89 26 96 09 8C D1 3B C1 74 04 8B 26 50 .t..&....;.t..&P
09BD:6B70 0F E8 1C B5 E9 65 06 8B 76 1E 8E 5E 22 AD 3D FF .....e..v..^".=.
09BD:6B80 5E 75 25 AC 98 03 46 0C 96 8E 5E 02 8B 5C 02 B8 ^u%...F...^..\..
09BD:6B90 06 00 CD 31 72 12 2E 8E 06 7E 20 26 8B 1E 9C 0A ...1r....~ &....
09BD:6BA0 89 5C 02 40 CD 31 73 7E 2E FF 2E BE 17 0F 03 46 .\.@.1s~.......F
09BD:6BB0 22 2B 46 1E 76 F2 83 7E 1A 00 75 BB 2D 04 00 76 "+F.v..~..u.-..v
09BD:6BC0 E7 8B 4E 04 E3 E2 0F 03 D9 8E C1 8B 76 1E 8E 5E ..N.........v..^
09BD:6BD0 22 FC AD B9 02 00 8B 7E 0A 3B DF 76 CB 26 8B 1D "......~.;.v.&..
09BD:6BE0 8B 56 16 3D 89 04 74 22 2B D3 F7 DA 3D 29 04 74 .V.=..t"+...=).t
09BD:6BF0 19 41 8B D3 8A 14 3D C6 04 74 0F 0A D3 3D 80 0C .A....=..t...=..
09BD:6C00 74 08 41 8B 14 3D C7 04 75 9E 01 4E 1E 8B 5E 04 t.A..=..u..N..^.
09BD:6C10 B8 0A 00 CD 31 72 91 8E C0 8B D8 8B 7E 0A 26 89 ....1r......~.&.
09BD:6C20 15 B8 01 00 CD 31 8E 46 02 8B 7E 0E 4F 4F 8D 76 .....1.F..~.OO.v
09BD:6C30 26 16 1F FD B9 15 00 F3 A5 8C C0 8E D0 8B E7 83 &...............
09BD:6C40 C4 06 1F 07 61 83 C4 06 66 CF                   ....a...f.     

l09BD_6C4A:
	push	26h
	call	14ACh
	pop	cx
	xor	ax,ax
	jmp	6C9Fh

;; fn09BD_6C54: 09BD:6C54
;;   Called from:
;;     09BD:435F (in fn09BD_3EBE)
;;     09BD:43A1 (in fn09BD_3EBE)
;;     09BD:4FD8 (in fn09BD_4FD8)
;;     09BD:6C64 (in fn09BD_6C64)
fn09BD_6C54 proc
	mov	ax,4300h
	int	2Fh
	cmp	al,80h
	jz	6C5Fh

l09BD_6C5D:
	xor	ax,ax

l09BD_6C5F:
	or	[0036h],al
	ret

;; fn09BD_6C64: 09BD:6C64
;;   Called from:
;;     09BD:50B7 (in fn09BD_5034)
;;     09BD:50F4 (in fn09BD_5034)
;;     09BD:7B2B (in fn09BD_7B1F)
fn09BD_6C64 proc
	call	6C54h
	or	ax,ax
	jnz	6C6Ch

l09BD_6C6B:
	ret

l09BD_6C6C:
	mov	ax,4310h
	int	2Fh
	mov	[0AECh],bx
	mov	[0AEEh],es
	xor	ah,ah
	call	dword ptr [0AECh]
	dec	ah
	jle	6C4Ah

l09BD_6C83:
	cmp	bx,204h
	jnc	6C90h

l09BD_6C89:
	mov	word ptr cs:[1DEAh],40h

l09BD_6C90:
	mov	ah,8h
	call	dword ptr [0AECh]
	sub	ax,cs:[1DEAh]
	jnc	6C9Fh

l09BD_6C9D:
	xor	ax,ax

l09BD_6C9F:
	or	ax,ax
	mov	[0ECEh],ax
	jz	6D03h

l09BD_6CA6:
	cmp	ax,[0ECCh]
	jc	6CAFh

l09BD_6CAC:
	mov	ax,[0ECCh]

l09BD_6CAF:
	mov	[0ECCh],ax
	xchg	dx,ax
	mov	ah,9h
	call	dword ptr [0AECh]
	or	ax,ax
	jz	6D03h

l09BD_6CBD:
	mov	[0ADCh],dx
	mov	ah,0Ch
	call	dword ptr [0AECh]
	or	ax,ax
	jnz	6CD0h

l09BD_6CCB:
	call	1DECh
	jmp	6D03h

l09BD_6CD0:
	add	bx,0Fh
	adc	dx,0h
	mov	cx,4h

l09BD_6CD9:
	shr	dx,1h
	rcr	bx,1h
	loop	6CD9h

l09BD_6CDF:
	mov	[0098h],bx
	mov	[009Ah],dx
	mov	word ptr [0AA6h],3E15h
	mov	word ptr [0AA4h],3DE0h
	mov	ax,400h
	mul	word ptr [0ECCh]
	mov	[0AA8h],ax
	mov	[0AAAh],dx
	jmp	6D09h

l09BD_6D03:
	mov	word ptr [0ECCh],0h

l09BD_6D09:
	mov	al,1h
	ret
09BD:6D0C                                     00 00 00 00             ....
09BD:6D10 59 5B 0F 02 C3 EB 00 53 C1 E8 08 FF E1 52 53 49 Y[.....S.....RSI
09BD:6D20 20 43 4C 49 45 4E 54 20 30 2E 39 01 00 00 00 00  CLIENT 0.9.....
09BD:6D30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09BD:6D40 00 00 00 00 00 00 00 00 00 00 00 00 E8 68 FD 11 .............h..
09BD:6D50 E8 64 FD 10 E8 60 FD 0F E8 5C FD 0E E8 58 FD 0D .d...`...\...X..
09BD:6D60 E8 54 FD 0C E8 50 FD 0B E8 4C FD 0A E8 48 FD 09 .T...P...L...H..
09BD:6D70 E8 44 FD 08 E8 40 FD 07 E8 3C FD 06             .D...@...<..   

;; fn09BD_6D7C: 09BD:6D7C
;;   Called from:
;;     09BD:41E0 (in fn09BD_3EBE)
fn09BD_6D7C proc
	push	si
	push	di
	mov	ax,1687h
	int	2Fh
	or	ax,ax
	mov	ax,0h
	jnz	6D9Fh

l09BD_6D8A:
	mov	cs:[6D44h],si
	mov	cs:[6E66h],di
	mov	cs:[6E68h],es
	mov	al,cl
	mov	[0C42h],dh

l09BD_6D9F:
	pop	di
	pop	si
	ret

;; fn09BD_6DA2: 09BD:6DA2
;;   Called from:
;;     09BD:6E65 (in fn09BD_6E00)
fn09BD_6DA2 proc
	push	bp
	mov	bp,sp
	push	esi
	push	edi
	push	edx
	xor	esi,esi
	xor	edi,edi
	xor	edx,edx
	mov	ax,[bp+4h]
	mov	bp,[bp+6h]
	mov	cx,[bp+4h]
	mov	dx,[bp+6h]
	mov	si,[bp+8h]
	mov	di,[bp+0Ah]
	mov	bx,[bp+2h]
	push	ss
	pop	es
	int	31h
	mov	[bp+0h],ax
	mov	[bp+2h],bx
	mov	[bp+4h],cx
	mov	[bp+6h],dx
	mov	[bp+8h],si
	mov	[bp+0Ah],di
	mov	ax,0h
	cmc
	rcl	ax,1h
	pop	edx
	pop	edi
	pop	esi
	pop	bp
	ret

l09BD_6DED:
	push	ss
	pop	ds
	push	20h
	call	229Dh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al

;; fn09BD_6E00: 09BD:6E00
;;   Called from:
;;     09BD:72CE (in fn09BD_7270)
fn09BD_6E00 proc
	mov	cs:[6DF4h],esi
	xor	esi,esi
	mov	cs:[6DF8h],edi
	xor	edi,edi
	mov	cs:[6DFCh],edx
	xor	edx,edx
	mov	di,0C1Eh
	mov	cx,11h
	push	ds
	pop	es
	xor	ax,ax

l09BD_6E25:
	rep stosw

l09BD_6E27:
	mov	word ptr [0C2Eh],40h
	mov	ah,48h
	mov	bx,200h
	int	21h
	jc	6E4Fh

l09BD_6E36:
	mov	[0C32h],ax
	mov	es,ax
	xor	ax,ax
	mov	cx,1000h
	mov	di,ax

l09BD_6E42:
	rep stosw

l09BD_6E44:
	mov	ah,48h
	mov	bx,cs:[6D44h]
	int	21h
	jnc	6E52h

l09BD_6E4F:
	jmp	713Bh

l09BD_6E52:
	mov	es,ax
	call	74FEh
	mov	ax,[0F50h]
	add	ax,2Ah
	push	cs
	pop	ds
	mov	[17C2h],ax
	mov	ax,1h
	call	far 09BDh:6DA2h
	jc	6DEDh

l09BD_6E6C:
	cld
	mov	word ptr ss:[0AC2h],71DCh
	mov	ss:[0C30h],ds
	mov	[207Eh],ss
	mov	ss:[0C28h],es
	mov	ss:[09B2h],es
	mov	ax,es:[002Ch]
	mov	ss:[0C2Ah],ax
	mov	ss:[0008h],ds
	mov	[17C0h],cs
	mov	[17C4h],ss
	sub	sp,8h
	mov	bx,ss
	mov	di,sp
	mov	es,bx
	mov	ax,0Bh
	int	31h
	and	byte ptr es:[di+6h],0BFh
	mov	ax,0Ch
	int	31h
	mov	bx,ds
	mov	di,sp
	mov	es,bx
	mov	ax,0Bh
	int	31h
	and	byte ptr es:[di+6h],0BFh
	mov	ax,0Ch
	int	31h
	add	sp,8h
	mov	si,6D1Dh
	mov	ax,0A00h
	int	31h
	mov	ax,305h
	int	31h
	mov	[6D2Eh],cx
	mov	[6D30h],bx
	mov	[6D34h],edi
	mov	[6D38h],si
	mov	[6D32h],ax
	mov	ax,306h
	int	31h
	jnc	6EF7h

l09BD_6EF4:
	jmp	713Bh

l09BD_6EF7:
	mov	[6D3Ah],cx
	mov	[6D3Ch],bx
	mov	[6D3Eh],edi
	mov	[6D42h],si
	mov	bl,21h
	mov	ax,204h
	int	31h
	mov	[6D46h],edx
	mov	[6D4Ah],cx
	mov	ss:[0C40h],cx
	push	ss
	pop	ds
	push	ds
	pop	es
	mov	di,0C0h
	push	cs
	call	75E1h
	mov	[0C24h],cs
	mov	[0AF8h],cs
	mov	[0C26h],ss
	sti
	mov	[002Ch],ss
	mov	[0018h],cs
	mov	[001Ch],cs
	mov	word ptr [0022h],7344h
	mov	[0024h],cs
	mov	[000Ch],ss
	mov	[003Ch],ss
	mov	[0998h],ss
	mov	[0044h],ss
	mov	ax,203h
	mov	bl,11h
	mov	cx,cs
	mov	dx,6D4Ch

l09BD_6F65:
	int	31h
	add	dx,4h
	dec	bl
	cmp	bl,6h
	jnc	6F65h

l09BD_6F71:
	mov	bl,0Dh
	mov	dx,6A9Bh
	int	31h
	mov	dx,71D4h
	mov	cx,cs
	mov	bl,3h
	mov	ax,205h
	int	31h
	mov	dx,730Bh
	mov	bl,1h
	int	31h
	mov	dx,71D8h
	mov	bl,0h
	int	31h
	mov	dx,7560h
	mov	bl,23h
	int	31h
	cmp	byte ptr cs:[6D2Bh],0h
	jnz	6FA6h

l09BD_6FA1:
	mov	ax,1682h
	int	2Fh

l09BD_6FA6:
	mov	ax,3h
	int	31h
	mov	[0C46h],ax
	xor	cx,cx

l09BD_6FB0:
	inc	cx
	shr	ax,1h
	jnc	6FB0h

l09BD_6FB5:
	mov	[0C44h],cx
	mov	cx,6h
	xor	ax,ax
	int	31h
	jnc	6FC5h

l09BD_6FC2:
	jmp	713Bh

l09BD_6FC5:
	mov	[0C2Ch],ax
	xchg	bx,ax
	mov	ax,8h
	mov	cx,0FFFFh
	mov	dx,cx
	int	31h
	jc	6FC2h

l09BD_6FD5:
	add	bx,[0C46h]
	mov	[0C36h],bx
	xor	cx,cx
	int	31h
	jc	6FC2h

l09BD_6FE3:
	add	bx,[0C46h]
	mov	[0C3Ch],bx
	int	31h
	jc	6FC2h

l09BD_6FEF:
	sub	sp,8h
	push	ss
	pop	es
	mov	di,sp
	add	bx,[0C46h]
	mov	[0C3Ah],bx
	mov	[0AF4h],bx
	mov	[0A00h],bx
	mov	[0A08h],bx
	mov	ax,0Bh
	int	31h
	call	1F19h
	dec	ax
	stosw
	mov	ax,[0A10h]
	mov	cx,10h
	mul	cx
	stosw
	xchg	dx,ax
	stosb
	mov	di,sp
	mov	ax,0Ch
	int	31h
	mov	ds,bx
	mov	[54E0h],ss
	mov	ax,cs
	mov	[3E63h],ax
	mov	[0403h],bx
	mov	word ptr [0401h],54F2h
	mov	byte ptr [0400h],0EAh
	mov	si,7A0h

l09BD_7043:
	mov	[si+2h],bx
	mov	[si+6h],bx
	add	si,8h
	cmp	word ptr [si],0h
	jnz	7043h

l09BD_7051:
	lar	cx,ax
	shr	cx,8h
	mov	ax,9h
	push	bx
	int	31h
	mov	cx,ds
	mov	bx,10h
	mov	ax,205h

l09BD_7065:
	mov	dx,bx
	shl	dx,2h
	add	dx,0h
	int	31h
	jnc	7075h

l09BD_7072:
	jmp	713Bh

l09BD_7075:
	inc	bl
	cmp	bl,1Bh
	jz	7075h

l09BD_707C:
	cmp	bl,1Ch
	jz	7075h

l09BD_7081:
	cmp	bl,23h
	jz	7075h

l09BD_7086:
	cmp	bl,24h
	jz	7075h

l09BD_708B:
	cmp	bl,2Fh
	jz	7075h

l09BD_7090:
	cmp	bl,16h
	jz	7075h

l09BD_7095:
	cmp	bl,2Eh
	jbe	7065h

l09BD_709A:
	mov	dx,0C9Eh
	mov	bl,21h
	int	31h
	jc	7072h

l09BD_70A3:
	mov	dx,1A62h
	mov	bl,10h
	int	31h
	mov	dx,556h
	mov	bl,75h
	int	31h
	push	ss
	pop	ds
	mov	ax,1FFFh
	stosw
	mov	ax,[0C32h]
	mov	cx,10h
	mul	cx
	stosw
	xchg	dx,ax
	stosb
	pop	bx
	add	bx,[0C46h]
	mov	[0C32h],bx
	mov	[0AA2h],bx
	mov	di,sp
	mov	ax,0Ch
	int	31h
	add	bx,[0C46h]
	mov	[0A9Ch],bx
	mov	ax,8h
	xor	cx,cx
	mov	dx,0FFFFh
	int	31h
	inc	ax
	mov	cx,cs
	lar	cx,cx
	shr	cx,8h
	int	31h
	add	sp,8h
	call	73F9h
	mov	dl,0h
	xchg	[0980h],dl
	mov	bx,40h
	mov	ah,48h
	int	21h
	jnc	710Dh

l09BD_710A:
	jmp	713Bh
09BD:710C                                     90                      .  

l09BD_710D:
	mov	[0C4Ah],ax
	mov	[0980h],dl
	mov	es,ax
	xor	di,di
	push	cs
	call	756Ch
	mov	esi,cs:[6DF4h]
	mov	edi,cs:[6DF8h]
	mov	edx,cs:[6DFCh]
	mov	word ptr [0AA4h],557Dh
	mov	word ptr [0AA6h],5554h
	ret

l09BD_713B:
	push	20h
	call	229Dh
	mov	bx,sp
	mov	ax,[bx+2h]
	mov	es,[0C32h]
	mov	bx,ax
	shr	bx,3h
	or	byte ptr es:[bx],80h
	xchg	bx,ax
	mov	al,[0980h]
	cmp	al,3h
	jnc	716Eh

l09BD_715A:
	push	ax
	mov	byte ptr [0980h],2h
	mov	es,bx
	mov	dh,3h
	mov	ah,0FFh
	push	bx
	int	21h
	pop	bx
	pop	ax
	mov	[0980h],al

l09BD_716E:
	cmp	bx,[0C3Ah]
	jnz	717Ch

l09BD_7174:
	mov	ax,0Ah
	int	31h
	mov	[0C22h],ax

l09BD_717C:
	mov	ax,6h
	int	31h
	xchg	dx,ax
	mov	dx,cx
	ret
09BD:7185                8B 0E EA 0C 8B 1E B6 09 2B D9 81      ........+..
09BD:7190 C3 8E 11 81 EB BD 09 89 1E 5A 00 B4 4A 60 51 51 .........Z..J`QQ
09BD:71A0 8B C4 16 50 16 50 6A 21 0E E8 98 01 81 C4 1E 00 ...P.Pj!........
09BD:71B0 C3 8B DC 36 8B 5F 02 B8 06 00 CD 31 56 57 33 F6 ...6._.....1VW3.
09BD:71C0 0F 03 FB 83 C7 01 13 F6 8B D9 8B CA B8 02 07 CD ................
09BD:71D0 31 5F 5E C3 E8 E0 F8 83 E8 DC F8 80 8B EC 8B 7E 1_^............~
09BD:71E0 02 2E A1 7E 20 8E D8 8E D0 8B 26 50 0F 57 2E 8B ...~ .....&P.W..
09BD:71F0 16 6F 0F 2E 8B 0E 71 0F B8 04 03 CD 31 66 52 66 .o....q.....1fRf
09BD:7200 33 D2 BE 8A 0F B3 08 B8 01 02 8B 14 8B 4C 02 CD 3............L..
09BD:7210 31 FE C3 83 C6 04 80 FB 2E 76 EF B3 00 B8 00 02 1........v......
09BD:7220 CD 31 3B 0E B6 09 75 0D 8B 16 56 00 8B 0E 58 00 .1;...u...V...X.
09BD:7230 B8 01 02 CD 31 FE C3 75 E4 1E 07 BF C0 00 0E E8 ....1..u........
09BD:7240 D2 03 8E 06 4A 0C 33 FF 0E E8 55 03 66 5A 58 B4 ....J.3...U.fZX.
09BD:7250 4C CD 21 3D 02 BF 74 12 3D DC BF 74 05 2E FF 2E L.!=..t.=..t....
09BD:7260 C4 12 BE 98 00 2E 8B 16 00 00 CF                ...........    

l09BD_726B:
	push	1Fh
	call	229Dh

;; fn09BD_7270: 09BD:7270
;;   Called from:
;;     09BD:62D5 (in fn09BD_625F)
fn09BD_7270 proc
	sub	sp,54h
	mov	bp,sp
	mov	[0F50h],sp
	sub	sp,80h
	call	2D3Eh
	call	396Bh
	push	810h
	call	far 0800h:0B12h
	xchg	cx,ax
	jcxz	72FDh

l09BD_728E:
	call	242Eh
	add	ax,800h
	and	al,0FEh
	mov	[0C48h],ax
	cmp	byte ptr [0C42h],0h
	jnz	72AEh

l09BD_72A0:
	mov	ax,0BF02h
	xor	si,si
	xor	dx,dx
	call	0EF4h
	or	si,dx
	jnz	726Bh

l09BD_72AE:
	mov	ah,35h
	mov	al,[0034h]
	int	21h
	push	cs
	pop	ds
	mov	[12C4h],bx
	mov	[12C6h],es
	mov	dx,7253h
	mov	ah,25h
	int	21h
	push	ss
	pop	ds
	mov	word ptr [0AC2h],7302h
	call	6E00h
	push	bp
	call	4B1Dh
	call	2D77h
	mov	es,[bp+2h]
	mov	di,[bp+0Eh]
	mov	ax,[bp+1Eh]
	stosw
	mov	ax,[bp+22h]
	stosw
	mov	ax,[bp+26h]
	stosw
	mov	bx,[bp+4h]
	mov	ax,es
	mov	ss,ax
	lea	sp,[di-6h]
	mov	[0F50h],bp
	mov	ds,bx
	mov	es,bx
	iret

l09BD_72FD:
	push	0Dh
	call	229Dh
	call	13ADh
	pop	cx
	pop	ax
	mov	ah,4Ch
	int	21h
09BD:730B                                  E8 A9 F7 81 90            .....
09BD:7310 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
09BD:7340 00 00 87 DB 55 8B EC 56 66 57 66 33 FF 1E 06 9C ....U..VfWf3....
09BD:7350 FA 2E 8E 06 7E 20 26 8B 3E 48 0C 26 81 2E 48 0C ....~ &.>H.&..H.
09BD:7360 00 02 83 EF 32 57 33 C0 FC C5 76 08 56 83 C6 04 ....2W3...v.V...
09BD:7370 B9 08 00 A5 AB E2 FC AB 5E AD A5 AB 33 C0 AB AB ........^...3...
09BD:7380 2E 8E 1E 7E 20 8A 46 06 8B F0 C1 E6 02 8B 16 2C ...~ .F........,
09BD:7390 0C 2D 08 00 3D 26 00 77 0F 8B D8 80 BF C6 10 00 .-..=&.w........
09BD:73A0 74 06 81 C6 6A 0F 8C DA 8E DA A5 A5 58 AB B8 00 t...j.......X...
09BD:73B0 08 AB 83 EF 32 33 DB B8 02 03 CD 31 B8 00 00 72 ....23.....1...r
09BD:73C0 23 2E 8E 1E 7E 20 8B 36 48 0C 81 C6 CE 01 C4 7E #...~ .6H......~
09BD:73D0 0C 8B 44 24 AB 8B 44 22 AB 8B 44 20 B9 08 00 A5 ..D$..D"..D ....
09BD:73E0 46 46 E2 FB 81 06 48 0C 00 02 59 81 E1 00 02 E3 FF....H...Y.....
09BD:73F0 01 FB 07 1F 66 5F 5E 5D CB                      ....f_^].      

;; fn09BD_73F9: 09BD:73F9
;;   Called from:
;;     09BD:70F6 (in fn09BD_6E00)
fn09BD_73F9 proc
	push	esi
	push	edi
	xor	esi,esi
	xor	edi,edi
	push	ds
	mov	di,7310h
	mov	es,[0C30h]
	mov	si,742Ah
	push	cs
	pop	ds
	mov	ax,303h
	int	31h
	mov	ax,0h
	jc	7424h

l09BD_741A:
	mov	di,0F6Eh
	mov	al,0EAh
	stosb
	xchg	dx,ax
	stosw
	xchg	cx,ax
	stosw

l09BD_7424:
	pop	ds
	pop	edi
	pop	esi
	ret
09BD:742A                               66 81 EE 86 00 00           f.....
09BD:7430 00 67 66 89 26 67 8C 56 04 8C D8 8E D0 66 8B E6 .gf.&g.V.....f..
09BD:7440 83 EC 32 8B EC 67 8B 9E 86 00 00 00 2E 8A 07 2E ..2..g..........
09BD:7450 8E 1E 7E 20 8E 1E 30 0C A2 A3 74 EB 00 FC 06 66 ..~ ..0...t....f
09BD:7460 57 66 5E 1F 16 6A 00 55 66 5F 07 66 B9 19 00 00 Wf^..j.Uf_.f....
09BD:7470 00 F3 67 A5 66 8B 86 BA 00 66 89 46 2A 8D 86 C0 ..g.f....f.F*...
09BD:7480 00 89 46 2E 66 8B 46 1C 66 8B 5E 10 66 8B 4E 18 ..F.f.F.f.^.f.N.
09BD:7490 66 8B 56 14 66 8B 76 04 66 8B 7E 00 66 55 66 8B f.V.f.v.f.~.fUf.
09BD:74A0 6E 08 CD 00 66 55 8B EC 66 0F B7 6E 04 66 8F 46 n...fU..f..n.f.F
09BD:74B0 08 66 89 46 1C 66 89 5E 10 66 89 4E 18 66 89 56 .f.F.f.^.f.N.f.V
09BD:74C0 14 66 89 76 04 66 89 7E 00 9C 58 83 66 20 BE 25 .f.v.f.~..X.f .%
09BD:74D0 41 00 09 46 20 66 58 8C D0 8E D8 8B F5 2E 8E 06 A..F fX.........
09BD:74E0 7E 20 26 8E 06 30 0C BF 10 73 B9 19 00 FC F3 A5 ~ &..0...s......
09BD:74F0 66 33 FF BF 10 73 67 66 0F B2 65 32 66 CF       f3...sgf..e2f. 

;; fn09BD_74FE: 09BD:74FE
;;   Called from:
;;     09BD:6E54 (in fn09BD_6E00)
fn09BD_74FE proc
	mov	ax,1600h
	int	2Fh
	test	al,7Fh
	jz	755Ah

l09BD_7507:
	cmp	al,3h
	jnz	755Ah

l09BD_750B:
	cmp	ah,0Ah
	jnc	755Ah

l09BD_7510:
	mov	ax,4300h
	int	2Fh
	cmp	al,80h
	jnz	755Bh

l09BD_7519:
	push	es
	push	bp
	mov	ax,4310h
	int	2Fh
	push	es
	push	bx
	mov	bp,sp
	mov	ah,9h
	mov	dx,40h
	call	dword ptr [bp+0h]
	dec	ax
	jnz	755Bh

l09BD_752F:
	push	ax
	push	ax
	push	dx
	push	ds
	push	ax
	push	ax
	push	1h
	push	ax
	mov	si,sp
	mov	ah,0Bh
	call	dword ptr [bp+0h]
	dec	ax
	jnz	755Bh

l09BD_7542:
	mov	ax,1681h
	int	2Fh
	mov	cs:[6D2Bh],al
	mov	ah,0Bh
	call	dword ptr [bp+0h]
	mov	ah,0Ah
	call	dword ptr [bp+0h]
	add	sp,14h
	pop	bp
	pop	es

l09BD_755A:
	ret

l09BD_755B:
	push	21h
	call	229Dh
	push	ds
	mov	ds,cs:[207Eh]
	inc	byte ptr [0C43h]
	pop	ds
	iret

;; fn09BD_756C: 09BD:756C
;;   Called from:
;;     09BD:7118 (in fn09BD_6E00)
fn09BD_756C proc
	mov	dx,cs
	and	dx,7h
	or	dx,8h
	jmp	7599h

l09BD_7576:
	add	bl,bl
	lar	ax,dx
	jmp	757Dh

l09BD_757D:
	jnz	758Bh

l09BD_7581:
	test	ah,93h
	jz	758Bh

l09BD_7588:
	or	bl,1h

l09BD_758B:
	add	dx,[0C46h]
	jo	75A0h

l09BD_7593:
	loop	7576h

l09BD_7595:
	mov	es:[di],bl
	inc	di

l09BD_7599:
	xor	bl,bl
	mov	cx,8h
	jmp	7576h

l09BD_75A0:
	retf
09BD:75A1    8C C1 E3 3B 8C CB 83 E3 07 83 CB 08 EB 29 F6  ...;.........).
09BD:75B0 C2 80 0F 85 15 00 0F 02 C3 EB 00 0F 85 0C 00 F6 ................
09BD:75C0 C4 93 0F 84 05 00 B8 01 00 CD 31 02 D2 03 1E 46 ..........1....F
09BD:75D0 0C 0F 80 0B 00 E2 D8 47 26 8A 15 B9 08 00 EB CF .......G&.......
09BD:75E0 CB                                              .              

;; fn09BD_75E1: 09BD:75E1
;;   Called from:
;;     09BD:6F24 (in fn09BD_6E00)
fn09BD_75E1 proc
	mov	ax,204h
	xor	bx,bx

l09BD_75E6:
	int	31h
	mov	es:[di],edx
	mov	es:[di+4h],cx
	add	di,6h
	inc	bx
	cmp	bx,0FFh
	jbe	75E6h

l09BD_75FA:
	mov	ax,202h
	xor	bl,bl

l09BD_75FF:
	int	31h
	mov	es:[di],edx
	mov	es:[di+4h],cx
	add	di,6h
	inc	bl
	cmp	bl,1Fh
	jbe	75FFh

l09BD_7613:
	retf
09BD:7614             8C C1 E3 32 B8 05 02 33 DB 66 26 8B     ...2...3.f&.
09BD:7620 15 26 8B 4D 04 CD 31 83 C7 06 43 81 FB FF 00 76 .&.M..1...C....v
09BD:7630 EC B8 03 02 32 DB 66 26 8B 15 26 8B 4D 04 CD 31 ....2.f&..&.M..1
09BD:7640 83 C7 06 FE C3 80 FB 1F 76 EC CB A0 47 00 BA DE ........v...G...
09BD:7650 2C 80 3E 2E 00 0B 75 16 A8 80 74 03 BA E5 2C BB ,.>...u...t...,.
09BD:7660 7D 0F 2E C6 47 FD E9 2B D3 2E 89 57 FE C3 A8 80 }...G..+...W....
09BD:7670 74 FB BB F6 2C 2E C6 47 FD E9 BA 7F 0F 2B D3 2E t...,..G.....+..
09BD:7680 89 57 FE EB D7 00                               .W....         

;; fn09BD_7686: 09BD:7686
;;   Called from:
;;     09BD:7734 (in fn09BD_76B6)
;;     09BD:7B09 (in fn09BD_7B03)
;;     09BD:7B15 (in fn09BD_7B03)
fn09BD_7686 proc
	push	0h
	pop	ds
	push	si
	push	di
	mov	si,19Ch
	mov	di,[si]
	push	di
	mov	cx,[si+2h]
	push	cx
	cmp	di,ss:[0056h]
	jnz	76AAh

l09BD_769C:
	cmp	cx,ss:[0058h]
	jnz	76AAh

l09BD_76A3:
	mov	word ptr [si],772Bh
	mov	[si+2h],cs

l09BD_76AA:
	int	67h
	pop	word ptr [si+2h]
	pop	word ptr [si]
	pop	di
	pop	si
	push	ss
	pop	ds
	ret

;; fn09BD_76B6: 09BD:76B6
;;   Called from:
;;     09BD:41B5 (in fn09BD_3EBE)
;;     09BD:41F4 (in fn09BD_3EBE)
;;     09BD:4203 (in fn09BD_3EBE)
fn09BD_76B6 proc
	push	si
	push	di
	call	696Bh
	mov	ax,3567h
	int	21h
	mov	cx,es
	cmp	cx,[0058h]
	jz	7731h

l09BD_76C8:
	cmp	word ptr es:[000Bh],4D4Dh
	jnz	7731h

l09BD_76D1:
	cmp	word ptr es:[000Eh],5858h
	jnz	7731h

l09BD_76DA:
	cmp	byte ptr es:[000Ah],45h
	jnz	7731h

l09BD_76E2:
	cmp	byte ptr es:[000Dh],58h
	jnz	7731h

l09BD_76EA:
	cmp	byte ptr es:[0011h],30h
	jnz	7731h

l09BD_76F2:
	test	byte ptr [0047h],80h
	jnz	772Ch

l09BD_76F9:
	test	byte ptr [0014h],2h
	jnz	772Ch

l09BD_7700:
	mov	ax,0DE00h
	int	67h
	or	ah,ah
	jz	772Ch

l09BD_7709:
	mov	ah,43h
	mov	bx,1h
	int	67h
	or	ah,ah
	jnz	7731h

l09BD_7714:
	mov	cs:[2AC5h],dx
	jmp	7731h

l09BD_771B:
	call	66B4h
	push	ax
	call	2AC7h
	xor	ax,ax
	pop	cx
	jcxz	7728h

l09BD_7727:
	dec	ax

l09BD_7728:
	pop	di
	pop	si
	ret
09BD:772B                                  CF                        .   

l09BD_772C:
	call	66B4h
	jz	771Bh

l09BD_7731:
	mov	ax,0DE00h
	call	7686h
	or	ah,ah
	jnz	771Bh

l09BD_773B:
	mov	ax,0DE0Ah
	int	67h
	or	ah,ah
	jnz	771Bh

l09BD_7744:
	mov	[0050h],bl
	mov	[0051h],cl
	mov	byte ptr [002Eh],0Bh
	call	30C4h
	call	3829h
	cmp	word ptr [0DECh],602h
	jc	7771h

l09BD_775F:
	mov	word ptr [0DEEh],4h
	mov	word ptr [0DF0h],0FC00h
	mov	word ptr [0DF2h],801h

l09BD_7771:
	mov	al,[0047h]
	and	al,80h
	or	al,[0A16h]
	mov	ah,[0015h]
	and	ah,20h
	or	al,ah
	mov	cs:[7685h],al
	xor	si,si
	xor	dx,dx
	mov	ax,0BF02h
	test	byte ptr [0014h],10h
	jz	7797h

l09BD_7795:
	mov	al,0DCh

l09BD_7797:
	call	0EF4h
	or	dx,dx
	jz	77F5h

l09BD_779E:
	push	ds
	pop	es
	mov	ds,dx
	mov	di,98h
	cmp	dword ptr [si],40000h
	seta	byte ptr ss:[0DFFh]
	jbe	77C4h

l09BD_77B4:
	test	byte ptr ss:[0015h],10h
	jnz	77C4h

l09BD_77BC:
	cmp	byte ptr ss:[0A16h],0h
	jnz	77F5h

l09BD_77C4:
	mov	cx,0Ch

l09BD_77C7:
	rep movsw

l09BD_77C9:
	push	es
	pop	ds
	mov	eax,[0098h]
	shr	eax,6h
	mov	[0ECAh],ax
	mov	eax,[009Ch]
	shr	eax,6h
	sub	ax,[0ECAh]
	mov	[0ECEh],ax
	cmp	dx,[00A2h]
	jnz	77F2h

l09BD_77EB:
	test	byte ptr [0047h],80h
	jnz	7841h

l09BD_77F2:
	jmp	78A0h

l09BD_77F5:
	push	ss
	pop	ds
	call	7B03h
	mov	dx,bx
	cmp	dx,4h
	jc	780Ch

l09BD_7801:
	mov	al,cs:[7685h]
	mov	[0DFFh],al
	or	al,al
	jnz	7823h

l09BD_780C:
	mov	ax,3000h
	cmp	[0ECCh],ax
	jc	7818h

l09BD_7815:
	mov	[0ECCh],ax

l09BD_7818:
	cmp	dx,300h
	jbe	7823h

l09BD_781E:
	mov	dx,3000h
	jmp	7829h

l09BD_7823:
	shl	dx,4h
	call	7B1Fh

l09BD_7829:
	mov	[0ECEh],dx
	add	dx,2FFFh
	jnc	783Ah

l09BD_7833:
	mov	dx,0EF00h
	mov	[0ECEh],dx

l09BD_783A:
	cmp	byte ptr [0DFFh],0h
	jz	7849h

l09BD_7841:
	mov	dx,2000h
	mov	byte ptr [0DFFh],1h

l09BD_7849:
	and	dx,0F000h
	mov	[0E00h],dh
	push	dx
	mov	ax,ds
	shl	ax,4h
	add	ax,[0CDCh]
	and	ah,0Fh
	neg	ax
	add	ah,10h
	push	ax
	add	ax,dx
	push	ax
	call	far 0800h:0B12h
	call	65A3h
	pop	cx
	cmp	ax,0FFFFh
	jnz	787Ah

;; fn09BD_7875: 09BD:7875
;;   Called from:
;;     09BD:77F2 (in fn09BD_76B6)
;;     09BD:7873 (in fn09BD_76B6)
;;     09BD:7873 (in fn09BD_76B6)
;;     09BD:78FA (in fn09BD_78FA)
;;     09BD:7C1E (in fn09BD_7C31)
fn09BD_7875 proc
	push	17h
	call	229Dh

l09BD_787A:
	pop	cx
	add	ax,cx
	shr	ax,4h
	mov	dx,es
	add	ax,dx
	or	al,al
	jz	788Fh

l09BD_788A:
	push	18h
	call	229Dh

l09BD_788F:
	mov	[00AAh],ax
	mov	[0DF4h],ax
	mov	es,ax
	xor	di,di
	pop	cx
	shr	cx,1h
	xor	ax,ax

l09BD_789E:
	rep stosw

l09BD_78A0:
	cmp	byte ptr [0DFFh],0h
	jz	78B9h

l09BD_78A7:
	or	byte ptr [0A16h],1h
	test	byte ptr [11D2h],1h
	jnz	78B9h

l09BD_78B3:
	mov	word ptr [0ECCh],0EF00h

l09BD_78B9:
	mov	ax,ds
	mov	bx,10h
	mul	bx
	add	[0D34h],ax
	adc	[0D36h],dx
	add	[0D3Ch],ax
	adc	[0D3Eh],dx
	add	[0D40h],ax
	adc	[0D42h],dx
	add	ax,0D74h
	adc	dx,0h
	mov	[091Ah],ax
	mov	[091Ch],dl
	mov	ax,[00AAh]
	inc	ah
	mov	es,ax
	xor	di,di
	mov	si,940h
	mov	ax,0DE01h
	int	67h
	or	ah,ah
	jz	7902h

;; fn09BD_78FA: 09BD:78FA
;;   Called from:
;;     09BD:78F8 (in fn09BD_7875)
;;     09BD:78F8 (in fn09BD_7875)
;;     09BD:7A4B (in fn09BD_7C31)
fn09BD_78FA proc
	call	2AC7h
	push	19h
	call	229Dh

l09BD_7902:
	mov	[0D5Ah],ebx
	cmp	di,1000h
	jnc	7910h

l09BD_790D:
	mov	di,1000h

l09BD_7910:
	mov	[0ECAh],di
	mov	al,[0E00h]
	or	al,al
	jz	799Ch

l09BD_791D:
	xchg	di,ax
	cmp	byte ptr [0DFFh],0h
	jz	792Bh

l09BD_7925:
	mov	ax,1040h
	mov	[0ECAh],ax

l09BD_792B:
	mov	bx,40h
	mul	bx
	mov	[00ACh],ax
	mov	[00AEh],dx
	mov	ax,[0ECEh]
	add	ax,[0ECAh]
	cmp	byte ptr [0DFFh],0h
	jnz	794Dh

l09BD_7945:
	cmp	ax,4000h
	jc	794Dh

l09BD_794A:
	mov	ax,4000h

l09BD_794D:
	mov	[0ECEh],ax
	test	byte ptr [0047h],1h
	jz	795Ch

l09BD_7957:
	mov	ah,88h
	call	0EF4h

l09BD_795C:
	mov	[00A8h],ax
	call	7B85h
	mov	cl,[0E00h]
	xor	ch,ch
	shr	cx,3h
	dec	cx
	dec	cx
	mov	si,es
	mov	ds,si
	sub	si,100h
	mov	es,si
	shr	si,6h
	lodsd
	xor	di,di

l09BD_797E:
	rep movsw

l09BD_7980:
	push	ss
	pop	ds

l09BD_7982:
	mov	[0D38h],eax
	mov	[0D90h],eax
	mov	ax,1h
	mov	word ptr [0AA4h],3CD0h
	mov	word ptr [0AA6h],3D23h
	pop	di
	pop	si
	ret

l09BD_799C:
	mov	eax,[0098h]
	shr	eax,6h
	mov	[0ECAh],ax
	mov	eax,[009Ch]
	shr	eax,6h
	mov	[0ECEh],ax
	mov	cx,[00AAh]
	mov	si,cx
	shr	si,6h
	inc	ch
	mov	es,cx
	mov	eax,es:[si]
	jmp	7982h
09BD:79C5                00 00 00 00 00 00                     ......    

l09BD_79CB:
	mov	ax,0BFDEh
	mov	bx,5h
	call	0EF4h
	or	ax,ax
	jz	79F9h

l09BD_79D8:
	mov	es,ss:[00AAh]
	mov	di,4h
	mov	eax,es:[di-4h]
	mov	cs:[79C7h],eax

l09BD_79EA:
	rep movsd

l09BD_79ED:
	push	ss
	pop	ds
	mov	ax,0BFDEh
	mov	bx,0Bh
	call	0EF4h
	ret

l09BD_79F9:
	mov	cs:[79C5h],cx
	shl	cx,2h
	add	cx,di
	movzx	ecx,cx
	mov	ax,es
	movzx	eax,ax
	shl	eax,4h
	movzx	edi,di
	add	edi,eax
	add	ecx,eax
	push	ecx
	push	edi
	call	0290h
	push	38h
	pop	es
	pop	edi
	pop	ebx

l09BD_7A29:
	call	far 0070h:55B0h
	or	ax,ax
	jz	7A44h

l09BD_7A32:
	cmp	edi,ebx
	jc	7A29h

l09BD_7A37:
	jz	7A44h

l09BD_7A39:
	sub	edi,4h
	mov	byte ptr es:[edi],0h
	jmp	7A32h

l09BD_7A44:
	push	ax
	call	092Ch
	pop	ax
	or	ax,ax
	jz	78FAh

l09BD_7A4F:
	mov	cx,cs:[79C5h]
	jmp	79CBh

;; fn09BD_7A57: 09BD:7A57
;;   Called from:
;;     09BD:5514 (in fn09BD_5666)
;;     09BD:5539 (in fn09BD_5666)
fn09BD_7A57 proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	call	0290h
	movzx	ecx,word ptr cs:[79C5h]
	jcxz	7AE1h

l09BD_7A68:
	movzx	esi,word ptr [00AAh]
	push	38h
	pop	ds
	shl	esi,4h
	mov	edi,esi
	add	edi,1C00h
	mov	edx,cs:[79C7h]
	xchg	[esi],edx
	add	si,4h
	mov	eax,cr3
	mov	cr3,eax
	lodsd
	mov	ebx,eax
	xchg	[edi],eax
	mov	[300000h],ebx
	mov	[edi],eax
	mov	[esi-8h],edx
	mov	eax,cr3
	mov	cr3,eax
	mov	edi,400004h
	push	ds
	pop	es
	mov	bx,cx
	dec	cx

l09BD_7ABE:
	rep movsd

l09BD_7AC2:
	mov	cx,bx
	shl	cx,0Ah
	sub	cx,bx
	xor	eax,eax

l09BD_7ACC:
	rep stosd

l09BD_7AD0:
	push	ss
	pop	ds
	mov	cx,[0DFAh]
	jcxz	7AE1h

l09BD_7AD8:
	mov	esi,3FF000h
	call	7BB8h

l09BD_7AE1:
	push	dword ptr [bp+4h]
	push	dword ptr [0098h]
	call	far 0070h:561Bh
	add	sp,8h
	push	ax
	call	092Ch
	pop	ax
	inc	ax
	pop	si
	pop	di
	mov	word ptr cs:[79C5h],0h
	pop	bp
	ret

;; fn09BD_7B03: 09BD:7B03
;;   Called from:
;;     09BD:77F7 (in fn09BD_76B6)
;;     09BD:7B24 (in fn09BD_7B1F)
;;     09BD:7B3A (in fn09BD_7B1F)
fn09BD_7B03 proc
	xor	bx,bx
	xor	dx,dx
	mov	ah,42h
	call	7686h
	or	bx,bx
	jnz	7B1Eh

l09BD_7B12:
	mov	ax,0DE03h
	call	7686h
	shr	edx,2h
	mov	bx,dx

l09BD_7B1E:
	ret

;; fn09BD_7B1F: 09BD:7B1F
;;   Called from:
;;     09BD:7826 (in fn09BD_76B6)
fn09BD_7B1F proc
	push	dx
	push	word ptr [0ECCh]
	call	7B03h
	mov	si,bx
	mov	di,dx
	call	6C64h
	pop	cx
	pop	dx
	xchg	[0ECCh],cx
	or	ax,ax
	jz	7B7Ah

l09BD_7B38:
	push	dx
	push	cx
	call	7B03h
	pop	cx
	pop	ax
	cmp	di,dx
	xchg	dx,ax
	jnz	7B7Bh

l09BD_7B44:
	cmp	si,bx
	jnz	7B7Bh

l09BD_7B48:
	add	dx,[0ECEh]
	cmp	byte ptr [0DFFh],0h
	jnz	7B60h

l09BD_7B55:
	cmp	dx,3000h
	jbe	7B60h

l09BD_7B5D:
	mov	dx,3000h

l09BD_7B60:
	mov	ax,[0ECAh]
	mov	bx,ax
	add	ax,cx
	and	al,0FCh
	add	bx,3h
	and	bl,0FCh
	sub	ax,bx
	mov	[0ECAh],bx
	mov	[0DFAh],ax
	or	ax,ax

l09BD_7B7A:
	ret

l09BD_7B7B:
	push	dx
	call	1DECh
	pop	dx
	ret
09BD:7B81    00 00 00 00                                   ....          

;; fn09BD_7B85: 09BD:7B85
;;   Called from:
;;     09BD:795F (in fn09BD_78FA)
fn09BD_7B85 proc
	movzx	eax,word ptr [0DFAh]
	shl	eax,0Ah
	mov	[0AA8h],eax
	jz	7B7Ah

l09BD_7B95:
	mov	eax,[0098h]
	mov	cs:[7B81h],eax
	cmp	byte ptr [0DFFh],0h
	jnz	7B7Ah

l09BD_7BA5:
	push	si
	push	di
	mov	cx,[00AAh]
	inc	ch
	mov	es,cx
	xor	esi,esi
	call	7BB8h
	pop	di
	pop	si
	ret

;; fn09BD_7BB8: 09BD:7BB8
;;   Called from:
;;     09BD:7ADE (in fn09BD_7A57)
;;     09BD:7BB2 (in fn09BD_7B85)
fn09BD_7BB8 proc
	mov	eax,cs:[7B81h]
	movzx	edi,word ptr [0ECAh]
	mov	ebx,1000h
	mov	cx,[0DFAh]
	add	cx,di
	shl	eax,4h
	add	eax,ebx
	dec	eax
	and	ax,0F000h
	or	ax,0C07h

l09BD_7BDE:
	cmp	di,cx
	jnc	7BF0h

l09BD_7BE2:
	mov	es:[esi+edi],eax
	add	di,4h
	add	eax,ebx
	jmp	7BDEh

l09BD_7BF0:
	shl	edi,6h
	mov	[00ACh],edi
	ret

l09BD_7BFA:
	mov	cs:[79C5h],cx
	mov	es,[00AAh]
	mov	di,4h
	mov	eax,es:[di-4h]
	mov	cs:[79C7h],eax
	cmp	byte ptr [0E00h],0h
	jz	7C30h

l09BD_7C17:
	mov	ax,0DE04h
	int	67h
	or	ah,ah
	jnz	7875h

l09BD_7C22:
	inc	word ptr [0DF6h]
	or	dx,807h
	xchg	edx,eax
	stosd
	loop	7C17h

l09BD_7C30:
	ret

;; fn09BD_7C31: 09BD:7C31
;;   Called from:
;;     09BD:455B (in fn09BD_3EBE)
fn09BD_7C31 proc
	cmp	byte ptr [0E00h],0h
	jz	7C30h

l09BD_7C38:
	call	199Ah
	call	016Ch
	cmp	byte ptr [0DFFh],0h
	jz	7C5Bh

l09BD_7C45:
	mov	cx,[0ECEh]
	sub	cx,1000h
	shr	cx,0Ch
	inc	cx
	test	byte ptr [0047h],80h
	jz	7BFAh

l09BD_7C58:
	jmp	79CBh

l09BD_7C5B:
	mov	cx,[0DFAh]
	jcxz	7C30h

l09BD_7C61:
	cmp	word ptr [0ADCh],0h
	jz	7C30h

l09BD_7C68:
	push	si
	push	di
	movzx	eax,word ptr [0ECAh]
	shl	eax,0Ah
	mov	edx,[0098h]
	shl	edx,4h
	sub	edx,eax
	neg	edx
	and	dh,0Fh
	push	eax
	or	ax,0EEEh
	push	eax
	mov	bx,sp
	push	0h
	push	dx
	push	word ptr [0ADCh]
	push	ss
	push	bx
	push	0h
	push	0h
	push	4h
	mov	si,sp
	mov	edi,1000h
	shr	cx,2h

l09BD_7CA9:
	mov	ah,0Bh
	call	dword ptr [0AECh]
	or	ax,ax
	jz	7CF0h

l09BD_7CB3:
	add	[bx],edi
	add	[si+0Ch],edi
	loop	7CA9h

l09BD_7CBC:
	call	0290h
	push	38h
	pop	es
	mov	bx,sp
	mov	ebx,[bx+14h]
	mov	eax,ebx
	or	ax,0EEEh
	mov	cx,[0DFAh]
	shr	cx,2h

l09BD_7CD5:
	cmp	eax,es:[ebx]
	jnz	7CEDh

l09BD_7CDC:
	add	ebx,edi
	add	eax,edi
	loop	7CD5h

l09BD_7CE4:
	call	092Ch

l09BD_7CE7:
	add	sp,18h
	pop	di
	pop	si
	ret

l09BD_7CED:
	call	092Ch

l09BD_7CF0:
	mov	cx,[0DFAh]
	add	[0ECAh],cx
	mov	ax,[00AAh]
	add	ah,2h
	mov	es,ax
	xor	ax,ax
	xor	di,di
	shr	cx,1h

l09BD_7D06:
	rep stosw

l09BD_7D08:
	call	1DECh
	jmp	7CE7h
09BD:7D0D                                        00 00 00              ...

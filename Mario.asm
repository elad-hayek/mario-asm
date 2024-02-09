Draw_locatio macro a,b,z,d,e,f,g,h
push ax
mov al, a
mov b, al
mov al, z
mov d, al
	
mov ax, e
mov f, ax
mov ax, g
mov h, ax
pop ax	
endm

MODEL small
stack 100h 
JUMPS

Play equ 2
Help equ 3
About equ 4
Back equ 1

Left_Key equ 75
Right_Key equ 77
Up_Key equ 72

DATASEG

Ground_blocks_width  db 16d
Ground_blocks_height db  25d

Bush_width  db 32d
Bush_height db 16d

Bricks_width db 17d
Bricks_height db 16d

Coin_width db 14d
Coin_height db 17d

Gumba_width db 18d
Gumba_height db 17d

Mario_width  db 14d
Mario_height db 18d

Life_width db 11d
Life_height db 7d

Numbers_width db 3d
Numbers_height db 8d

Coin_Colector_width db 6d
Coin_Colector_height db 9d

Coin_Blank	db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			
Gumba_Blank	 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
		 	 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
		     db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 
			 
Coin_Colector db 03,14,14,14,14,03
			  db 14,15,15,15,08,14
			  db 14,15,14,14,08,14
			  db 14,15,14,14,08,14
			  db 14,15,14,14,08,14
			  db 14,15,14,14,08,14
			  db 14,15,14,14,08,14
			  db 14,08,08,08,08,14
			  db 03,14,14,14,14,03
			  
			  Coin_ColectorX dw 50d
			  Coin_ColectorY dw 3d
				 
			 Coin_NumberX dw 60d
			 Coin_NumberY dw 3d
 		
Life		db 03,03,04,04,04,04,04,03,03,03,03
			db 03,04,04,04,04,04,04,04,04,04,03
			db 03,06,06,06,14,14,06,14,03,03,03
			db 06,14,06,14,14,14,06,14,14,14,03
			db 06,14,06,06,14,14,14,06,14,14,14
			db 06,06,14,14,14,14,06,06,06,06,03
			db 03,03,14,14,14,14,14,14,14,03,03	
			
	 		LifeX dw 20d
			LifeY dw 3d
			
Zero        db 03,03,03
			db 03,15,03
			db 15,03,15
			db 15,03,15
			db 15,03,15
			db 15,03,15
			db 03,15,03
			db 03,03,03			
			
One         db 03,15,03
			db 15,15,03
			db 03,15,03
			db 03,15,03
			db 03,15,03
			db 03,15,03
			db 15,15,15
			db 03,03,03

Two			db 03,03,03
			db 03,15,03
			db 15,03,15
			db 03,03,15
			db 03,15,03
			db 15,03,03
			db 15,15,15
			db 03,03,03
			
Three		db 03,03,03
			db 03,15,03
			db 15,03,15
			db 03,03,15
			db 03,15,03
			db 03,03,15
			db 15,03,15
			db 03,15,03
			
Four 		db 15,03,15
			db 15,03,15
			db 15,03,15
			db 15,15,15
			db 03,03,15
			db 03,03,15
			db 03,03,15
			db 03,03,15			
		
	 NumbersX dw 35d
	 NumbersY dw 2d
	 
Mario_Right db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			db 03,03,03,03,04,04,04,04,04,03,03,03,03,03
			db 03,03,03,04,04,04,04,04,04,04,04,04,03,03
			db 03,03,03,06,06,06,14,14,06,14,03,03,03,03
			db 03,03,06,14,06,14,14,14,06,14,14,14,03,03
			db 03,03,06,14,06,06,14,14,14,06,14,14,14,03
			db 03,03,06,06,14,14,14,14,06,06,06,06,03,03
			db 03,03,03,03,14,14,14,14,14,14,14,03,03,03
			db 03,03,03,06,06,04,06,06,06,03,03,03,03,03
			db 03,03,06,06,06,04,06,06,04,06,06,06,03,03
			db 03,06,06,06,06,04,04,04,04,06,06,06,06,03
			db 03,14,14,06,04,14,04,04,14,04,06,14,14,03
			db 03,14,14,14,04,04,04,04,04,04,14,14,14,03
			db 03,14,14,04,04,04,04,04,04,04,04,14,14,03
			db 03,03,03,04,04,04,03,03,04,04,04,03,03,03
			db 03,03,06,06,06,03,03,03,03,06,06,06,03,03
			db 03,06,06,06,06,03,03,03,03,06,06,06,06,03
			db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
	  
Mario_Left   db 03,03,03,03,03,03,03,03,03,03,03,03,03,03
			 db 03,03,03,03,03,04,04,04,04,04,03,03,03,03
			 db 03,03,04,04,04,04,04,04,04,04,04,03,03,03
			 db 03,03,03,03,14,06,14,14,06,06,06,03,03,03
			 db 03,03,14,14,14,06,14,14,14,06,14,06,03,03
			 db 03,14,14,14,06,14,14,14,06,06,14,06,03,03
			 db 03,03,06,06,06,06,14,14,14,14,06,06,03,03
			 db 03,03,03,14,14,14,14,14,14,14,03,03,03,03
			 db 03,03,03,03,03,06,06,06,04,06,06,03,03,03
			 db 03,03,06,06,06,04,06,06,04,06,06,06,03,03
			 db 03,06,06,06,06,04,04,04,04,06,06,06,06,03
			 db 03,14,14,06,04,14,04,04,14,04,06,14,14,03
			 db 03,14,14,14,04,04,04,04,04,04,14,14,14,03
			 db 03,14,14,04,04,04,04,04,04,04,04,14,14,03
			 db 03,03,03,04,04,04,03,03,04,04,04,03,03,03
			 db 03,03,06,06,06,03,03,03,03,06,06,06,03,03
			 db 03,06,06,06,06,03,03,03,03,06,06,06,06,03
			 db 03,03,03,03,03,03,03,03,03,03,03,03,03,03

	  


  MarioX dw 0d
  MarioY dw 157d
  
  
Coin db 03,03,03,03,03,08,08,08,08,08,08,03,03,03
	 db 03,03,03,08,08,08,15,15,15,08,08,08,08,03
	 db 03,03,03,08,08,08,15,15,15,08,08,08,08,03
	 db 03,03,08,08,15,15,14,14,14,14,14,08,08,03
	 db 03,03,08,15,14,14,15,15,15,08,14,14,08,08
	 db 03,08,08,15,14,14,15,14,14,08,14,14,08,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,15,14,14,14,15,14,14,08,14,14,14,08
	 db 03,08,08,15,14,14,15,14,14,08,14,14,08,08
	 db 03,03,08,15,14,14,08,08,08,08,14,14,08,08
	 db 03,03,08,08,15,14,14,14,14,14,14,08,08,03
	 db 03,03,03,08,08,08,14,14,14,08,08,08,08,03
	 db 03,03,03,03,03,08,08,08,08,08,08,03,03,03
	 
	 CoinX dw 209d
	 CoinY dw 107d
	 

Bricks  db 07,07,07,07,07,07,07,07,07,07,07,07,07,07,07,07,07
        db 00,06,06,06,06,06,06,00,06,06,06,06,06,06,06,06,00
		db 00,06,06,06,06,06,06,00,06,06,06,06,06,06,06,06,00
		db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
		db 00,06,06,06,06,06,06,00,06,06,06,06,06,06,06,06,00
		db 00,06,06,06,06,06,06,00,06,06,06,06,06,06,06,06,00
		db 00,06,06,06,06,06,06,00,06,06,06,06,06,06,06,06,00
		db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,06,06,06,00,06,06,06,06,06,06,06,00,06,06,06,00
		db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
 
 BricksX dw 192d
 BricksY dw 125d
 
Ground_blocks   db 06,15,15,15,15,15,15,15,15,00,06,15,15,15,15,06
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,00,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,00,00,00,00,06
				db 15,06,06,06,06,06,06,06,06,00,15,15,15,15,15,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 00,00,06,06,06,06,06,06,06,15,06,06,06,06,06,00
				db 15,15,00,00,06,06,06,06,06,15,06,06,06,06,06,00
				db 15,06,15,15,00,00,00,00,15,06,06,06,06,06,06,00
				db 15,06,06,06,15,15,15,00,15,06,06,06,06,06,06,00
				db 15,06,06,06,06,06,06,00,15,06,06,06,06,06,00,00
				db 15,00,00,00,00,00,00,06,15,00,00,00,00,00,00,06
				
				db 06,15,15,15,15,15,15,15,15,00,06,15,15,15,15,06
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,00,06,06,06,00
				db 15,06,06,06,06,06,06,06,06,00,15,00,00,00,00,06
				db 15,06,06,06,06,06,06,06,06,00,15,15,15,15,15,00
				db 15,06,06,06,06,06,06,06,06,00,15,06,06,06,06,00

				


  Ground_blocksX dw 0d
  Ground_blocksY dw 175d
  
  Bush		  db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,10,10,10,10,03,03,03,03,03,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,03,03,03,10,10,10,10,10,10,03,03,03,03,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,03,10,10,10,10,10,10,10,10,03,03,03,03,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,03,10,10,10,10,10,10,10,10,10,10,10,03,10,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,03,10,10,10,10,10,10,02,10,10,10,10,10,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,03,10,10,10,02,02,10,10,10,02,10,10,10,10,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,03,10,10,10,02,10,10,10,10,10,10,10,10,10,10,03,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,03,03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,03,03,03,03,03,03,03
			  db 03,03,03,03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,03,03,10,03,03,03,03
			  db 03,03,03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,10,10,03,03,03,03
			  db 03,03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,03,03,03
			  db 03,03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,10,03
			  db 03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03
			  db 03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03
			  db 03,03,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,03,03

 BushX dw 48d
 BushY dw 159d
 
  Gumba db 03,03,03,03,03,03,03,04,04,04,04,03,03,03,03,03,03,03
		db 03,03,03,03,03,03,04,00,06,06,00,04,03,03,03,03,03,03
		db 03,03,03,03,00,00,00,00,06,06,00,00,00,00,03,03,03,03
		db 03,03,03,03,03,04,15,00,06,06,00,15,04,03,03,03,03,03
		db 03,03,03,03,04,06,15,15,00,00,15,15,06,04,03,03,03,03
		db 03,03,04,04,06,06,15,00,06,06,00,15,06,06,04,04,03,03
		db 03,04,06,06,06,06,15,00,06,06,00,15,06,06,06,06,04,03
		db 03,00,06,06,06,06,06,06,06,06,06,06,06,06,06,06,00,03
		db 03,00,06,06,15,00,00,00,00,00,00,00,00,15,06,06,00,03
		db 03,03,00,06,15,06,06,06,06,06,06,06,06,15,06,00,03,03
		db 03,03,03,00,00,00,00,00,00,00,00,00,00,00,03,03,03,03
		db 03,03,03,03,03,00,07,07,07,07,07,07,00,03,03,03,03,03
		db 03,03,03,03,04,04,07,07,07,07,07,07,04,04,03,03,03,03
		db 03,03,04,04,04,04,07,07,07,07,07,07,04,04,04,04,03,03
		db 03,04,04,04,04,04,04,07,07,07,07,04,04,04,04,04,04,03
		db 03,04,04,04,04,04,04,03,03,03,03,04,04,04,04,04,04,03
		db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
		
		GumbaX dw 143d
		GumbaY dw 158d
 
 Current_height db ?
 Current_width db ?
 CurrentX dw ?
 CurrentY dw ?
 What_Key db ?
 Wait_For_Jump db ?
 Fail db 0
 Just_up_Mark db 0
 On_Blocks_check dw 0
 What_Level db 1
 Lives db 3
 Win_Mark db 0
 Coins_Collected db 0
 
Over db 'over.bmp',0
Win db 'win.bmp',0
AboutScreen db 'about.bmp',0
HelpScreen db 'help.bmp',0
Opening db 'opening.bmp',0	
Again db 'again.bmp',0	
Filehandle dw ?
Header db 54 dup (0)
Palette db 256*4 dup (0)
ScrLine db 320 dup (0)
ErrorMsg db 'Error', 13, 10,'$'
 
CODESEG

OpenFile proc
; Open file
mov ah, 3Dh
xor al, al
;mov dx, offset Filename
int 21h
jc openerror
mov [Filehandle], ax
ret
openerror:
mov dx, offset ErrorMsg
mov ah, 9h
int 21h
ret
endP OpenFile


ReadHeader proc
; Read BMP file header, 54 bytes
mov ah,3fh
mov bx, [Filehandle]
mov cx,54
mov dx,offset Header
int 21h
ret
endp ReadHeader


ReadPalette proc
; Read BMP file color palette, 256 colors * 4 bytes (400h)
mov ah,3fh
mov cx,400h
mov dx,offset Palette
int 21h
ret
endp ReadPalette


CopyPal proc
; Copy the colors palette to the video memory
; The number of the first color should be sent to port 3C8h
; The palette is sent to port 3C9h
mov si,offset Palette
mov cx,256
mov dx,3C8h
mov al,0
; Copy starting color to port 3C8h
out dx,al
; Copy palette itself to port 3C9h
inc dx
PalLoop:
; Note: Colors in a BMP file are saved as BGR values rather than RGB.
mov al,[si+2] ; Get red value.
shr al,2 ; Max. is 255, but video palette maximal
; value is 63. Therefore dividing by 4.
out dx,al ; Send it.
mov al,[si+1] ; Get green value.
shr al,2
out dx,al ; Send it.
mov al,[si] ; Get blue value.
shr al,2
out dx,al ; Send it.
add si,4 ; Point to next color.
; (There is a null chr. after every color.)
loop PalLoop
ret
endp CopyPal


CopyBitmap proc
; BMP graphics are saved upside-down.
; Read the graphic line by line (200 lines in VGA format),
; displaying the lines from bottom to top.
mov ax, 0A000h
mov es, ax
mov cx,200
PrintBMPLoop:
push cx
; di = cx*320, point to the correct screen line
mov di,cx
shl cx,6
shl di,8
add di,cx
; Read one line
mov ah,3fh
mov cx,320
mov dx,offset ScrLine
int 21h
; Copy one line into video memory
cld ; Clear direction flag, for movsb
mov cx,320
mov si,offset ScrLine
rep movsb ; Copy line to the screen
pop cx
loop PrintBMPLoop
ret
endp CopyBitmap

DrawPic proc
;get a picture from the dataseg and draw it according to its properties
        push cx
		mov dh, [Current_width]
        mov dl, [Current_height]
		mov ax, [CurrentX]
        mov bx, [CurrentY]
cycle:
        mov cl, [byte ptr si]
        push ax bx cx dx
        call PutPixel
        pop dx cx bx ax
        inc si
        inc ax
        dec dh
        jnz cycle                  ; X loop
        mov dh, [Current_width]
		push cx
		xor cx,cx 
		mov cl, [Current_width]
        sub ax, cx
		pop cx
        inc bx

        dec dl
        jnz cycle                  ; Y loop
		pop cx
        ret
endp DrawPic		
	
PutPixel proc	
;draw individual pixels
	mov di, 0
  	mov dx, bx
  	shl dx, 8
  	shl bx, 6
  	add di, ax
  	add di, bx
  	add di, dx
  	mov al, cl
  	stosb
  	ret
endp PutPixel
	
ReadKey proc
;read what key was pressed and move mario acording to the key
  	mov ah, 0
  	int 016h
  	cmp ah, Left_Key                  ; Left
	je Move_Mario_Left
	jmp Check_right
Move_Mario_Left:
	cmp [MarioX], 0
	jbe Stop_Draw
	dec [MarioX]
	mov dx, [MarioY]
	add dx, 16d
	mov cx, [MarioX]
	mov ah, 0Dh
	int 10h
	cmp al, 4
	jne Continue_Left
	call How_Many_Lives
	jmp Stop_Draw
Continue_Left:
	mov [What_Key], Left_Key 
	cmp [MarioY], 157d
	je Stay
	call On_Blocks
stay:	
	call Coins_Walk
	
Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
	lea si, [Mario_Left]
	call DrawPic
	jmp Stop_Draw
;----------------------------------------	

Check_right:
  	cmp ah, Right_Key               ; Right
	je Move_Mario_Right
	call Jump
	jmp Stop_Draw
Move_Mario_Right:		
	cmp [MarioX], 308d
	jne Check_Gumba_Right
	cmp [What_Level], 1
	je Change_Level_Walk
	call You_Win
	jmp Stop_Draw
Change_Level_Walk:
	call Second_Level
	inc [What_Level]
	mov [MarioX], 0
    mov [MarioY], 157d
Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
  lea si, [Mario_Right]
  mov [What_Key], Right_Key
  call DrawPic
Check_Gumba_Right:	
	inc [MarioX]
	mov dx, [MarioY]
	add dx, 16d
	mov cx, [MarioX]
	add cx, 13d
	mov ah, 0Dh
	int 10h
	cmp al, 4
	jne Continue_Right
	call How_Many_Lives
	jmp Stop_Draw
Continue_Right:	
	mov [What_Key], Right_Key
	cmp [MarioY], 157d
	je Dont_Fall
	call On_Blocks
Dont_Fall:	
	call Coins_Walk
	
Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
	lea si, [Mario_Right]		
	call DrawPic
	jmp Stop_Draw
	
Stop_Draw:	
	ret 
endp ReadKey 

Jump proc
;move mario up and if one of the left or right arrows was pressed moves mario in the direction of the key that was pressed
	mov bl, [What_Key]
	mov [Wait_For_Jump], bl
	mov [What_Key], 0
	cmp ah, Up_Key
	je Jump_loop
	jmp Restore_Side
Jump_loop:
	mov ah, 0
  	int 016h
	cmp ah, Right_Key
    je Move_UpRight                ;jump
	cmp ah, Left_Key 
	je Move_UpLeft
	mov [Just_up_Mark], 1
	cmp ah, Up_Key
	je Start_jump
	jmp Stop_Jump
	
Move_UpRight:
	mov [What_Key], Right_Key
	jmp Start_jump
	
Move_UpLeft:
	mov [What_Key], Left_Key 

Start_jump:
	mov cx, 65d               ;jump hight          
Up:
	cmp [Just_up_Mark], 1	
	jne Continue_Side_jump
	mov [What_Key], 0
Continue_Side_jump: 
Draw_locatio Bush_width,Current_width,Bush_height,Current_height,BushX,CurrentX,BushY,CurrentY
	lea si ,[Bush]                       ;bush
  	call DrawPic
	dec [MarioY]
	mov bl, 4
	call Block_Touch
	cmp si, 0
	jne Live
	call How_Many_Lives
	jmp Stop_Jump
Live:	
	mov bl, 0
	call Block_Touch
	cmp si, 1
	je Check_Side
	jmp Continue_Down
Check_Side:	
	cmp [What_Key], Right_Key       ;check if right
	je Up_Right
	cmp [What_Key], Left_Key       ;check if left
	je Up_Left
	mov bl, [Wait_For_Jump]
	mov [What_Key], bl
	jmp Just_up
	
Up_Right:
	cmp [MarioX], 308
	jne Jumping_Right
	cmp [What_Level], 1
	je Change_Level_Jump
	call You_Win
	jmp Stop_Jump
Change_Level_Jump:
	call Second_Level
	inc [What_Level]
	mov [MarioX], 0
Jumping_Right:	
	inc [MarioX]
	call Coins_Jump
	mov bl, 0
	call Block_Touch
	cmp si, 0
	jne Just_up
	call Check_If_Over
	cmp [Fail], 1
	je Stop_Jump
	jmp Continue_Down
	
Up_Left:
    cmp [MarioX], 0
	je Regular_Down
	dec [MarioX]
    call Coins_Jump
	mov bl, 0
	call Block_Touch
	cmp si, 0
	jne Just_up
	call Check_If_Over
	cmp [Fail], 1
	je Stop_Jump
	jmp Continue_Down
	
Just_up:	
Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
	call Side
	call DrawPic
	dec cx
	cmp cx, 0
	je Regular_Down
	jmp Up
;---------------------------------------------------------------------------		
Continue_Down:
mov [Just_up_Mark], 1		
call Down
jmp Stop_Jump
Regular_Down:
mov [Just_up_Mark], 0
call Down
jmp Stop_Jump
Restore_Side:
mov [What_Key], bl
Stop_Jump:
mov [Just_up_Mark], 0
	ret
endp Jump	


Down proc
;make mario go down to the ground blocks no matter what his hight
	push cx ax dx

	mov cx, 157d	;Down from jump
	sub cx, [MarioY]	
	cmp [Just_up_Mark], 0
	je Fall
	cmp [What_Key], Right_Key
	je Down_Striate
	inc [MarioX]
	jmp Fall
Down_Striate:
	dec [MarioX]
Fall:
	inc [MarioY]
	call Gumba_Kill
	mov [On_Blocks_check], 1
	call Coins_Jump
	mov bl, 7
	mov bh, [What_Key]
	mov [What_Key], 0
	call Block_Touch	
	mov [What_Key], bh
	mov [On_Blocks_check], 0
	cmp si, 0
	je Restore_Value

Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
	call Side
	call DrawPic
	loop Fall
	jmp Stop_Down
Restore_Value: 	
	Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
	call Side
	call DrawPic
Stop_Down:	
	pop dx ax cx
	ret
endp Down

Side proc
;decide what side mario will appear according to the arrow key that was pressed 
cmp [What_Key], Right_Key
je Draw_Right
lea si, [Mario_Left]
jmp Mario_Side
Draw_Right:
lea si, [Mario_Right]
Mario_Side:
ret
endp Side

Block_Touch proc
;check if mario touch the bricks in the air if he is he will fall down from his location 
	push ax dx cx

	mov ah, 0Dh                              ;check if touching blocks left head
	mov dx, [MarioY]
	mov cx, [MarioX]
	int 10h
	cmp al, bl
	je Mark_Yes
	

	mov ah, 0Dh                              ;check if touching blocks left leg left side
	mov dx, [MarioY]
	add dx, 17d
	add dx, [On_Blocks_check]
	mov cx, [MarioX]
	int 10h
	cmp al, bl
	je Mark_Yes
	
	mov ah, 0Dh                              ;check if touching blocks left leg right side
	mov dx, [MarioY]
	add dx, 17d
	add dx, [On_Blocks_check]
	mov cx, [MarioX]
	add cx, 5
	int 10h
	cmp al, bl
	je Mark_Yes
	jmp Middle

	
Middle:	
	mov ah, 0Dh                              ;check middle
	mov dx, [MarioY]
	add dx, 17d
	add dx, [On_Blocks_check]
	mov cx, [MarioX]
	add cx, 7
	int 10h
	cmp al, bl
	je Mark_Yes
	

	mov ah, 0Dh                              ;check if touching blocks right head
	mov dx, [MarioY]
	mov cx, [MarioX]
	add cx, 13d
	int 10h
	cmp al, bl
	je Mark_Yes

	
	
	mov ah, 0Dh                              ;check if touching blocks right leg right
	mov dx, [MarioY]
	add dx, 17d
	add dx, [On_Blocks_check]
	mov cx, [MarioX]
	add cx, 13d
	int 10h
	cmp al, bl
	je Mark_Yes
	
	mov ah, 0Dh                              ;check if touching blocks right leg left
	mov dx, [MarioY]
	add dx, 17d
	add dx, [On_Blocks_check]
	mov cx, [MarioX]
	add cx, 8d
	int 10h
	cmp al, bl
	jne Mark_Not
	
Mark_Yes:	
	mov si, 0
	jmp Stop_Block_Checking
Mark_Not:
	mov si, 1
Stop_Block_Checking:	
	pop cx dx ax
	ret
endp Block_Touch	


Coins_Walk proc
;check if mario touches a coin if he is the coin will disappear 
push ax dx cx
mov ah, 0Dh
mov dx, [MarioY]
add dx, 7d
mov cx, [MarioX]
cmp [What_Key], Right_Key
jne Collect_From_Left
add cx, 14d
Collect_From_Left:
int 10h
cmp al, 8
je Collect
jmp didnt_collect
Collect:
inc [Coins_Collected]
mov cx, [MarioX]
mov dx, [MarioY]
cmp [What_Key], Left_Key 
jne Collected
sub cx, 13d
jmp Draw_Blank
Collected:
add cx, 13d
Draw_Blank:
Draw_locatio Coin_width,Current_width,Coin_height,Current_height,cx,CurrentX,dx,CurrentY
lea si, [Coin_Blank]
call DrawPic
didnt_collect:
call Coin_Draw
pop cx dx ax
ret
endp Coins_Walk

Check_What_Coin proc
;check witch coin mario touches
xor bh, bh
cmp [What_Level], 2
je Check_Second_Level_Coins
cmp [MarioY], 125d
ja Coin1
mov bh, 2
jmp Return_What_Coin
Coin1:
cmp [MarioY], 175d
ja Return_What_Coin
mov bh, 1
jmp Return_What_Coin
Check_Second_Level_Coins:
cmp [MarioY], 100d
ja Jump_Coin
mov bh, 2
jmp Return_What_Coin
Jump_Coin:
mov bh, 1
Return_What_Coin:
ret
endp Check_What_Coin

Coins_Jump proc
;check if during his jump mario touch a coin and if so make the coin disappear
push ax cx dx
mov bl, 8
call Block_Touch
cmp si, 1
je Not_Coin
inc [Coins_Collected]
call Check_What_Coin
cmp [What_Level], 2
jne First_Level_Coins
mov cx, 220d
mov dx, 120d
jmp Start_Coins_Erase
First_Level_Coins:
mov cx, 96d
mov dx, 157d
Start_Coins_Erase:
cmp bh, 2
jne What_Block
Draw_locatio Coin_width,Current_width,Coin_height,Current_height,CoinX,CurrentX,CoinY,CurrentY
lea si ,[Coin_Blank]
call DrawPic  
jmp Not_Coin
cmp bh, 1
jne Not_Coin
What_Block:
Draw_locatio Coin_width,Current_width,Coin_height,Current_height,cx,CurrentX,dx,CurrentY
lea si ,[Coin_Blank]
call DrawPic  

Not_Coin:
call Coin_Draw
pop dx cx ax
ret
endp Coins_Jump 

On_Blocks proc
;checks if mario is on top of the bricks in the air if not he fill fall down
push ax cx dx
xor di, di
mov ah, 0Dh
mov cx, [MarioX]
mov dx, [MarioY]
add dx , 18d
cmp [What_Key], Left_Key 
jne Drop_Right
add cx, 13d
Drop_Right:
int 10h
cmp al, 7
jne Brick_Floor
inc di

Brick_Floor:
cmp [What_Key], Left_Key 
jne Right_Leg
mov cx, [MarioX]
mov dx, [MarioY]
add dx , 18d
int 10h
cmp al, 7
jne Check_Left_Leg
inc di 
Check_Left_Leg:
cmp di, 0
je Side_Drop
jmp Walk_On_Blocks

Right_Leg:
mov cx, [MarioX]
mov dx, [MarioY]
add dx , 18d
add cx, 13d
int 10h
cmp al, 7
jne Check_Right_Leg
inc di 
Check_Right_Leg:
cmp di, 0
je Side_Drop
jmp Walk_On_Blocks

Side_Drop:
cmp [What_Key], Left_Key 
je Fall_Left
inc [MarioX]
jmp Just_Down
Fall_Left:
dec [MarioX]
Just_Down:
mov [Just_up_Mark], 1
call Down
Walk_On_Blocks:
pop dx cx ax
ret
endp On_Blocks


PrintPic proc
; Process BMP file
call OpenFile
call ReadHeader
call ReadPalette
call CopyPal
call CopyBitmap
ret 
endp PrintPic
	
Screen proc
;Prsent opening screen and let the player choose between play,help and about the game
push ax dx
Title_Screen:
lea dx, Opening  ;opening screen
call PrintPic 
Choos_What_Screen:
mov ah, 0
int 16h
cmp ah, Play
je Move_To_Game
cmp ah, Help
je Print_Help
cmp ah, About
je Print_About
jne Choos_What_Screen

Print_Help:
lea dx, HelpScreen
call PrintPic
Loop_Back_Help:           ;print help
mov ah, 0
int 16h
cmp ah, Back
je Title_Screen
jmp Loop_Back_Help

Print_About:
lea dx, AboutScreen         ;Print_About
call PrintPic
Loop_Back_About:
mov ah, 0
int 16h
cmp ah, Back
je Title_Screen
jmp Loop_Back_About

Move_To_Game:
mov ah, 0
mov al, 13h       ;restore original palette
int 10h
pop dx ax
ret
endp Screen

Game_Over proc
;Present the photo game over if you run out of life and waits for ESC 
lea dx, Over
call PrintPic
Wait_For_Esc:
mov ah, 0
int 16h
cmp ah, Back
jne Wait_For_Esc
mov [Fail], 1
mov ah, 0
mov al, 13h       ;restore original palette
int 10h
mov [Coins_Collected], 0
ret 
endp Game_Over	

Try_Agin proc
;Present the photo try again if you die and in roughly 2 seconds comes back to the game
lea dx, Again
call PrintPic
mov ah, 2ch
int 21h
mov bl, dh
add bl, 2
Wait_For_Game:
int 21h
cmp bl, dh
jne Wait_For_Game
mov [Fail], 1
mov ah, 0
mov al, 13h       ;restore original palette
int 10h
mov [Coins_Collected], 0
ret 
endp Try_Agin

How_Many_Lives proc
;check how many lives Mario have
dec [Lives]
jz No_Life
call Try_Agin
jmp Failed
No_Life:
call Game_Over
Failed:
ret
endp How_Many_Lives


You_Win proc
;present the photo you win and waits for ESC
lea dx, Win
call PrintPic
Wait_For_Escape:
mov ah, 0
int 16h
cmp ah, Back
jne Wait_For_Escape
mov [Win_Mark], 1
ret 
endp You_Win

Gumba_Kill proc
;Checks if you landed on a gumba according to the color of his head and draw a background image over it  
push cx dx si 
mov [On_Blocks_check], 1
mov bl, 4
mov al, [What_Key]
push ax
mov [What_Key], 0
call Block_Touch
pop ax
mov [What_Key], al
cmp si, 1
je Back_To_Fall
cmp [MarioX], 200
jb Kill_Down
cmp [What_Level], 2 
je Kill_Gumba_2
mov cx, 233d
mov dx, 108d
jmp Kill_The_Gumba
Kill_Gumba_2:
mov cx, 220d
mov dx, 158d
Kill_The_Gumba:
Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,cx,CurrentX,dx,CurrentY
lea si, [Gumba_Blank]
call DrawPic
jmp Back_To_Fall

Kill_Down:
Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,GumbaX,CurrentX,GumbaY,CurrentY
lea si, [Gumba_Blank]
call DrawPic 
 
Back_To_Fall:
pop si dx cx
ret
endp Gumba_Kill  
  
Check_If_Over proc
;Checks if you thouch a gumba acording to its color and if so kills you
cmp [What_Level], 2
je Check_Gumba_2
cmp [MarioY], 107d
ja Check_Down_Gumba
call How_Many_Lives          ;first level
jmp Stop_Checking
Check_Down_Gumba:
cmp [MarioY], 142d
jb Stop_Checking
call How_Many_Lives
jmp Stop_Checking

Check_Gumba_2:
cmp [MarioY], 82d
ja Check_Down_Gumba_2
call How_Many_Lives
jmp Stop_Checking            ;second level
Check_Down_Gumba_2:
cmp [MarioY], 140d
jb Stop_Checking
call How_Many_Lives

Stop_Checking:
ret
endp Check_If_Over  

Second_Level proc
;draws the background of the second level
  push cx
  xor di, di
  mov cx,320*175            ;background color
  mov al,3
  rep stosb
  ;---------------------------------------
  call Life_Draw
  call Coin_Draw
 ;--------------------------------------
  
Draw_locatio Ground_blocks_width,Current_width,Ground_blocks_height,Current_height,Ground_blocksX,CurrentX,Ground_blocksY,CurrentY
   mov cx, 20d     
Draw_Ground_blocks_2:
  lea si, [Ground_blocks]
  call DrawPic                             ;ground
  add [CurrentX],16d
  loop Draw_Ground_blocks_2
    ;-------------------------------------
	mov [BushX], 243d
Draw_locatio Bush_width,Current_width,Bush_height,Current_height,BushX,CurrentX,BushY,CurrentY

  lea si ,[Bush]                       ;bush
  call DrawPic
  
    ;-------------------------------------
	mov [BricksX], 80d
	mov [BricksY], 140d
Draw_locatio Bricks_width,Current_width,Bricks_height,Current_height,BricksX,CurrentX,BricksY,CurrentY
 
  lea si ,[Bricks]
  call DrawPic                   ;bricks
  mov cx, 2
  mov [BricksX], 140d
  mov [BricksY], 100d
Draw_Bricks_2:
  Draw_locatio Bricks_width,Current_width,Bricks_height,Current_height,BricksX,CurrentX,BricksY,CurrentY
  lea si ,[Bricks]
  call DrawPic 
  add [BricksX], 18d
  loop Draw_Bricks_2
  

    ;-------------------------------------
	mov [CoinX], 160d
	mov [CoinY], 82d
Draw_locatio Coin_width,Current_width,Coin_height,Current_height,CoinX,CurrentX,CoinY,CurrentY
  lea si ,[Coin]
  call DrawPic                      ;coins

  mov cx, 220d
  mov dx, 120d
  Draw_locatio Coin_width,Current_width,Coin_height,Current_height,cx,CurrentX,dx,CurrentY
  lea si ,[Coin]
  call DrawPic 
  
  ;-------------------------------------
  mov [GumbaY], 83d
  mov [GumbaX], 142d
  
  Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,GumbaX,CurrentX,GumbaY,CurrentY
  lea si, [Gumba]
  call DrawPic                      ;gumba
  
  mov cx, 220d
  mov dx, 158d
  Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,cx,CurrentX,dx,CurrentY
  lea si, [Gumba]
  call DrawPic
  ;------------------------------------------------------------------------------------
  mov [Fail], 0
  pop cx
  ret
endp Second_Level  

Life_Draw proc
;draws the life icon and number of lives left
Draw_locatio Life_width,Current_width,Life_height,Current_height,LifeX,CurrentX,LifeY,CurrentY
  lea si, [Life]
  call DrawPic
  
  cmp [Lives], 3
  je Draw_Three
  cmp [Lives], 2
  je Draw_Two
  lea si, [One]
  jmp Draw_Life
Draw_Three:
  lea si, [Three]
  jmp Draw_Life
Draw_Two:
  lea si, [Two]
Draw_Life:
Draw_locatio Numbers_width,Current_width,Numbers_height,Current_height,NumbersX,CurrentX,NumbersY,CurrentY
  call DrawPic
  ret
endp Life_Draw

Coin_Draw proc
;draws the coin icon and number of coins that has been collected
Draw_locatio Coin_Colector_width,Current_width,Coin_Colector_height,Current_height,Coin_ColectorX,CurrentX,Coin_ColectorY,CurrentY
  lea si, [Coin_Colector]
  call DrawPic
  
  cmp [Coins_Collected], 0
  jne Check_One_Coin
  lea si, [Zero]
  jmp Draw_Coin
Check_One_Coin:  
  cmp [Coins_Collected], 1
  jne Check_Two_Coin
  lea si, [One]
  jmp Draw_Coin
Check_Two_Coin:  
  cmp [Coins_Collected], 2
  jne Check_Three_Coin
  lea si, [Two]
  jmp Draw_Coin
Check_Three_Coin:  
  cmp [Coins_Collected], 3
  jne Check_Four_Coin   
  lea si, [Three]
  jmp Draw_Coin
Check_Four_Coin :  
  lea si, [Four]
  
Draw_Coin:
Draw_locatio Numbers_width,Current_width,Numbers_height,Current_height,Coin_NumberX,CurrentX,Coin_NumberY,CurrentY
  call DrawPic
  ret
endp Coin_Draw  
Start:
  mov ax, @data
  mov ds, ax
  mov ax, 013h               ; init graph mode
  int 010h
  mov ax, 0A000h
  mov es, ax
Start_Game:  
  mov [GumbaY], 158d
  mov [GumbaX], 143d
  mov [CoinY], 107d
  mov [CoinX], 209d
  mov [BricksY], 125d
  mov [BricksX], 192d
  mov [BushY], 159d
  mov [BushX], 48d
  mov[MarioX], 0d
  mov [MarioY], 157d
	 
  mov [What_Level], 1
  mov [Lives], 3
  mov [Fail], 0 
  mov [Win_Mark], 0
  mov [Coins_Collected], 0
  call Screen 
  
Start_Level:  
mov [Fail], 0 
  ;-------------------------------------
  xor di, di
  mov cx,320*175            ;background color
  mov al,3
  rep stosb
  ;---------------------------------------
 call Life_Draw
 call Coin_Draw
  ;--------------------------------------
  
Draw_locatio Ground_blocks_width,Current_width,Ground_blocks_height,Current_height,Ground_blocksX,CurrentX,Ground_blocksY,CurrentY
   mov cx, 20d     
Draw_Ground_blocks:
  lea si, [Ground_blocks]
  call DrawPic                             ;ground
  add [CurrentX],16d
  loop Draw_Ground_blocks
    ;-------------------------------------
Draw_locatio Bush_width,Current_width,Bush_height,Current_height,BushX,CurrentX,BushY,CurrentY

  lea si ,[Bush]                       ;bush
  call DrawPic
    ;-------------------------------------
Draw_locatio Bricks_width,Current_width,Bricks_height,Current_height,BricksX,CurrentX,BricksY,CurrentY

  mov cx, 3
Draw_Bricks:  
  lea si ,[Bricks]
  call DrawPic                   ;bricks
  add [CurrentX], 18d
  loop Draw_Bricks
  
  mov di, 40209d
  mov al, 7
  stosb
  
  mov di, 40227d
  mov al, 7
  stosb
  
    ;-------------------------------------
Draw_locatio Coin_width,Current_width,Coin_height,Current_height,CoinX,CurrentX,CoinY,CurrentY
  lea si ,[Coin]
  call DrawPic                      ;coins

  mov cx, 96d
  mov dx, 157d
  Draw_locatio Coin_width,Current_width,Coin_height,Current_height,cx,CurrentX,dx,CurrentY
  lea si ,[Coin]
  call DrawPic 
  
  ;-------------------------------------
  Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,GumbaX,CurrentX,GumbaY,CurrentY
  lea si, [Gumba]
  call DrawPic                      ;gumba
  
  mov cx, 233d
  mov dx, 108d
  Draw_locatio Gumba_width,Current_width,Gumba_height,Current_height,cx,CurrentX,dx,CurrentY
  lea si, [Gumba]
  call DrawPic
  jmp Mario_Draw
;-----------------------------------

 Mario_Draw: 
 Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY

  lea si, [Mario_Right]
  mov [What_Key], Right_Key
  call DrawPic
  
  Draw_Again:
 Draw_locatio Bush_width,Current_width,Bush_height,Current_height,BushX,CurrentX,BushY,CurrentY
  lea si ,[Bush]                       ;bush
  call DrawPic
Draw_locatio Mario_width,Current_width,Mario_height,Current_height,MarioX,CurrentX,MarioY,CurrentY
  call Side 
  call DrawPic
  

  call ReadKey  ;mario
  cmp [Win_Mark], 1
  je Start_Game
  cmp [Fail], 1
  jne Check_Stop
  cmp [Lives], 0
  jz Start_Game
  mov [MarioX], 0
  mov [MarioY], 157d
  cmp [What_Level], 2
  jne Start_Level
  call Second_Level
Check_Stop:  
  jmp Draw_Again
    ;-------------------------------------
  mov ax, 02h                ; restore text mode
  int 010h

exit:
	mov ax, 4c00h 
	int 21h  
END start
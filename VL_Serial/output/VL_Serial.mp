Project:      output/VL_Serial
Build Number: 0
Date:         Tue Aug 05 12:30:10 2014
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0240 =    576. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01DF  LoadConfigTBL_vl_serial_Bank0
       023A  LoadConfigTBL_vl_serial_Bank1
       026B  __ctype
       03E0  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   03E0   0004 =      4. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       03E0  __func_lit_start
       03E4  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   03E4   0167 =    359. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03E4  LoadConfigTBL_vl_serial_Ordered
       04E9  LoadConfigInit
       04E9  _LoadConfigInit
       04F0  LoadConfig_vl_serial
       04F0  _LoadConfig_vl_serial
       054B  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   054B   0152 =    338. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       054B  _UART_TX_ISR
       054C  _UART_RX_ISR
       054D  _UART_EnableInt
       054D  UART_EnableInt
       0554  _UART_DisableInt
       0554  UART_DisableInt
       055B  _UART_SetTxIntMode
       055B  UART_SetTxIntMode
       056D  _UART_Start
       056D  UART_Start
       0574  _UART_Stop
       0574  UART_Stop
       057B  UART_SendData
       057B  _UART_SendData
       057E  _UART_bReadTxStatus
       057E  _bUART_ReadTxStatus
       057E  UART_bReadTxStatus
       057E  bUART_ReadTxStatus
       0581  bUART_ReadRxData
       0581  _UART_bReadRxData
       0581  _bUART_ReadRxData
       0581  UART_bReadRxData
       0584  bUART_ReadRxStatus
       0584  UART_bReadRxStatus
       0584  _bUART_ReadRxStatus
       0584  _UART_bReadRxStatus
       0587  _UART_TxIntMode
       0587  UART_TxIntMode
       059A  _UART_IntCntl
       059A  UART_IntCntl
       05C5  _UART_PutSHexByte
       05C5  UART_PutSHexByte
       05D8  _UART_PutSHexInt
       05D8  UART_PutSHexInt
       05DF  UART_PutChar
       05DF  _UART_PutChar
       05E7  UART_cGetChar
       05E7  _UART_cGetChar
       05EF  UART_cReadChar
       05EF  _UART_cReadChar
       0606  _UART_iReadChar
       0606  UART_iReadChar
       061C  UART_PutString
       061C  _UART_PutString
       062E  _UART_Write
       062E  UART_Write
       0656  _UART_CWrite
       0656  UART_CWrite
       0682  _UART_CPutString
       0682  UART_CPutString
       0694  _UART_PutCRLF
       0694  UART_PutCRLF
       069D  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   069D   0B10 =   2832. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       069D  _main
       069D  __text_start
       0813  __plcall
       081F  _itoa
       09F8  _utoa
       0B3B  _isdigit
       0B5C  _islower
       0B7D  _isspace
       0B9E  _toupper
       0BDC  __csdepi
       0C0E  _csprintf
       0C77  __cprint
       11AD  __xidata_start
       11AD  __text_end
       11B8  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0146 =    326. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0143  _bGetPowerSetting
       0143  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0019   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  __rZ
       001A  __rY
       001B  __rX
       001C  __r5
       001D  __r4
       001E  __r3
       001F  __r2
       0020  __r1
       0021  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   001B =     27. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ uartint.asm, uart.asm, psocconfigtbl.asm, psocconfig.asm, rZ.asm, rY.asm, rX.asm, r5.asm, r4.asm ]
[ r3.asm, r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, plcall.s, itoa.s ]
[ utoa.s, isdigit.s, islower.s, isspace.s, ctype.s, toupper.s, sprintf.s, _printf.s ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x19
-Bvl_serial_RAM
-rwh:SSCParmBlk:0xf7.0xff


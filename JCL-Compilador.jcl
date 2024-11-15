//CATCOB63  JOB    ('00'),TSO.&SYSUID,NOTIFY=&SYSUID,                   00010000
//          MSGCLASS=T,MSGLEVEL=1,CLASS=A,REGION=0M                     00020000
//*------------------------------------------------------------------*  00030000
//* COMPILA E LINKEDITA PROGRAMA COBOL BATCH VERSAO 6.3                 00040000
//*------------------------------------------------------------------*  00050000
//COMPCOB PROC MOD=CBVSAM06,                                            00060000
//        DSN='KC03B7C.WORKBOOK.COBOL',                                 00070000
//        COPY='KC03B7C.WORKBOOK.COPY',                                 00071000
//        LIB='KC03B7C.WORKBOOK.LOADLIB'                                00080000
//*------------------------------------------------------------------*  00090000
//*------------------------IMPORTANTE--------------------------------*  00100000
//* DEVIDO A MUDANCAS NO COMPILADOR O ARQUIVO DE LIB DEVE ESTAR NO   *  00110000
//* FORMATO PDSE, CASO CONTRARIO ABENDARA POR ERRO DE ALOCACAO       *  00120000
//*------------------------------------------------------------------*  00130000
//*------------------------------------------------------------------*  00140000
//*COB    EXEC PGM=IGYCRCTL,                                            00150000
//*  PARM='BUFSIZE(32760),LIB,,NOOPT,FLAG(I,W),RENT,LIST,ARITH(EXTEND)' 00160000
//COB    EXEC PGM=IGYCRCTL,REGION=2M,PARM=('BUFSIZE(32760)',LIB,NOOPT,  00170000
//   'FLAG(I,W)',RENT,LIST,'ARITH(EXTEND)',SSRANGE)                     00180000
//**** CLAUSULA SSRANGE PROTEGE PROGRAMA DE INVASAO DE AREA EM TABELA   00181000
//STEPLIB  DD DISP=SHR,DSN=IGY630.SIGYCOMP                              00190000
//SYSLIB   DD DSN=&DSN,DISP=SHR                                         00200000
//         DD DSN=&COPY,DISP=SHR                                        00210000
//         DD DSN=CEE.SCEESAMP,DISP=SHR                                 00211000
//SYSPRINT DD SYSOUT=*                                                  00220000
//SYSIN    DD DSN=&DSN(&MOD),DISP=SHR                                   00230000
//SYSLIN   DD DSN=&&LOADSET,DISP=(MOD,PASS),                            00240000
//            UNIT=SYSDA,SPACE=(180,(250,100))                          00250000
//SYSUT1   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00260000
//SYSUT2   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00270000
//SYSUT3   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00280000
//SYSUT4   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00290000
//SYSUT5   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00300000
//SYSUT6   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00310000
//SYSUT7   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00320000
//SYSUT8   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00330000
//SYSUT9   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00340000
//SYSUT10  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00350000
//SYSUT11  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00360000
//SYSUT12  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00370000
//SYSUT13  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00380000
//SYSUT14  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00390000
//SYSUT15  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00400000
//SYSMDECK DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)               00410000
//*                                                                     00420000
//********************************************************************  00430000
//LKED   EXEC PGM=IEWL,                                                 00440000
//            PARM='XREF,RENT',COND=(5,LT,COB)                          00450000
//SYSLIB   DD DSN=CEE.SCEELKED,DISP=SHR                                 00460000
//         DD DSN=SYS1.LINKLIB,DISP=SHR                                 00470000
//         DD DSN=&LIB,DISP=SHR                                         00480000
//SYSLMOD  DD DSN=&LIB(&MOD),DISP=SHR                                   00490000
//SYSUT1   DD UNIT=SYSDA,DCB=BLKSIZE=1024,                              00500000
//            SPACE=(1024,(200,20))                                     00510000
//SYSPRINT DD SYSOUT=A                                                  00520000
//SYSLIN   DD DSN=&&LOADSET,DISP=(OLD,DELETE)                           00530000
// PEND                                                                 00540000
/*                                                                      00550000
//*------------------------------------------------------------------*  00560000
//CATCOB    EXEC COMPCOB                                                00570000
//*------------------------* FIM PROCEDURE  *------------------------*  00580000

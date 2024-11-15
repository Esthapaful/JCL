//JCLUTILT  JOB    ('00'),TSO.&SYSUID,NOTIFY=&SYSUID,                   00010000
//          MSGCLASS=T,MSGLEVEL=1,CLASS=A,REGION=0M                     00020000
//*------------------------------------------------------------------*  00030000
//* CRIA VIA UTILITARIO ARQUIVO PARTICIONADO LIBRARY TIPO PDSE          00040000
//STEP1    EXEC PGM=IEFBR14                                             00050000
//SYSPRINT DD SYSOUT=*                                                  00070000
//SYSIN    DD DSN=KC03B7C.WORKBOOK.LOADLIB,                             00080000
//        DISP=(NEW,CATLG,DELETE),                                      00090000
//        DSNTYPE=LIBRARY,                                              00100000
//        UNIT=TESTDA,                                                  00110000
//        SPACE=(CYL,(10,10,10)),                                       00120000
//        DCB=(RECFM=U,LRECL=0,BLKSIZE=32760)                           00130000
//*------------------------------------------------------------------*  00131000
//STEP2    EXEC PGM=IEFBR14                                             00133000
//SYSPRINT DD SYSOUT=*                                                  00134000
//SYSIN    DD DSN=KC03B7C.WORKBOOK.COBOL,                               00135000
//        DISP=(NEW,CATLG,DELETE),                                      00136000
//        DSNTYPE=PDS,                                                  00137000
//        UNIT=TESTDA,                                                  00138000
//        SPACE=(CYL,(10,10,10)),                                       00139000
//        DCB=(RECFM=FB,LRECL=80,BLKSIZE=32760)                         00139100
//*------------------------------------------------------------------*  00139200
//STEP3    EXEC PGM=IEFBR14                                             00139301
//SYSPRINT DD SYSOUT=*                                                  00139400
//SYSIN    DD DSN=KC03B7C.WORKBOOK.COPY,                                00139501
//        DISP=(NEW,CATLG,DELETE),                                      00139600
//        DSNTYPE=PDS,                                                  00139700
//        UNIT=TESTDA,                                                  00139800
//        SPACE=(CYL,(10,10,10)),                                       00139900
//        DCB=(RECFM=FB,LRECL=80,BLKSIZE=32760)                         00140000
//*------------------------------------------------------------------*  00141000
//STEP4    EXEC PGM=IEFBR14                                             00142001
//SYSPRINT DD SYSOUT=*                                                  00143000
//SYSIN    DD DSN=KC03B7C.WORKBOOK.JCL,                                 00144001
//        DISP=(NEW,CATLG,DELETE),                                      00145000
//        DSNTYPE=PDS,                                                  00146000
//        UNIT=TESTDA,                                                  00147000
//        SPACE=(CYL,(10,10,10)),                                       00148000
//        DCB=(RECFM=FB,LRECL=80,BLKSIZE=32760)                         00149000
//*------------------------* FIM DO JCL *----------------------------*  00150000

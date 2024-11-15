//CATPGM1   JOB ('00'),TSO.&SYSUID,                                     00010000
//          REGION=0M,NOTIFY=&SYSUID,                                   00020000
//          MSGCLASS=T,MSGLEVEL=1,CLASS=A                               00030000
//*------------------------------------------------------------------*  00040000
//JOBLIB  DD DSN=KC03B7C.WORKBOOK.LOADLIB,DISP=SHR                      00050000
//STEP01  EXEC PGM=PROG0001                                             00060000
//SYSOUT  DD SYSOUT=*                                                   00070000
//SYSPRINT DD SYSOUT=*                                                  00080000
//*                                                                     00090000

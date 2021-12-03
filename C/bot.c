#include <stdio.h>
#include <stdlib.h>
#include <lmcons.h>
#include <windows.h>

char osusername[UNLEN-1];
int osusername_len;
char Chatlog_fileaddress[UNLEN-1];

int main ( int c , char ** args)
{

    char *query1 =  "C:\\Users\\",
    *query2="\\Documents\\GTA San Andreas User Files\\SAMP\\chatlog.txt";
    GetUserName(osusername,&osusername_len);
    strncpy(Chatlog_fileaddress,query1,strlen(query1));
    strncat(Chatlog_fileaddress,osusername,osusername_len);
    strncat(Chatlog_fileaddress,query2,strlen(query2));

    printf("System Username: %s\nChatLog Path: %s",osusername , Chatlog_fileaddress);



    return (0); 
}
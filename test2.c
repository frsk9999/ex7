#include <stdio.h>

int aaa() __attribute__((constructor));
int aaa()
{
	printf("init\n");
	printf("%p\n",aaa);
}
int main(int argc,char *argv[]){
	printf("test\n");
}

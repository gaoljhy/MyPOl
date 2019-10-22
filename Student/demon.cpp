

#include <iostream>
#include <stdlib.h>
#include <fstream>
using namespace std;

int main()
{
	fstream fp( "allstudent.txt" , ios::in | ios::out );
	char str[2] = { 0 };
	char stp[60] = { 0 };

	fp.getline(stp , 60 , '\n');
	fp << str;
	cout << str;



		fp.close();

		cin.get();
		cin.get();



	return 0;
}
#include <iostream>
using namespace std;

int main() {
    float radius;
    float pi = 0.3174;
    cout<<"Please enter the radius of the circle"<<endl;
    cin>>radius;
    float area = pi * radius * radius;
    cout<<"The area of the circle is " << area<<endl;
    return 0;
}
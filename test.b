int test(int a, int b) {
    print << a;
    ret b;
}

int arithmetic(){
    int a;
    int b;
    int c;
    int d;
    a = 1;
    b = 2;
    c = 3;
    d = a+b;
    print << d;
    print << " ";
    d = d-1;
    print << d;
    print << " ";
    d = d*0;
    print << d;
    print << " ";
    d = 1/1;
    print << d;
    print << " ";
    ret a;
}
void retVoid(){

}
bool logic(){
    bool a;
    bool b;
    bool c;
    bool d;
    a = tru;
    b = fls;
    c = !tru;
    d = !a; /// output -2
    print << d;
    print << " ";
    d = a && b;
    print << d;
    print << " ";
    d = a || b;
    print << d;
    print << " ";
    d = !(a||b); /// output -2
    print << d;
    print << " ";
    d = (1==1) && (0==0) && (!b);
    print << d;
    print << "\n";
    ret tru;
}

int main() {
    int a;
    bool b;
    a = test(10, 20);
    print << a;
    print << "\n";
    print << "test arithmetic";
    print << "\n";
    arithmetic();
    retVoid();
    print << "test logic";
    print << "\n";
    b = logic();
    print << b;
    print << "\n";
}

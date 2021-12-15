int test() {
    int a;
}

int main() {
    int a;
    int b;
    int a1;
    bool c;
    bool d;

    print << (1+1-1)*2/2+5;
    print << (1<=2) && (3>2);
    a1 = 100;
    d = fls;
    c = tru;
    a = 15;
    print << c;
    print << " ";
    ///print << a;
    ++a1; 
    print << a1;
    print << " ";
    --a1;
    print << a1;
    print << " ";
    a = a+1;
    print << a;
    print << " ";
    a = a-1;
    print << a;
    print << " ";
    a = a*0;
    print << a;
    print << " ";
    if(c){
        print << "true in if block";
    }
    if(c){
        print << "false in if-else block";
    }else{
        print << c;
        print << "true";
    }
    receive >> a;
    print << "Hello";
    print << a;
    test();
}

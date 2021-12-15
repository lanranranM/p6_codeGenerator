int global1;
int global2;
int global3;
int g1;
bool b1;
int test(int a, int b) {
    ///print << a;
    ret a+b;
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
    d = !a; 
    print << d;
    print << " ";
    d = a && b;
    print << d;
    print << " ";
    d = a || b;
    print << d;
    print << " ";
    d = !(a||b); 
    print << d;
    print << " ";
    d = (1==1) && (0==0) && (!b);
    print << d;
    print << "\n";
    ret tru;
}
int func1(int a){
    ++a;
    if (a==3){
        print << "base case!\n";
        ret 1;
    }
    func1(a);
}
void globalV() {
    g1 = 1;
    print << g1;
    receive >> b1;
    print << b1;
    ret;
}

int main() {
    int a;
    bool b;
    bool c;
    c = tru;
    print << "test global";
    print << "\n";
    global1 = 1000;
    global2 = 1000;
    global3 = global1+global2;
    print << global1;
    print << " ";
    print << global2;
    print << " ";
    print << global3;
    print << " ";
    a = test(global1,1);
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
    print << "test controflow";
    print << "\n";
    if(c){
        print << "should be print\n";
    }
    if(c){
        print << "should be print\n";
    }else{
        print << "should not be print\n";
    }
    if(fls){
        print << "should not be print\n";
    }
    if(fls){
        print << "should not be print\n";
    }else{
        print << "should be print\n";
    }
    print << "test controflow - string";
    print << "\n";
    c = "abc"=="abc"; 
    print << c;
    print << "\n";
    c = c==c;
    print << c;
    print << "\n";
    if ("abc"=="abc"){
        print << "should be print\n";
    }
    a = 3;
    while (a>0){
        print << a;
        print << " ";
        --a;
    }
    print << "test relational";
    print << "\n";
    c = (1<2) && (2<=2) && (2>=2) && (2>1) && (3!=1) && (3==3);
    print << c;
    print << "\n";
    print << "test functions (recursion, call/ret)";
    print << "\n";
    a = func1(0);
    a = test(10, 20);
    print << a;
    print << "\n";

    globalV();
    ret 0;
}

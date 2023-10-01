int a;
int b=10;

void init(){
    for(;;);
}
void reset(){
    init();
}

void* interrupt[]__attribute__((section("ivt"))) = {reset};

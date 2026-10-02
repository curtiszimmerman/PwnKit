.PHONY: all clean
all: PwnKit PwnKit32 PwnKitARM64

PwnKit:
	gcc -shared PwnKit.c -o PwnKit -Wl,-e,entry -fPIC

PwnKit32:
	gcc -shared -m32 PwnKit.c -o PwnKit32 -Wl,-e,entry -fPIC

PwnKitARM64:
	aarch64-linux-gnu-gcc -shared PwnKit.c -o PwnKitARM64 -Wl,-e,entry -fPIC

clean:
	rm -f PwnKit PwnKit32 PwnKitARM64

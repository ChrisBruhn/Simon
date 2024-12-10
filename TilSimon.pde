void setup() { //<>//
}

void draw() {
  
  byte newByte=makeByte(); // kald makeByte og få en byte-værdi retur som jeg gemmer  
  println(newByte); // udskriv nu værdien til consol
}

// LAV EN BIT
boolean bitMine() { 
  float floatBit = random(0, 2); // lav en tilfældig værdi mellem 0 og 1,9. 
  // returner 
  if (floatBit>1) {
    return true;
  } else {
    return false;
  }
}

//LAV EN BYTE
byte makeByte() {
  byte b=0; // lav en variabel til at bygge vores byte værdi i.
  for (int i=0; i<8; i++) {
    if (bitMine()) {
      b+=pow(2, i);
    }
  }
  return b;
}

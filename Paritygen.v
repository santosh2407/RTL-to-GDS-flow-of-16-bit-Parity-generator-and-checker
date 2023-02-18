module Paritygen(in,oddp,evenp,che,oddche,evenche);

input [15:0] in;
output oddp,evenp;
output reg che = 1;
output oddche,evenche;

assign                  //Parity Generator
        evenp = ^in,
        oddp = ~^in;

assign                  //Parity Checker
        oddche = in^che,
        evenche = ~(in^che);
endmodule

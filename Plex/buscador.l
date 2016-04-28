    //Sección de Declaraciones
%{
#include<stdio.h>
#include<string>

using namespace std;

int num_torneos=0;
int num_equipos=0;
int num_jugadores=0;
int c_fnc=0;
int c_tsm=0;
int c_vp=0;
int c_navi=0;
int c_g2=0;
int c_envy=0;
int c_lg=0;
int c_nip=0;
int apariciones_totales;
void Recuento(){
printf("El número de post sobre torneos es: %d \n",num_torneos);
printf("El número de post sobre equipos es: %d \n",num_equipos);
printf("El número de post sobre jugadores es: %d \n",num_jugadores);

apariciones_totales = c_fnc + c_tsm + c_vp + c_navi + c_g2 + c_envy + c_lg +c_nip;
printf("Apariciones de Fnatic y sus jugadores: %d sobre un total de %d \n",c_fnc, apariciones_totales);
printf("Apariciones de TSM y sus jugadores: %d sobre un total de %d \n",c_tsm, apariciones_totales);
printf("Apariciones de Virtus Pro y sus jugadores: %d sobre un total de %d \n",c_vp, apariciones_totales);
printf("Apariciones de Na'Vi y sus jugadores: %d sobre un total de %d \n",c_navi, apariciones_totales);
printf("Apariciones de Gamers2 y sus jugadores: %d sobre un total de %d \n",c_g2, apariciones_totales);
printf("Apariciones de EnvyUs y sus jugadores: %d sobre un total de %d \n",c_envy, apariciones_totales);
printf("Apariciones de Luminosity Gaming y sus jugadores: %d sobre un total de %d \n",c_lg, apariciones_totales);
printf("Apariciones de Ninjas in Pijamas y sus jugadores: %d sobre un total %d \n",c_nip, apariciones_totales);
}

%}

FNC         [Ff][Nn][Aa]?[Tt]?[Ii]?[Cc]
TSM         [Tt]([Ee][Aa][Mm]\ )?[Ss]([Oo][Ll][Oo])?[Mm]([Ii][Dd])?
VP          [Vv]([Ii][Rr][Tt][Uu][Ss])?[Pp]([Rr][Oo])?
NAVI        [Nn][Aa]([Aa][Tt][Uu][Ss])?[\']?[Vv][Ii]([Nn][Cc][Ee][Rr][Ee])?
G2          [Gg]([Aa][Mm][Ee][Rr][Ss])?[2]
ENVY        [Ee][Nn][Vv][Yy]([Uu][Ss])?
LG          [Ll]([Uu][Mm][Ii][Nn][Oo][Ss][Ii][Tt][Yy]\ )?[Gg]([Aa][Mm][Ii][Nn][Gg])?
NIP         [N]([Ii][Nn][Jj][Aa][Ss])?[Ii][n]?[P]([Ii][Jj][Aa][Mm][Aa][Ss])?
equipo      {FNC}|{TSM}|{VP}|{NAVI}|{G2}|{ENVY}|{LG}|{NIP}

olof        [Oo][l][o][f]([m][e][i][s][t][e][r])?
flusha      [Ff][l][u][s][h][a]
dennis      [Dd][e][n][n][i][s]
jw          [Jj][Ww]([o][n][d][e][r][c][h][i][l][d])?
krimz       [Kk][Rr][i][Mm][Zz]
FNCP        {olof}|{flusha}|{dennis}|{jw}|{krimz}

dupreeh     [Dd][u][p][r][e][e][h]
device      [Dd][e][v][i][c][e]
karrigan    [Kk][a][r][r][i][g][a][n]
xyp9x       [Xx][y][p][9][Xx]
cajunb      [Cc][a][j][u][n][b]
TSMP        {dupreeh}|{device}|{karrigan}|{xyp9x}|{cajunb}

pasha       [Pp][a][s][h][a][Bb][i][c][e][p][s]?
taz         [Tt][a][Zz]
neo         [Nn][Ee][Oo]
snax        [Ss][n][a][x]
byali       [Bb][y][a][l][i]
VPP         {pasha}|{taz}|{neo}|{snax}|{byali}

guardian    [Gg][u][a][r][d][i][a][Nn]
zeus        [Zz][e][u][s]
starix      [Ss][t][a][r][i][x]
flamie      [Ff][l][a][m][i][e]
edward      [Ee][d][w][a][r][d]
NAVIP       {guardian}|{zeus}|{starix}|{flamie}|{edward}

fox         [Ff][o][x]
aizy        [Aa][i][z][y]
maikelele   [Mm][a][i][k][e][l][e][l][e]
rain        [Rr][a][i][n]
jkaem       [Jj][Kk][a][e][m]
G2P         {fox}|{aizy}|{maikelele}|{rain}|{jkaem}

kio         [Kk][1i][o][Ss][h][i][Mm][a]
kennys      [Kk][e][n][n][y][Ss]
nbk         [Nn][Bb][Kk]
apex        [Aa][Pp][eE][Xx]
happy       [Hh][a][p][p][y]
ENVYP       {kio}|{kennys}|{nbk}|{apex}|{happy}

fer         [Ff][e][r]
fallen      [Ff][a][l][l][e][Nn]
coldz       [Cc][o][l][d][z][e][r][a]
fnx         [Ff][n][x]
taco        [T][A][C][O]
LGP         {fer}|{fallen}|{coldz}|{fnx}|{taco}

forest      [Ff][0][r][e][s][t]
gtr         [Gg][e]?[Tt][\_]?[Rr]([i][g][h][t])?
allu        [Aa][l][l][u]
xizt        [Xx][i][z][t]
friberg     [Ff][r][i][b][e][r][g]
NIPP        {forest}|{gtr}|{allu}|{xizt}|{friberg}

dh          [Dd]([r][e][a][m])?[Hh]([a][c][k])?[\ \:]?(.*^[\ ])?
iem         [Ii]([n][t][e][l])?[Ee]([x][t][r][e][m][e])?[Mm]([a][s][t][e][r][s])?[\ ]?
esea        [E][S][E][A]
faceit      [Ff][a][c][e][\ ][i][t]
torneo      {dh}|{iem}|{esea}|{faceit}

            //Sección de Reglas

%%

{equipo}                                   {printf("Equipo encontrado: %s \n",yytext); num_equipos += 1;}
{FNCP}                                     {printf("Jugador encontrado: Fnatic.%s ",yytext); num_jugadores +=1; c_fnc +=1;}
{TSMP}                                     {printf("Jugador encontrado: TSM.%s ",yytext); num_jugadores +=1; c_tsm +=1;}
{VPP}                                      {printf("Jugador encontrado: Virtus Pro.%s ",yytext); num_jugadores +=1; c_vp +=1;}
{NAVIP}                                    {printf("Jugador encontrado: Na'vi.%s ",yytext); num_jugadores +=1; c_navi +=1;}
{G2P}                                      {printf("Jugador encontrado: G2.%s ",yytext); num_jugadores +=1; c_g2 +=1;}
{ENVYP}                                    {printf("Jugador encontrado: EnvyUs.%s ",yytext); num_jugadores +=1; c_envy +=1;}
{LGP}                                      {printf("Jugador encontrado: LG.%s ",yytext); num_jugadores +=1; c_lg +=1;}
{NIPP}                                     {printf("Jugador encontrado: NIP.%s ",yytext); num_jugadores +=1; c_nip +=1;}
{torneo}                                   {printf("Torneo encontrado: %s \n",yytext);num_torneos +=1; }
.                                          {}

%%
/*----Sección de procedimientos----------*/

int main(int argc, char *argv[]){

if( argc == 2){
string web ="wget ";
web.append(argv[1]);
system(web.c_str());
yyin = fopen("index.html","rt");
if( yyin == NULL){
printf("El fichero %s no se puede abrir\n", argv[1]);
exit(-1);
}
}
else yyin = stdin;

yylex();
Recuento();
return 0;
}

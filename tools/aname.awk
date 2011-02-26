#!/usr/bin/awk -f 

BEGIN {
a[1] = "Matt"
a[2] = "Mark"
a[3] = "Luke"
a[4] = "John"
a[5] = "Acts"
a[6] = "Jas"
a[7] = "1Pet"
a[8] = "2Pet"
a[9] = "1John"
a[10] = "2John"
a[11] = "3John"
a[12] = "Jude"
a[13] = "Rom"
a[14] = "1Cor"
a[15] = "2Cor"
a[16] = "Gal"
a[17] = "Eph"
a[18] = "Phil"
a[19] = "Col"
a[20] = "1Thess"
a[21] = "2Thess"
a[22] = "1Tim"
a[23] = "2Tim"
a[24] = "Titus"
a[25] = "Phlm"
a[26] = "Heb"
a[27] = "Rev"
}
/type="book"/{y++; z=0; /*print a[y];*/}
/<chapter/{split($2, b, "\""); split(b[2], c, "."); /*print a[y]"."c[2];*/}
/<verse/{split($2, d, "\""); split(d[2], e, "."); /*print a[y]"."c[2]"."e[3];*/}
/type="book"/{sub("osisID=\".+\"", "osisID=\""a[y]"\"");}
/<chapter/{sub("osisID=\"Matt\x2e[0-9]+\"", "osisID=\""a[y]"."c[2]"\"");}
/<verse/{sub("osisID=\"Matt\x2e[0-9]+\x2e[0-9]+\"","osisID=\""a[y]"."c[2]"."e[3]"\"");}
#!/type="book"/{print}
{print}

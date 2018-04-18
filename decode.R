### Cleaning of csv file All_Claims (IN THE TERMINAL)

All_Claims = read.csv("/Users/linda/Desktop/Bootcamp/Final_Project/All_Claims.csv", sep = ";")

decode = read.csv("/Users/linda/Desktop/Bootcamp/Final_Project/ch.txt", sep = "\t", header = FALSE)

## removing the 6th column of decode

decode = decode[-6]

## splitting decode in two datasets

decode1 = decode[,1:5]

decode2 = decode[,6:10] 

## renaming the columns of decode2

names(decode2) = c("V1","V2","V3","V4","V5")

## binding the two dataset by rows

decode = rbind(decode1,decode2)

## deleting final space in V1 and V4

decode[,1] = gsub(" ","",decode[,1])

decode[,4] = gsub(" ","",decode[,4])

## writing a txt file named decode

decode = as.matrix(decode)

write.table(decode, file="/Users/linda/Desktop/Bootcamp/Final_Project/decode.txt", row.names=TRUE, col.names=TRUE)

## Replacements: V4 in decode has the wrong strings and V3 in decode has the corresponding correct ones

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[99,4],decode[99,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[101,4],decode[101,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[105,4],decode[105,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[119,4],decode[119,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[125,4],decode[125,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[98,4],decode[98,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[104,4],decode[104,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[106,4],decode[106,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[107,4],decode[107,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[108,4],decode[108,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[109,4],decode[109,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[111,4],decode[111,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[112,4],decode[112,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[115,4],decode[115,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[116,4],decode[116,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[117,4],decode[117,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[122,4],decode[122,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[123,4],decode[123,3],All_Claims[,i])
}

for (i in 1:ncol(All_Claims)){
  All_Claims[,i] = gsub(decode[124,4],decode[124,3],All_Claims[,i])
}

## writing a txt file named "All_Claims" 

All_Claims = as.matrix(All_Claims)

write.table(All_Claims, file="/Users/linda/Desktop/Bootcamp/Final_Project/All_Claims.txt", row.names=TRUE, col.names=TRUE)

## (OUTSIDE THE TERMINAL) reading All_Claims as a file named "fraud"

fraud = read.table("All_Claims.txt")

View(fraud)

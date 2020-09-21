#LOGICAL
#NUMERIC
#INTEGER
#COMPLEX
#CHARACTER
#RAW


#********LOGICAL********#
D1 <- TRUE 
print(class(D1))

#********NUMERIC********#
D2 <- 23.5
print(class(D2))

#********INTEGER********#
D3 <- 2L
print(class(D3))

#********COMPLEX********#
D4 <- 2+5i
print(class(D4))

#********CHARACTER********#
D5 <- "TRUE"
print(class(D5))

#********RAW********#
D6 <- charToRaw("Hello")
print(class(D6))

#Sample
# x <- 1
# if (x == 1){
#   print ("Hello")
# }

#
x = 7
if (x %% 2 == 0){
  print ("The number is even")
}else {
  print ("The number is odd")
}

#
x <- c(20,10,1)
if (x[1] > x[2] & x[1] > x[3]){
  print ('The maximum number is'); print ( x[1])
  
} else if (x[2] > x[1] & x[2] > x[3]){
  print ('The maximum number is'); print ( x[2])
}else{
  print ('The maximum number is'); print ( x[3])
}
  
  
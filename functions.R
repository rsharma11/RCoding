##############################
var.product <- function(num1, num2) {
  return (num1 * num2)
}
print(var.product(2,3))

##############################
x = 1

check <- function(int, vec){
  while(x <= length(vec)){
    if (int == vec[x]){
      print (paste0("The integer which matches vector is ", vec[x]))
    }
    x = x + 1
  }
}

# 5 %in% c(1:10)
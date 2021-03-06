# Choose the year
year <- 2015

# Algorithm
a <- year%%19
b <- year%/%100
c <- year%%100
d <- b%/%4
e <- b%%4
f <- (b+8)%/%25
g <- (b-f+1)%/%3
h <- ((19*a)+b-d-g+15)%%30
i <- c%/%4
k <- c%%4
l <- (32+(2*e)+(2*i)-h-k)%%7
m <- (a+(11*h)+(22*l))%/%451
p <- (h+l-(7*m)+114)%%31

month <-(h+l-(7*m)+114)%/%31  # 3 = March, 4 = April
day <- p+1

# Result
easter <- as.Date(paste(year,month,day), "%Y%m%d")
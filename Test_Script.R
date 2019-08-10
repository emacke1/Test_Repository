# Hello, this is a test of git
x <- seq(-100, 100)
y <- 2*(x^2)
error <- rnorm(length(x), mean = 0, sd = mean(y)/2)

plot_dat <- tibble(x = x, y = y + error)

ggplot(data = plot_dat,
       mapping = aes(x = x, y = y)) +
  geom_point()
library(tidyverse)
interact <- read_csv("interact.csv")

intgraph <- function(data) {
    data %>%
        ggplot(aes(x=Trial, y=RT, group=Training)) +
        geom_line(aes(color=Training)) +
        geom_point(aes(colour=Training)) +
        theme_bw()
}

intgraph(interact)
    

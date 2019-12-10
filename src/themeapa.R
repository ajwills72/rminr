## APA theming for ggplot graphs
## Tina Seabrooke CC-BY-SA 4.0

theme_APA <- theme_bw()+
    theme(panel.grid.major = element_blank(), 
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(size = 1),                                        
          text = element_text(
              size = 16,
              face="bold"), 
          axis.text = element_text(
              size = 16,
              face="plain",
              colour="black"),
          legend.title = element_blank(),
          legend.position = c(.5, .95),
          legend.direction = "horizontal",
          legend.text = element_text(
              face="plain",
              colour="black",
              size=16),
          strip.text.x = element_text(
              size = 16,
              face = "bold"),
          panel.background = element_rect(
              fill='white',
              colour='white'),
          strip.background = element_rect(
              fill='white',
              colour='white'),
          axis.title.x = element_text(
              margin = margin(t = 10)),
          plot.margin = grid::unit(c(5, 5, 5, 5), "mm")
          )

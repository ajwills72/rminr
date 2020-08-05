wing %>% ggplot(aes(x=task, y=correct, fill=cards)) +
  stat_summary(geom="bar", fun=mean, position=position_dodge(0.95)) +
  stat_summary(geom="errorbar", width = 0.1, fun.data=mean_cl_boot,
               position=position_dodge(0.95)) +
  ylab("Mean RT") + xlab("Congruency") +
  labs(caption = "Bars are 95% between-subject confidence intervals") +
  theme_APA +
  theme(axis.text = element_text(size = 8))
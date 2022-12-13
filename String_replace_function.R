

library(tidyverse)

df = iris %>% 
mutate( species_2 = sample(Species)) %>% 
  mutate( species_3 = sample(Species))

orig <- c("setosa", "versicolor", "virginica")
new <- c("set", "ver", "vir")

for (i in (1:length(orig))) {

    df_new <- df %>% 
      mutate_all(funs(str_replace(., orig[i], new[i])))
    
    df <- df_new
   
  }



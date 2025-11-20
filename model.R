source("data_pull.R")

filter_df <- df %>%
  select(1,6,7,8,10,13,15,16,17,18,19,23,24,28,29,30:41)

filter_df[filter_df == "N/A"] <- NA
filter_df[filter_df == ""] <- NA
filter_df[filter_df == "[]"] <- NA
filter_df[filter_df == "-"] <- NA

filter_df <-
  filter_df %>%
  mutate(
    price = str_remove_all(price, "\\$"),
    price = str_remove_all(price, "\\,"),
    price = as.numeric(price),
    id = as.factor(id)
  ) %>%
  filter(price <= 10000)

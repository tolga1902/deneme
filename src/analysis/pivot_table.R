# import the data from `gen/data-preparation/aggregated_df.csv`
df <- read.csv("gen/data-preperation/aggregated_df.csv")

pdf("gen/pivot/pivot.pdf")

# create pivot table

df_pivot <- df %>% dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

write.csv(df_pivot, "gen/pivot/pivot.csv")



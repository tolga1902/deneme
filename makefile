all: data_download data_cleaning pivot_table plot_Antwerp plot_all
data_download: gen/data/url_listings.csv gen/data/url_reviews.csv
data_cleaning: gen/data-preperation/aggregated_df.csv
pivot_table: gen/pivot/pivot.csv
plot_Antwerp: gen/Antwerp/plot_Antwerp.csv
plot_all: gen/plot_all/plot_all.pdf

## Sub-builds

gen/data/url_listings.csv: src/data_prep/data_download.R
		R --vanilla < src/data_prep/data_download.R
  
gen/data/url_reviews.csv: src/data_prep/data_download.R
		R --vanilla < src/data_prep/data_download.R

gen/data-preperation/aggregated_df.csv: src/data_prep/data_cleaning.R
		R --vanilla < src/data_prep/data_cleaning.R
  
gen/pivot/pivot.csv: src/analysis/pivot_table.R
		R --vanilla < src/analysis/pivot_table.R

gen/Antwerp/plot_Antwerp.csv: src/analysis/antwerp.R
		R --vanilla < src/analysis/antwerp.R

gen/plot_all/plot_all.pdf: src/analysis/plot_all.R
		R --vanilla < src/analysis/plot_all.R
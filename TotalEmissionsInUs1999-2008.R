#reading data into R
nei <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")
scc <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#aggregate data by year and adds the emission totals for each year
aggsums <- aggregate(nei$Emissions, by = list(nei$year), FUN = sum)

png("Total-Emissions-1999_2008.png")
plot(aggsums, type = "l", main = "Total Emissions in the US", xlab = "Year", ylab = expression("PM" [2.5]~~ "emitted(tons)"))
dev.off()
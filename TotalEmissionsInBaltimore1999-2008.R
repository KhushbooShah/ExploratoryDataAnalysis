#reading data into R
nei <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")
scc <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#aggregate data by year and adds the emission totals for each year for Baltimore
baltimoreData <- subset(nei, fips == 24510)
aggsumsBaltimore <- aggregate(baltimoreData$Emissions, by = list(baltimoreData$year), FUN = sum)

png("Total-Emissions-Baltimore-1999_2008.png")
plot(aggsumsBaltimore, type = "l", main = "Total Emissions in the US", xlab = "Year", ylab = expression("PM" [2.5]~~ "emitted(tons)"))
dev.off()
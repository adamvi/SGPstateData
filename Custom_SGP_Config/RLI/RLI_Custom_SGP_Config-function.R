`configSGP` <- 
function(year,
	 content_area,
	 testing.window) {

	### Utility function

	yearIncrement <- function(year, increment, lag=0) {
		if (identical(year, "BASELINE")) {
			return(rep("BASELINE", length(increment)))
		} else {
			if (length(grep("_", year[1]) > 0)) {
				tmp1 <- sapply(seq_along(increment), function(i) as.numeric(sapply(strsplit(as.character(year), "_"), '[', 2)) + increment[i] - lag)
				paste(floor(tmp1)-1, tmp1, sep="_")
			} else {
				as.character(sapply(seq_along(increment), function(i) as.numeric(year) + increment[i] - lag))
			}
		}
	}


	###
	### EARLY_LIT
	###

	if (content_area=="EARLY_LIT" & testing.window=="FALL") {### EARLY_LIT/FALL
		tmp.list <- list(
			EARLY_LIT.FF.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "1", sep="."), paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('0.1', '1.1'), c('0.1', '1.1', '2.1'), c('1.1', '2.1', '3.1')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 3))),
			EARLY_LIT.SF.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.projection.content.areas=c('EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('0.1', '0.3', '1.1'), c('1.1', '1.3', '2.1'), c('2.1', '2.3', '3.1')),
				sgp.projection.grade.sequences=list(c('0.3', '1.1'), c('1.3', '2.1'), c('2.3', '3.1')),
				sgp.projection.sequence="EARLY_LIT_FSF"))

		return(tmp.list)
	} ### END EARLY_LIT/FALL


	if (content_area=="EARLY_LIT" & testing.window=="WINTER") {### EARLY_LIT/WINTER
		tmp.list <- list(
			EARLY_LIT.FW.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.projection.content.areas=c('EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.grade.sequences=list(c('0.1', '0.2'), c('0.3', '1.1', '1.2'), c('1.3', '2.1', '2.2'), c('2.3', '3.1', '3.2')),
				sgp.projection.grade.sequences=list(c('0.1', '0.2'), c('1.1', '1.2'), c('2.1', '2.2'), c('3.1', '3.2')),
				sgp.projection.sequence="EARLY_LIT_FWS"))
		return(tmp.list)
	} ### END EARLY_LIT/WINTER


	if (content_area=="EARLY_LIT" & testing.window=="SPRING") {### EARLY_LIT/SPRING
		tmp.list <- list(
			EARLY_LIT.SS.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "3", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('0.3', '1.3'), c('0.3', '1.3', '2.3'), c('1.3', '2.3', '3.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 3))),
			EARLY_LIT.FS.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.projection.content.areas=c('EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('0.1', '0.3'), c('0.3', '1.1', '1.3'), c('1.3', '2.1', '2.3'), c('2.3', '3.1', '3.3')),
				sgp.projection.grade.sequences=list(c('0.1', '0.3'), c('1.1', '1.3'), c('2.1', '2.3'), "NO_PROJECTIONS"),
				sgp.projection.sequence="EARLY_LIT_FSF"),
			EARLY_LIT.WS.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('0.1', '0.2', '0.3'), c('1.1', '1.2', '1.3'), c('2.1', '2.2', '2.3'), c('3.1', '3.2', '3.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 4))))
		return(tmp.list)
	} ### END EARLY_LIT/SPRING


	if (content_area=="EARLY_LIT" & testing.window=="EARLY_SPRING") {### EARLY_LIT/EARLY_SPRING
		tmp.list <- list(
			EARLY_LIT.WSS.config=list(
				sgp.content.areas=c('EARLY_LIT', 'EARLY_LIT', 'EARLY_LIT'),
				sgp.projection.content.areas=c('EARLY_LIT', 'EARLY_LIT'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep="."), paste(yearIncrement(year, 0), "4", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('0.2', '0.3', '0.4'), c('1.2', '1.3', '1.4'), c('2.2', '2.3', '2.4'), c('3.2', '3.3', '3.4')),
				sgp.projection.grade.sequences=list(c('0.2', '0.3'), c('1.2', '1.3'), c('2.2', '2.3'), c('3.2', '3.3')),
				sgp.projection.sequence="EARLY_LIT_WSS",
				sgp.projections.max.forward.progression.years=1))
		return(tmp.list)
	} ### END EARLY_LIT/EARLY_SPRING


	###
	### MATHEMATICS
	###

	if (content_area=="MATHEMATICS" & testing.window=="FALL") {### MATHEMATICS/FALL
		tmp.list <- list(
			MATHEMATICS.FF.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "1", sep="."), paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('1.1', '2.1'), c('1.1', '2.1', '3.1'), c('2.1', '3.1', '4.1'), c('3.1', '4.1', '5.1'), c('4.1', '5.1', '6.1'), c('5.1', '6.1', '7.1'), c('6.1', '7.1', '8.1'), c('7.1', '8.1', '9.1'), c('8.1', '9.1', '10.1'), c('9.1', '10.1', '11.1'), c('10.1', '11.1', '12.1')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 11))),
			MATHEMATICS.SF.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.projection.content.areas=c('MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.3', '2.1'), c('2.1', '2.3', '3.1'), c('3.1', '3.3', '4.1'), c('4.1', '4.3', '5.1'), c('5.1', '5.3', '6.1'), c('6.1', '6.3', '7.1'), c('7.1', '7.3', '8.1'), c('8.1', '8.3', '9.1'), c('9.1', '9.3', '10.1'), c('10.1', '10.3', '11.1'), c('11.1', '11.3', '12.1')),
				sgp.projection.grade.sequences=list(c('1.3', '2.1'), c('2.3', '3.1'), c('3.3', '4.1'), c('4.3', '5.1'), c('5.3', '6.1'), c('6.3', '7.1'), c('7.3', '8.1'), c('8.3', '9.1'), c('9.3', '10.1'), c('10.3', '11.1'), c('11.3', '12.1')),
				sgp.projection.sequence="MATHEMATICS_FSF"))
		return(tmp.list)
	} ### END MATHEMATICS/FALL


	if (content_area=="MATHEMATICS" & testing.window=="WINTER") {### MATHEMATICS/WINTER
		tmp.list <- list(
			MATHEMATICS.FW.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.projection.content.areas=c('MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.2'), c('1.3', '2.1', '2.2'), c('2.3', '3.1', '3.2'), c('3.3', '4.1', '4.2'), c('4.3', '5.1', '5.2'), c('5.3', '6.1', '6.2'), c('6.3', '7.1', '7.2'), c('7.3', '8.1', '8.2'), c('8.3', '9.1', '9.2'), c('9.3', '10.1', '10.2'), c('10.3', '11.1', '11.2'), c('11.3', '12.1', '12.2')),
				sgp.projection.grade.sequences=list(c('1.1', '1.2'), c('2.1', '2.2'), c('3.1', '3.2'), c('4.1', '4.2'), c('5.1', '5.2'), c('6.1', '6.2'), c('7.1', '7.2'), c('8.1', '8.2'), c('9.1', '9.2'), c('10.1', '10.2'), c('11.1', '11.2'), c('12.1', '12.2')),
				sgp.projection.sequence="MATHEMATICS_FWS"))
		return(tmp.list)
	} ### END MATHEMATICS/WINTER


	if (content_area=="MATHEMATICS" & testing.window=="SPRING") {### MATHEMATICS/SPRING
		tmp.list <- list(
			MATHEMATICS.SS.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "3", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.3', '2.3'), c('1.3', '2.3', '3.3'), c('2.3', '3.3', '4.3'), c('3.3', '4.3', '5.3'), c('4.3', '5.3', '6.3'), c('5.3', '6.3', '7.3'), c('6.3', '7.3', '8.3'), c('7.3', '8.3', '9.3'), c('8.3', '9.3', '10.3'), c('9.3', '10.3', '11.3'), c('10.3', '11.3', '12.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 11))),
			MATHEMATICS.FS.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.projection.content.areas=c('MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.3'), c('1.3', '2.1', '2.3'), c('2.3', '3.1', '3.3'), c('3.3', '4.1', '4.3'), c('4.3', '5.1', '5.3'), c('5.3', '6.1', '6.3'), c('6.3', '7.1', '7.3'), c('7.3', '8.1', '8.3'), c('8.3', '9.1', '9.3'), c('9.3', '10.1', '10.3'), c('10.3', '11.1', '11.3'), c('11.3', '12.1', '12.3')),
				sgp.projection.grade.sequences=list(c('1.1', '1.3'), c('2.1', '2.3'), c('3.1', '3.3'), c('4.1', '4.3'), c('5.1', '5.3'), c('6.1', '6.3'), c('7.1', '7.3'), c('8.1', '8.3'), c('9.1', '9.3'), c('10.1', '10.3'), c( '11.1', '11.3'), "NO_PROJECTIONS"),
				sgp.projection.sequence="MATHEMATICS_FSF"),
			MATHEMATICS.WS.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.2', '1.3'), c('2.1', '2.2', '2.3'), c('3.1', '3.2', '3.3'), c('4.1', '4.2', '4.3'), c('5.1', '5.2', '5.3'), c('6.1', '6.2', '6.3'), c('7.1', '7.2', '7.3'), c('8.1', '8.2', '8.3'), c('9.1', '9.2', '9.3'), c('10.1', '10.2', '10.3'), c('11.1', '11.2', '11.3'), c('12.1', '12.2', '12.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 12))))
		return(tmp.list)
	} ### END MATHEMATICS/SPRING


	if (content_area=="MATHEMATICS" & testing.window=="EARLY_SPRING") {### MATHEMATICS/EARLY_SPRING
		tmp.list <- list(
			MATHEMATICS.WSS.config=list(
				sgp.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS'),
				sgp.projection.content.areas=c('MATHEMATICS', 'MATHEMATICS'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep="."), paste(yearIncrement(year, 0), "4", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.2', '1.3', '1.4'), c('2.2', '2.3', '2.4'), c('3.2', '3.3', '3.4'), c('4.2', '4.3', '4.4'), c('5.2', '5.3', '5.4'), c('6.2', '6.3', '6.4'), c('7.2', '7.3', '7.4'), c('8.2', '8.3', '8.4'), c('9.2', '9.3', '9.4'), c('10.2', '10.3', '10.4'), c('11.2', '11.3', '11.4'), c('12.2', '12.3', '12.4')),
				sgp.projection.grade.sequences=list(c('1.2', '1.3'), c('2.2', '2.3'), c('3.2', '3.3'), c('4.2', '4.3'), c('5.2', '5.3'), c('6.2', '6.3'), c('7.2', '7.3'), c('8.2', '8.3'), c('9.2', '9.3'), c('10.2', '10.3'), c('11.2', '11.3'), c('12.2', '12.3')),
				sgp.projection.sequence="MATHEMATICS_WSS",
				sgp.projections.max.forward.progression.years=1))
		return(tmp.list)
	} ### END MATHEMATICS/EARLY_SPRING


	###
	### READING
	###

	if (content_area=="READING" & testing.window=="FALL") {### READING/FALL
		tmp.list <- list(
			READING.FF.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "1", sep="."), paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('1.1', '2.1'), c('1.1', '2.1', '3.1'), c('2.1', '3.1', '4.1'), c('3.1', '4.1', '5.1'), c('4.1', '5.1', '6.1'), c('5.1', '6.1', '7.1'), c('6.1', '7.1', '8.1'), c('7.1', '8.1', '9.1'), c('8.1', '9.1', '10.1'), c('9.1', '10.1', '11.1'), c('10.1', '11.1', '12.1')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 11))),
			READING.SF.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.projection.content.areas=c('READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "1", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.3', '2.1'), c('2.1', '2.3', '3.1'), c('3.1', '3.3', '4.1'), c('4.1', '4.3', '5.1'), c('5.1', '5.3', '6.1'), c('6.1', '6.3', '7.1'), c('7.1', '7.3', '8.1'), c('8.1', '8.3', '9.1'), c('9.1', '9.3', '10.1'), c('10.1', '10.3', '11.1'), c('11.1', '11.3', '12.1')),
				sgp.projection.grade.sequences=list(c('1.3', '2.1'), c('2.3', '3.1'), c('3.3', '4.1'), c('4.3', '5.1'), c('5.3', '6.1'), c('6.3', '7.1'), c('7.3', '8.1'), c('8.3', '9.1'), c('9.3', '10.1'), c('10.3', '11.1'), c('11.3', '12.1')),
				sgp.projection.sequence="READING_FSF"))
		return(tmp.list)
	} ### END READING/FALL


	if (content_area=="READING" & testing.window=="WINTER") {### READING/WINTER
		tmp.list <- list(
			READING.FW.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.projection.content.areas=c('READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.2'), c('1.3', '2.1', '2.2'), c('2.3', '3.1', '3.2'), c('3.3', '4.1', '4.2'), c('4.3', '5.1', '5.2'), c('5.3', '6.1', '6.2'), c('6.3', '7.1', '7.2'), c('7.3', '8.1', '8.2'), c('8.3', '9.1', '9.2'), c('9.3', '10.1', '10.2'), c('10.3', '11.1', '11.2'), c('11.3', '12.1', '12.2')),
				sgp.projection.grade.sequences=list(c('1.1', '1.2'), c('2.1', '2.2'), c('3.1', '3.2'), c('4.1', '4.2'), c('5.1', '5.2'), c('6.1', '6.2'), c('7.1', '7.2'), c('8.1', '8.2'), c('9.1', '9.2'), c('10.1', '10.2'), c('11.1', '11.2'), c('12.1', '12.2')),
				sgp.projection.sequence="READING_FWS"))
		return(tmp.list)
	} ### END READING/WINTER


	if (content_area=="READING" & testing.window=="SPRING") {### READING/SPRING
		tmp.list <- list(
			READING.SS.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, -2), "3", sep="."), paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.3', '2.3'), c('1.3', '2.3', '3.3'), c('2.3', '3.3', '4.3'), c('3.3', '4.3', '5.3'), c('4.3', '5.3', '6.3'), c('5.3', '6.3', '7.3'), c('6.3', '7.3', '8.3'), c('7.3', '8.3', '9.3'), c('8.3', '9.3', '10.3'), c('9.3', '10.3', '11.3'), c('10.3', '11.3', '12.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 11))),
			READING.FS.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.projection.content.areas=c('READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, -1), "3", sep="."), paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.3'), c('1.3', '2.1', '2.3'), c('2.3', '3.1', '3.3'), c('3.3', '4.1', '4.3'), c('4.3', '5.1', '5.3'), c('5.3', '6.1', '6.3'), c('6.3', '7.1', '7.3'), c('7.3', '8.1', '8.3'), c('8.3', '9.1', '9.3'), c('9.3', '10.1', '10.3'), c('10.3', '11.1', '11.3'), c('11.3', '12.1', '12.3')),
				sgp.projection.grade.sequences=list(c('1.1', '1.3'), c('2.1', '2.3'), c('3.1', '3.3'), c('4.1', '4.3'), c('5.1', '5.3'), c('6.1', '6.3'), c('7.1', '7.3'), c('8.1', '8.3'), c('9.1', '9.3'), c('10.1', '10.3'), c( '11.1', '11.3'), "NO_PROJECTIONS"),
				sgp.projection.sequence="READING_FSF"),
			READING.WS.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "1", sep="."), paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.1', '1.2', '1.3'), c('2.1', '2.2', '2.3'), c('3.1', '3.2', '3.3'), c('4.1', '4.2', '4.3'), c('5.1', '5.2', '5.3'), c('6.1', '6.2', '6.3'), c('7.1', '7.2', '7.3'), c('8.1', '8.2', '8.3'), c('9.1', '9.2', '9.3'), c('10.1', '10.2', '10.3'), c('11.1', '11.2', '11.3'), c('12.1', '12.2', '12.3')),
				sgp.projection.grade.sequences=as.list(rep("NO_PROJECTIONS", 12))))
		return(tmp.list)
	} ### END READING/SPRING


	if (content_area=="READING" & testing.window=="EARLY_SPRING") {### READING/EARLY_SPRING
		tmp.list <- list(
			READING.WSS.config=list(
				sgp.content.areas=c('READING', 'READING', 'READING'),
				sgp.projection.content.areas=c('READING', 'READING'),
				sgp.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep="."), paste(yearIncrement(year, 0), "4", sep=".")),
				sgp.projection.panel.years=c(paste(yearIncrement(year, 0), "2", sep="."), paste(yearIncrement(year, 0), "3", sep=".")),
				sgp.grade.sequences=list(c('1.2', '1.3', '1.4'), c('2.2', '2.3', '2.4'), c('3.2', '3.3', '3.4'), c('4.2', '4.3', '4.4'), c('5.2', '5.3', '5.4'), c('6.2', '6.3', '6.4'), c('7.2', '7.3', '7.4'), c('8.2', '8.3', '8.4'), c('9.2', '9.3', '9.4'), c('10.2', '10.3', '10.4'), c('11.2', '11.3', '11.4'), c('12.2', '12.3', '12.4')),
				sgp.projection.grade.sequences=list(c('1.2', '1.3'), c('2.2', '2.3'), c('3.2', '3.3'), c('4.2', '4.3'), c('5.2', '5.3'), c('6.2', '6.3'), c('7.2', '7.3'), c('8.2', '8.3'), c('9.2', '9.3'), c('10.2', '10.3'), c('11.2', '11.3'), c('12.2', '12.3')),
				sgp.projection.sequence="READING_WSS",
				sgp.projections.max.forward.progression.years=1))
		return(tmp.list)
	} ### END READING/EARLY_SPRING
} ### END configSGP
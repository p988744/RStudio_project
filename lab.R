library(ggplot2)

chord <- chord_test_data[10,4]
array <- strsplit(as.character(chord),",")
song10 <- array()
i <- 0
for( i in 1:length(array[[1]])){
  song10[i] <- floor(as.integer(array[[1]][i]))
}

song1_plot<-qplot(seq_along(song1), song1)
song2_plot<-qplot(seq_along(song2), song2)
song3_plot<-qplot(seq_along(song3), song3)
song4_plot<-qplot(seq_along(song4), song4)
song5_plot<-qplot(seq_along(song5), song5)
song6_plot<-qplot(seq_along(song6), song6)
song7_plot<-qplot(seq_along(song7), song7)
song8_plot<-qplot(seq_along(song8), song8)
song9_plot<-qplot(seq_along(song9), song9)
song10_plot<-qplot(seq_along(song10), song10)

song1_plot+geom_point(colurs="red")

mean_list <- c(mean(song1,na.rm = TRUE),mean(song2,na.rm = TRUE),mean(song3,na.rm = TRUE),mean(song4,na.rm = TRUE),mean(song5,na.rm = TRUE),mean(song6,na.rm = TRUE),mean(song7,na.rm = TRUE),mean(song8,na.rm = TRUE),mean(song9,na.rm = TRUE),mean(song10,na.rm = TRUE))
plot(mean_list)
kmeans(chord_test_data)

total_lost <- rbind(total,c(data.frame(song1),song2,song3,song4,song5,song6,song7,song8,song9,song10))

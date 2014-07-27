#-------merge and clean up data sets----------#

#read training data
x_train<-read.table("train\\x_train.txt",sep="")

#read test data
x_test<-read.table("test\\x_test.txt",sep="")

#merge all together into data set x
x<-rbind(x_train,x_test)

#get all feature names and assign to x's columns
f_names<-read.table("features.txt",sep="")
names(x)<-f_names[[2]]

#extracts only the measurements on the mean and sd for each measurement
pattern<-"[Mm]ean\\(\\)|[Ss]td\\(\\)"
x<-x[,grep(pattern,names(x))]

#associates data with it's activities and subjects
y_train<-read.table("train\\y_train.txt",sep="")
y_test<-read.table("test\\y_test.txt",sep="")
y<-rbind(y_train,y_test)
names(y)<-"activity"
subject_train<-read.table("train\\subject_train.txt",sep="")
subject_test<-read.table("test\\subject_test.txt",sep="")
subject<-rbind(subject_train,subject_test)
names(subject)<-"subject"
x<-cbind(y,subject,x)

#uses descriptive activity names to name the activities
labels<-read.table("activity_labels.txt",sep="",
                   col.names=c("activity","activity_name"))
x<-merge(labels,x,by.x="activity",by.y="activity",all=TRUE)

#generate tidy average data set
tidy<-x[0,2:length(x)]
s<-split(x,list(x$activity_name,x$subject),drop=TRUE)
x_mean<-lapply(s,function(x) colMeans(x[,4:length(x)]))
split_name<-names(x_mean)
for(i in 1:length(x_mean)){
  activity_subject<- unlist(strsplit(split_name[i],"\\."))
  tidy[i,]<-c(activity_subject,unlist(x_mean[[i]]))
}

#write data set into a file named tidy_data.txt
write.table(tidy,file="tidy_data.txt",row.names=FALSE)


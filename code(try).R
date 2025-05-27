library(meta)
library(readxl)
data.GHP <- read_excel("E:/shujv/GHP数据.xlsx")
data.PE <- read_excel("E:/shujv/PE数据.xlsx")
#亚组分析
#GHP
#干预时间
metas7<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `intervent time`,
                subgroup.name = "Intervention time",
                #hakn = TRUE(样本小于20时使用),
)
forest(metas7, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#起始剂量
metas8<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `Initial dose`,
                subgroup.name = "Initial dose",
                #hakn = TRUE(样本小于20时使用),
)
metas8
forest(metas8, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#最大剂量
metas9<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `Final dose`,
                subgroup.name = "Maximum dose",
                #hakn = TRUE(样本小于20时使用),
)
metas9
forest(metas9, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#人群
metas11<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `Population`,
                 subgroup.name = "Participants' conditions",
                 #hakn = TRUE(样本小于20时使用),
)
metas11
forest(metas11, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#对照
metas12<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `control`,
                 subgroup.name = "Control",
                 #hakn = TRUE(样本小于20时使用),
)
metas12
forest(metas12, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#Risk of bias
metas13<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `ROB`,
                 subgroup.name = "Risk of Bias",
                 #hakn = TRUE(样本小于20时使用),
)
forest(metas13, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))
metas11



#亚组分析
#PE
#干预时间
metas7<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `intervent time`,
                subgroup.name = "Intervention time",
                #hakn = TRUE(样本小于20时使用),
)
forest(metas7, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#起始剂量
metas8<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `Initial dose`,
                subgroup.name = "Initial dose",
                #hakn = TRUE(样本小于20时使用),
)
metas8
forest(metas8, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#最大剂量
metas9<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                subgroup = `Final dose`,
                subgroup.name = "Maximum dose",
                #hakn = TRUE(样本小于20时使用),
)
metas9
forest(metas9, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#人群
metas11<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `Population`,
                 subgroup.name = "Participants' conditions",
                 #hakn = TRUE(样本小于20时使用),
)
metas11
forest(metas11, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#对照
metas12<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `control`,
                 subgroup.name = "Control",
                 #hakn = TRUE(样本小于20时使用),
)
metas12
forest(metas12, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#Risk of bias
metas11<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                 random=TRUE,
                 method = "Inverse",
                 subgroup = `ROB`,
                 subgroup.name = "Risk of Bias",
                 #hakn = TRUE(样本小于20时使用),
)
forest(metas11, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))
metas11



#overall
#GHP
metas1<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.GHP, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                #hakn = TRUE(样本小于20时使用),
)
forest(metas1, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))

#PE
metas2<-metabin(Events.E, Total.E, Events.C, Total.C, data = data.PE, sm="RR", studlab=paste(Author,"-" ,Year),
                random=TRUE,
                method = "Inverse",
                #hakn = TRUE(样本小于20时使用),
)
forest(metas2, leftcols = c("studlab", "event.e", "n.e", "event.c", "n.c"), leftlabs = c("Author(Year)", "Events", "Total", "Events", "Total"))


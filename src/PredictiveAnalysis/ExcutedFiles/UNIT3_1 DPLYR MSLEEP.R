MSLEEP<-read.csv(file.choose())
MSLEEP

library(dplyr)
dplyr verbs	Description
select()	select columns
filter()	filter rows
arrange()	re-order or arrange rows
mutate()	create new columns
summarise()	summarise values
group_by()	allows for group operations in the "split-apply-combine" concept


select(MSLEEP,sleep_rem)
View(MSLEEP)

select(MSLEEP,name,sleep_total)
select(MSLEEP,order)
select(MSLEEP,-name)

select(MSLEEP, matches(c("sle")))
select(MSLEEP, starts_with("sl"))
select(MSLEEP, ends_with("e"))
select(MSLEEP, contains("v"))




filter(MSLEEP,sleep_total>17)
filter(MSLEEP, sleep_total >= 16, bodywt >= 1)


filter(MSLEEP, order %in% c("Perissodactyla", "Primates"))

MSLEEP %>% 
  select(name, sleep_total)%>%
  head
MSLEEP %>% arrange(order) %>% head

MSLEEP %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) 
  

MSLEEP %>% 
  select(name,sleep_rem, sleep_total)%>%
  arrange(sleep_rem,desc(sleep_total))%>%
  filter(sleep_total>=17) 




select(MSLEEP,name, sleep_total)


mutate(MSLEEP,sleep_tuta=sleep_total-sleep_rem)


MSLEEP %>% 
  summarise(avg_sleep = mean(sleep_total))

MSLEEP %>% 
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())


MSLEEP %>% 
  group_by(order)%>%
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total), 
            max_sleep = max(sleep_total),
            total = n())
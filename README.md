# Health Awarness Big Data Project
This is a project to scrap tweets reagrding the topics related to health awarness, analyze them, and show the impact covid-19 made on people's health awarness

## Data Collection Methods
The data was scrapped using TWINT package, Pandas and python
You can find the scrapped data inside *tweet.csv*

## Setting Up Hive
Since the dataset is expandable and can reach several gigabytes, the data is uploaded on Hive so Hadoop can be used to handle the size of the database

### To setup Hive:

- First make sure docker is installed


- use the command:
      
		$ docker-compose up -d

Docker will install all the needed files 

- Log into  Hive server:

		$ docker exec -it hive-server /bin/bash

- using the command line, navigate to the tweets folder

		# cd ..
    
		# cd tweet/
    
- Create the hive table by using the command:

		# hive -f tweet_table.hql

- Add the data into the table:

		# hadoop fs -put reviews.csv hdfs://namenode:8020/user/hive/warehouse/tweetsdb.db/tweet
    
- Start hive shell by typing:
		
		# hive
    
- Start using the tweetsdb through the following code:
Don't forget the semicolon
		> use testdb;

- DB started and ready to use, you can query the table to ensure it is uploaded and working
- Ex:
		
		> select * from tweet LIMIT 10;

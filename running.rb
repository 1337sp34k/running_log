#this is a running log calculator. #IF YOU ARE CONFUSED, READ COMMENTS!
puts "Hello welcome to the running log. How far did you run(In miles)?"
dist = gets.chomp                   #get user input
puts "How long did it take you(in minute)s?"
time = gets.chomp
f = File.open("running_log.txt", "a")    #write distance to file
f.write(dist + "\n")                 
f.close
f = File.open("running_time.txt", "a")  #write time to file(you may have noticed that i am writing to two files. This is becasue it i easier for me to deal with, so there fore easier for the user.)
f.write(time + "\n")
f.close
f = File.open("running_log.txt", "r")
              #get data from distance file and add it toegether
datain = f.readlines
sum = 0
datain.each do |x|      #Iterate through distance array
		sum += x.to_f
	end
f.close
puts "You have run " + sum.to_s + " miles." #output total miles

f = File.open("running_time.txt", "r") #get data from time file.
timin = f.readlines
sumtim = 0         #These variables may appear random, but I assure you, they have meaning. Example: timin = time in or time input.
timin.each do |x|       #Iterate through time array.
	sumtim += x.to_f
end
f.close
puts "You have run for " + sumtim.to_s + " minutes." #output total minutes

average_pace = sum/sumtim
puts "Your average pace is " + average_pace.to_s + " miles per minute."   #output averages
avgmile = sumtim/sum
puts "Your average mile time is " + avgmile.to_s + " minutes."

#Did you read the comments?

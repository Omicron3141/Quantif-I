#Quantif-I: For all your data-logging needs!

Contributors: Jonah Rubin, Mary Clare Shen, Kate Woolverton

---

#Summary
Quantif-I is your solution for experimentation and personal data analysis. Is that new meditation program really helping? Does adjusing your sleep schedule make you feel better rested? How many birds really are outside your window? Quantif-I provides a platform for managing experiments and collecting data over time, and then helps you draw actionable insights from that information. Simply log in, create a new experiment, and begin logging your data over time. You can see everything you’ve collected, and analyze your data using graphs and statistics.

---

#Users
People with internet access, an basic understanding of the scientific method, and a desire to learn more about themselves and their lives.

---

#MVP 
A simple web app that allows the user to record data in experiments and be able to see that data. 
Users should be able to:
 - Create an account
 - Log in to that account
 - Edit that account
 - View their experiments
 - Create/Edit experiments
 - Log new datapoints for an experiment
 - View the data for an experiment


 ---

#Functionality


---

#Installation Steps
1.Clone the repo
```
git clone https://github.com/Omicron3141/Quantif-I.git path/to/where/you/want/the/files
```

2. Enter the quantifi directory
```
cd quantifi
```

3. Install any needed gems
```
bundle install
```

4. Set up the database
```
rails db:migrate
```

5. Run the server
```
rails server
```

6. Go to http://localhost:3000/ and create an account


---

#Resources Used

Bootstrap 4
http://guides.rubyonrails.org/getting_started.html - tutorial for Ruby on Rails
https://stackoverflow.com/questions/17147431/ruby-on-rails-joining-multiple-tables-and-how-to-extract-data - forieghne keys
http://guides.rubyonrails.org/active_record_basics.html - model setup
https://stackoverflow.com/questions/4736397/default-values-for-model-fields-in-a-ruby-on-rails-form
https://stackoverflow.com/questions/1580805/how-to-set-the-default-value-for-a-datetime-column-in-migration-script
https://stackoverflow.com/questions/9503554/ruby-substring-to-a-certain-length-and-also-to-last-whitespace-within-substring
https://www.ruby-forum.com/topic/78603
https://stackoverflow.com/questions/21710486/rails-bootstrap-how-to-format-form-for-width-grid-collapses
https://stackoverflow.com/questions/6672454/passing-parameters-to-partial-view
https://www.railstutorial.org/book/modeling_users

https://stackoverflow.com/questions/5739158/rails-ruby-how-to-sort-an-array
https://www.codewithjason.com/put-rails-modules/
http://guides.rubyonrails.org/testing.html
https://stackoverflow.com/questions/18728921/floats-decimals-or-integers

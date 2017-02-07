# README

Skeleton Application - For discussion during the interview process

Important bits of required software:

* Ruby 2.3.1

* Rails 5.0.1

* Sqlite3 db


## Application Structure

This application attempts to model some of the information that gets created during the process of 
interviewing candidates for a position.

As such, it has a model for the Position to be filled, for the Interview(s) for that position,
for the Candidates for those Positions, who will be interviewed.  It has a model for the Questions
that will be asked at each interview, with an understanding that some questions will be asked to
candidates for different positions.  It has a mechanism by which the Interviewers can Rate the answers
a candidate provides for the questions they are asked.

## Tasks:

* Interview questions need to be ordered correctly - the test is intermittntly failing now.
* Need a way to get an average rating of a candidate's answer to questions - exclude the zero rankings - those should not count
* Lets build out a way to get an upcoming interview schedule for an interviewer - it should include:
  * the next two interviews
  * candidate information 
  * a list of questions

## Exploratory Task - if you've got the time to look into it, that'd be great:

* Could we remove the candidate_id column from an interview and use interview_participants to track both interviewers 
  and candidates in the same table somehow?


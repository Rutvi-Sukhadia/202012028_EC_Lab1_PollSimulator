# 202012028_EC_Lab1_PollSimulator

## JSP Pages - Presentation Layer
index.jsp - Home page, containing links to all other pages  
addCandidate.jsp - contains candidate registration form with input fields candidate ID and name   
giveVote.jsp - form that includes student id and list of candidates as input fields and allows student to vote once for desired candidate  
message.jsp - displays success/failure messages after each candidate registration and voting  
pollResult.jsp - displays voting result  
votingSummary.jsp - displays voting report for all candidates  
  
## Model - declares the classes, variables and their getter and setter methods
Candidate - contains ID, name and vote_count as its fields   
Student - contains student ID as its member field  

## Servlets - Controller (Passes data between the presentation layer and application layer)
CandidateServlet - fetches candidate details from the candidate registration form, sets these details to candidate object and passes them to CandidateService.    
VotingServlet - fetches student and candidate IDs from the giveVotes.jsp page, passes these to StudentService and CandidateService respectively.  
  
## Service - Application Layer
CandidateService - Maintains a list of candidates and has candidate registration method, vote registration method and get Poll result method.  
StudentService - Keeps a track of students who have voted for the poll  


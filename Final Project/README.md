# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/


**The final project will be split into 2 sections: [Testing section](https://github.com/julai215/itf_final_project_example_and_portofolio/blob/main/Final%20Project/README.md#1-testing-section) and [SQL section](https://github.com/julai215/itf_final_project_example_and_portofolio/blob/main/Final%20Project/README.md#2-sql-section).**

Tools used:Jira, Zephyr Squad, MySQL Workbench



# Functional specifications

The functional specifications created in JIRA are presented in the story bellow and describe the Emergency Contacts module

![Screenshot Story](https://user-images.githubusercontent.com/122401619/230939925-8efefbd9-97a8-4834-ac30-eb2dcf97289c.png).


# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Emergency Contacts module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated

<li> Project Manager - Andrei Sorescu<li>
     Product Owner - George Stanca
<li> Software Developer - Paul Ciugudean<li>
     QA Engineer - Isaila Daniel


#### 1.1.2 Entry criteria defined
- functional specifications are described
- roles assigned to the project are allocated
     

#### 1.1.3 Exit criteria defined
- all tests have been executed
- deadline has been reached
- the defects are insignificant and have a low priority
     

#### 1.1.4 Test scope

* Tests in scope: All the functionality described in the specifications in the story must be tested 
* Tests not in scope: compatibility testing, performance testing, accessibility testing.

#### 1.1.5 Risks detected

* Project risks: - short time allocated for testing, lack of experience of the testing team,test environment unavailable.
                 - risks can come from financial decisions, project management strategies, project performance, or external sources

* Product risks: - New Developers or Development Teams, who may lack experience and thus pose a higher risk to the existing product
                 - Tight Schedules, that make people work in a rush and commit more mistakes        

#### 1.1.6 Evaluating entry criteria
     
  The entry criteria from the test plan have been met and the next stages of the test process can begin



## 1.2 Test Monitoring and Control

The execution report below was generated after 50% of the test cases executed on 04/03/2023.

![raport executie monitoring and control](https://user-images.githubusercontent.com/122401619/231222189-95601239-55fd-415b-87bd-f96826466e7e.png)

     
     

## 1.3 Test Analysis

The testing process will be executed based on the requirements of the Emergency Contacts module.

Test conditions:

 leave the mandatory fields empty and verify that a contact cannot be added.
 fill data only in mandatory fields and verify that an Emergency Contact is created.- fill data for all available fields and verify that an Emergency Contact is created.

## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are: Exploratory Testing, GUI Testing, Use Case Testing



The test cases with steps can be viewed here: [Zephyr Test Steps (Jira) (1).pdf](https://github.com/danielisaila90/Manual_Testing_Portofolio/files/11233722/Zephyr.Test.Steps.Jira.1.pdf)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

- Cycle Sumary has been created
- The test cases were added to the cycle summary     

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [ZFJ-Cycles-04-18-2023.csv](https://github.com/danielisaila90/Manual_Testing_Portofolio/files/11264390/ZFJ-Cycles-04-18-2023.csv)
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [DI-11.pdf](https://github.com/danielisaila90/Manual_Testing_Portofolio/files/11264466/DI-11.pdf)
[DI-13.pdf](https://github.com/danielisaila90/Manual_Testing_Portofolio/files/11264543/DI-13.pdf)
  
  - Home Telephone is required even though is not marked
     
  - An Emergency Contact can be created with numbers in "NAME" and "RELATIONSHIP" fields

## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: 

![treceabiliy matrix](https://user-images.githubusercontent.com/122401619/233151384-03c1d3f7-3a38-48c6-97b8-a5296c84ff5b.png)

[Forward Traceability_19_4_2023.xlsx](https://github.com/danielisaila90/Manual_Testing_Portofolio/files/11276010/Forward.Traceability_19_4_2023.xlsx)

* Test execution chart was generated, the final report shows that 2 tests have failed of a total of 6

- A number of 6 test cases were planned for execution and all of them were executed

# 2 SQL section


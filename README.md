# Pewlett-Hackard-Analysis

## Overview of the Analysis
The purpose of this analysis is to provide Pewlett Hackard with information on which employees will retiring so the company can prepare itself for the "silver tsunami." As the company plans to both offer a retirement package and prepare to fill the soon-to-be-vacated positions, it is important for Pewlett Hackard to be able to estimate just how many employees will be retiring in the near future.

## Results
* The majority of the people retiring are senior engineers (25916) and senior staff (24926).
* Third most title retiring is engineer (9285).
* There are far and away more people retiring that were born in 52-55 than those born in the 65 who remain in the company.
* The majority of people eligible for the mentorship program are senior staff (421) and engineers (397).

## Summary
As the "silver tsunami" makes contact, there will be 72,458 roles left empty. And regarding the mentorship program, there are only 1,549 employees that are eligible. Currently, Pewlett Hackard has 240,124 employees. With this wave of retirement, the company will be losing nearly a third of its workforce. And considering that a majority of those future retirees have seniority status (whether senior staff or senior engineers), the company is ill-prepared to lose these employees. One query that might prove helpful is to find those employees who have multiple titles in the titles database and check the span of time between title acquisitions. For example, employee 10009 went from assistant engineer to engineer to senior engineer in the span of 10 years while employee 10012 went from engineer to senior engineer over 8 years. This could be joined with the dept_emp table to find the span of time from their hire date to their first (or only) title. Knowing how long advancement took on average could help in either speeding up the process up with those that will be remaining with the company, or exceptionally fast-rising employees could be specifically asked to help develop the mentorship program. Another aspect, though very similar, could be to consider department manager turnover. As 2 of the 9 department managers are retiring, it could be helpful to find out which department's managers have the highest turnover, how long it typically takes one to arise to a managerial position, and which titles someone who becomes a manager typically obtains beforehand. Being prepared to replace these employees means studying how they became so successful, especially as there are relatively few employees that are able to positioned as replacements.

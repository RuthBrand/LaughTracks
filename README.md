## Laugh Tracks

This is your Week 1 Solo Project for Module 2 of the Backend program at Turing.

This project will allow you to apply the lessons you've learned this first week in an ongoing project. We encourage you to take chances, be risky, try new things.

The primary goals for this project:

- creation of a basic web application from scratch
- implementing basic MVC structure to your project
- save and retrieve data from a database
- display content on a web page with some very basic styling
- learning how to test your code effectively at a Controller and a Model level


Fork this repository from Turing's account to your own account, and clone your new forked repository to your laptop.


## Setup

Before you begin work, run the following commands:

```
bundle install
bundle update
```

## Requirements

- students must implement Sinatra and PostgreSQL
- all new code must be 100% tested
- you do not need any additional gems beyond what has been provided
  - if you find a gem you want to use, please DM your instructors for permission before implementing them


## User Stories

```
User Story 1

As a visitor
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
  * City

- You may use any internet site to fetch this information to put into your database
- The city attribute can hold birthplace or current known hometown.
- For testing, you should ensure that the name, age and city only appear on a
  specific area of the page for that single comedian.
```

```
User Story 2

As a visitor
When I visit `/comedians`
Then I also see a list of each comedian's TV specials' names

- You may find this information on IMDB.com and other related sites.
- Your project does not need to include *every* special the comedian has ever made.
```

```
User Story 3

As a visitor
When I visit `/comedians`
Where I see a list of each comedian's TV specials' names,
I also see each special's run-time length in minutes, and a thumbnail image.

- Image locations (URLs) can be stored in the database as a string.
- Use the image URLs from IMDB or other online source for the special
- Use CSS styling to scale the image smaller if needed to fit on the page
```

```
User Story 4
# come back to this, do run length and list of cities and unique list
As a visitor
When I visit `/comedians`
Then I see an area at the top of the page called 'Statistics'
In that 'Statistics' area, I see the following information:
- the average age of all comedians on the page
- the average run length of every TV special on the page
--- only list each city once
- a unique list of cities for each comedian on the page

Averaging and uniqueness should be done in ActiveRecord NOT
using Ruby
```

```
User Story 5

As a visitor
When I visit `/comedians?age=34`
Then I see the list of comedians on the page only shows
comedians who match the age criteria.

- All other information on the page is still expected to be present
- Testing should check that excluded comedians do not show up.
```

```
User Story 6

As a visitor
When I visit `/comedians`
For each comedian, I see a count of their TV specials
and the Statistics area on the page should list a total count
of TV specials for every comedian.
```

```
User Story 7

As a visitor
When I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34
Just like a previous User Story, BUT all other statistics
information in the 'Statistics' area of the page should be limited
to reflect only the information about the comedians listed on
the page.

- Testing should ensure that calculated statistics are
  correct for a limited subset of data
```

```
User Story 8

As a visitor
When I visit `/comedians/new`
Then I see a form to input a new comedian into the database
Including fields for their name, age and city.
When the form is successfully submitted and saved,
Then I am redirected to `/comedians`
And I see the new comedian's data on the page.
```

## Extensions

```
As a user, when I visit `/comedians`,
I see all previous information
And each comedian's name is a link to a page that only shows
that comedian's information and TV specials.

For example, comedian #4 in your database would have a page like
`/comedians/4`

- Testing should check that only this one comedian's information
  is on the page.
```

```
As a user, when I visit `/comedians?sort=name`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of the comedians.
```

```
As a user, when I visit `/comedians?sort=city`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of their city.
```

```
As a user, when I visit `/comedians?sort=age`
Then I see all previous information, but all comedians are
sorted alphabetically by the age of the comedian.
```

## Rubric

This project is not evaluated. HOWEVER, the following is an example rubric we might follow for this type of project:

### 1. Feature Completeness

* Exceeds Expectations: All features are correctly implemented along with one or more extensions
* Meets Expectations: All features defined in the assignment are correctly implemented and project is deployed
* Below Expectations: There are one or two features missing or incorrectly implemented and/or project is not fully deployed

### 2. Views

* Exceeds Expectations: Views show logical refactoring into layout(s), partials and helpers, with no logic present
* Meets Expectations: Views make use of layout(s), partials and helpers
* Below Expectations: Views don't make use of partials or show weak understanding of rendering templates

### 3. Controllers

* Exceeds Expectations: Controller code shows significant effort towards refactoring and pushing logic down the stack
* Meets Expectations: Controller code is generally well organized with three or fewer methods that need refactoring
* Below Expectations: There are many controller methods that should have been refactored

### 4. Models

* Exceeds Expectations: Models show excellent organization, refactoring, and appropriate use of Rails features
* Meets Expectations: Models show an effort to push logic down the stack, but need more internal refactoring
* Below Expectations: Models are somewhat messy and/or make poor use of Rails features

### 5. ActiveRecord

* Exceeds Expectations: Best choice ActiveRecord methods are used to solve each problem
* Meets Expectations: ActiveRecord is utilized wherever it can be. There is no Ruby where there should be ActiveRecord
* Below Expectations: Ruby is used to programatically solve problems where ActiveRecord could be used

### 6. Testing

* Exceeds Expectations: Project has a running test suite that exercises the application at multiple levels and utilizes excellent setup and teardown to maximum productivity and minimize code
* Meets Expectations: Project has a running test suite that covers all functionality and tests at multiple levels
* Below Expectations: Project has sporadic use of tests at multiple levels

### 7. Usability

* Exceeds Expectations: Project is highly usable and ready to deploy to customers
* Meets Expectations: Project is highly usable, but needs more polish before it'd be customer-ready
* Below Expectations: Project needs more attention to the User Experience, some views need to use a URL to visit them

### 8. Styling and Layout

* Exceeds Expectations: Project utilizes HTML and CSS to its fullest
* Meets Expectations: Project utilizes HTML and CSS but has some area for improvement
* Below Expectations: Project utilizes little or no HTML or CSS

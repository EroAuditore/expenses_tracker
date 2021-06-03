![](https://img.shields.io/badge/Microverse-blueviolet)

# **Keep track on your expenses**

## Ruby app that allows you to keep track of your expenses in order to have a better managment.

### This is a sneak peak of the app

## Log in

![image](https://user-images.githubusercontent.com/60273425/120052763-7faa8200-bfec-11eb-81c1-e8fe23ec6408.png)

## User profile

![image](https://user-images.githubusercontent.com/60273425/120052790-a5d02200-bfec-11eb-9b14-1c152cb265a7.png)

## Expenses view

![image](https://user-images.githubusercontent.com/60273425/120052816-cdbf8580-bfec-11eb-8bea-5ce12bf585ec.png)

## Groups view

![image](https://user-images.githubusercontent.com/60273425/120052953-61915180-bfed-11eb-9634-f20bf16dbaa7.png)

### Description

    This is an expense management application that you can use to keep track of your daily, weekly, or monthly
    expenses and the great part is that you can use it with your family and friends
    so if you got a family trip or want to launch a big party with your friends just send them the app and
    start saving money.

    -If the user doesn't select an image when creating a group, the app will automatically assign one

    -Extra feature you can download in excel file all your expenses if you want are planning to something more sophisticated

### Schema

![Screenshot from 2021-04-27 13-46-47](https://user-images.githubusercontent.com/70416006/116478497-c23d3b00-a843-11eb-85d2-8928f3adc9fc.png)

## Getting Started

To run this app on your local enviroment or web browser, simply follow the steps below:

## Prerequisites

- Internet connection
- Install the ruby programming language 2.7.2 [Click here](https://www.ruby-lang.org/en/documentation/installation/)
- Install Git [Click here](https://git-scm.com/)
- Install code editor with a terminal(Visual Studio Code Editor recommended [Click here](https://code.visualstudio.com/))

### Usage

#### Local enviroment

- Open your terminal
- Clone this repo on your local machine by running `git clone https://github.com/EroAuditore/expenses_tracker.git`
- Cd into the folder you just cloned
- Run `Bundle install` in your terminal to install all the required gems
- Run `yarn install` to install js dependencies
- Run `rails db:migrate` to do the migrations
- Run `rails s` to initialize rails local server
- App uses [Figaro](https://github.com/laserlemon/figaro) to manage connections to add your own authentication

Figaro installation:

```bash
$ bundle exec figaro install
```

This creates a commented `config/application.yml` file and adds it to your
`.gitignore`. Add your own configuration to this file and you're done!

### Example

Given the following configuration file:

```yaml
# config/application.yml

pusher_app_id: "2954"
pusher_key: "7381a978f7dd7f9a1117"
pusher_secret: "abdc3b896a0ffb85d373"

- Open your browser and type `http://localhost:3000` to enter the app

#### With internet connection

## Live Demo

- TIP: This is a mobile app so for full experience access it from your phone or set your web browser into mobile view and disable touch function
- Simply access this link [Expense-tracker](https://eroextracker.herokuapp.com/expenses)

- [Presentation-video](https://www.loom.com/share/59aadc3b5af2469f8d38a8b8e0427233)

## How to run the test suite

- With RSPEC
- Run `bundle exec rspec` to run all the test cases

## Built With

- Ruby on rails framework 2.7.2
- Active storage for img uploads
- Visual Studio Code Editor

## Author

### Eduardo Rodriguez

- GitHub: [@EroAuditore](https://github.com/EroAuditore)
- Twitter: [@EroAuditore](https://twitter.com/EroAuditore)
- LinkedIn: [EroAuditore](https://www.linkedin.com/in/EroAuditore/)

## Acknowledgements

- [Microverse](https://www.microverse.org)

- The design of the project was inspired by [GregoireVella](https://www.behance.net/gregoirevella).

## License

- This project is [MIT](https://github.com/EroAuditore/expenses_tracker/blob/feature/expense/LICENSE) licensed.
```

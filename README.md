![](https://img.shields.io/badge/Microverse-blueviolet)

## ASSOCIATIONS

In this project, we created three tables (User, Event, and attendance), and they are connected using the has_many_through relationships on the models.
We build a site in which a user can create an account with that the user can create as many events as he/she wishes, at the same time the user can attend different events created by other users, the attendances are store on their table, we also used sessions to create our own login and logout actions.
While 'logged-in' the user can: create events, see all events, and attend other events.
While 'logged-out' the user can: see all events, create an account, or if he/she has an account already log-in.

## 🔧 Built With

- Ruby
- Ruby On Rails
- Rubocop

## 🛠 Getting Started

## Install

You can run these functions in you own local environment. In order to run, you need to install Ruby in your computer. For windows you can go to [Ruby installer](https://rubyinstaller.org/) and for MAC and LINUX you can go to [Ruby official site](https://www.ruby-lang.org/en/downloads/) for intructions on how to intall it. 

## How to install Ruby On Rails

- Follow Ruby on Rails Installation Guide Using this link `https://guides.rubyonrails.org/v5.0/getting_started.html`
- Once done, go to project directory and test if Rails is working fine on your Terminal by typing ``rails server``

To get a local copy up and running follow these simple example steps.

- Go to the main page of the repo.
- Press the "Code" button and get the repo link.
- Clone it using git.

## How To Run This Application In Console

- After cloning the repo, go to the directory where the project was cloned and open your terminal.
- Once you are on the terminal type `bundle install` 
- Then run `rails db:migrate` no migrate the database.
- When the migration is done then just type `rails server`.
- Go to your browser and in the URL section put `127.0.0.1:3000`, where `3000` is the port ruby has as default.
- If the port `3000` is busy or not working you can set the port by using `rails server -p 4001` where `4001` is the port that you may have available.


# Authors

👤 Adan Fernandez Bonilla
 - Github: [@balerum03](https://github.com/balerum03)
 - Twitter: [@balerum03](https://twitter.com/balerum03)
 - Linkedin: [Adan Fernandez Bonilla](https://www.linkedin.com/in/adan-fernandez-bonilla/)

👤 Bbosa Muhamood

- Github: [@bmuhamood](https://github.com/bmuhamood)
- Twitter: [@croixtechfirm](https://twitter.com/croixtechfirm)
- Linkedin: [Bbosa Muhamood](https://www.linkedin.com/in/bbosa-muhamood-06845576/)

### 🤝 Contributing

Contributions, issues and feature requests are welcome!

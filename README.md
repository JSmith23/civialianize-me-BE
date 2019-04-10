
# Civilianize ME

Civilianize me is an API made for veterans to be able to have easier access to resources
once they leave military service.
In this API we gathered a lot of great resources and we have grouped them by catergory for easy searches.
You have also have the possibility of finding the neared VA facilities based on the location you input.

## Getting started
Clone this repository to your local machine by running these commands:
```git clone https://github.com/maddyg91/civilianize-me-BE.git
   cd civilianize-me-BE
```
You should now be in the correct directory.

Make sure your ruby version is ```2.5.1```, you can check this by typing ```ruby -v``` in your terminal. If your version is different we suggest updating to version ```2.5.1```.

These are the gems you will need to add to your Gemfile:
- in the general Gemfile:
    ```
       gem 'fast_jsonapi'
       gem 'faraday'
       gem 'figaro'
       gem 'faker'
    ```
- in the development testing group:
    ```
      gem 'rspec-rails'
      gem 'capybara'
      gem 'launchy'
      gem 'pry'
      gem 'factory_bot_rails'
      gem 'simplecov'
      gem 'shoulda-matchers'
      gem 'rb-readline'
      gem 'vcr'
      gem 'webmock'
    ```

After adding these run this command:
```
  bundle
  rake db:{drop,create,migrate,seed}
```
You should now be good to start exploring!

## Endpoints

The base URL you can use is https://powerful-reef-36769.herokuapp.com or http://localhost:3000 if you want to run it locally.

The available endpoints are:

- ```GET /api/v1/va_locations```
  this endpoint takes a ```location``` param in the fromat ```city,state```.

  an example response looks like this:
  ```
  {
    "data": [
        {
            "id": "1",
            "type": "resources",
            "attributes": {
                "name": "Transition and Care Management for New Veterans (OEF/OIF/OND)",
                "category": "General",
                "url": "https://www.oefoif.va.gov/",
                "phone": null,
                "logo": "https://i.imgur.com/mdkP2GJ.png",
                "description": "Voluptates fugiat aut. Odit voluptatibus iusto. Ratione dolorem cum. Laborum repellat non. Voluptatum incidunt delectus."
            }
        },
        {
            "id": "2",
            "type": "resources",
            "attributes": {
                "name": "VSO Lookup",
                "category": "General",
                "url": "https://nvf.org/veteran-service-officers/",
                "phone": null,
                "logo": "https://i.imgur.com/ayiCqWh.png",
                "description": "Autem sapiente eaque. Eius officiis iure. Est sint molestiae. Repellendus a odio. Iusto culpa ex."
            }
        },
        {
            "id": "3",
            "type": "resources",
            "attributes": {
                "name": "National Labor Exchange (USNLX) Job Search",
                "category": "Employment",
                "url": "https://veterans.usnlx.com/",
                "phone": null,
                "logo": "https://i.imgur.com/19c7J4e.png",
                "description": "Iure quisquam non. Voluptatum beatae eos. Amet expedita id. Dolores odio natus. Praesentium commodi placeat."
            }
        },
        {
            "id": "4",
            "type": "resources",
            "attributes": {
                "name": "RecruitMilitary Job Search",
                "category": "Employment",
                "url": "https://recruitmilitary.com/job-seekers",
                "phone": null,
                "logo": "https://i.imgur.com/8s5WYZM.png",
                "description": "Hic rerum aliquid. Aut esse quo. Suscipit veniam sed. Voluptate sed est. Et neque suscipit."
            }
        },
        {
            "id": "5",
            "type": "resources",
            "attributes": {
                "name": "HireVeterans Job Search",
                "category": "Employment",
                "url": "https://hireveterans.com/jobs/",
                "phone": null,
                "logo": "https://i.imgur.com/hR95pxl.png",
                "description": "Est et aliquid. Labore eaque consequuntur. Est omnis consequatur. Labore accusamus rem. Eum aut est."
            }
        },
        {
            "id": "6",
            "type": "resources",
            "attributes": {
                "name": "CareerBuilder Job Search",
                "category": "Employment",
                "url": "https://www.careerbuilder.com/?cbrecursioncnt=1",
                "phone": null,
                "logo": "https://i.imgur.com/soTBATK.png",
                "description": "Et id perspiciatis. Quos quaerat et. Voluptatem nostrum perspiciatis. Ad velit ut. Dolores mollitia et."
            }
        },
        {
            "id": "7",
            "type": "resources",
            "attributes": {
                "name": "GlassDoor Job Search",
                "category": "Employment",
                "url": "https://www.glassdoor.com/index.htm",
                "phone": null,
                "logo": "https://i.imgur.com/FvtINLl.png",
                "description": "Omnis quae dolorem. Quis qui magnam. Ut numquam et. Incidunt et quia. Earum exercitationem perferendis."
            }
        },
        {
            "id": "8",
            "type": "resources",
            "attributes": {
                "name": "Monster Job Search",
                "category": "Employment",
                "url": "https://www.monster.com/",
                "phone": null,
                "logo": "https://i.imgur.com/RgmUfOF.png",
                "description": "Est nihil autem. Sit architecto debitis. In laudantium id. Quas quos eos. Sunt iusto qui."
            }
        },
        {
            "id": "9",
            "type": "resources",
            "attributes": {
                "name": "LinkedIn",
                "category": "Employment",
                "url": "https://www.linkedin.com/",
                "phone": null,
                "logo": "https://i.imgur.com/YgrNZqF.png",
                "description": "Vitae id ut. Deleniti maxime sint. Dolore aut qui. Voluptas doloremque corrupti. Iure velit et."
            }
        },
        {
            "id": "10",
            "type": "resources",
            "attributes": {
                "name": "VA Home Page",
                "category": "General",
                "url": "https://www.va.gov",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Sed officia quis. Blanditiis expedita possimus. Consequatur doloribus ipsum. Occaecati eveniet quibusdam. Consequuntur perspiciatis eum."
            }
        },
        {
            "id": "11",
            "type": "resources",
            "attributes": {
                "name": "Community Resource & Referral Center Lookup",
                "category": "Housing",
                "url": "https://www.va.gov/HOMELESS/Crrc.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Beatae autem cumque. Reprehenderit molestiae quasi. Mollitia ipsa autem. Voluptatem iste qui. Omnis accusantium rerum."
            }
        },
        {
            "id": "12",
            "type": "resources",
            "attributes": {
                "name": "LGBT Patient Care Services",
                "category": "General",
                "url": "https://www.patientcare.va.gov/lgbt/index.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Ut tempora nobis. Consequatur magni molestias. Omnis dolores officiis. Deleniti excepturi ipsam. Qui dolore temporibus."
            }
        },
        {
            "id": "13",
            "type": "resources",
            "attributes": {
                "name": "Homeless Veterans Phone Line",
                "category": "Housing",
                "url": null,
                "phone": "(877) 424-3838",
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Vel optio qui. Ea tempore vitae. Aut nesciunt harum. Natus sed neque. Et quia est."
            }
        },
        {
            "id": "14",
            "type": "resources",
            "attributes": {
                "name": "TriCare Provider Lookup",
                "category": "Healthcare",
                "url": "https://www.tricare.mil/FindDoctor",
                "phone": null,
                "logo": "https://i.imgur.com/AYhRXeI.png",
                "description": "Fugit in velit. Ullam minus aut. Voluptatem ad quo. Velit et odio. Temporibus quos quam."
            }
        },
        {
            "id": "15",
            "type": "resources",
            "attributes": {
                "name": "National Veterans Foundation Resources",
                "category": "General",
                "url": "https://nvf.org/veteran-resources/",
                "phone": null,
                "logo": "https://i.imgur.com/ayiCqWh.png",
                "description": "Quia magni qui. Et id a. Quia quaerat dolores. A doloremque delectus. Nemo qui repudiandae."
            }
        },
        {
            "id": "16",
            "type": "resources",
            "attributes": {
                "name": "National Resource Directory",
                "category": "General",
                "url": "https://nrd.gov/",
                "phone": null,
                "logo": "https://i.imgur.com/ANYHB3I.png",
                "description": "Et blanditiis enim. Debitis optio sapiente. Quia veritatis esse. Numquam repellat libero. Nihil architecto sed."
            }
        },
        {
            "id": "17",
            "type": "resources",
            "attributes": {
                "name": "Guide to Choosing the Right Skill Training School",
                "category": "Skill Training",
                "url": "https://www.affordablecollegesonline.org/college-resource-center/veteran-vocational-trade-students/",
                "phone": null,
                "logo": "https://i.imgur.com/h2LZCpm.png",
                "description": "Dolores dicta est. Sapiente atque earum. Praesentium ut sunt. Aut voluptatem nam. Id doloremque esse."
            }
        },
        {
            "id": "18",
            "type": "resources",
            "attributes": {
                "name": "Alliance, Inc - Veteran Housing Assistance Program",
                "category": "Housing",
                "url": "https://www.allianceinc.org/services/veterans-housing-assistance-program-ssvf",
                "phone": null,
                "logo": "https://i.imgur.com/MhHNSL6.png",
                "description": "Consequuntur consectetur itaque. Aut quasi exercitationem. Est dolores est. Velit est debitis. Laborum porro rerum."
            }
        },
        {
            "id": "19",
            "type": "resources",
            "attributes": {
                "name": "Returning Servicemembers Healthcare (OEF/OIF/OND)",
                "category": "General",
                "url": "https://www.va.gov/healthbenefits/apply/returning_servicemembers.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Aut est consequatur. Ea autem ut. Vel qui reprehenderit. Voluptates tempore et. Voluptas voluptatem voluptatibus."
            }
        },
        {
            "id": "20",
            "type": "resources",
            "attributes": {
                "name": "Community Employment Coordinator Contact List",
                "category": "Housing",
                "url": "https://www.va.gov/HOMELESS/cec-contacts.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Qui et reprehenderit. Quae explicabo quaerat. Assumenda quia et. Et et est. Necessitatibus commodi nobis."
            }
        },
        {
            "id": "21",
            "type": "resources",
            "attributes": {
                "name": "Guide to Building a 5-star LinkedIn Profile",
                "category": "Employment",
                "url": "https://topdogsocialmedia.com/linkedin-profile-makeover-tutorial/",
                "phone": null,
                "logo": "https://i.imgur.com/SiYYA3P.png",
                "description": "Temporibus fugiat distinctio. Et ut harum. Minus ipsam neque. Inventore reiciendis aut. Cupiditate autem quo."
            }
        },
        {
            "id": "22",
            "type": "resources",
            "attributes": {
                "name": "VA Facilities with LGBT Program Websites",
                "category": "General",
                "url": "https://www.patientcare.va.gov/LGBT/VAFacilities.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Dolor sed itaque. In velit sed. Qui enim est. Et consectetur enim. Voluptatem vel amet."
            }
        },
        {
            "id": "23",
            "type": "resources",
            "attributes": {
                "name": "Military One Source",
                "category": "General",
                "url": "https://www.militaryonesource.mil/",
                "phone": "(800) 342-9647",
                "logo": "https://i.imgur.com/Ggsrbto.png",
                "description": "Repudiandae asperiores atque. Rerum corporis expedita. Ipsum voluptate voluptates. In odio cumque. Minus natus quod."
            }
        },
        {
            "id": "24",
            "type": "resources",
            "attributes": {
                "name": "TriCare Proof of Coverage",
                "category": "Healthcare",
                "url": "https://www.tricare.mil/Plans/Eligibility/DEERS/milConnect/Proof",
                "phone": "(800) 538-9552",
                "logo": "https://i.imgur.com/AYhRXeI.png",
                "description": "Repellendus ipsa ea. Mollitia dolorum fugit. Enim vero delectus. Qui reprehenderit et. Magnam modi numquam."
            }
        },
        {
            "id": "25",
            "type": "resources",
            "attributes": {
                "name": "Veteran Crisis Line",
                "category": "Crisis",
                "url": "https://www.lifeline-va-chat.org/SightMaxAgentInterfaceMobile/PreChatSurvey.aspx?accountID=1&siteID=4&queueID=8",
                "phone": "(800) 273-8255",
                "logo": "https://i.imgur.com/Inh9jMv.png",
                "description": "Sed voluptatem repellendus. Placeat eveniet modi. Exercitationem ut earum. Maiores cumque ad. Cum harum inventore."
            }
        },
        {
            "id": "26",
            "type": "resources",
            "attributes": {
                "name": "DAV",
                "category": "General",
                "url": "https://www.dav.org/veterans/resources/",
                "phone": null,
                "logo": "https://i.imgur.com/QJee5nh.png",
                "description": "Quia ipsum vel. Est sed labore. Officiis fugit deleniti. Officiis qui veniam. Sed neque qui."
            }
        },
        {
            "id": "27",
            "type": "resources",
            "attributes": {
                "name": "GI Bill FAQ",
                "category": "Benefits",
                "url": "https://www.va.gov/education/about-gi-bill-benefits/",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Commodi alias at. Ipsam aut at. In ut distinctio. Excepturi veritatis id. Et et error."
            }
        }
    ]
}
  ```


- GET /api/v1/resources
This return all the resources available in the database, it is possible to narrow the search down by adding a ```category``` param.  
These are the category options: Benefits, General, Crisis, Healthcare,
LGBT, Employment, Housing, OEF/OIF/OND, Skill Training

an example response with the category of LGBT looks like this:
```
{
    "data": [
        {
            "id": "1",
            "type": "resources",
            "attributes": {
                "name": "Transition and Care Management for New Veterans (OEF/OIF/OND)",
                "category": "General",
                "url": "https://www.oefoif.va.gov/",
                "phone": null,
                "logo": "https://i.imgur.com/mdkP2GJ.png",
                "description": "Voluptates fugiat aut. Odit voluptatibus iusto. Ratione dolorem cum. Laborum repellat non. Voluptatum incidunt delectus."
            }
        },
        {
            "id": "2",
            "type": "resources",
            "attributes": {
                "name": "VSO Lookup",
                "category": "General",
                "url": "https://nvf.org/veteran-service-officers/",
                "phone": null,
                "logo": "https://i.imgur.com/ayiCqWh.png",
                "description": "Autem sapiente eaque. Eius officiis iure. Est sint molestiae. Repellendus a odio. Iusto culpa ex."
            }
        },
        {
            "id": "10",
            "type": "resources",
            "attributes": {
                "name": "VA Home Page",
                "category": "General",
                "url": "https://www.va.gov",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Sed officia quis. Blanditiis expedita possimus. Consequatur doloribus ipsum. Occaecati eveniet quibusdam. Consequuntur perspiciatis eum."
            }
        },
        {
            "id": "12",
            "type": "resources",
            "attributes": {
                "name": "LGBT Patient Care Services",
                "category": "General",
                "url": "https://www.patientcare.va.gov/lgbt/index.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Ut tempora nobis. Consequatur magni molestias. Omnis dolores officiis. Deleniti excepturi ipsam. Qui dolore temporibus."
            }
        },
        {
            "id": "15",
            "type": "resources",
            "attributes": {
                "name": "National Veterans Foundation Resources",
                "category": "General",
                "url": "https://nvf.org/veteran-resources/",
                "phone": null,
                "logo": "https://i.imgur.com/ayiCqWh.png",
                "description": "Quia magni qui. Et id a. Quia quaerat dolores. A doloremque delectus. Nemo qui repudiandae."
            }
        },
        {
            "id": "16",
            "type": "resources",
            "attributes": {
                "name": "National Resource Directory",
                "category": "General",
                "url": "https://nrd.gov/",
                "phone": null,
                "logo": "https://i.imgur.com/ANYHB3I.png",
                "description": "Et blanditiis enim. Debitis optio sapiente. Quia veritatis esse. Numquam repellat libero. Nihil architecto sed."
            }
        },
        {
            "id": "19",
            "type": "resources",
            "attributes": {
                "name": "Returning Servicemembers Healthcare (OEF/OIF/OND)",
                "category": "General",
                "url": "https://www.va.gov/healthbenefits/apply/returning_servicemembers.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Aut est consequatur. Ea autem ut. Vel qui reprehenderit. Voluptates tempore et. Voluptas voluptatem voluptatibus."
            }
        },
        {
            "id": "22",
            "type": "resources",
            "attributes": {
                "name": "VA Facilities with LGBT Program Websites",
                "category": "General",
                "url": "https://www.patientcare.va.gov/LGBT/VAFacilities.asp",
                "phone": null,
                "logo": "https://i.imgur.com/a/vCp6hgZ.png",
                "description": "Dolor sed itaque. In velit sed. Qui enim est. Et consectetur enim. Voluptatem vel amet."
            }
        },
        {
            "id": "23",
            "type": "resources",
            "attributes": {
                "name": "Military One Source",
                "category": "General",
                "url": "https://www.militaryonesource.mil/",
                "phone": "(800) 342-9647",
                "logo": "https://i.imgur.com/Ggsrbto.png",
                "description": "Repudiandae asperiores atque. Rerum corporis expedita. Ipsum voluptate voluptates. In odio cumque. Minus natus quod."
            }
        },
        {
            "id": "26",
            "type": "resources",
            "attributes": {
                "name": "DAV",
                "category": "General",
                "url": "https://www.dav.org/veterans/resources/",
                "phone": null,
                "logo": "https://i.imgur.com/QJee5nh.png",
                "description": "Quia ipsum vel. Est sed labore. Officiis fugit deleniti. Officiis qui veniam. Sed neque qui."
            }
        }
    ]
}
```

- GET /api/v1/resources/:id
```
{
    "data": [
        {
            "id": "23",
            "type": "resource",
            "attributes": {
                "name": "Military One Source",
                "category": "General",
                "url": "https://www.militaryonesource.mil/",
                "phone": "(800) 342-9647",
                "logo": "https://i.imgur.com/Ggsrbto.png",
                "description": "Repudiandae asperiores atque. Rerum corporis expedita. Ipsum voluptate voluptates. In odio cumque. Minus natus quod."
            }
        }
    ]
}
```

- GET /api/v1/favorites
```
{
    "data": [
        {
            "id": "1",
            "type": "favorite",
            "attributes": {
                "name": "Military One Source",
                "category": "General",
                "url": "https://www.militaryonesource.mil/",
                "phone": "(800) 342-9647",
                "logo": "https://i.imgur.com/Ggsrbto.png",
                "description": "Repudiandae asperiores atque. Rerum corporis expedita. Ipsum voluptate voluptates. In odio cumque. Minus natus quod."
            }
        },
        {
            "id": "2",
            "type": "favorite",
            "attributes": {
                "name": "Veteran Crisis Line",
                "category": "Crisis",
                "url": "https://www.lifeline-va-chat.org/SightMaxAgentInterfaceMobile/PreChatSurvey.aspx?accountID=1",
                "phone": "(800) 273-8255",
                "logo": "https://i.imgur.com/Inh9jMv.png",
                "description": "Sed voluptatem repellendus. Placeat eveniet modi. Exercitationem ut earum. Maiores cumque ad. Cum harum inventore."
            }
        }
    ]
}
```

- GET /api/v1/favorites/:id
```
{
    "data": {
        "id": "2",
        "type": "favorite",
        "attributes": {
            "name": "Veteran Crisis Line",
            "category": "Crisis",
            "url": "https://www.lifeline-va-chat.org/SightMaxAgentInterfaceMobile/PreChatSurvey.aspx?accountID=1",
            "phone": "(800) 273-8255",
            "logo": "https://i.imgur.com/Inh9jMv.png",
            "description": "Sed voluptatem repellendus. Placeat eveniet modi. Exercitationem ut earum. Maiores cumque ad. Cum harum inventore."
        }
    }
}
```
- PUT /api/v1/favorites/:id
name: "new_name", category: "housing", url: "www.google.com", phone: "773-226-5412", logo: "logo", description: "description"

- POST /api/v1/favorites params: {name: "new_name", category: "housing", url: "www.google.com", phone: "773-226-5412", logo: "logo", description: "description"}
```
{
    "id": 1,
    "name": "Military One Source",
    "category": "General",
    "url": "https://www.militaryonesource.mil/",
    "phone": "(800) 342-9647",
    "created_at": "2019-04-10T20:34:23.042Z",
    "updated_at": "2019-04-10T20:34:23.042Z",
    "description": "Repudiandae asperiores atque. Rerum corporis expedita. Ipsum voluptate voluptates. In odio cumque. Minus natus quod.",
    "logo": "https://i.imgur.com/Ggsrbto.png"
}
```
- DELETE /api/v1/favorites/:id

## How to run the test suite

  If you are interested in running out test suit you can do so by using the command ```rspec```.
  We have both model, service and integration tests written and our Coverage using SimpleCov is as 100%.

  here are some examples of our tests:
  ![model test]("readme_images/Screen Shot 2019-04-10 at 3.05.07 PM.png")

  ![service test]("readme_images/Screen Shot 2019-04-10 at 3.11.19 PM.png")


## Deployment instructions

  Our up is deployed on https://powerful-reef-36769.herokuapp.com

## Built With: Technologies and Versions
* [Ruby 2.5.1](https://ruby-doc.org/core-2.5.1/)
* [Rails 5.2.3](https://guides.rubyonrails.org/)
* [Trello for Project Magnam]()
* [Faraday](https://github.com/lostisland/faraday)
* [OmniAuth GitHub](https://github.com/omniauth/omniauth-github)
* [Mailgun](https://www.mailgun.com/)
* [Heroku](https://www.heroku.com/)
* [RSpec](http://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara/blob/3.12_stable/README.md)
* [vcr](https://github.com/vcr/vcr)
* [Stimulus](https://github.com/stimulusjs/stimulus)
* [will_paginate](https://github.com/mislav/will_paginate)
* [acts-as-taggable-on](https://github.com/mbleigh/acts-as-taggable-on)
* [webpacker](https://github.com/rails/webpacker)
* [selenium-webdriver](https://www.seleniumhq.org/docs/03_webdriver.jsp)
* [chromedriver-helper](http://chromedriver.chromium.org/)

## Authors
**[Michael Clampett](https://github.com/SyntheticAutomation)**
**[Maddie Jones](https://github.com/maddyg91)**
**[Jimmy Smith](https://github.com/JSmith23)**

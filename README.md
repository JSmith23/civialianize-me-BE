# README

* Endpoints

The base URL you can use is https://powerful-reef-36769.herokuapp.com or http://localhost:3000 if you want to run it locally.

The available endpoints are:

- ```GET /api/v1/va_locations```
  this endpoint takes a ```location``` param in the fromat ```city,state```.

  an example response looks like this:
  ```
  {
    "data": {
        "id": "boulder,co",
        "type": "facilities",
        "attributes": {
            "facilities": [
                {
                    "name": "Golden VA Clinic",
                    "phone": "303-914-2680 x",
                    "address": "1020 Johnson Road",
                    "city": "Golden",
                    "state": "CO",
                    "zip_code": "80401-6002"
                },
                {
                    "name": "York Street VA Clinic",
                    "phone": "720-501-3367 x",
                    "address": "3836 York Street",
                    "city": "Denver",
                    "state": "CO",
                    "zip_code": "80205-3540"
                },
                {
                    "name": "Denver VA Medical Center",
                    "phone": "303-399-8020 x",
                    "address": "1055 Clermont Street",
                    "city": "Denver",
                    "state": "CO",
                    "zip_code": "80220-3808"
                },
                {
                    "name": "Valor Point VA Domiciliary",
                    "phone": "720-376-6100 x",
                    "address": "7350 West Eastman Place",
                    "city": "Lakewood",
                    "state": "CO",
                    "zip_code": "80227-5006"
                },
                {
                    "name": "Rocky Mountain Regional VA Medical Center",
                    "phone": "303-399-8020 x",
                    "address": "1700 North Wheeling Street",
                    "city": "Aurora",
                    "state": "CO",
                    "zip_code": "80045-7211"
                },
                {
                    "name": "Loveland VA Clinic",
                    "phone": "970-313-0027 x",
                    "address": "5200 Hahns Peak Drive",
                    "city": "Loveland",
                    "state": "CO",
                    "zip_code": "80538-8852"
                },
                {
                    "name": "Aurora VA Clinic",
                    "phone": "303-398-6340 x",
                    "address": "13701 East Mississippi Avenue",
                    "city": "Aurora",
                    "state": "CO",
                    "zip_code": "80012-3697"
                },
                {
                    "name": "Jewell VA Clinic",
                    "phone": "303-283-5400 x",
                    "address": "14400 East Jewell Avenue",
                    "city": "Aurora",
                    "state": "CO",
                    "zip_code": "80012-5689"
                },
                {
                    "name": "Fort Collins VA Clinic",
                    "phone": "970-224-1550 x",
                    "address": "2509 Research Boulevard",
                    "city": "Fort Collins",
                    "state": "CO",
                    "zip_code": "80526-8108"
                },
                {
                    "name": "PFC Floyd K. Lindstrom Department of Veterans Affairs Clinic",
                    "phone": "719-327-5660 x",
                    "address": "3141 Centennial Boulevard",
                    "city": "Colorado Springs",
                    "state": "CO",
                    "zip_code": "80907-4094"
                },
                {
                    "name": "Cheyenne VA Medical Center",
                    "phone": "307-778-7550 x",
                    "address": "2360 East Pershing Boulevard",
                    "city": "Cheyenne",
                    "state": "WY",
                    "zip_code": "82001-5356"
                },
                {
                    "name": "Salida VA Clinic",
                    "phone": "719-539-8666 x",
                    "address": "920 Rush Drive",
                    "city": "Salida",
                    "state": "CO",
                    "zip_code": "81201-9669"
                },
                {
                    "name": "Glenwood Springs VA Clinic",
                    "phone": "970-945-1007 x",
                    "address": "2425 Grand Avenue",
                    "city": "Glenwood Springs",
                    "state": "CO",
                    "zip_code": "81601-4181"
                },
                {
                    "name": "Sterling VA Clinic",
                    "phone": "307-775-7550 x3816",
                    "address": "100 College Avenue",
                    "city": "Sterling",
                    "state": "CO",
                    "zip_code": "80751-2345"
                },
                {
                    "name": "PFC James Dunn VA Clinic",
                    "phone": "719-553-1000 x",
                    "address": "4776 Eagleridge Circle",
                    "city": "Pueblo",
                    "state": "CO",
                    "zip_code": "81008-1667"
                },
                {
                    "name": "Major William Edward Adams Department of Veterans Affairs Clinic",
                    "phone": "970-824-6721 x",
                    "address": "785 Russell Street",
                    "city": "Craig",
                    "state": "CO",
                    "zip_code": "81625-2019"
                },
                {
                    "name": "Pueblo VA Community Living Center",
                    "phone": "719-295-7260 x",
                    "address": "2600 Oakshire Lane",
                    "city": "Pueblo",
                    "state": "CO",
                    "zip_code": "81001-5671"
                },
                {
                    "name": "Sidney VA Clinic",
                    "phone": "308-254-6085 x",
                    "address": "1116 10th Avenue",
                    "city": "Sidney",
                    "state": "NE",
                    "zip_code": "69162-2001"
                },
                {
                    "name": "Scottsbluff VA Clinic",
                    "phone": "308-225-5330 x",
                    "address": "601 5th Avenue",
                    "city": "Scottsbluff",
                    "state": "NE",
                    "zip_code": "69361-3581"
                },
                {
                    "name": "Rawlins VA Clinic",
                    "phone": "307-324-5578 x",
                    "address": "1809 East Daley Street",
                    "city": "Rawlins",
                    "state": "WY",
                    "zip_code": "82301-5911"
                },
                {
                    "name": "Burlington VA Clinic",
                    "phone": "719-346-5239 x",
                    "address": "1177 Rose Avenue",
                    "city": "Burlington",
                    "state": "CO",
                    "zip_code": "80807-1756"
                },
                {
                    "name": "La Junta VA Clinic",
                    "phone": "719-383-5195 x",
                    "address": "1100 Carson Avenue",
                    "city": "La Junta",
                    "state": "CO",
                    "zip_code": "81050-2772"
                },
                {
                    "name": "Montrose VA Clinic",
                    "phone": "970-249-7791 x",
                    "address": "154 Colorado Avenue",
                    "city": "Montrose",
                    "state": "CO",
                    "zip_code": "81401-3651"
                },
                {
                    "name": "Alamosa VA Clinic",
                    "phone": "719-587-6800 x",
                    "address": "622 Del Sol Drive",
                    "city": "Alamosa",
                    "state": "CO",
                    "zip_code": "81101-8548"
                },
                {
                    "name": "Grand Junction VA Medical Center",
                    "phone": "970-242-0731 x",
                    "address": "2121 North Avenue",
                    "city": "Grand Junction",
                    "state": "CO",
                    "zip_code": "81501-6428"
                },
                {
                    "name": "Lamar VA Clinic",
                    "phone": "719-336-0315 x",
                    "address": "1401 South Main Street",
                    "city": "Lamar",
                    "state": "CO",
                    "zip_code": "81052-9525"
                },
                {
                    "name": "Casper VA Clinic",
                    "phone": "866-338-5168 x",
                    "address": "4140 South Poplar Street",
                    "city": "Casper",
                    "state": "WY",
                    "zip_code": "82601-6104"
                },
                {
                    "name": "Raton VA Clinic",
                    "phone": "575-445-2391 x",
                    "address": "1493 Whittier Street",
                    "city": "Raton",
                    "state": "NM",
                    "zip_code": "87740-2234"
                },
                {
                    "name": "Rock Springs VA Clinic",
                    "phone": "866-381-2830 x",
                    "address": "1401 Gateway Boulevard",
                    "city": "Rock Springs",
                    "state": "WY",
                    "zip_code": "82901-6727"
                },
                {
                    "name": "Durango VA Clinic",
                    "phone": "970-247-2214 x",
                    "address": "1970 East Third Avenue",
                    "city": "Durango",
                    "state": "CO",
                    "zip_code": "81301-5025"
                }
            ]
        }
    }
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
            "id": "12",
            "type": "resources",
            "attributes": {
                "name": "LGBT Patient Care Services",
                "category": "LGBT",
                "url": "https://www.patientcare.va.gov/lgbt/index.asp",
                "phone": null
            }
        },
        {
            "id": "22",
            "type": "resources",
            "attributes": {
                "name": "VA Facilities with LGBT Program Websites",
                "category": "LGBT",
                "url": "https://www.patientcare.va.gov/LGBT/VAFacilities.asp",
                "phone": null
            }
        }
    ]
}
```

- GET /api/v1/resources/:id


- POST /api/v1/resources params params = {
  name: "resources",
  category: "medical",
  url: "url",
  phone: "?"
  description: "habfsobaf",
  logo: "?"
}

- GET /api/v1/favorites
- GET /api/v1/favorites/:id
- PUT /api/v1/favorites/:id
- POST /api/v1/favorites params: {name: "new_name", category: "housing", url: "www.google.com", phone: "773-226-5412"}
- DELETE /api/v1/favorites/:id


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

//Тестовый файл для получения АПИ просто из строки, а не из сайта. Он может быть не нужен,
//если будет работать сайт апишки


class ResponseFromApi {

  // Данные из первой апишки
  final String api1 = '''
  [
    {
        "date": 1734998400000,
        "title": "City Council Approves New Housing Plan",
        "description": "A new housing initiative aims to provide affordable homes for families in need.",
        "author": "James Brown",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1735171200000,
        "title": "Major Traffic Jam Hits Downtown Area",
        "description": "Commuters faced hours of delays due to an unexpected road closure downtown.",
        "author": "Alex Johnson",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1733097600000,
        "title": "Local Bakery Wins National Award",
        "description": "A small-town bakery earned national recognition for its unique pastry creations.",
        "author": "James Brown",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1733443200000,
        "title": "Tech Startup Announces Breakthrough AI Tool",
        "description": "The new AI tool promises to revolutionize how businesses process data.",
        "author": "Emily Davis",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1735171200000,
        "title": "Community Garden Project Gains Momentum",
        "description": "Residents come together to expand the neighborhood's community garden.",
        "author": "Emily Davis",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1733097600000,
        "title": "Historic Library Renovation Completed",
        "description": "The century-old library reopens after years of restoration work.",
        "author": "Olga Ivanova",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1735171200000,
        "title": "Police Investigate Recent String of Burglaries",
        "description": "Authorities are working to solve a series of home burglaries reported this week.",
        "author": "Anna Kolesnikova",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1734825600000,
        "title": "New Art Exhibit Opens to Public",
        "description": "The exhibit showcases contemporary works by emerging local artists.",
        "author": "James Brown",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1733097600000,
        "title": "Winter Storm Warning Issued for Region",
        "description": "Residents are advised to prepare for heavy snowfall and icy conditions.",
        "author": "Ethan Miller",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1735084800000,
        "title": "Charity Event Raises Record Amount",
        "description": "The fundraiser broke records, collecting over \$1 million for local charities.",
        "author": "James Brown",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1734739200000,
        "title": "School Board Proposes New Curriculum Changes",
        "description": "Proposed updates include a focus on STEM and arts education for students.",
        "author": "Alex Johnson",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1734220800000,
        "title": "Scientists Discover Rare Bird Species in Forest",
        "description": "Biologists were surprised to find a rare bird thought to be extinct.",
        "author": "Alex Johnson",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1734393600000,
        "title": "Hospital Launches State-of-the-Art Cancer Treatment",
        "description": "The hospital's new facility offers cutting-edge treatments for cancer patients.",
        "author": "Alex Johnson",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1733788800000,
        "title": "New Movie Breaks Box Office Records",
        "description": "The blockbuster film achieved unprecedented success in its opening weekend.",
        "author": "Sophia Taylor",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1734739200000,
        "title": "City Park to Host Outdoor Concert Series",
        "description": "Music lovers can enjoy free concerts every weekend at the park this season.",
        "author": "Maria Petrova",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1734566400000,
        "title": "Government Launches Renewable Energy Initiative",
        "description": "The project aims to increase the region's reliance on renewable energy sources.",
        "author": "James Brown",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1733702400000,
        "title": "Major Retailer Announces Store Closures",
        "description": "The company plans to close several stores due to declining sales.",
        "author": "Anna Kolesnikova",
        "hot": true,
        "site": "News paper"
    },
    {
        "date": 1733875200000,
        "title": "Researchers Develop Breakthrough Vaccine",
        "description": "The vaccine could be a game-changer in preventing seasonal illnesses.",
        "author": "Olga Ivanova",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1734393600000,
        "title": "Local Team Wins Championship Game",
        "description": "Fans celebrated as the local sports team clinched the championship title.",
        "author": "Maria Petrova",
        "hot": false,
        "site": "News paper"
    },
    {
        "date": 1735171200000,
        "title": "Controversial Bill Passes in Legislature",
        "description": "The bill has sparked debate over its potential impact on local communities.",
        "author": "Anna Kolesnikova",
        "hot": true,
        "site": "News paper"
    }
  ]
  ''';
  // Данные из второй апишки
  final String api2 = '''
  {
    "newsLine": [
        {
            "datetime": "2024-12-05T00:00:00",
            "main": "New Proposal to Combat Housing Crisis in City",
            "article": "A new plan to address the growing housing crisis aims to provide relief to residents.",
            "author": "Samantha Lee",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-08T00:00:00",
            "main": "Downtown Faces Massive Traffic Disruptions",
            "article": "A major roadblock caused severe delays for commuters throughout downtown today.",
            "author": "Victor Campbell",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-12T00:00:00",
            "main": "Local Café Receives Prestigious Recognition",
            "article": "A local café received a prestigious national award for its innovative menu.",
            "author": "Julia Roberts",
            "isPopular": true,
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-06T00:00:00",
            "main": "Innovative Tech Firm Unveils Groundbreaking AI Solution",
            "article": "The new AI solution is expected to revolutionize data processing for businesses worldwide.",
            "author": "Harry Miller",
            "isPopular": true,
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-14T00:00:00",
            "main": "Neighborhood Garden Initiative Gains Popularity",
            "article": "Community efforts are growing to expand the neighborhood garden project.",
            "author": "Claire Johnson",
            "isPopular": true,
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-07T00:00:00",
            "main": "Library Restoration Project Finally Completed",
            "article": "The library has been fully restored after extensive renovations and is now open.",
            "author": "Mark Anderson",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-18T00:00:00",
            "main": "Police Investigating Multiple Home Break-ins",
            "article": "Local authorities are investigating a series of burglaries that occurred over the weekend.",
            "author": "Rachel Carter",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-21T00:00:00",
            "main": "Contemporary Art Exhibit Draws Crowds",
            "article": "The contemporary art exhibit, showcasing local artists, opens to a large crowd.",
            "author": "Lucas Wright",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-23T00:00:00",
            "main": "Winter Storm Forecast for the Upcoming Week",
            "article": "The weather forecast warns of significant snowfall and hazardous driving conditions.",
            "author": "Sophia Bennett",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-20T00:00:00",
            "main": "Fundraiser Smashes Previous Records",
            "article": "The charity event exceeded expectations, raising millions for local organizations.",
            "author": "Daniel Harris",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-10T00:00:00",
            "main": "School District Plans Major Curriculum Overhaul",
            "article": "The school board is set to approve a new curriculum that focuses on modern skills.",
            "author": "Elizabeth Moore",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-11T00:00:00",
            "main": "Biologists Discover Rare Bird Species in Local Area",
            "article": "A rare bird species, once thought to be extinct, has been discovered in the region.",
            "author": "Nathan Green",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-15T00:00:00",
            "main": "New Cancer Treatment Facility Opens at Hospital",
            "article": "The new cancer treatment center promises state-of-the-art care for patients.",
            "author": "Megan Foster",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-16T00:00:00",
            "main": "Blockbuster Film Dominates Box Office in Opening Week",
            "article": "The highly anticipated movie broke all previous box office records on opening night.",
            "author": "James Carter",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-09T00:00:00",
            "main": "Concert Series Announced for City Park",
            "article": "City Park will host a new series of concerts throughout the summer season.",
            "author": "Laura Smith",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-17T00:00:00",
            "main": "Government Introduces Green Energy Initiative",
            "article": "The government introduces a new initiative to promote sustainable energy sources.",
            "author": "Evan White",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-13T00:00:00",
            "main": "Retail Chain Announces Layoffs and Store Closures",
            "article": "Several stores are closing down as part of a restructuring process within the company.",
            "author": "Olivia Davis",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-22T00:00:00",
            "main": "Researchers Claim Breakthrough in Vaccine Development",
            "article": "Researchers have made a significant step in vaccine development, offering hope for the future.",
            "author": "Matthew Harris",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-04T00:00:00",
            "main": "Local Team Celebrates Historic Victory",
            "article": "The local team triumphed in the final game of the season, earning a historic win.",
            "author": "Chloe Johnson",
            "source": "Garden News"
        },
        {
            "datetime": "2024-12-25T00:00:00",
            "main": "New Controversial Law Passes in Parliament",
            "article": "A controversial new law has just been passed by the national parliament.",
            "author": "Benjamin Scott",
            "source": "Garden News"
        }
    ]
  }
  ''';
}
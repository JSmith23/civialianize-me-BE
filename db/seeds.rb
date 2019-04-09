require 'faker'
# Categories:
# General, Employment, Housing, Stress Management, Healthcare, Crisis, Skill Training, Benefits

Resource.create(
    name: "Transition and Care Management for New Veterans (OEF/OIF/OND)",
    category: "General",
    url: "https://www.oefoif.va.gov/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/mdkP2GJ.png"
    )

  Resource.create(
    name: "VSO Lookup",
    category: "General",
    url: "https://nvf.org/veteran-service-officers/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/ayiCqWh.png"
    )

  Resource.create(
    name: "National Labor Exchange (USNLX) Job Search",
    category: "Employment",
    url: "https://veterans.usnlx.com/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/19c7J4e.png"
    )

  Resource.create(
    name: "RecruitMilitary Job Search",
    category: "Employment",
    url: "https://recruitmilitary.com/job-seekers",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/8s5WYZM.png"
    )

  Resource.create(
      name: "HireVeterans Job Search",
      category: "Employment",
      url: "https://hireveterans.com/jobs/",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/hR95pxl.png"
    )

  Resource.create(
      name: "CareerBuilder Job Search",
      category: "Employment",
      url: "https://www.careerbuilder.com/?cbrecursioncnt=1",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/soTBATK.png"
    )

  Resource.create(
      name: "GlassDoor Job Search",
      category: "Employment",
      url: "https://www.glassdoor.com/index.htm",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/FvtINLl.png"
    )

  Resource.create(
      name: "Monster Job Search",
      category: "Employment",
      url: "https://www.monster.com/",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/RgmUfOF.png"
    )

  Resource.create(
      name: "LinkedIn",
      category: "Employment",
      url: "https://www.linkedin.com/",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/YgrNZqF.png"
    )

  Resource.create(
      name: "VA Home Page",
      category: "General",
      url: "https://www.va.gov",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
      name: "Community Resource & Referral Center Lookup",
      category: "Housing",
      url: "https://www.va.gov/HOMELESS/Crrc.asp",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
      name: "LGBT Patient Care Services",
      category: "General",
      url: "https://www.patientcare.va.gov/lgbt/index.asp",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
      name: "Homeless Veterans Phone Line",
      category: "Housing",
      phone: "(877) 424-3838",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
      name: "TriCare Provider Lookup",
      category: "Healthcare",
      url: "https://www.tricare.mil/FindDoctor",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/AYhRXeI.png"
    )

  Resource.create(
      name: "National Veterans Foundation Resources",
      category: "General",
      url: "https://nvf.org/veteran-resources/",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/ayiCqWh.png"
    )

  Resource.create(
      name: "National Resource Directory",
      category: "General",
      url: "https://nrd.gov/",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/ANYHB3I.png"
    )

  Resource.create(
    name: "Guide to Choosing the Right Skill Training School",
    category: "Skill Training",
    url: "https://www.affordablecollegesonline.org/college-resource-center/veteran-vocational-trade-students/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/h2LZCpm.png"
    )


  Resource.create(
    name: "Alliance, Inc - Veteran Housing Assistance Program",
    category: "Housing",
    url: "https://www.allianceinc.org/services/veterans-housing-assistance-program-ssvf",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/MhHNSL6.png"
    )

  Resource.create(
    name: "Returning Servicemembers Healthcare (OEF/OIF/OND)",
    category: "General",
    url: "https://www.va.gov/healthbenefits/apply/returning_servicemembers.asp",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
    name: "Community Employment Coordinator Contact List",
    category: "Housing",
    url: "https://www.va.gov/HOMELESS/cec-contacts.asp",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
    name: "Guide to Building a 5-star LinkedIn Profile",
    category: "Employment",
    url: "https://topdogsocialmedia.com/linkedin-profile-makeover-tutorial/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/SiYYA3P.png"
    )


  Resource.create(
    name: "VA Facilities with LGBT Program Websites",
    category: "General",
    url: "https://www.patientcare.va.gov/LGBT/VAFacilities.asp",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/a/vCp6hgZ.png"
    )

  Resource.create(
      name: "Military One Source",
      category: "General",
      url: "https://www.militaryonesource.mil/",
      phone: "(800) 342-9647",
      description: Faker::Lorem.paragraph(5),
      logo: "https://i.imgur.com/Ggsrbto.png"
      )

  Resource.create(
    name: "TriCare Proof of Coverage",
    category: "Healthcare",
    url: "https://www.tricare.mil/Plans/Eligibility/DEERS/milConnect/Proof",
    phone: "(800) 538-9552",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/AYhRXeI.png"
    )

  Resource.create(
    name: "Veteran Crisis Line",
    category: "Crisis",
    url: "https://www.lifeline-va-chat.org/SightMaxAgentInterfaceMobile/PreChatSurvey.aspx?accountID=1&siteID=4&queueID=8",
    phone: "(800) 273-8255",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/Inh9jMv.png"
    )

  Resource.create(
    name: "DAV",
    category: "General",
    url: "https://www.dav.org/veterans/resources/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/QJee5nh.png"
  )

  Resource.create(
    name: "GI Bill FAQ",
    category: "Benefits",
    url: "https://www.va.gov/education/about-gi-bill-benefits/",
    description: Faker::Lorem.paragraph(5),
    logo: "https://i.imgur.com/a/vCp6hgZ.png"
  )

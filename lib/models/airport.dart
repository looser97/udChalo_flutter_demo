class Airport {
  String code;
  String name;
  String city;
  Airport(this.code, this.name, this.city);
}

class Airports {
  dynamic getFromId(String code) {
    var index =
        airports.indexWhere((airport) => airport["airportCode"] == code);
    return airports[index];
  }

  final airports = [
    {
      "city": "Agra",
      "pseudonym": "Agra",
      "airportCode": "AGR",
      "countryCode": "IN",
      "longitude": "077.57.39E",
      "createdAt": "2018-10-23T07:15:15.186Z",
      "airportName": "Agra",
      "isEnabled": 1,
      "latitude": "27.09.21N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Agatti Island",
      "airportCode": "AGX",
      "countryCode": "IN",
      "longitude": "072.10.34E",
      "createdAt": "2018-10-23T07:15:15.185Z",
      "airportName": "Agatti Island",
      "isEnabled": 1,
      "latitude": "10.49.25N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Lakshadweep"
    },
    {
      "city": "Adampur",
      "airportCode": "AIP",
      "countryCode": "IN",
      "longitude": "75.758797",
      "createdAt": "2018-10-23T07:15:15.307Z",
      "airportName": "Adampur Airport",
      "isEnabled": 1,
      "latitude": "31.4338",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Punjab"
    },
    {
      "city": "Aizawl",
      "airportCode": "AJL",
      "countryCode": "IN",
      "longitude": "092.37.13E",
      "createdAt": "2018-10-23T07:15:15.188Z",
      "airportName": "Lengpui",
      "isEnabled": 1,
      "latitude": "23.50.20N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Mizoram"
    },
    {
      "city": "Akola",
      "airportCode": "AKD",
      "countryCode": "IN",
      "longitude": "077.05.00E",
      "createdAt": "2018-10-23T07:15:15.189Z",
      "airportName": "Akola",
      "isEnabled": 1,
      "latitude": "20.40.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Ahmedabad",
      "airportCode": "AMD",
      "countryCode": "IN",
      "longitude": "072.38.05E",
      "createdAt": "2018-10-23T07:15:15.187Z",
      "airportName": "S. VallabhBhai Patel",
      "isEnabled": 1,
      "latitude": "23.04.38N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Amritsar",
      "airportCode": "ATQ",
      "countryCode": "IN",
      "longitude": "074.47.50E",
      "createdAt": "2018-10-23T07:15:15.191Z",
      "airportName": "Sri Guru Ram Dass Jee",
      "isEnabled": 1,
      "latitude": "31.42.35N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Punjab"
    },
    {
      "city": "Abu Dhabi ",
      "pseudonym": "UAE,Abu, abud",
      "airportCode": "AUH",
      "countryCode": "AE",
      "longitude": "54.6501E",
      "airportName": "Abu Dhabi International",
      "isEnabled": 1,
      "country": "UAE",
      "latitude": "24.4419N",
      "timeZone": {
        "name": "Gulf Standard Time",
        "code": "GST",
        "offset": "+4:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Bhubaneshwar",
      "airportCode": "BBI",
      "countryCode": "IN",
      "longitude": "085.49.04E",
      "createdAt": "2018-10-23T07:15:15.203Z",
      "airportName": "Biju Patnaik",
      "isEnabled": 1,
      "latitude": "20.14.40N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Odisha"
    },
    {
      "city": "Vadodara",
      "airportCode": "BDQ",
      "countryCode": "IN",
      "longitude": "073.13.35E",
      "createdAt": "2018-10-23T07:15:15.302Z",
      "airportName": "Vadodara",
      "isEnabled": 1,
      "latitude": "22.20.10N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Bareilly",
      "airportCode": "BEK",
      "countryCode": "IN",
      "longitude": "081.14.00E",
      "createdAt": "2018-10-23T07:15:15.196Z",
      "airportName": "Bareilly",
      "isEnabled": 1,
      "latitude": "26.13.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Bellary",
      "airportCode": "BEP",
      "countryCode": "IN",
      "longitude": "076.54.00E",
      "createdAt": "2018-10-23T07:15:15.198Z",
      "airportName": "Bellary",
      "isEnabled": 1,
      "latitude": "15.11.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Bhuj",
      "airportCode": "BHJ",
      "countryCode": "IN",
      "longitude": "069.40.13E",
      "createdAt": "2018-10-23T07:15:15.205Z",
      "airportName": "Shyamji Krishna Verma",
      "isEnabled": 1,
      "latitude": "23.17.16N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Bhopal",
      "airportCode": "BHO",
      "countryCode": "IN",
      "longitude": "077.20.15E",
      "createdAt": "2018-10-23T07:15:15.202Z",
      "airportName": "Raja Bhoj",
      "isEnabled": 1,
      "latitude": "23.17.15N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Bhavnagar",
      "airportCode": "BHU",
      "countryCode": "IN",
      "longitude": "072.11.07E",
      "createdAt": "2018-10-23T07:15:15.202Z",
      "airportName": "Bhavnagar Civil",
      "isEnabled": 1,
      "latitude": "21.45.08N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Bikaner",
      "airportCode": "BKB",
      "countryCode": "IN",
      "longitude": "073.18.00E",
      "createdAt": "2018-10-23T07:15:15.206Z",
      "airportName": "Nal",
      "isEnabled": 1,
      "latitude": "28.01.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Bangkok",
      "pseudonym": "thai,thailand,bang,bkk",
      "airportCode": "BKK",
      "countryCode": "TH",
      "longitude": "100.7501E",
      "airportName": "Suvarnabhumi Airport",
      "isEnabled": 1,
      "latitude": "13.6900N",
      "country": "Thailand",
      "timeZone": {
        "name": "Indochina Time",
        "code": "ICT",
        "offset": "+7:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Bengaluru",
      "airportCode": "BLR",
      "countryCode": "IN",
      "longitude": "077.42.20E",
      "pseudonyms": "Bangalore,Bengaluru,Bangalooru, Banglore",
      "createdAt": "2018-10-23T07:15:15.200Z",
      "airportName": "Kempegowda Intl",
      "isEnabled": 1,
      "latitude": "13.11.56N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Mumbai",
      "airportCode": "BOM",
      "countryCode": "IN",
      "longitude": "072.52.05E",
      "pseudonyms": "Bombay,Mumbai",
      "createdAt": "2018-10-23T07:15:15.258Z",
      "airportName": "Chhatrapati Shivaji International",
      "isEnabled": 1,
      "latitude": "19.05.19N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Begumpet",
      "airportCode": "BPM",
      "countryCode": "IN",
      "longitude": "078.27.49E",
      "createdAt": "2018-10-23T07:15:15.234Z",
      "airportName": "Begumpet Airport",
      "isEnabled": 1,
      "latitude": "17.27.12N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Bhatinda",
      "airportCode": "BUP",
      "countryCode": "IN",
      "longitude": "074.58.00E",
      "createdAt": "2018-10-23T07:15:15.201Z",
      "airportName": "Bhatinda",
      "isEnabled": 1,
      "latitude": "30.10.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Punjab"
    },
    {
      "city": "Guangdong",
      "pseudonym": "china,chn,guan",
      "airportCode": "CAN",
      "countryCode": "CN",
      "longitude": "113.308E",
      "airportName": "Guangzhou Baiyun International",
      "isEnabled": 1,
      "country": "China",
      "latitude": "23.3959N",
      "timeZone": {
        "name": "China Standard Time",
        "code": "CST",
        "offset": "+8:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Car Nicobar Island",
      "airportCode": "CBD",
      "countryCode": "IN",
      "longitude": "092.49.12E",
      "createdAt": "2018-10-23T07:15:15.207Z",
      "airportName": "Car Nicobar Island AFB",
      "isEnabled": 1,
      "latitude": "09.09.17N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andaman & Nicobar"
    },
    {
      "city": "Kozhikode",
      "airportCode": "CCJ",
      "countryCode": "IN",
      "longitude": "075.57.19E",
      "createdAt": "2018-10-23T07:15:15.249Z",
      "airportName": "Kozhikode International",
      "isEnabled": 1,
      "latitude": "11.08.13N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Kerala"
    },
    {
      "city": "Kolkata",
      "airportCode": "CCU",
      "countryCode": "IN",
      "longitude": "088.26.48E",
      "pseudonyms": "Kolkota,Calcutta",
      "createdAt": "2018-10-23T07:15:15.248Z",
      "airportName": "Subhas Chandra Bose",
      "isEnabled": 1,
      "latitude": "22.39.17N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Cuddapah",
      "airportCode": "CDP",
      "countryCode": "IN",
      "longitude": "078.46.21E",
      "createdAt": "2018-10-23T07:15:15.213Z",
      "airportName": "Cuddapah",
      "isEnabled": 1,
      "latitude": "14.30.46N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Coimbatore",
      "airportCode": "CJB",
      "countryCode": "IN",
      "longitude": "077.02.36E",
      "createdAt": "2018-10-23T07:15:15.211Z",
      "airportName": "Coimbatore International",
      "isEnabled": 1,
      "latitude": "11.01.48N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Colombo",
      "pseudonym": "Sri,sirlanka,col,colom,colombo",
      "airportCode": "CMB",
      "countryCode": "LK",
      "longitude": "79.8843E",
      "airportName": "Colombo International",
      "isEnabled": 1,
      "country": "Sri Lanka",
      "latitude": "7.1802N",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Cooch Behar",
      "airportCode": "COH",
      "countryCode": "IN",
      "longitude": "089.28.00E",
      "createdAt": "2018-10-23T07:15:15.212Z",
      "airportName": "Cooch Behar",
      "isEnabled": 1,
      "latitude": "26.20.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Kochi",
      "airportCode": "COK",
      "countryCode": "IN",
      "longitude": "076.24.07E",
      "createdAt": "2018-10-23T07:15:15.247Z",
      "airportName": "Kochi International",
      "isEnabled": 1,
      "latitude": "10.09.07N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Kerala"
    },
    {
      "city": "Chengdu",
      "pseudonym": "Chn,chen,chengdu",
      "airportCode": "CTU",
      "countryCode": "CN",
      "longitude": "30.5675N",
      "airportName": "Chengdu Shuangliu International",
      "isEnabled": 1,
      "country": "China",
      "latitude": "30.5675N",
      "timeZone": {
        "name": "China Standard Time",
        "code": "CST",
        "offset": "+8:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Dhaka",
      "pseudonym": "Bhan,haz,hazrat,dhaka",
      "airportCode": "DAC",
      "countryCode": "BD",
      "longitude": "90.4029E",
      "airportName": "Hazrat Shahjalal International",
      "isEnabled": 1,
      "country": "Bangladesh",
      "latitude": "23.8434N",
      "timeZone": {
        "name": "Bangladesh Standard Time",
        "code": "BST",
        "offset": "+6:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Darjeeling",
      "airportCode": "DAI",
      "countryCode": "IN",
      "longitude": "088.20.00E",
      "createdAt": "2018-10-23T07:15:15.214Z",
      "airportName": "Darjeeling",
      "isEnabled": 1,
      "latitude": "27.02.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Dhanbad",
      "airportCode": "DBD",
      "countryCode": "IN",
      "longitude": "086.27.00E",
      "createdAt": "2018-10-23T07:15:15.219Z",
      "airportName": "Dhanbad",
      "isEnabled": 1,
      "latitude": "23.48.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jharkhand"
    },
    {
      "city": "Dehra Dun",
      "airportCode": "DED",
      "countryCode": "IN",
      "longitude": "078.10.49E",
      "createdAt": "2018-10-23T07:15:15.216Z",
      "airportName": "Jolly Grant",
      "isEnabled": 1,
      "latitude": "30.11.23N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttarakhand"
    },
    {
      "city": "Delhi",
      "airportCode": "DEL",
      "countryCode": "IN",
      "longitude": "077.06.11E",
      "pseudonyms": "New Delhi,Delhi",
      "createdAt": "2018-10-23T07:15:15.217Z",
      "airportName": "Indira Gandhi International",
      "isEnabled": 1,
      "latitude": "28.33.59N",
      "country": "india",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "New Delhi"
    },
    {
      "city": "Deparijo",
      "airportCode": "DEP",
      "countryCode": "IN",
      "longitude": "094.00.00E",
      "createdAt": "2018-10-23T07:15:15.218Z",
      "airportName": "Deparijo",
      "isEnabled": 1,
      "latitude": "27.21.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Arunachal Pradesh"
    },
    {
      "city": "Dharamsala",
      "airportCode": "DHM",
      "countryCode": "IN",
      "longitude": "076.15.38E",
      "createdAt": "2018-10-23T07:15:15.219Z",
      "airportName": "Kangra",
      "isEnabled": 1,
      "latitude": "32.09.55N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Himachal Pradesh"
    },
    {
      "city": "Dibrugarh",
      "airportCode": "DIB",
      "countryCode": "IN",
      "longitude": "095.01.00E",
      "createdAt": "2018-10-23T07:15:15.220Z",
      "airportName": "Mohanbari",
      "isEnabled": 1,
      "latitude": "27.29.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Diu",
      "airportCode": "DIU",
      "countryCode": "IN",
      "longitude": "070.55.18E",
      "createdAt": "2018-10-23T07:15:15.222Z",
      "airportName": "Diu",
      "isEnabled": 1,
      "latitude": "20.42.50N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Dadra & Nagar Haveli - Daman & Diu"
    },
    {
      "city": "Dimapur",
      "airportCode": "DMU",
      "countryCode": "IN",
      "longitude": "093.46.28E",
      "createdAt": "2018-10-23T07:15:15.329Z",
      "airportName": "Dimapur",
      "isEnabled": 1,
      "latitude": "25.52.57N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Nagaland"
    },
    {
      "city": "Doha",
      "pseudonym": "qatar,qat,doha",
      "airportCode": "DOH",
      "countryCode": "QA",
      "longitude": "51.6138E",
      "airportName": "Hamad International",
      "isEnabled": 1,
      "country": "Qatar",
      "latitude": "25.2609N",
      "timeZone": {
        "name": "Arabian Standard Time",
        "code": "AST",
        "offset": "+3:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Dubai",
      "pseudonym": "dubai,uai,are",
      "airportCode": "DXB",
      "countryCode": "AE",
      "longitude": "55.3657E",
      "airportName": "Dubai International",
      "isEnabled": 1,
      "country": "UAE",
      "latitude": "25.2532N",
      "timeZone": {
        "name": "Gulf Standard Time",
        "code": "GST",
        "offset": "+4:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Guwahati",
      "airportCode": "GAU",
      "countryCode": "IN",
      "longitude": "091.35.09E",
      "createdAt": "2018-10-23T07:15:15.228Z",
      "airportName": "Gopinath Bordoloi International",
      "isEnabled": 1,
      "latitude": "26.06.22N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Gaya",
      "airportCode": "GAY",
      "countryCode": "IN",
      "longitude": "084.57.04E",
      "createdAt": "2018-10-23T07:15:15.223Z",
      "airportName": "Gaya",
      "isEnabled": 1,
      "latitude": "24.44.40N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Bihar"
    },
    {
      "city": "Goa",
      "airportCode": "GOI",
      "countryCode": "IN",
      "longitude": "073.49.53E",
      "createdAt": "2018-10-23T07:15:15.224Z",
      "airportName": "Dabolim",
      "isEnabled": 1,
      "latitude": "15.22.51N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Goa"
    },
    {
      "city": "Gorakhpur",
      "airportCode": "GOP",
      "countryCode": "IN",
      "longitude": "083.27.00E",
      "createdAt": "2018-10-23T07:15:15.226Z",
      "airportName": "Gorakhpur",
      "isEnabled": 1,
      "latitude": "26.44.28N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Guna",
      "airportCode": "GUX",
      "countryCode": "IN",
      "longitude": "077.19.00E",
      "createdAt": "2018-10-23T07:15:15.227Z",
      "airportName": "Guna",
      "isEnabled": 1,
      "latitude": "24.29.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Gwalior",
      "airportCode": "GWL",
      "countryCode": "IN",
      "longitude": "078.13.40E",
      "createdAt": "2018-10-23T07:15:15.230Z",
      "airportName": "Gwalior",
      "isEnabled": 1,
      "latitude": "26.17.36N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Hanoi",
      "pseudonym": "han,hanoi,vietnam",
      "airportCode": "HAN",
      "countryCode": "VN",
      "longitude": "105.8042E",
      "airportName": "Noi Bai International",
      "isEnabled": 1,
      "country": "Vietnam",
      "latitude": "21.2187N",
      "timeZone": {
        "name": "Indochina Time",
        "code": "ICT",
        "offset": "+7:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Hubli",
      "airportCode": "HBX",
      "countryCode": "IN",
      "longitude": "075.05.13E",
      "createdAt": "2018-10-23T07:15:15.232Z",
      "airportName": "Hubli",
      "isEnabled": 1,
      "latitude": "15.21.42N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Khajuraho",
      "airportCode": "HJR",
      "countryCode": "IN",
      "longitude": "079.55.07E",
      "createdAt": "2018-10-23T07:15:15.245Z",
      "airportName": "Khajuraho",
      "isEnabled": 1,
      "latitude": "24.49.02N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Hong Kong",
      "pseudonym": "hong,china,chn",
      "airportCode": "HKG",
      "countryCode": "CN",
      "longitude": "113.9185E",
      "airportName": "Hong Kong International ",
      "isEnabled": 1,
      "country": "China",
      "latitude": "22.308N",
      "timeZone": {
        "name": "China Standard Time",
        "code": "CST",
        "offset": "+8:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Phuket",
      "pseudonym": "thai,thailand,phu,phuke",
      "airportCode": "HKT",
      "countryCode": "TH",
      "longitude": "98.3065E",
      "airportName": "Phuket International ",
      "isEnabled": 1,
      "country": "Thailand",
      "latitude": "8.1111N",
      "timeZone": {
        "name": "Indochina Time",
        "code": "ICT",
        "offset": "+7:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Hisar",
      "airportCode": "HSS",
      "countryCode": "IN",
      "longitude": "075.48.00E",
      "createdAt": "2018-10-23T07:15:15.231Z",
      "airportName": "Hisar",
      "isEnabled": 1,
      "latitude": "29.10.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Haryana"
    },
    {
      "city": "Hyderabad",
      "airportCode": "HYD",
      "countryCode": "IN",
      "longitude": "078.24.00E",
      "createdAt": "2018-10-23T07:15:15.233Z",
      "airportName": "Hyderabad",
      "isEnabled": 1,
      "latitude": "17.14.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Telangana"
    },
    {
      "city": "Indore",
      "airportCode": "IDR",
      "countryCode": "IN",
      "longitude": "075.48.04E",
      "createdAt": "2018-10-23T07:15:15.236Z",
      "airportName": "Devi Ahilya Bai Holkar",
      "isEnabled": 1,
      "latitude": "22.43.18N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Imphal",
      "airportCode": "IMF",
      "countryCode": "IN",
      "longitude": "093.53.48E",
      "createdAt": "2018-10-23T07:15:15.235Z",
      "airportName": "Imphal",
      "isEnabled": 1,
      "latitude": "24.45.36N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Manipur"
    },
    {
      "city": "Nasik",
      "airportCode": "ISK",
      "countryCode": "IN",
      "longitude": "073.49.00E",
      "createdAt": "2018-10-23T07:15:15.263Z",
      "airportName": "Gandhinagar",
      "isEnabled": 1,
      "latitude": "19.58.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Istanbul",
      "pseudonym": "tur,istan,istanbul,atak",
      "airportCode": "IST",
      "countryCode": "TR",
      "longitude": "28.8104E",
      "airportName": "Ataturk International",
      "isEnabled": 1,
      "country": "Turkey",
      "latitude": "40.9830N",
      "timeZone": {
        "name": "Turkey Time",
        "code": "TRT",
        "offset": "+3:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Agartala",
      "airportCode": "IXA",
      "countryCode": "IN",
      "longitude": "091.14.26E",
      "createdAt": "2018-10-23T07:15:15.182Z",
      "airportName": "Agartala",
      "isEnabled": 1,
      "latitude": "23.53.13N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tripura"
    },
    {
      "city": "Bagdogra",
      "airportCode": "IXB",
      "countryCode": "IN",
      "longitude": "088.19.43E",
      "createdAt": "2018-10-23T07:15:15.194Z",
      "airportName": "Bagdogra",
      "isEnabled": 1,
      "latitude": "26.40.52N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Chandigarh",
      "airportCode": "IXC",
      "countryCode": "IN",
      "longitude": "076.47.19E",
      "createdAt": "2018-10-23T07:15:15.208Z",
      "airportName": "Chandigarh",
      "isEnabled": 1,
      "latitude": "30.40.24N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Chandigarh UT"
    },
    {
      "city": "Allahabad",
      "airportCode": "IXD",
      "countryCode": "IN",
      "longitude": "081.44.02E",
      "createdAt": "2018-10-23T07:15:15.190Z",
      "airportName": "Allahabad",
      "isEnabled": 1,
      "latitude": "25.26.24N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Mangalore",
      "airportCode": "IXE",
      "countryCode": "IN",
      "longitude": "074.53.24E",
      "createdAt": "2018-10-23T07:15:15.257Z",
      "airportName": "Mangalore",
      "isEnabled": 1,
      "latitude": "12.57.41N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Belgaum",
      "airportCode": "IXG",
      "countryCode": "IN",
      "longitude": "074.37.06E",
      "createdAt": "2018-10-23T07:15:15.197Z",
      "airportName": "Sambre",
      "isEnabled": 1,
      "latitude": "15.51.33N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Kailashahar",
      "airportCode": "IXH",
      "countryCode": "IN",
      "longitude": "092.01.00E",
      "createdAt": "2018-10-23T07:15:15.242Z",
      "airportName": "Kailashahar",
      "isEnabled": 1,
      "latitude": "24.19.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tripura"
    },
    {
      "city": "Lilabari",
      "airportCode": "IXI",
      "countryCode": "IN",
      "longitude": "094.05.47E",
      "createdAt": "2018-10-23T07:15:15.253Z",
      "airportName": "Lilabari",
      "isEnabled": 1,
      "latitude": "27.17.40N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Jammu",
      "airportCode": "IXJ",
      "countryCode": "IN",
      "longitude": "074.50.15E",
      "createdAt": "2018-10-23T07:15:15.239Z",
      "airportName": "Satwari",
      "isEnabled": 1,
      "latitude": "32.41.21N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jammu & Kashmir"
    },
    {
      "city": "Keshod",
      "airportCode": "IXK",
      "countryCode": "IN",
      "longitude": "070.16.00E",
      "createdAt": "2018-10-23T07:15:15.245Z",
      "airportName": "Keshod",
      "isEnabled": 1,
      "latitude": "21.19.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Leh",
      "airportCode": "IXL",
      "countryCode": "IN",
      "longitude": "077.32.47E",
      "createdAt": "2018-10-23T07:15:15.252Z",
      "airportName": "Kushok Bakula Rimpoche",
      "isEnabled": 1,
      "latitude": "34.08.09N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jammu & Kashmir"
    },
    {
      "city": "Madurai",
      "airportCode": "IXM",
      "countryCode": "IN",
      "longitude": "078.05.36E",
      "createdAt": "2018-10-23T07:15:15.254Z",
      "airportName": "Madurai",
      "isEnabled": 1,
      "latitude": "09.50.04N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Khowai",
      "airportCode": "IXN",
      "countryCode": "IN",
      "longitude": "091.38.00E",
      "createdAt": "2018-10-23T07:15:15.246Z",
      "airportName": "Khowai",
      "isEnabled": 1,
      "latitude": "24.04.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tripura"
    },
    {
      "city": "Pathankot",
      "airportCode": "IXP",
      "countryCode": "IN",
      "longitude": "075.38.05E",
      "createdAt": "2018-10-23T07:15:15.268Z",
      "airportName": "Pathankot",
      "isEnabled": 1,
      "latitude": "32.14.02N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Punjab"
    },
    {
      "city": "Kamalpur",
      "airportCode": "IXQ",
      "countryCode": "IN",
      "longitude": "091.49.00E",
      "createdAt": "2018-10-23T07:15:15.243Z",
      "airportName": "Kamalpur",
      "isEnabled": 1,
      "latitude": "24.08.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tripura"
    },
    {
      "city": "Ranchi",
      "airportCode": "IXR",
      "countryCode": "IN",
      "longitude": "085.19.18E",
      "createdAt": "2018-10-23T07:15:15.287Z",
      "airportName": "Birsa Munda",
      "isEnabled": 1,
      "latitude": "23.18.51N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jharkhand"
    },
    {
      "city": "Silchar",
      "airportCode": "IXS",
      "countryCode": "IN",
      "longitude": "092.58.43E",
      "createdAt": "2018-10-23T07:15:15.295Z",
      "airportName": "Kumbhirgram",
      "isEnabled": 1,
      "latitude": "24.54.47N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Pasighat",
      "airportCode": "IXT",
      "countryCode": "IN",
      "longitude": "095.22.00E",
      "createdAt": "2018-10-23T07:15:15.267Z",
      "airportName": "Pasighat",
      "isEnabled": 1,
      "latitude": "28.04.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Arunachal Pradesh"
    },
    {
      "city": "Aurangabad",
      "airportCode": "IXU",
      "countryCode": "IN",
      "longitude": "075.23.53E",
      "createdAt": "2018-10-23T07:15:15.193Z",
      "airportName": "Aurangabad",
      "isEnabled": 1,
      "latitude": "19.51.46N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Along",
      "airportCode": "IXV",
      "countryCode": "IN",
      "longitude": "094.50.30E",
      "createdAt": "2018-10-23T07:15:15.191Z",
      "airportName": "Along",
      "isEnabled": 1,
      "latitude": "28.25.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Arunachal Pradesh"
    },
    {
      "city": "Jamshedpur",
      "airportCode": "IXW",
      "countryCode": "IN",
      "longitude": "086.10.00E",
      "createdAt": "2018-10-23T07:15:15.240Z",
      "airportName": "Sonari",
      "isEnabled": 1,
      "latitude": "22.49.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jharkhand"
    },
    {
      "city": "Kandla",
      "airportCode": "IXY",
      "countryCode": "IN",
      "longitude": "070.06.01E",
      "createdAt": "2018-10-23T07:15:15.244Z",
      "airportName": "Kandla",
      "isEnabled": 1,
      "latitude": "23.06.46N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Port Blair",
      "airportCode": "IXZ",
      "countryCode": "IN",
      "longitude": "092.43.47E",
      "createdAt": "2018-10-23T07:15:15.272Z",
      "airportName": "Veer Savarkar International",
      "isEnabled": 1,
      "latitude": "11.38.28N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andaman & Nicobar"
    },
    {
      "city": "Jaipur",
      "airportCode": "JAI",
      "countryCode": "IN",
      "longitude": "075.48.44E",
      "createdAt": "2018-10-23T07:15:15.238Z",
      "airportName": "Jaipur International",
      "isEnabled": 1,
      "latitude": "26.49.27N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Jodhpur",
      "airportCode": "JDH",
      "countryCode": "IN",
      "longitude": "073.02.56E",
      "createdAt": "2018-10-23T07:15:15.241Z",
      "airportName": "Jodhpur",
      "isEnabled": 1,
      "latitude": "26.15.04N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Jeddah",
      "pseudonym": "saudi,king,jed,jeddah",
      "airportCode": "JED",
      "countryCode": "SA",
      "longitude": "39.1742E",
      "airportName": "King Abdulaziz International",
      "isEnabled": 1,
      "country": "Saudi Arabia",
      "latitude": "21.6644N",
      "timeZone": {
        "name": "Arabian Standard Time",
        "code": "AST",
        "offset": "+3:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Jamnagar",
      "airportCode": "JGA",
      "countryCode": "IN",
      "longitude": "070.00.45E",
      "createdAt": "2018-10-23T07:15:15.240Z",
      "airportName": "Govardhanpur",
      "isEnabled": 1,
      "latitude": "22.27.56N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Jagdalpur",
      "airportCode": "JGB",
      "countryCode": "IN",
      "longitude": "082.02.00E",
      "createdAt": "2018-10-23T07:15:15.238Z",
      "airportName": "Jagdalpur",
      "isEnabled": 1,
      "latitude": "19.04.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Chhattisgarh"
    },
    {
      "city": "Jalgaon",
      "airportCode": "JLG",
      "countryCode": "IN",
      "longitude": "75.62670135",
      "createdAt": "2018-10-23T07:10:02.281Z",
      "airportName": "Jalgaon Airport",
      "isEnabled": 1,
      "latitude": "20.96220016",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Jabalpur",
      "airportCode": "JLR",
      "countryCode": "IN",
      "longitude": "080.03.07E",
      "createdAt": "2018-10-23T07:15:15.236Z",
      "airportName": "Jabalpur",
      "isEnabled": 1,
      "latitude": "23.10.40N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Jharsuguda",
      "airportCode": "JRG",
      "countryCode": "IN",
      "longitude": "84.05039978",
      "createdAt": "2018-10-23T07:10:02.283Z",
      "airportName": "Jharsuguda Airport",
      "isEnabled": 1,
      "latitude": "21.91349983",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Odisha"
    },
    {
      "city": "Jorhat",
      "airportCode": "JRH",
      "countryCode": "IN",
      "longitude": "094.10.32E",
      "createdAt": "2018-10-23T07:15:15.242Z",
      "airportName": "Rowriah",
      "isEnabled": 1,
      "latitude": "26.43.54N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Jaisalmer",
      "airportCode": "JSA",
      "countryCode": "IN",
      "longitude": "070.51.54E",
      "createdAt": "2018-10-23T07:15:15.239Z",
      "airportName": "Jaisalmer",
      "isEnabled": 1,
      "latitude": "26.53.19N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Kolhapur",
      "airportCode": "KLH",
      "countryCode": "IN",
      "longitude": "074.17.22E",
      "createdAt": "2018-10-23T07:15:15.247Z",
      "airportName": "Kolhapur",
      "isEnabled": 1,
      "latitude": "16.39.53N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Kanpur",
      "airportCode": "KNU",
      "countryCode": "IN",
      "longitude": "080.22.02E",
      "createdAt": "2018-10-23T07:15:15.244Z",
      "airportName": "Kanpur",
      "isEnabled": 1,
      "latitude": "26.26.26N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Ajmer",
      "airportCode": "KQH",
      "countryCode": "IN",
      "longitude": "74.814147",
      "createdAt": "2018-10-23T07:15:15.307Z",
      "airportName": "Kishangarh Airport",
      "isEnabled": 1,
      "latitude": "26.601473",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Kathmandu",
      "pseudonym": "nepal,kath,kathman",
      "airportCode": "KTM",
      "countryCode": "NP",
      "longitude": "85.3592E",
      "airportName": "Tribhuvan International",
      "isEnabled": 1,
      "country": "Nepal",
      "latitude": "27.6981N",
      "timeZone": {
        "name": "Nepal Time",
        "code": "NPT",
        "offset": "+5:45",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Kota",
      "airportCode": "KTU",
      "countryCode": "IN",
      "longitude": "075.51.00E",
      "createdAt": "2018-10-23T07:15:15.248Z",
      "airportName": "Kota",
      "isEnabled": 1,
      "latitude": "25.10.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Kuala Lumpur",
      "pseudonym": "mal,malaysia,male",
      "airportCode": "KUL",
      "countryCode": "MY",
      "longitude": "101.7072E",
      "airportName": "Kuala Lumpur International",
      "isEnabled": 1,
      "country": "Malaysia",
      "latitude": "2.7456N",
      "timeZone": {
        "name": "Malaysia Time",
        "code": "MYT",
        "offset": "+8:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Kullu",
      "airportCode": "KUU",
      "countryCode": "IN",
      "longitude": "077.09.16E",
      "createdAt": "2018-10-23T07:15:15.250Z",
      "airportName": "Bhuntar",
      "isEnabled": 1,
      "latitude": "31.52.36N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Himachal Pradesh"
    },
    {
      "city": "Jeleeb",
      "pseudonym": "kuw,kuwait,jel,jeleeb",
      "airportCode": "KWI",
      "countryCode": "KW",
      "longitude": "47.971E",
      "airportName": "Gazali Expressway Kuwait International",
      "isEnabled": 1,
      "country": "Kuwait",
      "latitude": "29.2404N",
      "timeZone": {
        "name": "Arabian Standard Time",
        "code": "AST",
        "offset": "+3:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Malda",
      "airportCode": "LDA",
      "countryCode": "IN",
      "longitude": "088.09.00E",
      "createdAt": "2018-10-23T07:15:15.255Z",
      "airportName": "Malda",
      "isEnabled": 1,
      "latitude": "25.02.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Lucknow",
      "airportCode": "LKO",
      "countryCode": "IN",
      "longitude": "080.53.22E",
      "createdAt": "2018-10-23T07:15:15.253Z",
      "airportName": "Chaudhary Charan Singh",
      "isEnabled": 1,
      "latitude": "26.45.38N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Latur",
      "airportCode": "LTU",
      "countryCode": "IN",
      "longitude": "076.27.52E",
      "createdAt": "2018-10-23T07:15:15.251Z",
      "airportName": "Latur",
      "isEnabled": 1,
      "latitude": "18.24.42N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Ludhiana",
      "airportCode": "LUH",
      "countryCode": "IN",
      "longitude": "075.57.13E",
      "createdAt": "2018-10-23T07:15:15.254Z",
      "airportName": "Ludhiana",
      "isEnabled": 1,
      "latitude": "30.51.15N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Punjab"
    },
    {
      "city": "Chennai",
      "airportCode": "MAA",
      "countryCode": "IN",
      "longitude": "080.10.50E",
      "pseudonyms": "Chennai,Madras",
      "createdAt": "2018-10-23T07:15:15.210Z",
      "airportName": "Chennai International",
      "isEnabled": 1,
      "latitude": "12.59.40N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Muscat",
      "pseudonym": "mus,muscat,oman,",
      "airportCode": "MCT",
      "countryCode": "OM",
      "longitude": "58.2871E",
      "airportName": "Muscat International",
      "isEnabled": 1,
      "country": "Oman",
      "latitude": "23.6009N",
      "timeZone": {
        "name": "Gulf Standard Time",
        "code": "GST",
        "offset": "+4:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Male",
      "pseudonym": "male,mal,mdv",
      "airportCode": "MLE",
      "countryCode": "MV",
      "longitude": "73.5286E",
      "airportName": "Velana International",
      "isEnabled": 1,
      "country": "Maldives",
      "latitude": "4.1888N",
      "timeZone": {
        "name": "Maldives Time",
        "code": "MVT",
        "offset": "+5:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Mysore",
      "airportCode": "MYQ",
      "countryCode": "IN",
      "longitude": "076.39.26E",
      "createdAt": "2018-10-23T07:15:15.259Z",
      "airportName": "Mandakalli",
      "isEnabled": 1,
      "latitude": "12.13.54N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Muzaffarpur",
      "airportCode": "MZU",
      "countryCode": "IN",
      "longitude": "085.30.30E",
      "createdAt": "2018-10-23T07:15:15.258Z",
      "airportName": "Muzaffarpur",
      "isEnabled": 1,
      "latitude": "26.20.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Bihar"
    },
    {
      "city": "Nagpur",
      "airportCode": "NAG",
      "countryCode": "IN",
      "longitude": "079.02.50E",
      "createdAt": "2018-10-23T07:15:15.260Z",
      "airportName": "Dr Ambedkar International",
      "isEnabled": 1,
      "latitude": "21.05.32N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Nanded",
      "airportCode": "NDC",
      "countryCode": "IN",
      "longitude": "077.19.22E",
      "createdAt": "2018-10-23T07:15:15.261Z",
      "airportName": "Nanded",
      "isEnabled": 1,
      "latitude": "19.10.55N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Daman",
      "airportCode": "NMB",
      "countryCode": "IN",
      "longitude": "072.51.00E",
      "createdAt": "2018-10-23T07:15:15.214Z",
      "airportName": "Daman",
      "isEnabled": 1,
      "latitude": "20.25.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Dadra & Nagar Haveli - Daman & Diu"
    },
    {
      "city": "Neyveli",
      "airportCode": "NVY",
      "countryCode": "IN",
      "longitude": "079.26.00E",
      "createdAt": "2018-10-23T07:15:15.264Z",
      "airportName": "Neyveli",
      "isEnabled": 1,
      "latitude": "11.36.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Osmanabad",
      "airportCode": "OMN",
      "countryCode": "IN",
      "longitude": "76.0574",
      "createdAt": "2018-10-23T07:15:15.305Z",
      "airportName": "Osmanabad Airport",
      "isEnabled": 1,
      "latitude": "18.281",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Bilaspur",
      "airportCode": "PAB",
      "countryCode": "IN",
      "longitude": "082.04.00E",
      "createdAt": "2018-10-23T07:15:15.206Z",
      "airportName": "Bilaspur",
      "isEnabled": 1,
      "latitude": "22.00.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Chhattisgarh"
    },
    {
      "city": "Patna",
      "airportCode": "PAT",
      "countryCode": "IN",
      "longitude": "085.05.17E",
      "createdAt": "2018-10-23T07:15:15.269Z",
      "airportName": "Jayaprakash Narayan",
      "isEnabled": 1,
      "latitude": "25.35.29N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Bihar"
    },
    {
      "city": "Porbandar",
      "airportCode": "PBD",
      "countryCode": "IN",
      "longitude": "069.39.26E",
      "createdAt": "2018-10-23T07:15:15.271Z",
      "airportName": "Porbandar",
      "isEnabled": 1,
      "latitude": "21.38.55N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Pantnagar",
      "airportCode": "PGH",
      "countryCode": "IN",
      "longitude": "079.28.25E",
      "createdAt": "2018-10-23T07:15:15.265Z",
      "airportName": "Pantnagar",
      "isEnabled": 1,
      "latitude": "29.01.55N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttarakhand"
    },
    {
      "city": "Pune",
      "airportCode": "PNQ",
      "countryCode": "IN",
      "longitude": "073.55.11E",
      "createdAt": "2018-10-23T07:15:15.273Z",
      "zone": "west",
      "airportName": "Lohegaon",
      "isEnabled": 1,
      "latitude": "18.34.56N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Pondicherry",
      "airportCode": "PNY",
      "countryCode": "IN",
      "longitude": "079.48.41E",
      "createdAt": "2018-10-23T07:15:15.270Z",
      "airportName": "Pondicherry",
      "isEnabled": 1,
      "latitude": "11.58.06N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Pondicherry UT"
    },
    {
      "city": "Puttaparthi",
      "airportCode": "PUT",
      "countryCode": "IN",
      "longitude": "077.47.00E",
      "createdAt": "2018-10-23T07:15:15.275Z",
      "airportName": "Sri Sathya Sai",
      "isEnabled": 1,
      "latitude": "14.08.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Jeypore",
      "airportCode": "PYB",
      "countryCode": "IN",
      "longitude": "082.35.00E",
      "createdAt": "2018-10-23T07:15:15.241Z",
      "airportName": "Jeypore",
      "isEnabled": 1,
      "latitude": "18.51.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Odisha"
    },
    {
      "city": "Rajkot",
      "airportCode": "RAJ",
      "countryCode": "IN",
      "longitude": "070.46.46E",
      "createdAt": "2018-10-23T07:15:15.285Z",
      "airportName": "Rajkot",
      "isEnabled": 1,
      "latitude": "22.18.33N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Durgapur",
      "airportCode": "RDP",
      "countryCode": "IN",
      "longitude": "087.14.32E",
      "createdAt": "2018-10-23T07:15:15.223Z",
      "airportName": "Kazi Nazrul Islam",
      "isEnabled": 1,
      "latitude": "23.37.27N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Rewa",
      "airportCode": "REW",
      "countryCode": "IN",
      "longitude": "081.18.00E",
      "createdAt": "2018-10-23T07:15:15.289Z",
      "airportName": "Chorhata",
      "isEnabled": 1,
      "latitude": "24.32.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Balurghat",
      "airportCode": "RGH",
      "countryCode": "IN",
      "longitude": "088.48.00E",
      "createdAt": "2018-10-23T07:15:15.196Z",
      "airportName": "Balurghat",
      "isEnabled": 1,
      "latitude": "25.16.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "West Bengal"
    },
    {
      "city": "Yangon",
      "pseudonym": "yang,myan,mmr",
      "airportCode": "RGN",
      "countryCode": "MM",
      "longitude": "96.1354E",
      "airportName": "Yangon International",
      "isEnabled": 1,
      "country": "Myanmar",
      "latitude": "16.9027N",
      "timeZone": {
        "name": "Myanmar Time",
        "code": "MMT",
        "offset": "+6:30",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Rajahmundry",
      "airportCode": "RJA",
      "countryCode": "IN",
      "longitude": "081.49.10E",
      "createdAt": "2018-10-23T07:15:15.284Z",
      "airportName": "Rajahmundry",
      "isEnabled": 1,
      "latitude": "17.06.36N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Rajauri",
      "airportCode": "RJI",
      "countryCode": "IN",
      "longitude": "074.18.09E",
      "createdAt": "2018-10-23T07:15:15.284Z",
      "airportName": "Rajauri",
      "isEnabled": 1,
      "latitude": "33.22.07N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jammu & Kashmir"
    },
    {
      "city": "Ramagundam",
      "airportCode": "RMD",
      "countryCode": "IN",
      "longitude": "079.24.00E",
      "createdAt": "2018-10-23T07:15:15.286Z",
      "airportName": "Basantnagar",
      "isEnabled": 1,
      "latitude": "18.46.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Telangana"
    },
    {
      "city": "Raipur",
      "airportCode": "RPR",
      "countryCode": "IN",
      "longitude": "081.44.20E",
      "createdAt": "2018-10-23T07:15:15.283Z",
      "airportName": "Swami Vivekananda",
      "isEnabled": 1,
      "latitude": "21.10.49N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Chhattisgarh"
    },
    {
      "city": "Rourkela",
      "airportCode": "RRK",
      "countryCode": "IN",
      "longitude": "084.49.00E",
      "createdAt": "2018-10-23T07:15:15.290Z",
      "airportName": "Rourkela",
      "isEnabled": 1,
      "latitude": "22.16.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Odisha"
    },
    {
      "city": "Ratnagiri",
      "airportCode": "RTC",
      "countryCode": "IN",
      "longitude": "073.19.00E",
      "createdAt": "2018-10-23T07:15:15.288Z",
      "airportName": "Ratnagiri",
      "isEnabled": 1,
      "latitude": "17.00.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Riyadh",
      "pseudonym": "saudi,sau,riya,riyadh",
      "airportCode": "RUH",
      "countryCode": "SA",
      "longitude": "46.7007E",
      "airportName": "King Khalid International",
      "isEnabled": 1,
      "country": "Saudi Arabia",
      "latitude": "24.9636N",
      "timeZone": {
        "name": "Arabian Standard Time",
        "code": "AST",
        "offset": "+3:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Rupsi",
      "airportCode": "RUP",
      "countryCode": "IN",
      "longitude": "089.54.24E",
      "createdAt": "2018-10-23T07:15:15.290Z",
      "airportName": "Rupsi",
      "isEnabled": 1,
      "latitude": "26.08.28N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Shirdi",
      "airportCode": "SAG",
      "countryCode": "IN",
      "longitude": "74.378889",
      "createdAt": "2018-10-23T07:15:15.306Z",
      "airportName": "Shirdi Airport",
      "isEnabled": 1,
      "latitude": "19.688611",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Ho Chi Minh City",
      "pseudonym": "ho chi,viet,vietnam",
      "airportCode": "SGN",
      "countryCode": "VN",
      "longitude": "106.6588E",
      "airportName": "Tan Son Nhat International",
      "isEnabled": 1,
      "country": "Vietnam",
      "latitude": "10.8185N",
      "timeZone": {
        "name": "Indochina Time",
        "code": "ICT",
        "offset": "+7:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Sharjah",
      "pseudonym": "uar,are,shar,sharjah",
      "airportCode": "SHJ",
      "countryCode": "AE",
      "longitude": "55.5123E",
      "airportName": "Sharjah",
      "isEnabled": 1,
      "country": "UAE",
      "latitude": "25.3284N",
      "timeZone": {
        "name": "Gulf Standard Time",
        "code": "GST",
        "offset": "+4:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Shillong",
      "airportCode": "SHL",
      "countryCode": "IN",
      "longitude": "091.58.39E",
      "createdAt": "2018-10-23T07:15:15.294Z",
      "airportName": "Barapani",
      "isEnabled": 1,
      "latitude": "25.42.13N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Meghalaya"
    },
    {
      "city": "Singapore",
      "pseudonym": "chan,changi,singa,singapo",
      "airportCode": "SIN",
      "countryCode": "SG",
      "longitude": "103.9915E",
      "airportName": "Changi",
      "isEnabled": 1,
      "country": "Singapore",
      "latitude": "1.3644N",
      "timeZone": {
        "name": "Singapore Standard Time",
        "code": "SGT",
        "offset": "+8:00",
        "isDaylightSaving": false
      }
    },
    {
      "city": "Shimla",
      "airportCode": "SLV",
      "countryCode": "IN",
      "longitude": "077.04.05E",
      "createdAt": "2018-10-23T07:15:15.295Z",
      "airportName": "Shimla",
      "isEnabled": 1,
      "latitude": "31.04.54N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Himachal Pradesh"
    },
    {
      "city": "Solapur",
      "airportCode": "SSE",
      "countryCode": "IN",
      "longitude": "075.56.00E",
      "createdAt": "2018-10-23T07:15:15.296Z",
      "airportName": "Solapur",
      "isEnabled": 1,
      "latitude": "17.38.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Maharashtra"
    },
    {
      "city": "Surat",
      "airportCode": "STV",
      "countryCode": "IN",
      "longitude": "072.44.30E",
      "createdAt": "2018-10-23T07:15:15.297Z",
      "airportName": "Surat",
      "isEnabled": 1,
      "latitude": "21.06.51N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Gujarat"
    },
    {
      "city": "Srinagar",
      "airportCode": "SXR",
      "countryCode": "IN",
      "longitude": "074.46.27E",
      "createdAt": "2018-10-23T07:15:15.296Z",
      "airportName": "Sheikh ul Alam",
      "isEnabled": 1,
      "latitude": "33.59.14N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Jammu & Kashmir"
    },
    {
      "city": "Salem",
      "airportCode": "SXV",
      "countryCode": "IN",
      "longitude": "078.10.00E",
      "createdAt": "2018-10-23T07:15:15.291Z",
      "airportName": "Salem",
      "isEnabled": 1,
      "latitude": "11.39.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Tuticorin",
      "airportCode": "TCR",
      "countryCode": "IN",
      "longitude": "078.01.35E",
      "createdAt": "2018-10-23T07:15:15.301Z",
      "airportName": "Tuticorin",
      "isEnabled": 1,
      "latitude": "08.43.24N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Tezu",
      "airportCode": "TEI",
      "countryCode": "IN",
      "longitude": "096.08.00E",
      "createdAt": "2018-10-23T07:15:15.298Z",
      "airportName": "Tezu",
      "isEnabled": 1,
      "latitude": "27.57.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Arunachal Pradesh"
    },
    {
      "city": "Tezpur",
      "airportCode": "TEZ",
      "countryCode": "IN",
      "longitude": "092.46.42E",
      "createdAt": "2018-10-23T07:15:15.297Z",
      "airportName": "Tezpur",
      "isEnabled": 1,
      "latitude": "26.42.24N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Assam"
    },
    {
      "city": "Tirupati",
      "airportCode": "TIR",
      "countryCode": "IN",
      "longitude": "079.32.36E",
      "createdAt": "2018-10-23T07:15:15.300Z",
      "airportName": "Tirupati",
      "isEnabled": 1,
      "latitude": "13.37.57N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Thanjavur",
      "airportCode": "TJV",
      "countryCode": "IN",
      "longitude": "079.09.00E",
      "createdAt": "2018-10-23T07:15:15.298Z",
      "airportName": "Thanjavur",
      "isEnabled": 1,
      "latitude": "10.48.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Satna",
      "airportCode": "TNI",
      "countryCode": "IN",
      "longitude": "080.50.00E",
      "createdAt": "2018-10-23T07:15:15.293Z",
      "airportName": "Satna",
      "isEnabled": 1,
      "latitude": "24.33.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Madhya Pradesh"
    },
    {
      "city": "Thiruvananthapuram",
      "airportCode": "TRV",
      "countryCode": "IN",
      "longitude": "076.55.12E",
      "createdAt": "2018-10-23T07:15:15.299Z",
      "airportName": "Trivandrum International",
      "isEnabled": 1,
      "latitude": "08.28.56N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Kerala"
    },
    {
      "city": "Tiruchchirappalli",
      "airportCode": "TRZ",
      "countryCode": "IN",
      "longitude": "078.42.35E",
      "createdAt": "2018-10-23T07:15:15.299Z",
      "airportName": "Tiruchchirappalli",
      "isEnabled": 1,
      "latitude": "10.45.55N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Tamil Nadu"
    },
    {
      "city": "Udaipur",
      "airportCode": "UDR",
      "countryCode": "IN",
      "longitude": "073.53.46E",
      "createdAt": "2018-10-23T07:15:15.301Z",
      "airportName": "Maharana Pratap",
      "isEnabled": 1,
      "latitude": "24.37.04N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Rajasthan"
    },
    {
      "city": "Vidyanagar",
      "airportCode": "VDY",
      "countryCode": "IN",
      "longitude": "076.38.05E",
      "createdAt": "2018-10-23T07:15:15.303Z",
      "airportName": "Jindal",
      "isEnabled": 1,
      "latitude": "15.10.29N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Karnataka"
    },
    {
      "city": "Vijayawada",
      "airportCode": "VGA",
      "countryCode": "IN",
      "longitude": "080.47.49E",
      "createdAt": "2018-10-23T07:15:15.303Z",
      "airportName": "Vijayawada",
      "isEnabled": 1,
      "latitude": "16.31.50N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Andhra Pradesh"
    },
    {
      "city": "Varanasi",
      "airportCode": "VNS",
      "countryCode": "IN",
      "longitude": "082.51.34E",
      "createdAt": "2018-10-23T07:15:15.302Z",
      "airportName": "Lal Bahadur Shastri",
      "isEnabled": 1,
      "latitude": "25.27.08N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Uttar Pradesh"
    },
    {
      "city": "Vishakhapatnam",
      "airportCode": "VTZ",
      "countryCode": "IN",
      "longitude": "083.13.28E",
      "createdAt": "2018-10-23T07:15:15.303Z",
      "airportName": "Vishakhapatnam",
      "isEnabled": 1,
      "latitude": "17.43.16N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Visakhapatnam Airport"
    },
    {
      "city": "Warangal",
      "airportCode": "WGC",
      "countryCode": "IN",
      "longitude": "079.36.00E",
      "createdAt": "2018-10-23T07:15:15.304Z",
      "airportName": "Warangal",
      "isEnabled": 1,
      "latitude": "17.55.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Telangana"
    },
    {
      "city": "Ziro",
      "airportCode": "ZER",
      "countryCode": "IN",
      "longitude": "093.50.00E",
      "createdAt": "2018-10-23T07:15:15.304Z",
      "airportName": "Ziro",
      "isEnabled": 1,
      "latitude": "27.34.00N",
      "country": "India",
      "timeZone": {
        "name": "Indian Standard Time",
        "code": "IST",
        "offset": "+5:30",
        "isDaylightSaving": false
      },
      "state": "Arunachal Pradesh"
    }
  ];
}

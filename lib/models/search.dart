import 'package:flutter/foundation.dart';
import '../screens/search.dart';
import './airport.dart';

class Search with ChangeNotifier {
  Airport _origin = new Airport("DEL", "Indira Gandhi International", "Delhi");
  TripType _tripType = TripType.oneway;
  Airport _destination =
      new Airport("BOM", "Chhatrapati Shivaji International", "Mumbai");

  set origin(Airport newValue) {
    _origin = newValue;
    notifyListeners();
  }

  set destination(Airport newValue) {
    _destination = newValue;
    notifyListeners();
  }

  var selectedFlight;

  dynamic getFromId(String flightId) {
    var index =
        _searchResult.indexWhere((flight) => flight["flightId"] == flightId);
    selectedFlight = _searchResult[index];
    return _searchResult[index];
  }

  TripType get tripType {
    return _tripType;
  }

  set tripType(TripType newValue) {
    _tripType = newValue;
    notifyListeners();
  }

  Airport get origin {
    return _origin;
  }

  dynamic get searchResult {
    return _searchResult;
  }

  Airport get destination {
    return _destination;
  }

  dynamic _searchResult = [
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_6",
      "departDate": "2020-10-14T06:00:00",
      "arriveDate": "2020-10-14T10:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "L",
      "duration": 270,
      "fare": {
        "totalFare": 3917,
        "baseTotalFare": 2439,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1253, "code": "Tax"}
            ],
            "baseFare": 2439,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 391700,
            "totalTax": 1253,
            "classOfService": "L",
            "fareBasisCode": "LO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1253,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T07:25:00",
          "departDate": "2020-10-14T06:00:00",
          "cabin": "Economy",
          "destination": "AMD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 715",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": "AMD",
          "layoverMinutes": 105,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 80,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T10:30:00",
          "departDate": "2020-10-14T09:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 243",
          "seatAvailable": 0,
          "origin": "AMD",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "c8d2d4e1-51c1-4b66-9bff-8051f96242b6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_8",
      "departDate": "2020-10-14T06:00:00",
      "arriveDate": "2020-10-14T20:05:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "L",
      "duration": 845,
      "fare": {
        "totalFare": 3917,
        "baseTotalFare": 2439,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1253, "code": "Tax"}
            ],
            "baseFare": 2439,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 3917,
            "totalTax": 1253,
            "classOfService": "L",
            "fareBasisCode": "LO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1253,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T07:25:00",
          "departDate": "2020-10-14T06:00:00",
          "cabin": "Economy",
          "destination": "AMD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 715",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": "AMD",
          "layoverMinutes": 680,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 80,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T20:05:00",
          "departDate": "2020-10-14T18:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 537",
          "seatAvailable": 0,
          "origin": "AMD",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "1922d17c-2e0a-4128-bb89-3ec22f2a9ad6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_0",
      "departDate": "2020-10-14T15:55:00",
      "arriveDate": "2020-10-14T22:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 395,
      "fare": {
        "totalFare": 3971,
        "baseTotalFare": 3150,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 596, "code": "Total Tax"}
            ],
            "baseFare": 3150,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 3971,
            "totalTax": 596,
            "classOfService": "X",
            "fareBasisCode": "RCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 596,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 95,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T17:30:00",
          "departDate": "2020-10-14T15:55:00",
          "cabin": "Economy",
          "destination": "NAG",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "221",
          "seatAvailable": 1,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "NAG",
          "layoverMinutes": 215,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "321",
          "arriveDate": "2020-10-14T22:30:00",
          "departDate": "2020-10-14T21:05:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6404",
          "seatAvailable": 1,
          "origin": "NAG",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "0ce4da57-9622-48e6-9d25-bba7a9212af3",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_1",
      "departDate": "2020-10-14T09:15:00",
      "arriveDate": "2020-10-14T14:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 330,
      "fare": {
        "totalFare": 3971,
        "baseTotalFare": 3150,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 596, "code": "Total Tax"}
            ],
            "baseFare": 3150,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 3971,
            "totalTax": 596,
            "classOfService": "X",
            "fareBasisCode": "RCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 596,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 90,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T10:45:00",
          "departDate": "2020-10-14T09:15:00",
          "cabin": "Economy",
          "destination": "AMD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2043",
          "seatAvailable": 36,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "AMD",
          "layoverMinutes": 150,
          "departTerminal": "2",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 90,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T14:45:00",
          "departDate": "2020-10-14T13:15:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6343",
          "seatAvailable": 36,
          "origin": "AMD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "dc1aff64-5569-4b57-8b8e-26687a12ac18",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_2",
      "departDate": "2020-10-14T10:10:00",
      "arriveDate": "2020-10-14T15:40:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 330,
      "fare": {
        "totalFare": 3971,
        "baseTotalFare": 3150,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 596, "code": "Total Tax"}
            ],
            "baseFare": 3150,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 3971,
            "totalTax": 596,
            "classOfService": "X",
            "fareBasisCode": "RCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 596,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 55,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:05:00",
          "departDate": "2020-10-14T10:10:00",
          "cabin": "Economy",
          "destination": "JAI",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2147",
          "seatAvailable": 3,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "JAI",
          "layoverMinutes": 165,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:40:00",
          "departDate": "2020-10-14T13:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "218",
          "seatAvailable": 3,
          "origin": "JAI",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "aea5407e-aae5-4c41-8d3c-7bafa0e55648",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_5",
      "departDate": "2020-10-14T12:55:00",
      "arriveDate": "2020-10-14T15:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 125,
      "fare": {
        "totalFare": 4178,
        "baseTotalFare": 3399,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 554, "code": "Total Tax"}
            ],
            "baseFare": 3399,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4178,
            "totalTax": 554,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 554,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:00:00",
          "departDate": "2020-10-14T12:55:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6215",
          "seatAvailable": 115,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "7f88ef76-d1aa-4845-8824-f5274fb6fc33",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_7",
      "departDate": "2020-10-14T19:20:00",
      "arriveDate": "2020-10-14T21:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 125,
      "fare": {
        "totalFare": 4178,
        "baseTotalFare": 3399,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 554, "code": "Total Tax"}
            ],
            "baseFare": 3399,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4178,
            "totalTax": 554,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 554,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T21:25:00",
          "departDate": "2020-10-14T19:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6957",
          "seatAvailable": 65,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "d4d8a322-67ee-4155-954e-07ce43f2a176",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_6",
      "departDate": "2020-10-14T15:35:00",
      "arriveDate": "2020-10-14T17:40:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 125,
      "fare": {
        "totalFare": 4178,
        "baseTotalFare": 3399,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 554, "code": "Total Tax"}
            ],
            "baseFare": 3399,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4178,
            "totalTax": 554,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 554,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T17:40:00",
          "departDate": "2020-10-14T15:35:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2035",
          "seatAvailable": 54,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "e24c6d60-6f2a-4b15-9362-51c1df42a0df",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_3",
      "departDate": "2020-10-14T05:55:00",
      "arriveDate": "2020-10-14T08:05:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 130,
      "fare": {
        "totalFare": 4178,
        "baseTotalFare": 3399,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 554, "code": "Total Tax"}
            ],
            "baseFare": 3399,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4178,
            "totalTax": 554,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 554,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T08:05:00",
          "departDate": "2020-10-14T05:55:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "148",
          "seatAvailable": 29,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "1cb1b9b7-8843-4a79-82af-62106962dd66",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_4",
      "departDate": "2020-10-14T11:10:00",
      "arriveDate": "2020-10-14T13:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 125,
      "fare": {
        "totalFare": 4178,
        "baseTotalFare": 3399,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 554, "code": "Total Tax"}
            ],
            "baseFare": 3399,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4178,
            "totalTax": 554,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 554,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "321",
          "arriveDate": "2020-10-14T13:15:00",
          "departDate": "2020-10-14T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "5339",
          "seatAvailable": 82,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "fcacd4b6-22a6-4aa8-a61e-b1aa092e1e53",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_1",
      "departDate": "2020-10-14T08:20:00",
      "arriveDate": "2020-10-14T10:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "U",
      "duration": 125,
      "fare": {
        "totalFare": 4179,
        "baseTotalFare": 3383,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 571, "code": "Tax"}
            ],
            "baseFare": 3383,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4179,
            "totalTax": 571,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 571,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": true,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T10:25:00",
          "departDate": "2020-10-14T08:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "789",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "U",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 1500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "754d7193-52ae-402d-b6f8-ba5c317aae5e",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_0",
      "departDate": "2020-10-14T06:45:00",
      "arriveDate": "2020-10-14T09:10:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "U",
      "duration": 145,
      "fare": {
        "totalFare": 4179,
        "baseTotalFare": 3383,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 571, "code": "Tax"}
            ],
            "baseFare": 3383,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4179,
            "totalTax": 571,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 571,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": true,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 145,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T09:10:00",
          "departDate": "2020-10-14T06:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "8723",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "U",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 1500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "17cf7a29-ef76-43c6-a82c-07d3fad1bc71",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_24",
      "departDate": "2020-10-14T16:30:00",
      "arriveDate": "2020-10-14T18:35:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 125,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T18:35:00",
          "departDate": "2020-10-14T16:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "941",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "6ff4c80c-6b62-48dc-af84-cc33a93a518a",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_26",
      "departDate": "2020-10-14T13:30:00",
      "arriveDate": "2020-10-14T15:40:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 130,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:40:00",
          "departDate": "2020-10-14T13:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "993",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "7a651d14-059b-4e8f-909c-6e9cec65d483",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_25",
      "departDate": "2020-10-14T07:45:00",
      "arriveDate": "2020-10-14T09:55:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 130,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T09:55:00",
          "departDate": "2020-10-14T07:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "943",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "1d69a31e-4e8f-4d7f-b2d0-7ebafcd0cc54",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_23",
      "departDate": "2020-10-14T15:10:00",
      "arriveDate": "2020-10-14T17:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 125,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-14T17:15:00",
          "departDate": "2020-10-14T15:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "933",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "d13fe621-d779-4127-bd53-706ec484d39f",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_22",
      "departDate": "2020-10-14T12:10:00",
      "arriveDate": "2020-10-14T14:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 125,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T14:15:00",
          "departDate": "2020-10-14T12:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "945",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "377df9d6-162a-44db-993b-d6ff0b2e15e6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_21",
      "departDate": "2020-10-14T09:25:00",
      "arriveDate": "2020-10-14T11:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 125,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 585, "code": "Total Tax"}
            ],
            "baseFare": 3370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 585,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 585,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:30:00",
          "departDate": "2020-10-14T09:25:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "995",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "c834cc35-8d27-473e-bf30-42175905347b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_30",
      "departDate": "2020-10-14T20:00:00",
      "arriveDate": "2020-10-14T22:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 135,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3330,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 625, "code": "Total Tax"}
            ],
            "baseFare": 3330,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 625,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 625,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T22:15:00",
          "departDate": "2020-10-14T20:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "624",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "bee19862-8fc7-4251-9eed-3a155dd0beeb",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_27",
      "departDate": "2020-10-14T06:50:00",
      "arriveDate": "2020-10-14T09:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 130,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3330,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 625, "code": "Total Tax"}
            ],
            "baseFare": 3330,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 625,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 625,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T09:00:00",
          "departDate": "2020-10-14T06:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "887",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "90442a00-3534-4590-b355-8e2bb0c2f16b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_28",
      "departDate": "2020-10-14T10:40:00",
      "arriveDate": "2020-10-14T12:50:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 130,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3330,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 625, "code": "Total Tax"}
            ],
            "baseFare": 3330,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 625,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 625,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T12:50:00",
          "departDate": "2020-10-14T10:40:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "865",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "7cce6718-6e11-4f7c-b1c7-39b8032df029",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_29",
      "departDate": "2020-10-14T17:00:00",
      "arriveDate": "2020-10-14T19:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 135,
      "fare": {
        "totalFare": 4180,
        "baseTotalFare": 3330,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 625, "code": "Total Tax"}
            ],
            "baseFare": 3330,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4180,
            "totalTax": 625,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 625,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "77W",
          "arriveDate": "2020-10-14T19:15:00",
          "departDate": "2020-10-14T17:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "537",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "d05d9e66-96a4-43ef-9967-38b9f8fac150",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_2",
      "departDate": "2020-10-14T16:15:00",
      "arriveDate": "2020-10-14T18:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "P",
      "duration": 135,
      "fare": {
        "totalFare": 4181,
        "baseTotalFare": 2639,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1317, "code": "Tax"}
            ],
            "baseFare": 2639,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4181,
            "totalTax": 1317,
            "classOfService": "P",
            "fareBasisCode": "PO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1317,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T18:30:00",
          "departDate": "2020-10-14T16:15:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 318",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "28ed7929-fb5c-4848-af7a-3a6cc96b0254",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_0",
      "departDate": "2020-10-14T06:05:00",
      "arriveDate": "2020-10-14T08:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "P",
      "duration": 130,
      "fare": {
        "totalFare": 4181,
        "baseTotalFare": 2639,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1317, "code": "Tax"}
            ],
            "baseFare": 2639,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4181,
            "totalTax": 1317,
            "classOfService": "P",
            "fareBasisCode": "PO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1317,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T08:15:00",
          "departDate": "2020-10-14T06:05:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 334",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "392d7a4a-1426-4c93-b33d-fa045ad2ab5a",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_4",
      "departDate": "2020-10-14T20:10:00",
      "arriveDate": "2020-10-14T22:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "P",
      "duration": 135,
      "fare": {
        "totalFare": 4181,
        "baseTotalFare": 2639,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1317, "code": "Tax"}
            ],
            "baseFare": 2639,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4181,
            "totalTax": 1317,
            "classOfService": "P",
            "fareBasisCode": "PO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1317,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T22:25:00",
          "departDate": "2020-10-14T20:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 336",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "ad07598b-c95d-437b-9364-14a321ddcdca",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_10",
      "departDate": "2020-10-14T11:00:00",
      "arriveDate": "2020-10-14T18:20:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 440,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T13:15:00",
          "departDate": "2020-10-14T11:00:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "739",
          "seatAvailable": 55,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 210,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 95,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T18:20:00",
          "departDate": "2020-10-14T16:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "969",
          "seatAvailable": 55,
          "origin": "HYD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "f9d94a8c-e23c-46a1-816b-10f4a7c9fdf1",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_14",
      "departDate": "2020-10-14T18:55:00",
      "arriveDate": "2020-10-14T23:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 260,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:35:00",
          "departDate": "2020-10-14T18:55:00",
          "cabin": "Economy",
          "destination": "AMD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "268",
          "seatAvailable": 29,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "AMD",
          "layoverMinutes": 85,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 75,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T23:15:00",
          "departDate": "2020-10-14T22:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "313",
          "seatAvailable": 29,
          "origin": "AMD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "3c38a101-6649-4867-8869-28e78a5bccac",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_11",
      "departDate": "2020-10-14T13:30:00",
      "arriveDate": "2020-10-14T20:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 435,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 140,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:50:00",
          "departDate": "2020-10-14T13:30:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2164",
          "seatAvailable": 31,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 200,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 95,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:45:00",
          "departDate": "2020-10-14T19:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6276",
          "seatAvailable": 31,
          "origin": "HYD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "9ba3a149-d5ef-4045-acb3-5a4dab4342d6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_12",
      "departDate": "2020-10-14T10:00:00",
      "arriveDate": "2020-10-14T16:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 385,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 155,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T12:35:00",
          "departDate": "2020-10-14T10:00:00",
          "cabin": "Economy",
          "destination": "GOI",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "177",
          "seatAvailable": 56,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "GOI",
          "layoverMinutes": 145,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T16:25:00",
          "departDate": "2020-10-14T15:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6097",
          "seatAvailable": 56,
          "origin": "GOI",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "aa6a8d5a-3889-47eb-95d4-98bf1fc6ad84",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_13",
      "departDate": "2020-10-14T16:15:00",
      "arriveDate": "2020-10-14T23:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 420,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T17:55:00",
          "departDate": "2020-10-14T16:15:00",
          "cabin": "Economy",
          "destination": "AMD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2298",
          "seatAvailable": 26,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "AMD",
          "layoverMinutes": 245,
          "departTerminal": "2",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 75,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T23:15:00",
          "departDate": "2020-10-14T22:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "313",
          "seatAvailable": 26,
          "origin": "AMD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "fd584bdc-54b8-4a95-adc4-fc63109a02be",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_15",
      "departDate": "2020-10-14T12:00:00",
      "arriveDate": "2020-10-14T18:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 385,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T13:40:00",
          "departDate": "2020-10-14T12:00:00",
          "cabin": "Economy",
          "destination": "BDQ",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2064",
          "seatAvailable": 6,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "BDQ",
          "layoverMinutes": 210,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 75,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T18:25:00",
          "departDate": "2020-10-14T17:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "6264",
          "seatAvailable": 6,
          "origin": "BDQ",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "f6025112-0dae-461d-869f-cb769c479cf2",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_8",
      "departDate": "2020-10-14T09:20:00",
      "arriveDate": "2020-10-14T13:55:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 275,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 105,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:05:00",
          "departDate": "2020-10-14T09:20:00",
          "cabin": "Economy",
          "destination": "NAG",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2125",
          "seatAvailable": 34,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "NAG",
          "layoverMinutes": 70,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T13:55:00",
          "departDate": "2020-10-14T12:15:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "297",
          "seatAvailable": 34,
          "origin": "NAG",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "2dc2f87b-0914-4cad-9b03-842593dc354a",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_9",
      "departDate": "2020-10-14T05:10:00",
      "arriveDate": "2020-10-14T11:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 350,
      "fare": {
        "totalFare": 4312,
        "baseTotalFare": 3475,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 612, "code": "Total Tax"}
            ],
            "baseFare": 3475,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4312,
            "totalTax": 612,
            "classOfService": "X",
            "fareBasisCode": "QCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 612,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 140,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T07:30:00",
          "departDate": "2020-10-14T05:10:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2022",
          "seatAvailable": 7,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 110,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "321",
          "arriveDate": "2020-10-14T11:00:00",
          "departDate": "2020-10-14T09:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "384",
          "seatAvailable": 7,
          "origin": "HYD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "bc9edc22-72d6-4235-bcef-6ae4276de401",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_2",
      "departDate": "2020-10-14T19:50:00",
      "arriveDate": "2020-10-14T22:05:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "V",
      "duration": 135,
      "fare": {
        "totalFare": 4337,
        "baseTotalFare": 3535,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 577, "code": "Tax"}
            ],
            "baseFare": 3535,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4337,
            "totalTax": 577,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 577,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T22:05:00",
          "departDate": "2020-10-14T19:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "8169",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "V",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "9c84fb70-2453-4b66-9a9e-8bd11f9b602b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_17",
      "departDate": "2020-10-14T14:30:00",
      "arriveDate": "2020-10-14T19:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 285,
      "fare": {
        "totalFare": 4653,
        "baseTotalFare": 3800,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 628, "code": "Total Tax"}
            ],
            "baseFare": 3800,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4653,
            "totalTax": 628,
            "classOfService": "X",
            "fareBasisCode": "PCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 628,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 65,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:35:00",
          "departDate": "2020-10-14T14:30:00",
          "cabin": "Economy",
          "destination": "LKO",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2424",
          "seatAvailable": 42,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "LKO",
          "layoverMinutes": 85,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "321",
          "arriveDate": "2020-10-14T19:15:00",
          "departDate": "2020-10-14T17:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "5318",
          "seatAvailable": 42,
          "origin": "LKO",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "d19cb8b8-f1ba-4e04-b8a7-12cbaf585d0d",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_16",
      "departDate": "2020-10-14T12:25:00",
      "arriveDate": "2020-10-14T19:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 410,
      "fare": {
        "totalFare": 4653,
        "baseTotalFare": 3800,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 628, "code": "Total Tax"}
            ],
            "baseFare": 3800,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4653,
            "totalTax": 628,
            "classOfService": "X",
            "fareBasisCode": "PCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 628,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 70,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T13:35:00",
          "departDate": "2020-10-14T12:25:00",
          "cabin": "Economy",
          "destination": "LKO",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "943",
          "seatAvailable": 41,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "LKO",
          "layoverMinutes": 205,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 135,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "321",
          "arriveDate": "2020-10-14T19:15:00",
          "departDate": "2020-10-14T17:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "5318",
          "seatAvailable": 41,
          "origin": "LKO",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "84818475-db43-446a-98e1-9c4177a960f2",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_18",
      "departDate": "2020-10-14T18:20:00",
      "arriveDate": "2020-10-14T20:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 130,
      "fare": {
        "totalFare": 4808,
        "baseTotalFare": 3999,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 584, "code": "Total Tax"}
            ],
            "baseFare": 3999,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 4808,
            "totalTax": 584,
            "classOfService": "X",
            "fareBasisCode": "L0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 584,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:30:00",
          "departDate": "2020-10-14T18:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2173",
          "seatAvailable": 70,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "79f341dc-6343-4e8f-aab8-2189118197da",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_31",
      "departDate": "2020-10-14T18:10:00",
      "arriveDate": "2020-10-14T20:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "Q",
      "duration": 125,
      "fare": {
        "totalFare": 5020,
        "baseTotalFare": 4170,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 625, "code": "Total Tax"}
            ],
            "baseFare": 4170,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 5020,
            "totalTax": 625,
            "classOfService": "Q",
            "fareBasisCode": "QL1PYS",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 625,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:15:00",
          "departDate": "2020-10-14T18:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "955",
          "seatAvailable": 1,
          "origin": "DEL",
          "classOfService": "Q",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "09746e0e-6432-4ddc-ad45-9e1a6b36686d",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_32",
      "departDate": "2020-10-14T05:55:00",
      "arriveDate": "2020-10-14T21:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 935,
      "fare": {
        "totalFare": 5348,
        "baseTotalFare": 4160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 963, "code": "Total Tax"}
            ],
            "baseFare": 4160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 5348,
            "totalTax": 963,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 963,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 85,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "319",
          "arriveDate": "2020-10-14T07:20:00",
          "departDate": "2020-10-14T05:55:00",
          "cabin": "Economy",
          "destination": "BHO",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "481",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BHO",
          "layoverMinutes": 760,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 90,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T21:30:00",
          "departDate": "2020-10-14T20:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "632",
          "seatAvailable": 9,
          "origin": "BHO",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "157e5d8c-3ad3-413f-b75d-607b20bccf80",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_19",
      "departDate": "2020-10-14T08:05:00",
      "arriveDate": "2020-10-14T15:10:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 425,
      "fare": {
        "totalFare": 5676,
        "baseTotalFare": 4775,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 676, "code": "Total Tax"}
            ],
            "baseFare": 4775,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 5676,
            "totalTax": 676,
            "classOfService": "X",
            "fareBasisCode": "TCIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 676,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T09:30:00",
          "departDate": "2020-10-14T08:05:00",
          "cabin": "Economy",
          "destination": "GOP",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "826",
          "seatAvailable": 3,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "GOP",
          "layoverMinutes": 180,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 160,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:10:00",
          "departDate": "2020-10-14T12:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "137",
          "seatAvailable": 3,
          "origin": "GOP",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "1df04386-59eb-4af8-9864-14c7d5642455",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|AirAsiaAPI_2",
      "departDate": "2020-10-14T08:15:00",
      "arriveDate": "2020-10-14T22:35:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "I5",
      "classOfService": "K",
      "duration": 860,
      "fare": {
        "totalFare": 6197,
        "baseTotalFare": 5345,
        "passengerFares": [
          {
            "fees": [
              {"amount": 75, "code": "CUT"},
              {"amount": 189, "code": "ASF"},
              {"amount": 91, "code": "PSF"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 136, "code": "CST"},
              {"amount": 136, "code": "SST"}
            ],
            "baseFare": 5345,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 355,
            "totalFare": 6197,
            "totalTax": 272,
            "classOfService": "K",
            "fareBasisCode": "K01H00",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 355,
        "totalTax": 272,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 170,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:05:00",
          "departDate": "2020-10-14T08:15:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "740",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 580,
          "departTerminal": "3",
          "arriveTerminal": "",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T22:35:00",
          "departDate": "2020-10-14T20:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "983",
          "seatAvailable": 0,
          "origin": "BLR",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "AirAsiaAPI",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "30320502-c420-4fcb-b485-3d9c05c46695",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_33",
      "departDate": "2020-10-14T16:15:00",
      "arriveDate": "2020-10-15T12:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1220,
      "fare": {
        "totalFare": 6280,
        "baseTotalFare": 5240,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 815, "code": "Total Tax"}
            ],
            "baseFare": 5240,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6280,
            "totalTax": 815,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 815,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 105,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T18:00:00",
          "departDate": "2020-10-14T16:15:00",
          "cabin": "Economy",
          "destination": "RPR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "797",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "RPR",
          "layoverMinutes": 1010,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 105,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-15T12:35:00",
          "departDate": "2020-10-15T10:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "796",
          "seatAvailable": 9,
          "origin": "RPR",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "53e5aef3-f276-4cf4-9f5f-4bb30b0113e6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_35",
      "departDate": "2020-10-14T17:55:00",
      "arriveDate": "2020-10-15T19:45:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1550,
      "fare": {
        "totalFare": 6805,
        "baseTotalFare": 5740,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 840, "code": "Total Tax"}
            ],
            "baseFare": 5740,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6805,
            "totalTax": 840,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 840,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:05:00",
          "departDate": "2020-10-14T17:55:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "879",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 1335,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-15T19:45:00",
          "departDate": "2020-10-15T18:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "878",
          "seatAvailable": 9,
          "origin": "HYD",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "ab8d11f9-c2cc-478d-9abb-4928049edba3",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_34",
      "departDate": "2020-10-14T14:20:00",
      "arriveDate": "2020-10-14T19:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 325,
      "fare": {
        "totalFare": 6805,
        "baseTotalFare": 5740,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 840, "code": "Total Tax"}
            ],
            "baseFare": 5740,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6805,
            "totalTax": 840,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 840,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T16:30:00",
          "departDate": "2020-10-14T14:20:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "899",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 110,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-14T19:45:00",
          "departDate": "2020-10-14T18:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "878",
          "seatAvailable": 9,
          "origin": "HYD",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "68558ff9-1f25-4e81-bde5-ecc052298921",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_36",
      "departDate": "2020-10-14T10:00:00",
      "arriveDate": "2020-10-14T19:20:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 560,
      "fare": {
        "totalFare": 6805,
        "baseTotalFare": 5660,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 920, "code": "Total Tax"}
            ],
            "baseFare": 5660,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6805,
            "totalTax": 920,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 920,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 135,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T12:15:00",
          "departDate": "2020-10-14T10:00:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "558",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 325,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T19:20:00",
          "departDate": "2020-10-14T17:40:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "618",
          "seatAvailable": 9,
          "origin": "HYD",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "9ccd3050-86d0-42e2-8f29-bbabf34db33b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_37",
      "departDate": "2020-10-14T07:15:00",
      "arriveDate": "2020-10-14T19:20:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 725,
      "fare": {
        "totalFare": 6805,
        "baseTotalFare": 5660,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 920, "code": "Total Tax"}
            ],
            "baseFare": 5660,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6805,
            "totalTax": 920,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 920,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 115,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T09:10:00",
          "departDate": "2020-10-14T07:15:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "560",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 510,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T19:20:00",
          "departDate": "2020-10-14T17:40:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "618",
          "seatAvailable": 9,
          "origin": "HYD",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "bc48a7f4-1b8a-4529-82e3-a5fcacbdbfc2",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_3",
      "departDate": "2020-10-14T11:30:00",
      "arriveDate": "2020-10-14T15:40:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "K",
      "duration": 250,
      "fare": {
        "totalFare": 6805,
        "baseTotalFare": 5885,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 695, "code": "Tax"}
            ],
            "baseFare": 5885,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6805,
            "totalTax": 695,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 695,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 0,
      "isRefundable": true,
      "segments": [
        {
          "duration": 250,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "DH8",
          "arriveDate": "2020-10-14T15:40:00",
          "departDate": "2020-10-14T11:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2871",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": "JLR",
          "layoverMinutes": 20,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "3bf68318-18ab-4b2d-9780-4be4d788cb3b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|AirAsiaAPI_0",
      "departDate": "2020-10-14T08:10:00",
      "arriveDate": "2020-10-14T21:20:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "I5",
      "classOfService": "O",
      "duration": 790,
      "fare": {
        "totalFare": 6811,
        "baseTotalFare": 5931,
        "passengerFares": [
          {
            "fees": [
              {"amount": 75, "code": "CUT"},
              {"amount": 189, "code": "ASF"},
              {"amount": 91, "code": "PSF"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 150, "code": "CST"},
              {"amount": 150, "code": "SST"}
            ],
            "baseFare": 5931,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 355,
            "totalFare": 6811,
            "totalTax": 300,
            "classOfService": "O",
            "fareBasisCode": "O01H00",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 355,
        "totalTax": 300,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T10:20:00",
          "departDate": "2020-10-14T08:10:00",
          "cabin": "Economy",
          "destination": "BBI",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "814",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "BBI",
          "layoverMinutes": 505,
          "departTerminal": "3",
          "arriveTerminal": "",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 155,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T21:20:00",
          "departDate": "2020-10-14T18:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "630",
          "seatAvailable": 0,
          "origin": "BBI",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "AirAsiaAPI",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "f5a1eb74-e5fd-4210-a6c9-743f296511be",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_38",
      "departDate": "2020-10-14T07:20:00",
      "arriveDate": "2020-10-14T19:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 745,
      "fare": {
        "totalFare": 6858,
        "baseTotalFare": 5790,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 843, "code": "Total Tax"}
            ],
            "baseFare": 5790,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 6858,
            "totalTax": 843,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 843,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T09:25:00",
          "departDate": "2020-10-14T07:20:00",
          "cabin": "Economy",
          "destination": "HYD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "829",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "HYD",
          "layoverMinutes": 535,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 85,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-14T19:45:00",
          "departDate": "2020-10-14T18:20:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "878",
          "seatAvailable": 9,
          "origin": "HYD",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "baae3854-339b-424f-8689-52c426507543",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_39",
      "departDate": "2020-10-14T11:00:00",
      "arriveDate": "2020-10-14T16:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 300,
      "fare": {
        "totalFare": 7330,
        "baseTotalFare": 6240,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 865, "code": "Total Tax"}
            ],
            "baseFare": 6240,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 7330,
            "totalTax": 865,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 865,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 150,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T13:30:00",
          "departDate": "2020-10-14T11:00:00",
          "cabin": "Economy",
          "destination": "GOI",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "847",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "GOI",
          "layoverMinutes": 75,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 75,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T16:00:00",
          "departDate": "2020-10-14T14:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "842",
          "seatAvailable": 9,
          "origin": "GOI",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "6441689a-c296-4c0a-952d-b4c90befb0ba",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_40",
      "departDate": "2020-10-14T18:00:00",
      "arriveDate": "2020-10-15T13:20:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 1160,
      "fare": {
        "totalFare": 7855,
        "baseTotalFare": 6660,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 970, "code": "Total Tax"}
            ],
            "baseFare": 6660,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 7855,
            "totalTax": 970,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 970,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 75,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T19:15:00",
          "departDate": "2020-10-14T18:00:00",
          "cabin": "Economy",
          "destination": "LKO",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "811",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "LKO",
          "layoverMinutes": 945,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 140,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T13:20:00",
          "departDate": "2020-10-15T11:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "626",
          "seatAvailable": 9,
          "origin": "LKO",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "a09db4a6-d0c8-4316-a736-c977237d997d",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_45",
      "departDate": "2020-10-14T17:55:00",
      "arriveDate": "2020-10-15T12:50:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1135,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7240,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1133, "code": "Total Tax"}
            ],
            "baseFare": 7240,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1133,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1133,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:40:00",
          "departDate": "2020-10-14T17:55:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "813",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 870,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-15T12:50:00",
          "departDate": "2020-10-15T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "864",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "fc7d82be-add6-47e3-8cd8-57076dda9422",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_46",
      "departDate": "2020-10-14T12:30:00",
      "arriveDate": "2020-10-15T12:50:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1460,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7240,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1133, "code": "Total Tax"}
            ],
            "baseFare": 7240,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1133,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1133,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T15:15:00",
          "departDate": "2020-10-14T12:30:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "817",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 1195,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-15T12:50:00",
          "departDate": "2020-10-15T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "864",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "51c06b12-db8d-4fd9-b022-2b874310e2e0",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_41",
      "departDate": "2020-10-14T21:40:00",
      "arriveDate": "2020-10-15T08:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 655,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1213, "code": "Total Tax"}
            ],
            "baseFare": 7160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1213,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1213,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 175,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T00:35:00",
          "departDate": "2020-10-14T21:40:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "504",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 370,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T08:35:00",
          "departDate": "2020-10-15T06:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "640",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "d48f01d3-f669-4fa4-9342-2ca228466d39",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_44",
      "departDate": "2020-10-14T05:35:00",
      "arriveDate": "2020-10-15T08:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 1620,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1213, "code": "Total Tax"}
            ],
            "baseFare": 7160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1213,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1213,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T08:20:00",
          "departDate": "2020-10-14T05:35:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "803",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 1345,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T08:35:00",
          "departDate": "2020-10-15T06:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "640",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "778c518f-95e7-4f69-af39-1a1133072022",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_43",
      "departDate": "2020-10-14T11:50:00",
      "arriveDate": "2020-10-15T08:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 1245,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1213, "code": "Total Tax"}
            ],
            "baseFare": 7160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1213,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1213,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 160,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T14:30:00",
          "departDate": "2020-10-14T11:50:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "506",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 975,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T08:35:00",
          "departDate": "2020-10-15T06:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "640",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "4479fd7d-c881-4fcb-aef5-6761ffae8fbb",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_42",
      "departDate": "2020-10-14T17:10:00",
      "arriveDate": "2020-10-15T08:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 925,
      "fare": {
        "totalFare": 8598,
        "baseTotalFare": 7160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1213, "code": "Total Tax"}
            ],
            "baseFare": 7160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8598,
            "totalTax": 1213,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1213,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T19:55:00",
          "departDate": "2020-10-14T17:10:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "501",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 650,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 110,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-15T08:35:00",
          "departDate": "2020-10-15T06:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "640",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "2534bba8-ab67-49ea-8157-3ad740d62485",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_47",
      "departDate": "2020-10-14T13:15:00",
      "arriveDate": "2020-10-15T13:10:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1435,
      "fare": {
        "totalFare": 8695,
        "baseTotalFare": 7540,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 930, "code": "Total Tax"}
            ],
            "baseFare": 7540,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8695,
            "totalTax": 930,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 930,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 70,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-14T14:25:00",
          "departDate": "2020-10-14T13:15:00",
          "cabin": "Economy",
          "destination": "VNS",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "673",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "VNS",
          "layoverMinutes": 1225,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 140,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-15T13:10:00",
          "departDate": "2020-10-15T10:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "622",
          "seatAvailable": 9,
          "origin": "VNS",
          "classOfService": "W",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 20,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "3a3f2350-1fab-47c8-bbfe-0539131c2758",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_48",
      "departDate": "2020-10-14T14:10:00",
      "arriveDate": "2020-10-15T12:50:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1360,
      "fare": {
        "totalFare": 8703,
        "baseTotalFare": 7340,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1138, "code": "Total Tax"}
            ],
            "baseFare": 7340,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8703,
            "totalTax": 1138,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1138,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 155,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T16:45:00",
          "departDate": "2020-10-14T14:10:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "819",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 1105,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 100,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-15T12:50:00",
          "departDate": "2020-10-15T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "864",
          "seatAvailable": 9,
          "origin": "BLR",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "1624614d-14c6-4271-88f8-e1fe67b1b392",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_49",
      "departDate": "2020-10-14T08:30:00",
      "arriveDate": "2020-10-14T13:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 315,
      "fare": {
        "totalFare": 8905,
        "baseTotalFare": 7740,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 940, "code": "Total Tax"}
            ],
            "baseFare": 7740,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8905,
            "totalTax": 940,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 940,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "321",
          "arriveDate": "2020-10-14T11:15:00",
          "departDate": "2020-10-14T08:30:00",
          "cabin": "Economy",
          "destination": "MAA",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "833",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "MAA",
          "layoverMinutes": 30,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 120,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-14T13:45:00",
          "departDate": "2020-10-14T11:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "826",
          "seatAvailable": 9,
          "origin": "MAA",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "e2273381-ca20-4e67-b36d-9e8227616950",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_50",
      "departDate": "2020-10-14T17:45:00",
      "arriveDate": "2020-10-15T13:45:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "O",
      "duration": 1200,
      "fare": {
        "totalFare": 8905,
        "baseTotalFare": 7740,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 940, "code": "Total Tax"}
            ],
            "baseFare": 7740,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8905,
            "totalTax": 940,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 940,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:30:00",
          "departDate": "2020-10-14T17:45:00",
          "cabin": "Economy",
          "destination": "MAA",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "835",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "MAA",
          "layoverMinutes": 915,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 120,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-15T13:45:00",
          "departDate": "2020-10-15T11:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "826",
          "seatAvailable": 9,
          "origin": "MAA",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "231591fd-5cf6-41db-a15a-1a0cb82bd26b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_51",
      "departDate": "2020-10-14T17:10:00",
      "arriveDate": "2020-10-15T14:25:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 1275,
      "fare": {
        "totalFare": 8905,
        "baseTotalFare": 7660,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1020, "code": "Total Tax"}
            ],
            "baseFare": 7660,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 8905,
            "totalTax": 1020,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1020,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 150,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "788",
          "arriveDate": "2020-10-14T19:40:00",
          "departDate": "2020-10-14T17:10:00",
          "cabin": "Economy",
          "destination": "MAA",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "553",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "MAA",
          "layoverMinutes": 995,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-15T14:25:00",
          "departDate": "2020-10-15T12:15:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "672",
          "seatAvailable": 9,
          "origin": "MAA",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "09935267-2b2e-47da-84d7-44add9f1fb56",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_52",
      "departDate": "2020-10-14T17:25:00",
      "arriveDate": "2020-10-15T15:35:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "AI",
      "classOfService": "S",
      "duration": 1330,
      "fare": {
        "totalFare": 9010,
        "baseTotalFare": 7760,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1025, "code": "Total Tax"}
            ],
            "baseFare": 7760,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 9010,
            "totalTax": 1025,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1025,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 90,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T18:55:00",
          "departDate": "2020-10-14T17:25:00",
          "cabin": "Economy",
          "destination": "VNS",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "427",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "VNS",
          "layoverMinutes": 1110,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-15T15:35:00",
          "departDate": "2020-10-15T13:25:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "696",
          "seatAvailable": 2,
          "origin": "VNS",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "21daff20-4e1e-4b5c-ab89-24968da54a1e",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_53",
      "departDate": "2020-10-14T10:45:00",
      "arriveDate": "2020-10-14T17:35:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 410,
      "fare": {
        "totalFare": 9325,
        "baseTotalFare": 8060,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1040, "code": "Total Tax"}
            ],
            "baseFare": 8060,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 9325,
            "totalTax": 1040,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1040,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T12:50:00",
          "departDate": "2020-10-14T10:45:00",
          "cabin": "Economy",
          "destination": "BBI",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "477",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "BBI",
          "layoverMinutes": 155,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "319",
          "arriveDate": "2020-10-14T17:35:00",
          "departDate": "2020-10-14T15:25:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "670",
          "seatAvailable": 3,
          "origin": "BBI",
          "classOfService": "G",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "1a64c7e7-8ac7-4f54-8788-5a49117102d8",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|AirAsiaAPI_1",
      "departDate": "2020-10-14T08:15:00",
      "arriveDate": "2020-10-14T18:40:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "I5",
      "classOfService": "P",
      "duration": 625,
      "fare": {
        "totalFare": 9477,
        "baseTotalFare": 8469,
        "passengerFares": [
          {
            "fees": [
              {"amount": 75, "code": "CUT"},
              {"amount": 189, "code": "ASF"},
              {"amount": 91, "code": "PSF"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 214, "code": "CST"},
              {"amount": 214, "code": "SST"}
            ],
            "baseFare": 8469,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 355,
            "totalFare": 9477,
            "totalTax": 428,
            "classOfService": "P",
            "fareBasisCode": "P01H00",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 355,
        "totalTax": 428,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 2,
      "isRefundable": true,
      "segments": [
        {
          "duration": 170,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:05:00",
          "departDate": "2020-10-14T08:15:00",
          "cabin": "Economy",
          "destination": "BLR",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "740",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P",
          "stops": 0,
          "layoverAirportCode": "BLR",
          "layoverMinutes": 235,
          "departTerminal": "3",
          "arriveTerminal": "",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 220,
          "checkInBaggage": 15,
          "airline": "I5",
          "aircraft": "320",
          "arriveDate": "2020-10-14T18:40:00",
          "departDate": "2020-10-14T15:00:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "1624",
          "seatAvailable": 0,
          "origin": "BLR",
          "classOfService": "P",
          "stops": 1,
          "layoverAirportCode": "COK",
          "layoverMinutes": 40,
          "departTerminal": "",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "AirAsiaAPI",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 4,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "9d3a2b8b-6f4f-49da-b33d-9859b11d39d0",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_54",
      "departDate": "2020-10-14T06:30:00",
      "arriveDate": "2020-10-14T20:10:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 820,
      "fare": {
        "totalFare": 10270,
        "baseTotalFare": 9040,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1005, "code": "Total Tax"}
            ],
            "baseFare": 9040,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10270,
            "totalTax": 1005,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1005,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T08:35:00",
          "departDate": "2020-10-14T06:30:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "747",
          "seatAvailable": 8,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 535,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 160,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:10:00",
          "departDate": "2020-10-14T17:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "776",
          "seatAvailable": 1,
          "origin": "CCU",
          "classOfService": "W",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 20,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "a37fac4d-f2c4-4c1c-b3ba-b9ec8b34e3e6",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_4",
      "departDate": "2020-10-14T09:40:00",
      "arriveDate": "2020-10-14T17:05:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "P2",
      "duration": 445,
      "fare": {
        "totalFare": 10338,
        "baseTotalFare": 9250,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 863, "code": "Tax"}
            ],
            "baseFare": 9250,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10338,
            "totalTax": 863,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 863,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 80,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T11:00:00",
          "departDate": "2020-10-14T09:40:00",
          "cabin": "Economy",
          "destination": "GOP",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "8429",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P2",
          "stops": 0,
          "layoverAirportCode": "GOP",
          "layoverMinutes": 210,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 155,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T17:05:00",
          "departDate": "2020-10-14T14:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "415",
          "seatAvailable": 0,
          "origin": "GOP",
          "classOfService": "P2",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "782a87dc-cadd-48d8-aaba-a51edb325c53",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_55",
      "departDate": "2020-10-14T07:30:00",
      "arriveDate": "2020-10-14T20:10:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "E",
      "duration": 760,
      "fare": {
        "totalFare": 10480,
        "baseTotalFare": 9240,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1015, "code": "Total Tax"}
            ],
            "baseFare": 9240,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10480,
            "totalTax": 1015,
            "classOfService": "E",
            "fareBasisCode": "EL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1015,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T09:35:00",
          "departDate": "2020-10-14T07:30:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "705",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "E",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 475,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 160,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T20:10:00",
          "departDate": "2020-10-14T17:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "776",
          "seatAvailable": 1,
          "origin": "CCU",
          "classOfService": "W",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 20,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "728aeef0-7289-433f-9a48-9accad58a1e1",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_56",
      "departDate": "2020-10-14T07:40:00",
      "arriveDate": "2020-10-14T15:25:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 465,
      "fare": {
        "totalFare": 10480,
        "baseTotalFare": 9160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1095, "code": "Total Tax"}
            ],
            "baseFare": 9160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10480,
            "totalTax": 1095,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1095,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 200,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T11:00:00",
          "departDate": "2020-10-14T07:40:00",
          "cabin": "Economy",
          "destination": "CJB",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "547",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "CJB",
          "layoverMinutes": 150,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 115,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T15:25:00",
          "departDate": "2020-10-14T13:30:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "658",
          "seatAvailable": 9,
          "origin": "CJB",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "f8cd5add-bdbb-45bc-8943-98331309b5a9",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_57",
      "departDate": "2020-10-14T06:00:00",
      "arriveDate": "2020-10-14T22:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 990,
      "fare": {
        "totalFare": 10585,
        "baseTotalFare": 9260,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1100, "code": "Total Tax"}
            ],
            "baseFare": 9260,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10585,
            "totalTax": 1100,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1100,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 2,
      "isRefundable": true,
      "segments": [
        {
          "duration": 310,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "319",
          "arriveDate": "2020-10-14T11:10:00",
          "departDate": "2020-10-14T06:00:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "423",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 1,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 505,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 175,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T22:30:00",
          "departDate": "2020-10-14T19:35:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "774",
          "seatAvailable": 2,
          "origin": "CCU",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "56908236-250a-446d-b21a-3a50e0767e1e",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_58",
      "departDate": "2020-10-14T06:30:00",
      "arriveDate": "2020-10-14T14:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "O",
      "duration": 450,
      "fare": {
        "totalFare": 10690,
        "baseTotalFare": 9440,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1025, "code": "Total Tax"}
            ],
            "baseFare": 9440,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10690,
            "totalTax": 1025,
            "classOfService": "O",
            "fareBasisCode": "OL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1025,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T08:35:00",
          "departDate": "2020-10-14T06:30:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "747",
          "seatAvailable": 8,
          "origin": "DEL",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 155,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 170,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T14:00:00",
          "departDate": "2020-10-14T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "772",
          "seatAvailable": 9,
          "origin": "CCU",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 20,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "3fb48b6d-dc05-42a3-9b1e-eb9f8e3e6554",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_59",
      "departDate": "2020-10-14T07:30:00",
      "arriveDate": "2020-10-14T14:00:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "UK",
      "classOfService": "E",
      "duration": 390,
      "fare": {
        "totalFare": 10900,
        "baseTotalFare": 9640,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1035, "code": "Total Tax"}
            ],
            "baseFare": 9640,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 10900,
            "totalTax": 1035,
            "classOfService": "E",
            "fareBasisCode": "EL1PYL",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1035,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T09:35:00",
          "departDate": "2020-10-14T07:30:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "705",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "E",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 95,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 170,
          "checkInBaggage": 20,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T14:00:00",
          "departDate": "2020-10-14T11:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "772",
          "seatAvailable": 9,
          "origin": "CCU",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 20,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "7f3bd343-8e81-418d-b6f3-22ab7ea32372",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_20",
      "departDate": "2020-10-14T10:00:00",
      "arriveDate": "2020-10-14T17:45:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "6E",
      "classOfService": "X",
      "duration": 465,
      "fare": {
        "totalFare": 11083,
        "baseTotalFare": 9974,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 884, "code": "Total Tax"}
            ],
            "baseFare": 9974,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 11083,
            "totalTax": 884,
            "classOfService": "X",
            "fareBasisCode": "R0IP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 884,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 90,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T11:30:00",
          "departDate": "2020-10-14T10:00:00",
          "cabin": "Economy",
          "destination": "IXD",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "2246",
          "seatAvailable": 4,
          "origin": "DEL",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": "IXD",
          "layoverMinutes": 245,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 130,
          "checkInBaggage": 15,
          "airline": "6E",
          "aircraft": "320",
          "arriveDate": "2020-10-14T17:45:00",
          "departDate": "2020-10-14T15:35:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "5915",
          "seatAvailable": 4,
          "origin": "IXD",
          "classOfService": "X",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": "1 Small Bag",
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": "1 Small Bag",
      "priority": 1,
      "flightId": "b1363404-cbb2-4d13-bb23-c1ecdd1a4f22",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|SpicejetAPIV4_5",
      "departDate": "2020-10-14T15:55:00",
      "arriveDate": "2020-10-14T21:50:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "SG",
      "classOfService": "P2",
      "duration": 355,
      "fare": {
        "totalFare": 11178,
        "baseTotalFare": 10050,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 903, "code": "Tax"}
            ],
            "baseFare": 10050,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 11178,
            "totalTax": 903,
            "classOfService": null,
            "fareBasisCode": null,
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 903,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 125,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T18:00:00",
          "departDate": "2020-10-14T15:55:00",
          "cabin": "Economy",
          "destination": "PAT",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "8480",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P2",
          "stops": 0,
          "layoverAirportCode": "PAT",
          "layoverMinutes": 70,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 160,
          "checkInBaggage": 15,
          "airline": "SG",
          "aircraft": "737",
          "arriveDate": "2020-10-14T21:50:00",
          "departDate": "2020-10-14T19:10:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "256",
          "seatAvailable": 0,
          "origin": "PAT",
          "classOfService": "P2",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "SpicejetAPIV4",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 96,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "985559a4-69dc-4d23-bdb2-47d069853f68",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_60",
      "departDate": "2020-10-14T10:15:00",
      "arriveDate": "2020-10-14T15:35:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "S",
      "duration": 320,
      "fare": {
        "totalFare": 11635,
        "baseTotalFare": 10260,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1150, "code": "Total Tax"}
            ],
            "baseFare": 10260,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 11635,
            "totalTax": 1150,
            "classOfService": "S",
            "fareBasisCode": "SIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1150,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 80,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "319",
          "arriveDate": "2020-10-14T11:35:00",
          "departDate": "2020-10-14T10:15:00",
          "cabin": "Economy",
          "destination": "VNS",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "406",
          "seatAvailable": 9,
          "origin": "DEL",
          "classOfService": "S",
          "stops": 0,
          "layoverAirportCode": "VNS",
          "layoverMinutes": 110,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T15:35:00",
          "departDate": "2020-10-14T13:25:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "696",
          "seatAvailable": 4,
          "origin": "VNS",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 24,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "cad8b185-2980-489c-82b0-85fa492691a3",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|GoAir_10",
      "departDate": "2020-10-14T06:50:00",
      "arriveDate": "2020-10-14T14:20:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "G8",
      "classOfService": "P",
      "duration": 450,
      "fare": {
        "totalFare": 11737,
        "baseTotalFare": 9487,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 2025, "code": "Tax"}
            ],
            "baseFare": 9487,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 11737,
            "totalTax": 2025,
            "classOfService": "P",
            "fareBasisCode": "PO9RBINX",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 2025,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": false,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 110,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T08:40:00",
          "departDate": "2020-10-14T06:50:00",
          "cabin": "Economy",
          "destination": "PAT",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 131",
          "seatAvailable": 0,
          "origin": "DEL",
          "classOfService": "P",
          "stops": 0,
          "layoverAirportCode": "PAT",
          "layoverMinutes": 190,
          "departTerminal": "2",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 150,
          "checkInBaggage": 15,
          "airline": "G8",
          "aircraft": "32A",
          "arriveDate": "2020-10-14T14:20:00",
          "departDate": "2020-10-14T11:50:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": " 352",
          "seatAvailable": 0,
          "origin": "PAT",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 15,
      "handBaggage": 7,
      "provider": "GoAir",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        },
        {
          "amount": 3000,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 0
        },
        {
          "amount": 2500,
          "hours": 72,
          "penaltyType": 0,
          "additionalGstPercent": 0
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 100,
      "flightId": "ed8f198b-caff-4bbe-b5fe-61a420cecafb",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_61",
      "departDate": "2020-10-14T07:10:00",
      "arriveDate": "2020-10-14T22:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "V",
      "duration": 920,
      "fare": {
        "totalFare": 13735,
        "baseTotalFare": 12260,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1250, "code": "Total Tax"}
            ],
            "baseFare": 12260,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 13735,
            "totalTax": 1250,
            "classOfService": "V",
            "fareBasisCode": "VIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1250,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 115,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T09:05:00",
          "departDate": "2020-10-14T07:10:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "401",
          "seatAvailable": 5,
          "origin": "DEL",
          "classOfService": "V",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 630,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 175,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T22:30:00",
          "departDate": "2020-10-14T19:35:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "774",
          "seatAvailable": 2,
          "origin": "CCU",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "f191ab19-42eb-4c90-9bc5-868026461ed5",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_62",
      "departDate": "2020-10-14T16:20:00",
      "arriveDate": "2020-10-14T22:30:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "K",
      "duration": 370,
      "fare": {
        "totalFare": 14890,
        "baseTotalFare": 13360,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1305, "code": "Total Tax"}
            ],
            "baseFare": 13360,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 14890,
            "totalTax": 1305,
            "classOfService": "K",
            "fareBasisCode": "KIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1305,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 130,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T18:30:00",
          "departDate": "2020-10-14T16:20:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "535",
          "seatAvailable": 1,
          "origin": "DEL",
          "classOfService": "K",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 65,
          "departTerminal": "3",
          "arriveTerminal": null,
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 175,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T22:30:00",
          "departDate": "2020-10-14T19:35:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "774",
          "seatAvailable": 2,
          "origin": "CCU",
          "classOfService": "L",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": null,
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "ffefd46c-00b5-4524-9229-db4b59374db2",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_63",
      "departDate": "2020-10-14T07:10:00",
      "arriveDate": "2020-10-14T13:15:00",
      "departOffset": 0,
      "arriveOffset": 0,
      "airline": "AI",
      "classOfService": "V",
      "duration": 365,
      "fare": {
        "totalFare": 27280,
        "baseTotalFare": 25160,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 1895, "code": "Total Tax"}
            ],
            "baseFare": 25160,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 27280,
            "totalTax": 1895,
            "classOfService": "V",
            "fareBasisCode": "VIP",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 1895,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": true,
      "segments": [
        {
          "duration": 115,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "32B",
          "arriveDate": "2020-10-14T09:05:00",
          "departDate": "2020-10-14T07:10:00",
          "cabin": "Economy",
          "destination": "CCU",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "401",
          "seatAvailable": 5,
          "origin": "DEL",
          "classOfService": "V",
          "stops": 0,
          "layoverAirportCode": "CCU",
          "layoverMinutes": 110,
          "departTerminal": "3",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 140,
          "checkInBaggage": 25,
          "airline": "AI",
          "aircraft": "321",
          "arriveDate": "2020-10-14T13:15:00",
          "departDate": "2020-10-14T10:55:00",
          "cabin": "Business",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "676",
          "seatAvailable": 4,
          "origin": "CCU",
          "classOfService": "Z",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "2",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 25,
      "handBaggage": 7,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 5
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 2,
      "flightId": "d9a6c288-14c9-4c92-b696-919a42b1773b",
      "type": "online",
      "show": true,
      "publishedFare": null
    },
    {
      "legId":
          "YmUyNjMzYWEtNGE1Ni00ZTlkLTg4ZGMtYjU0ZmZmYWQ5NzA2LERFTCxCT00sMTAvMTQvMjAyMCAxMjowMDowMCBBTQ==|Uapi_64",
      "departDate": "2020-10-14T13:15:00",
      "arriveDate": "2020-10-15T13:45:00",
      "departOffset": 1,
      "arriveOffset": 1,
      "airline": "UK",
      "classOfService": "Z",
      "duration": 1470,
      "fare": {
        "totalFare": 29211,
        "baseTotalFare": 25370,
        "passengerFares": [
          {
            "fees": [
              {"amount": 0, "code": "Total Fee"},
              {"amount": 0, "code": "udChalo Service Charge"},
              {"amount": 225, "code": "Merchant Fee"}
            ],
            "taxes": [
              {"amount": 3616, "code": "Total Tax"}
            ],
            "baseFare": 25370,
            "quantity": 1,
            "passengerType": "Adult",
            "totalFee": 0,
            "totalFare": 29211,
            "totalTax": 3616,
            "classOfService": "Z",
            "fareBasisCode": "Z1RPRCV",
            "totalConvenienceFee": 225
          }
        ],
        "totalFee": 0,
        "totalTax": 3616,
        "fareType": 0,
        "totalConvenienceFee": 225
      },
      "isLCC": true,
      "isDefence": false,
      "freeMeal": true,
      "isDiscounted": false,
      "freeReschedulingAllowed": false,
      "freeCancellationAllowed": false,
      "freeSeatSelectionAllowed": false,
      "isSeries": false,
      "origin": "DEL",
      "destination": "BOM",
      "stops": 1,
      "isRefundable": false,
      "segments": [
        {
          "duration": 165,
          "checkInBaggage": 35,
          "airline": "UK",
          "aircraft": "320",
          "arriveDate": "2020-10-14T16:00:00",
          "departDate": "2020-10-14T13:15:00",
          "cabin": "Business",
          "destination": "MAA",
          "mileage": 0,
          "handBaggage": 12,
          "flightNumber": "837",
          "seatAvailable": 4,
          "origin": "DEL",
          "classOfService": "Z",
          "stops": 0,
          "layoverAirportCode": "MAA",
          "layoverMinutes": 1185,
          "departTerminal": "3",
          "arriveTerminal": "1",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        },
        {
          "duration": 120,
          "checkInBaggage": 15,
          "airline": "UK",
          "aircraft": "73H",
          "arriveDate": "2020-10-15T13:45:00",
          "departDate": "2020-10-15T11:45:00",
          "cabin": "Economy",
          "destination": "BOM",
          "mileage": 0,
          "handBaggage": 7,
          "flightNumber": "826",
          "seatAvailable": 9,
          "origin": "MAA",
          "classOfService": "O",
          "stops": 0,
          "layoverAirportCode": null,
          "layoverMinutes": 0,
          "departTerminal": "1",
          "arriveTerminal": "2",
          "seatMap": null,
          "mealOptions": null,
          "handBaggageText": null,
          "originCountryCode": "IN",
          "destinationCountryCode": "IN"
        }
      ],
      "checkInBaggage": 35,
      "handBaggage": 12,
      "provider": "Uapi",
      "mode": "PRODUCTION",
      "isExclusive": false,
      "isLtcEligible": false,
      "isLtcEntitled": false,
      "cancelPenalties": [
        {
          "amount": 3000,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 12,
          "udchaloCancellationFee": 100
        }
      ],
      "reschedulePenalties": [
        {
          "amount": 2500,
          "hours": 2,
          "penaltyType": 0,
          "additionalGstPercent": 12
        }
      ],
      "excessBaggageOptions": null,
      "handBaggageText": null,
      "priority": 1,
      "flightId": "ecc8fc27-1495-4347-a1c7-6271c99b3c63",
      "type": "online",
      "show": true,
      "publishedFare": null
    }
  ];
}

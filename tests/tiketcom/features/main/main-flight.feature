Feature: TKC Main Flow

    Main Flow

    Background: 
    Given open TKC homepage

@tkc @bookflight-module @one-way
Scenario Outline: <TCID>: As a user, I can book solo one-way flight and choose class
Given navigate to the flight page
When choose <Departure> and <Destination>
And select <Date> of flight
And set flight class to <FlightClass>
And select an available airline
And submit passenger personal informations
And confirm book flight order
Then validate payment page
Examples:
    | TCID         | Departure | Destination | Date                    | FlightClass     |
    | M-U-BFM-C-01 | Batam     | Singapore   | 30 November 2025 Minggu | Ekonomi         |
    | M-U-BFM-C-02 | Jakarta   | Singapore   | 30 November 2025 Minggu | Premium Ekonomi |
    | M-U-BFM-C-03 | Jakarta   | Denpasar    | 30 November 2025 Minggu | Bisnis          |
    | M-U-BFM-C-04 | Jakarta   | Denpasar    | 30 November 2025 Minggu | First           |

@tkc @bookflight-module @one-way @solo @identical-booking
Scenario Outline: <TCID>: As a user, I can create a new solo one-way flight even if an identical booking is already in progress
Given navigate to the flight page
When choose <Departure> and <Destination>
And select <Date> of flight
And set flight class to <FlightClass>
And select an available airline
And submit passenger personal informations
And confirm book flight order
Then validate payment page
Examples:
    | TCID         | Departure   | Destination | Date                    | FlightClass     |
    | M-U-BFM-C-05 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Ekonomi         |
    | M-U-BFM-C-06 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Premium Ekonomi |
    | M-U-BFM-C-07 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Bisnis          |
    | M-U-BFM-C-08 | Jakarta     | Denpasar    | 30 November 2025 Minggu | First           |

@tkc @bookflight-module @one-way @solo @full-data
Scenario Outline: <TCID>: As a user, I can book solo one-way flight and choose class full data
Given navigate to the flight page
When choose <Departure> and <Destination>
And select <Date> of flight
And set flight class to <FlightClass>
And select an available airline
And submit passenger personal informations
And add extra luggage
And add food
And choose seat
And add insurance
And confirm book flight order
Then validate payment page
Examples:
    | TCID         | Departure   | Destination | Date                    | FlightClass     |
    | M-U-BFM-C-09 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Ekonomi         |
    | M-U-BFM-C-10 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Premium Ekonomi |
    | M-U-BFM-C-11 | Jakarta     | Denpasar    | 30 November 2025 Minggu | Bisnis          |
    | M-U-BFM-C-12 | Jakarta     | Denpasar    | 30 November 2025 Minggu | First           |
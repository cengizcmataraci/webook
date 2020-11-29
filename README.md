# Webook

[![License](https://img.shields.io/github/license/cengizcmataraci/webook?style=flat-square)](https://img.shields.io/github/license/cengizcmataraci/webook?style=flat-square)
[![Website](https://img.shields.io/website?down_color=red&down_message=offline&style=flat-square&up_color=blue&up_message=online&url=https%3A%2F%2Fwebook.herokuapp.com)](https://img.shields.io/website?down_color=red&down_message=offline&style=flat-square&up_color=blue&up_message=online&url=https%3A%2F%2Fwebook.herokuapp.com)

Webook is a book exchange platform. This project was done for Ruby on Rails Bootcamp assignment.

## Notes

* I change the main concept a little bit. Now if there have not a request, then there have not a notification in Dashboard.

* The trade request can be canceled. Since nested resources are used here, I have specified a two parameter path in destroy.

* A book can be added to favorites. These favorites can be shown on profile. I used a new model for favorites and took advantage of polymorphism. In this way, the user's favorites can be created over the books. I also used the join table to sort the favorites of the books.

## Installation

Check your Ruby version first.

``` ruby -v ```

Clone project

``` git clone https://github.com/cengizcmataraci/webook.git ```

## Usage

https://webookapp.herokuapp.com
If you want to create a book, you can add it from the Dashboard. To be able to trade a book, it must be shareable and tradeable.

## Contributing
Pull requests are welcome. It's only a demo project so feel free to contribute.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

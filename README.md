# Roamr API

> This is the back-end API for [Roamr](https://github.com/royFloresNyc/roamr-front-end), a mobile travel app that allows users to query any city, view photos, information, safety ratings, points of interest, and maps.

[Demo](https://www.loom.com/share/ffe44225e591412ca3be1b4f843ac32e)

## Prerequisites

- ruby >= 2.6.1
- Rails >= 6.0.3
- API key from [Amadeus](https://developers.amadeus.com/?s_kwcid=AL!10969!3!452491568831!b!!g!!%2Bamadeus%20%2Btravel%20%2Bapi)

## Incorporate your API and Secret Keys

- in the /config directory of the repo, create an application.yml file
- in this file, add your API and Secret Keys like so:

```
auth_key: "YourOwnSecretPhrase" //this can be any string you want

amadeus_secret: "YourAmadeusSecret"

amadeus_api_key: "YourAmadeusAPIKey"
```

## Install

```sh
bundle install
```

## Usage

```sh
rails s
```

## Author

[Roy Flores](https://www.linkedin.com/in/royfloresnyc)

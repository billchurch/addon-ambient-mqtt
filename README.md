# Hass.io Add-ons: Ambient Weather MQTT Publisher

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md) ![Project Maintenance][maintenance-shield] [![Discord][discord-shield]][discord]

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

This addon is designed to subscribe to the AmbientWeather Realtime API and broadcast the messages out over MQTT topics using the nodejs code found here: https://github.com/billchurch/ambient-mqtt

This is currently based off of the [splitJSON Branch](https://github.com/billchurch/ambient-mqtt/tree/splitJSON)

## About

This pulls data directly from the Ambient Weather API vs going through a third-party such as WUnderground.

## Installation

TODO

## Docker status

![Supports armhf Architecture][armhf-shield]
![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports i386 Architecture][i386-shield]

## Configuration

Even though this add-on is just a basic add-on, it does come with some
configuration options to play around with.

**Note**: _Remember to restart the add-on when the configuration is changed._

Ambient MQTT add-on configuration:

```json
{
  "api_key": "youapikey",
  "app_key": "yourappkey",
  "mqtt_user": "mqttuserid",
  "mqtt_password": "mqttpassword",
  "mqtt_broker_address": "core-mosquitto",
  "mqtt_topic_json": "true"
}
```

### Option: `api_key`

This is your Ambient Weather API key. A key can be created by creating an account at https://ambientweather.net/ and generating an API key

### Option: `app_key`

This is your Ambient Weather API key. A key can be created by creating an account at https://ambientweather.net/ and generating an API key

### Option: `mqtt_user`

This is the user account for your MQTT broker

### Option: `mqtt_password`

This is the user password for your MQTT broker

### Option: `mqtt_broker_address`

This is your MQTT broker IP address for example `core-mosquitto` if you're using the Core Mosquitto broker add-on. Port is optional and defaults to 1883. Example `mybroker.com:1234`

### Option: `mqtt_topic_json`

By default, the status will be updated to the topic `aw/data` and the payload will be JSON received from the Ambient Weather query. Setting this to false will split each property in the JSON payload to individual topics, one for property.

Example of default behavior (mqtt_topic_json=true or mqtt_topic_json=):

```json
{"dateutc":1537282680000,"tempf":85.6,"humidity":92,"hourlyrainin":0,"dailyrainin":0,"weeklyrainin":0,"monthlyrainin":1.83,"yearlyrainin":37.23,"totalrainin":37.23,"tempinf":87.8,"humidityin":63,"baromrelin":31.02,"baromabsin":30.06,"dewPoint":83,"lastRain":"2018-09-14T14:56:00.000Z","deviceId":"5a41138884f9e0000d5a822d","date":"2018-09-18T14:58:00.000Z"}
```

Example of (mqtt_topic_json=false), individual topics with the vaule as the payload:
```
aw/data/dateutc
1537282680000

aw/data/tempf
85.6

aw/data/humidity
92
```

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of ``MAJOR.MINOR.PATCH``. In a nutshell, the version will be incremented
based on the following:

- ``MAJOR``: Incompatible or major changes.
- ``MINOR``: Backwards-compatible new features and enhancements.
- ``PATCH``: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The [Community Hass.io Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Bill Church][billchurch] with much assistance from [Dale Higgs][dale3h] 

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## We have got some Hass.io add-ons for you

Want some more functionality to your Hass.io Home Assistant instance?

We have created multiple add-ons for Hass.io. For a full list, check out
our [GitHub Repository][repository].

## License

MIT License

Copyright (c) 2018 Bill Church

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[bountysource-shield]: https://img.shields.io/bountysource/team/hassio-addons/activity.svg
[bountysource]: https://www.bountysource.com/teams/hassio-addons/issues
[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg
[buymeacoffee]: https://www.buymeacoffee.com/billchurch
[contributors]: https://github.com/billchurch/addon-ambient-mqtt/graphs/contributors
[billchurch]: https://github.com/billchurch
[discord-ha]: https://discord.gg/c5DvZ4e
[discord-shield]: https://img.shields.io/discord/478094546522079232.svg
[discord]: https://discord.me/hassioaddons
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/billchurch/addon-ambient-mqtt/issues
[keepchangelog]: https://keepachangelog.com/en/1.0.0/
[license-shield]: https://img.shields.io/github/license/billchurch/addon-ambient-mqtt.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2018.svg
[project-stage-shield]: https://img.shields.io/badge/project%20stage-experimental-yellow.svg
[reddit]: https://reddit.com/r/homeassistant
[releases-shield]: https://badge.fury.io/gh/billchurch%2Faddon-ambient-mqtt.svg
[releases]: https://github.com/billchurch/addon-ambient-mqtt/releases
[repository]: https://github.com/hassio-addons/repository
[semver]: https://semver.org/spec/v2.0.0.html
[dale3h]: https://github.com/dale3h


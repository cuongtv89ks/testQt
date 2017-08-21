import QtQuick 2.0

Item {
    id: weather
    anchors.fill: parent

    function query(woeid){
        var url = 'https://query.yahooapis.com/v1/public/yql?q=select * from weather.forecast where woeid= ' + woeid + '&format=json'
        var res
        var doc = new XMLHttpRequest()
        doc.onreadystatechange = function() {
            if (doc.readyState === XMLHttpRequest.DONE) {
                res = doc.responseText
                parseJSON(res)
                //console.log(res)
            }
        }
        doc.open('GET', url, true)
        doc.send()
    }

    function parseJSON(data) {
        var obj = JSON.parse(data)
        if (typeof(obj) === 'object'){
            if (obj.hasOwnProperty('query')){
                var ch = obj.query.results.channel
                var day = [], date = [], high = [], low = [], condition = [], bigCondition = ''
                for (var fk in ch.item.forecast){
                    day.push(ch.item.forecast[fk].day)
                    date.push(ch.item.forecast[fk].date)
                    high.push(Math.floor((ch.item.forecast[fk].high -32) * 5 / 9))
                    low.push(Math.floor((ch.item.forecast[fk].low -32) * 5 / 9))
                    condition.push((ch.item.forecast[fk].text).toLowerCase())
                }

                bigCondition = (ch.item.condition.text)
                bigCondition = bigCondition.toLowerCase()

                console.log(condition)

                bigWeatherIcon.location = ch.location.city
                bigWeatherIcon.degree = Math.floor((ch.item.condition.temp -32) * 5 / 9)
                bigWeatherIcon.windSpeed = ch.wind.speed
                bigWeatherIcon.weatherIcon = bigCondition
                bigWeatherIcon.humidity = ch.atmosphere.humidity
                bigWeatherIcon.pressure = ch.atmosphere.pressure
                bigWeatherIcon.visibility = ch.atmosphere.visibility
                bigWeatherIcon.sunrise = ch.astronomy.sunrise
                bigWeatherIcon.sunset = ch.astronomy.sunset

                forecastIcon.day = day[1]
                forecastIcon.date = date[1]
                forecastIcon.degree = String(high[1]) + "/" + String(low[1])
                forecastIcon.weatherIcon = String(condition[1])

                forecastIcon1.day = day[2]
                forecastIcon1.date = date[2]
                forecastIcon1.degree = high[2] + "/" + low[2]
                forecastIcon1.weatherIcon = String(condition[2])

                forecastIcon2.day = day[3]
                forecastIcon2.date = date[3]
                forecastIcon2.degree = high[3] + "/" + low[3]
                forecastIcon2.weatherIcon = String(condition[3])

                forecastIcon3.day = day[4]
                forecastIcon3.date = date[4]
                forecastIcon3.degree = high[4] + "/" + low[4]
                forecastIcon3.weatherIcon = String(condition[4])

            }
        }
    }

    Timer {
        interval: 5000; running: true; repeat: true;
        onTriggered: weather.query(1132466)
    }
    
    BackGround {
        id: backGround
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top

        Column {
            x: 70
            y: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            BigWeatherIcon {
                id: bigWeatherIcon
            }

            Row {
                spacing: 25

                ForecastIcon {
                    id: forecastIcon
                }

                ForecastIcon {
                    id: forecastIcon1
                }

                ForecastIcon {
                    id: forecastIcon2
                }

                ForecastIcon {
                    id: forecastIcon3
                }
            }
        }

    }

}

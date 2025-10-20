#include "weatherapp.h"
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QNetworkReply>
#include <QUrlQuery>
#include "ApiKeys.h"

namespace {
const QString &k_requestUrl = QString("https://api.openweathermap.org/data/2.5/weather");
const QString &k_apiKey = QString(OPENWEATHER_APIKEY);
}

WeatherApp::WeatherApp(QObject *parent)
    : QObject{parent}
{
    setCurrentTemp(999.99);
    setCurrentHumid(999.99);
}

double WeatherApp::currentTemp() const
{
    return m_currentTemp;
}

void WeatherApp::setCurrentTemp(double newCurrentTemp)
{
    if (qFuzzyCompare(m_currentTemp, newCurrentTemp))
        return;
    m_currentTemp = newCurrentTemp;
    emit currentTempChanged();
}

double WeatherApp::currentHumid() const
{
    return m_currentHumid;
}

void WeatherApp::setCurrentHumid(double newCurrentHumid)
{
    if (qFuzzyCompare(m_currentHumid, newCurrentHumid))
        return;
    m_currentHumid = newCurrentHumid;
    emit currentHumidChanged();
}

void WeatherApp::checkCurrentWeather()
{
    if(m_reply){
        m_reply->abort();
        m_reply->deleteLater();
        m_reply = nullptr;
    }

    QUrlQuery query;
    query.addQueryItem("lat", "52.43");
    query.addQueryItem("lon","22.87");
    query.addQueryItem("appid",k_apiKey);

    m_reply = m_networkManager.get(QNetworkRequest(k_requestUrl + "?" + query.toString()));
    connect(m_reply, &QNetworkReply::finished, this, &WeatherApp::parseData);
}

void WeatherApp::parseData()
{
    if(m_reply->error() == QNetworkReply::NoError){
        QByteArray data = m_reply->readAll();
        QJsonDocument jsonData = QJsonDocument::fromJson(data);
        if(jsonData["cod"].toInt() == 200){
            QJsonObject main = jsonData["main"].toObject();
            setCurrentTemp(main["temp"].toDouble() - 272.15);
            setCurrentHumid((double)main["humidity"].toDouble());
            qDebug() << currentHumid();

        }
    }
    else
    {
        qWarning() << m_reply->errorString();
    }
}

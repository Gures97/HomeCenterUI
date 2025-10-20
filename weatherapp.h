#ifndef WEATHERAPP_H
#define WEATHERAPP_H

#include <QObject>
#include <QNetworkAccessManager>

class WeatherApp : public QObject
{
    Q_OBJECT

    Q_PROPERTY(double currentTemp READ currentTemp WRITE setCurrentTemp NOTIFY currentTempChanged FINAL)
    Q_PROPERTY(double currentHumid READ currentHumid WRITE setCurrentHumid NOTIFY currentHumidChanged FINAL)
public:
    explicit WeatherApp(QObject *parent = nullptr);

    double currentTemp() const;
    void setCurrentTemp(double newCurrentTemp);

    double currentHumid() const;
    void setCurrentHumid(double newCurrentHumid);

public slots:
    void checkCurrentWeather();
    void parseData();

signals:

    void currentTempChanged();

    void currentHumidChanged();

private:

    double m_currentTemp;
    double m_currentHumid;

    QNetworkAccessManager m_networkManager;
    QNetworkReply* m_reply = nullptr;
};

#endif // WEATHERAPP_H

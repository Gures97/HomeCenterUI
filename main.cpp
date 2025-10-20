#include "miscinfo.h"
#include "weatherapp.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    MiscInfo *miscInfo = new MiscInfo(&app);
    WeatherApp *weatherApp = new WeatherApp(&app);

    qmlRegisterSingletonInstance("com.company.MiscInfo",1,0,"MiscInfo", miscInfo);
    qmlRegisterSingletonInstance("com.company.WeatherApp",1,0,"WeatherApp", weatherApp);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("HomeCenterUI", "Main");

    return app.exec();
}

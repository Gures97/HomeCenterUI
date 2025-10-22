#include "stocksapp.h"

StocksApp::StocksApp(QObject *parent)
    : QObject{parent}
{
    setCurrentStockName("ETFSP500");
    setCurrentStockChange(-1.25);
    setCurrentStockValue(249.7);
    setCurrentStockMin(245.7);
    setCurrentStockMax(252.35);
}

QString StocksApp::currentStockName() const
{
    return m_currentStockName;
}

void StocksApp::setCurrentStockName(const QString &newCurrentStockName)
{
    if (m_currentStockName == newCurrentStockName)
        return;
    m_currentStockName = newCurrentStockName;
    emit currentStockNameChanged();
}

double StocksApp::currentStockChange() const
{
    return m_currentStockChange;
}

void StocksApp::setCurrentStockChange(double newCurrentStockChange)
{
    if (qFuzzyCompare(m_currentStockChange, newCurrentStockChange))
        return;
    m_currentStockChange = newCurrentStockChange;
    emit currentStockChangeChanged();
}

double StocksApp::currentStockValue() const
{
    return m_currentStockValue;
}

void StocksApp::setCurrentStockValue(double newCurrentStockValue)
{
    if (qFuzzyCompare(m_currentStockValue, newCurrentStockValue))
        return;
    m_currentStockValue = newCurrentStockValue;
    emit currentStockValueChanged();
}

double StocksApp::currentStockMin() const
{
    return m_currentStockMin;
}

void StocksApp::setCurrentStockMin(double newCurrentStockMin)
{
    if (qFuzzyCompare(m_currentStockMin, newCurrentStockMin))
        return;
    m_currentStockMin = newCurrentStockMin;
    emit currentStockMinChanged();
}

double StocksApp::currentStockMax() const
{
    return m_currentStockMax;
}

void StocksApp::setCurrentStockMax(double newCurrentStockMax)
{
    if (qFuzzyCompare(m_currentStockMax, newCurrentStockMax))
        return;
    m_currentStockMax = newCurrentStockMax;
    emit currentStockMaxChanged();
}

void StocksApp::ChangeCurrentStock(const QString newStock)
{
    Q_UNUSED(newStock)
    //TODO: API access implementation
}

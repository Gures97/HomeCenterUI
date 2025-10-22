#ifndef STOCKSAPP_H
#define STOCKSAPP_H

#include <QObject>

class StocksApp : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString currentStockName READ currentStockName WRITE setCurrentStockName NOTIFY currentStockNameChanged FINAL)
    Q_PROPERTY(double currentStockChange READ currentStockChange WRITE setCurrentStockChange NOTIFY currentStockChangeChanged FINAL)
    Q_PROPERTY(double currentStockValue READ currentStockValue WRITE setCurrentStockValue NOTIFY currentStockValueChanged FINAL)
    Q_PROPERTY(double currentStockMin READ currentStockMin WRITE setCurrentStockMin NOTIFY currentStockMinChanged FINAL)
    Q_PROPERTY(double currentStockMax READ currentStockMax WRITE setCurrentStockMax NOTIFY currentStockMaxChanged FINAL)
public:
    explicit StocksApp(QObject *parent = nullptr);

    QString currentStockName() const;
    void setCurrentStockName(const QString &newCurrentStockName);

    double currentStockChange() const;
    void setCurrentStockChange(double newCurrentStockChange);

    double currentStockValue() const;
    void setCurrentStockValue(double newCurrentStockValue);

    double currentStockMin() const;
    void setCurrentStockMin(double newCurrentStockMin);

    double currentStockMax() const;
    void setCurrentStockMax(double newCurrentStockMax);

public slots:
    void ChangeCurrentStock(const QString newStock);

signals:
    void currentStockNameChanged();
    void currentStockChangeChanged();

    void currentStockValueChanged();

    void currentStockMinChanged();

    void currentStockMaxChanged();

private:
    QString m_currentStockName;
    double m_currentStockChange;
    double m_currentStockValue;
    double m_currentStockMin;
    double m_currentStockMax;
};

#endif // STOCKSAPP_H

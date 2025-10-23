#include "systemlog.h"
#include "logelement.h"

SystemLog::SystemLog(QObject *parent)
    : QAbstractListModel{parent}
{
    addLogEntry("Odebrano dane z czujnika", "Odebrano dane z czujnika", LogElement::LogInfo);
    addLogEntry("ETF spadł ponad 1%", "ETF spadł ponad 1%", LogElement::LogWarning);
    addLogEntry("Brak sygnału z modułu ESP", "Brak sygnału z modułu ESP", LogElement::LogError);
}

int SystemLog::rowCount(const QModelIndex &parent) const
{
    return m_logElements.length();
}

QVariant SystemLog::data(const QModelIndex &index, int role) const
{
    if(index.isValid() && index.row() >= 0 && index.row() < m_logElements.length()){
        LogElement * logElement = m_logElements[index.row()];

        switch((Roles) role){
        case SystemLog::LogShortDescriptionRole:
            return logElement->shortDescription();
        case SystemLog::LogExtendedDescriptionRole:
            return logElement->extendedDescription();
        case SystemLog::LogTypeRole:
            return logElement->type();

        }
    }
    return {};
}

QHash<int, QByteArray> SystemLog::roleNames() const
{
    QHash<int, QByteArray> res;

    res[LogShortDescriptionRole] = "logShortDescription";
    res[LogExtendedDescriptionRole] = "logExtendedDescription";
    res[LogTypeRole] = "logType";

    return res;
}

void SystemLog::addLogEntry(QString shortDesc, QString extDesc, LogElement::LogElementType type)
{
    beginInsertRows(QModelIndex(),m_logElements.length(), m_logElements.length());

    LogElement * logElement = new LogElement(this);
    logElement->setShortDescription(shortDesc);
    logElement->setExtendedDescription(extDesc);
    logElement->setType(type);

    m_logElements << logElement;

    endInsertRows();
}

#include "miscinfo.h"

#include <QDateTime>

MiscInfo::MiscInfo(QObject *parent)
    : QObject{parent}
{
    m_DateTimeTimer = new QTimer(this);
    connect(m_DateTimeTimer, &QTimer::timeout, this, &MiscInfo::updateDate);
    m_DateTimeTimer->start(1000);
}

QDateTime MiscInfo::now() const
{
    return m_now;
}

void MiscInfo::setNow(const QDateTime &newNow)
{
    if (m_now == newNow)
        return;
    m_now = newNow;
    emit nowChanged();
}

void MiscInfo::updateDate()
{
    setNow(QDateTime::currentDateTime());
}

#include "logelement.h"

LogElement::LogElement(QObject *parent)
    : QObject{parent}
{}

QString LogElement::shortDescription() const
{
    return m_shortDescription;
}

void LogElement::setShortDescription(const QString &newShortDescription)
{
    if (m_shortDescription == newShortDescription)
        return;
    m_shortDescription = newShortDescription;
    emit shortDescriptionChanged();
}

QString LogElement::extendedDescription() const
{
    return m_extendedDescription;
}

void LogElement::setExtendedDescription(const QString &newExtendedDescription)
{
    if (m_extendedDescription == newExtendedDescription)
        return;
    m_extendedDescription = newExtendedDescription;
    emit extendedDescriptionChanged();
}

LogElement::LogElementType LogElement::type() const
{
    return m_type;
}

void LogElement::setType(LogElementType newType)
{
    if (m_type == newType)
        return;
    m_type = newType;
    emit typeChanged();
}

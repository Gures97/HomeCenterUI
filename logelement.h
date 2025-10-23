#ifndef LOGELEMENT_H
#define LOGELEMENT_H

#include <QObject>

class LogElement : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString shortDescription READ shortDescription WRITE setShortDescription NOTIFY shortDescriptionChanged FINAL)
    Q_PROPERTY(QString extendedDescription READ extendedDescription WRITE setExtendedDescription NOTIFY extendedDescriptionChanged FINAL)
    Q_PROPERTY(LogElementType type READ type WRITE setType NOTIFY typeChanged FINAL)
public:
    explicit LogElement(QObject *parent = nullptr);

    enum LogElementType{
        LogInfo,
        LogWarning,
        LogError,
        LogDebug,
    };

    QString shortDescription() const;
    void setShortDescription(const QString &newShortDescription);

    QString extendedDescription() const;
    void setExtendedDescription(const QString &newExtendedDescription);

    LogElementType type() const;
    void setType(LogElementType newType);

signals:
    void shortDescriptionChanged();
    void extendedDescriptionChanged();

    void typeChanged();

private:
    QString m_shortDescription;
    QString m_extendedDescription;
    LogElementType m_type;
};

Q_DECLARE_METATYPE(LogElement::LogElementType)

#endif // LOGELEMENT_H

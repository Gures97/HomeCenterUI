#ifndef SYSTEMLOG_H
#define SYSTEMLOG_H

#include "logelement.h"

#include <QAbstractListModel>
#include <QObject>

class SystemLog : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit SystemLog(QObject *parent = nullptr);

signals:

    // QAbstractItemModel interface
public:
    enum Roles{
        LogShortDescriptionRole = Qt::UserRole + 1,
        LogExtendedDescriptionRole,
        LogTypeRole,
    };

    virtual int rowCount(const QModelIndex &parent) const override;
    virtual QVariant data(const QModelIndex &index, int role) const override;
    virtual QHash<int, QByteArray> roleNames() const override;

    void addLogEntry(QString shortDesc, QString extDesc, LogElement::LogElementType type);

private:
    QList<LogElement*> m_logElements;
};

#endif // SYSTEMLOG_H

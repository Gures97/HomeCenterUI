#ifndef MISCINFO_H
#define MISCINFO_H

#include <QDateTime>
#include <QObject>
#include <QTimer>

class MiscInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QDateTime now READ now WRITE setNow NOTIFY nowChanged FINAL)
public:
    explicit MiscInfo(QObject *parent = nullptr);

    QDateTime now() const;
    void setNow(const QDateTime &newNow);

public slots:
    void updateDate();

signals:
    void nowChanged();
private:
    QDateTime m_now;
    QTimer *m_DateTimeTimer;
};

#endif // MISCINFO_H

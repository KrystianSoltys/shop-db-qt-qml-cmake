#ifndef DBCONNECTOR_H
#define DBCONNECTOR_H

#include <QObject>
#include <QDebug>

class DBConnector : public QObject
{
    Q_OBJECT
public:
    explicit DBConnector(QObject *parent = nullptr);

signals:

public slots:
    void callMe(QString host, QString user, QString pass, QString db);
};

#endif // DBCONNECTOR_H

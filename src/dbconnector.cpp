#include "dbconnector.hpp"

DBConnector::DBConnector(QObject *parent)
    : QObject{parent}
{

}

void DBConnector::callMe(QString host, QString user, QString pass, QString db)
{
    qDebug() << host << user << pass << db;
}

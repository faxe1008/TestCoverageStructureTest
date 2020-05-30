#include <QString>
#include <QtTest>

#include "calculator.h"

class AdditionTest : public QObject
{
    Q_OBJECT

public:
    AdditionTest();

private Q_SLOTS:
    void addNegative();
};

AdditionTest::AdditionTest()
{
}

void AdditionTest::addNegative()
{
    Calculator calc;
    float result = calc.add(2,-4);
    QCOMPARE(-2.0F, result);
}

QTEST_APPLESS_MAIN(AdditionTest)

#include "tst_additiontest.moc"

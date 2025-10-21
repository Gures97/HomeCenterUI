import QtQuick

ListModel {
    id: logModel
    ListElement {
        type: "info"
        content: "Odebrano dane z czujnika"
    }
    ListElement {
        type: "warning"
        content: "ETF spadł ponad 1%"
    }
    ListElement {
        type: "error"
        content: "Brak sygnału z modułu ESP"
    }
}

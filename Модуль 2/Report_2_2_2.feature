﻿#language: ru

@tree
@ExportScenarios

Функционал: Заполнение шапки Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 002_Заказ_Проверка_Итого_Количество
* Заполнние табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Сметана'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Хлеб'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '35,00'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка итоговой суммы
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '725'	


	
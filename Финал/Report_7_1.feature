﻿#language: ru
@tree

Функционал: Проверка прикрепления картинки к товару

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: 701_Проверка_прикрепление_картинка_к_товар

* Открытие справочника Товары
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Вид'   | 'Код'       | 'Наименование' | 'Поставщик'   |
		| 'Т78'     | 'Товар' | '000000032' | 'Торт '        | 'Мосхлеб ОАО' |
	И в таблице "Список" я выбираю текущую строку

* Добавление картиники	

    И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Tort99'
	И я выбираю файл 'C:\QA\Features\Tort99.png'
	И я нажимаю на кнопку с именем "ВыбратьФайлСДискаИЗаписать"
	И Пауза 10
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я выбираю текущую строку
	Когда открылось окно 'Торт (Товар) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'

	
	

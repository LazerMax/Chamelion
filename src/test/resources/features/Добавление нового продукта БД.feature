# language: ru

# Тестовые данные:

Функция: Добавление нового продукта через БД

  Сценарий: Добавление не экзотического овоща с названием из различных символов
    * к БД "h2 Embedded" выполнено подключение "" с параметрами:
      | field    | value                                   |
      | URL      | jdbc:h2:tcp://localhost:9092/mem:testdb |
      | login    | user                                    |
      | password | pass                                    |
    * из БД выбирается строка запросом "SELECT COUNT(*) FROM FOOD"
    * к БД выполняется запрос "INSERT INTO FOOD" c параметрами:
      | field       | value        |
      | FOOD_ID     | 4            |
      | FOOD_NAME   | мандарин     |
      | FOOD_TYPE   | Фрукт        |
      | FOOD_EXOTIC | Экзотический |
    * из БД выбирается строка запросом "SELECT COUNT(*) FROM FOOD"
    * к БД выполняется запрос "DELETE FROM FOOD" c параметрами:
      | field   | value |
      | FOOD_ID | 5     |
    * из БД выбирается строка запросом "SELECT COUNT(*) FROM FOOD"



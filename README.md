Yaponama 2012
=============

Изменение закупочной и продажной цен и количества в различных статусах.
-

Через дробь первое значение - сумма, второе - количество.

- "0" Означает, что изменение этого поля никак не влияет на долг.
- "Y" Означает возможность изменения этого поля и влечет за собой изменение долга.
- "N" Означает отсутствие возможности изменения этого поля.

<table>
    <tr>
        <td>Статус</td>
        <td>Изм. продажной</td>
        <td>Изм. закупочной цены</td>
    </tr>
    <tr>
        <td>incart</td>
        <td>0/0</td>
        <td>0/0</td>
    </tr>
    <tr>
        <td>inorder</td>
        <td>0/0</td>
        <td>0/0</td>
    </tr>
    <tr>
        <td>ordered</td>
        <td>Y/Y</td>
        <td>0/0</td>
    </tr>
    <tr>
        <td>pre_supplier</td>
        <td>Y/Y</td>
        <td>0/0</td>
    </tr>
    <tr>
        <td>post_supplier</td>
        <td>Y/Y</td>
        <td>Y/Y</td>
    </tr>
    <tr>
        <td>stock</td>
        <td>Y/N</td>
        <td>N/N</td>
    </tr>
    <tr>
        <td>complete</td>
        <td>N/N</td>
        <td>N/N</td>
    </tr>
    <tr>
        <td>cancel</td>
        <td>N/N</td>
        <td>N/N</td>
    </tr>  
</table>

Например у товара в статусе stock можно изменить продажную цену, но нельзя поменять закупочную цену и количество.

Переходы статусов
-----------------

<table>
    <tr>
        <td></td>
        <td>incart</td>
        <td>inorder</td>
        <td>ordered</td>
        <td>pre_supplier</td>
        <td>post_supplier</td>
        <td>stock</td>
        <td>complete</td>
        <td>cancel</td>
    </tr>
    <tr>
        <td>incart</td>
        <td>0/0/0/0</td>
        <td>0/0/0/0</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>0/0/0/0</td>
    </tr>
    <tr>
        <td>inorder</td>
        <td>0/0/0/0</td>
        <td>0/0/0/0</td>
        <td>+/+A/0/0</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>0/0/0/0</td>
    </tr>
    <tr>
        <td>ordered</td>
        <td>-/0/0/0</td>
        <td>-/0/0/0</td>
        <td>X</td>
        <td>0/0/0/0</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>-/0/0/0</td>
    </tr>
    <tr>
        <td>pre_supplier</td>
        <td>-/0/0/0</td>
        <td>-/0/0/0</td>
        <td>X</td>
        <td>0/0/0/0</td>
        <td>0/0/+/0</td>
        <td>X</td>
        <td>X</td>
        <td>-/0/0/0</td>
    </tr>
    <tr>
        <td>post_supplier</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>0/0/-/0</td>
        <td>0/0/-+B/0</td>
        <td>0/0/-/-</td>
        <td>X</td>
        <td>-/0/-/0</td>
    </tr>
    <tr>
        <td>stock</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>0/0/+C/+C</td>
        <td>X</td>
        <td>-/-/0/0</td>
        <td>-/0/0/0</td>
    </tr>    
    <tr>
        <td>complete</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>X</td>
        <td>+/+/0/0</td>
        <td>X</td>
        <td>0/0/0/0</td>
    </tr>
    <tr>
        <td>cancel</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>  
</table>

Значения ячеек:

- "X" Невозможность смены статуса.
- Четыре значения по-порядку:
    1. В работе у покупателя;
    2. Счет покупателя;
    3. В работе у поставщика;
    4. Счет поставщика.

Обозначения:

- "-" Уменьшение суммы
- "+" Увеличение суммы
- "0" Не влияет на сумму
- "A" Произвольная сумма на усмотрение менеджера.
- "B" Если меняется поставщик, то меняются и суммы. Если нет, то нет.
- "C" Только тому же поставщику у которого был оформлен заказ.

incart <-> inorder - Офомрление заказа. Указание способа доставки, адреса и т.д. Либо перекидывание обратно из заказа.
inorder <-> inorder - Перемещение в друго заказ.
ordered <-> pre_supplier (и более) - Блокировка возможности отказа клиентом от заказа.
inorder -> ordered - Вводе фактически внесенных средств рассчитывается исходя из способа доставки (100% по почте например) или автоматический перевод в зависимости от "правила предоплаты"
pre_supplier -> cancel (и более) отмена долга клиента доступна только менеджеру

1. Проверить допустимость переходов статусов на базе обработки в контроллерах
2. Проверить с разными покупателями/поставщиками
3. Изменение цен в разных статусах
4. Доработать ошибочные смены статусов (обратный ход)
5. Обработать отказ с любого шага
6. Обдумать еще раз над статусами: отказ поставщика, возврат, мой отказ, отказ покупателя

TODO
----

- Дозаказ
- Отказ (мой  поставщика)
- Привязка к реальным ценам (отслеживание изменений: цены, срока, кол-ва)
- Код идентификации оплаты
- Денег достаточно только на одну деталь заказа
- Отправления
- Выдача (разбивка на отправления?)
- Отправка поставщику
- Стоимость доставки
- Почта - наложенный платеж (фикс. возврата средств)
- Выдал товар, но не получил $
- Статус заказа - умопл. (когда уже нельзя добавить в заказ)


---


- TODO потом разобраться с автоматическим подставлением имени
- message[:from].display_names.first
- :name => message[:from].addrs.collect{|a| a.display_name}
- http://stackoverflow.com/questions/5940847/using-rails-3-mail
- http://dansowter.com/mailman-guide/
- http://guides.rubyonrails.org/action_mailer_basics.html
- https://github.com/titanous/mailman/blob/master/USER_GUIDE.md
- https://github.com/mikel/mail
- http://stackoverflow.com/questions/9094872/how-to-process-incoming-mails-using-mailman-and-update-them-into-the-database
- https://github.com/titanous/mailman
- Mail::AddressContainer
- Mail::Field
- Mail::Message
- --
- http://steve.dynedge.co.uk/2010/11/29/receiving-test-driven-incoming-email-for-rails-3/

---

Postgres + Spec
-

- http://kerryb.github.com/iprug-rspec-presentation/#27
- http://rspec.info/
- https://github.com/rspec/rspec
- http://rspec.info/
- https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
- http://rubydoc.info/gems/rspec-rails/frames
- https://github.com/jnicklas/capybara
- http://www.youtube.com/watch?v=qMpF3eMq_Kc&feature=g-wl&list=WLCBC1429D9ADDF173

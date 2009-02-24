Функционал: Рассылка приглашений в команду
    Чтобы пополнить команду новыми членами
    Капитан может пригласить других пользователей к себе в команду

Сценарий: Капитан видит в комнате команды ссылку "Пригласить участников"
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    Если я захожу в комнату команды
    То должен увидеть ссылку на /invitations/new

Сценарий: Рядовой член команды не видит ссылку "Пригласить участников"

Сценарий: Капитан отсылает приглашение вступить в команду
    Допустим зарегистрирован пользователь "alisa@diesel.kg/pass"
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "alisa@diesel.kg" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователю alisa@diesel.kg выслано приглашение"
    И пользователь "alisa@diesel.kg/pass" должен получить приглашение от команды "Mushrooms"

Сценарий: Капитан отсылает несколько приглашений
    Допустим зарегистрирован пользователь "alisa@diesel.kg/pass"
    И зарегистрирован пользователь "aldor@diesel.kg/pass"
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    И я высылаю приглашение пользователю alisa@diesel.kg
    Если я захожу в комнату команды
    И ввожу "aldor@diesel.kg" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователю aldor@diesel.kg выслано приглашение"
    И пользователь "alisa@diesel.kg/pass" должен увидеть приглашение от команды "Mushrooms"
    И пользователь "aldor@diesel.kg/pass" должен увидеть приглашение от команды "Mushrooms"

Сценарий: Капитан пытается два раза отослать приглашение одному и тому же пользователю
    Допустим зарегистрирован пользователь "alisa@diesel.kg/pass"
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    И я высылаю приглашение пользователю alisa@diesel.kg
    Если я захожу в комнату команды
    И ввожу "alisa@diesel.kg" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Вы уже высылали этому пользователю приглашение и он ещё не ответил"

Сценарий: Капитан пытается пригласить члена другой команды

Сценарий: Капитан пытается пригласить члена своей же команды

Сценарий: Капитан пытается пригласить самого себя :-)
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "noel@grib.kg" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователь уже является членом одной из команд"
    И пользователь "alisa@diesel.kg/pass" не должен получить приглашение

Сценарий: Капитан не ввёл адреса пользователя
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И нажимаю "Пригласить"
    То должен увидеть "Вы не ввели адрес"
    И пользователь "alisa@diesel.kg/pass" не должен получить приглашение

Сценарий: Капитан ввёл адрес несуществующего пользователя
    И зарегистрирована команда "Mushrooms" под руководством "noel@grib.kg/1234"
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "does-not-exist@grib.kg" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователя с таким адресом не существует"
    И пользователь "alisa@diesel.kg/pass" не должен получить приглашение
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 23 2025 г., 17:45
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `konkyrsi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gruppy`
--

CREATE TABLE `gruppy` (
  `GruppyId` varchar(255) NOT NULL,
  `Kurs` int(11) NOT NULL,
  `IdSpecialnosti` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gruppy`
--

INSERT INTO `gruppy` (`GruppyId`, `Kurs`, `IdSpecialnosti`) VALUES
('АП-24', 1, 21),
('ГД-24', 1, 55),
('ГДп-24', 1, 55),
('ДОУп-24', 1, 54),
('ЖКХп-24', 1, 2),
('ИС-24', 1, 8),
('ЛК-24', 1, 17),
('МОП-24', 1, 10),
('МРп-24', 1, 24),
('МСР-24', 1, 13),
('ОДЛкп-24', 1, 43),
('ОДЛу-24', 1, 43),
('ОИБ-24', 1, 9),
('ОС-24', 1, 14),
('Пдп-24', 1, 51),
('ПКп-24', 1, 48),
('ПОАТ-24', 1, 29),
('РЗХ-24', 1, 1),
('СА-24', 1, 7),
('ТАКХС-24', 1, 19),
('ТМ-24', 1, 16),
('ТО-24', 1, 26),
('ЭБАС-24', 1, 30),
('Экп-24', 1, 41),
('Ю1п-24', 1, 46),
('Ю2п-24', 1, 46),
('АП23', 2, 21),
('ГД23', 2, 55),
('ГДп23', 2, 55),
('ДОУ23', 2, 54),
('ИСВ23', 2, 8),
('ИСП23', 2, 8),
('Кп23', 2, 44),
('МР23', 2, 24),
('ОДЛкп23', 2, 43),
('ОДЛу23', 2, 43),
('ОИСп23', 2, 6),
('ОС23', 2, 14),
('ПБ23', 2, 23),
('ПД23', 2, 51),
('ПК23', 2, 48),
('ПКп23', 2, 48),
('ПОАТ23', 2, 29),
('ПСОп23', 2, 45),
('СА23', 2, 7),
('СП23', 2, 39),
('ТИК23', 2, 52),
('ТОп23', 2, 26),
('ЭБАС23', 2, 30),
('ЭК23', 2, 41),
('ГД22', 3, 55),
('ГДп22', 3, 55),
('ДОУ22', 3, 54),
('ДОУп22', 3, 54),
('ЖКХ122', 3, 2),
('ЖКХ222', 3, 1),
('ИС-22', 3, 7),
('ИСп22', 3, 7),
('ЛК-22', 3, 13),
('МРп-22', 3, 18),
('ОДЛк22', 3, 37),
('ОДЛп22', 3, 37),
('ОДЛу22', 3, 37),
('ОС-22', 3, 10),
('П-22', 3, 55),
('ПБ-22', 3, 17),
('ПД-22', 3, 45),
('ПК-22', 3, 42),
('ПКп-22', 3, 42),
('ПОАТ22', 3, 23),
('СА-22', 3, 6),
('СП-22', 3, 33),
('ТО-22', 3, 20),
('ТПИ-22', 3, 44),
('ЭБАС22', 3, 24),
('ГД-21', 4, 49),
('ГДп-21', 4, 49),
('ИС-21', 4, 7),
('ПБ-21', 4, 17),
('ПД-21', 4, 45),
('ПДп-21', 4, 45),
('ПК-21', 4, 42),
('ПКп21', 4, 42),
('ПОАТ21', 4, 23),
('СА-21', 4, 6),
('ТО-21', 4, 20),
('ТПИ-21', 4, 44);

-- --------------------------------------------------------

--
-- Структура таблицы `meropriyatiya`
--

CREATE TABLE `meropriyatiya` (
  `MeropriyatiyaId` int(11) NOT NULL,
  `MeropriyatiyaName` varchar(255) NOT NULL,
  `MeropriyatiyaDataNachala` varchar(255) NOT NULL,
  `MeropriyatiyaDataOkonchaniya` varchar(255) NOT NULL,
  `MeropriyatiyaURL` varchar(255) NOT NULL,
  `MeropriyatiyaPrikaz` text NOT NULL,
  `MeropriyatiyaOrganizaciya` varchar(255) NOT NULL,
  `MeropriyatiyaVizitnayaKartochka` varchar(255) NOT NULL,
  `MeropriyatiyaRejting` varchar(255) NOT NULL,
  `IdTipMeropriyatiya` int(11) NOT NULL,
  `IdUrovenMeropriyatiya` int(11) NOT NULL,
  `IdStatusMeropriyatiya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `meropriyatiya`
--

INSERT INTO `meropriyatiya` (`MeropriyatiyaId`, `MeropriyatiyaName`, `MeropriyatiyaDataNachala`, `MeropriyatiyaDataOkonchaniya`, `MeropriyatiyaURL`, `MeropriyatiyaPrikaz`, `MeropriyatiyaOrganizaciya`, `MeropriyatiyaVizitnayaKartochka`, `MeropriyatiyaRejting`, `IdTipMeropriyatiya`, `IdUrovenMeropriyatiya`, `IdStatusMeropriyatiya`) VALUES
(1, 'Цифровой Диктант', '10.10.2024', '28.10.2024', 'https://digitaldictation.ru/', 'https://clck.ru/3E4hQq', '', 'https://clck.ru/3E4ham', '', 4, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `request`
--

CREATE TABLE `request` (
  `id` int(255) NOT NULL,
  `auto_number` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `contest` varchar(255) NOT NULL,
  `createtime` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `status_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `request`
--

INSERT INTO `request` (`id`, `auto_number`, `text`, `contest`, `createtime`, `status_id`, `user_id`) VALUES
(3, 'З В А', 'ИС-22', 'regional', '2025-06-23 17:46:47', 3, 1),
(4, '123', '123', 'Всероссийский', '2025-06-23 17:47:58', 2, 1),
(5, 'Заяц Вадим Алексеевич', 'ИС-22', 'Всероссийский', '2025-06-23 17:48:35', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roli`
--

CREATE TABLE `roli` (
  `RoliId` int(11) NOT NULL,
  `RoliName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roli`
--

INSERT INTO `roli` (`RoliId`, `RoliName`) VALUES
(1, 'Студент'),
(2, 'Преподаватель'),
(3, 'Администрация');

-- --------------------------------------------------------

--
-- Структура таблицы `specialnosti`
--

CREATE TABLE `specialnosti` (
  `SpecialnostiId` int(11) NOT NULL,
  `SpecialnostiKod` varchar(255) NOT NULL,
  `SpecialnostiName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `specialnosti`
--

INSERT INTO `specialnosti` (`SpecialnostiId`, `SpecialnostiKod`, `SpecialnostiName`) VALUES
(1, '01.01.24', 'Рабочий зеленного хозяйства'),
(2, '02.01.24', 'Мастер по ремонту и обслуживанию инженерных систем жилищно-коммунального хозяйства'),
(3, '03.01.24', 'Мастер по ремонту и обслуживанию инженерных систем жилищно-коммунального хозяйства'),
(4, '04.01.24', 'Эксплуатация и обслуживание многоквартирного дома'),
(5, '05.01.24', 'Мастер по обработке цифровой информации'),
(6, '06.01.24', 'Оператор информационных систем и ресурсов'),
(7, '07.01.24', 'Сетевое и системное администрирование'),
(8, '08.01.24', 'Информационные системы и программирование'),
(9, '09.01.24', 'Обеспечение информационной безопасности автоматизированных систем'),
(10, '10.01.24', 'Мастер по изготовлению и сборке деталей и узлов оптических и оптико-электронных приборов и систем'),
(11, '11.01.24', 'Сварщик (ручной и частично механизированной сварки (наплавки)'),
(12, '12.01.24', 'Оператор станков с программным управлением'),
(13, '13.01.24', 'Мастер слесарных работ'),
(14, '14.01.24', 'Оператор-наладчик металлообрабатывающих станков'),
(15, '15.01.24', 'Технология металлообрабатывающего производства'),
(16, '16.01.24', 'Технология машиностроения');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `code`, `name`) VALUES
(1, 'new', 'Новая'),
(2, 'rejected', 'Отклонено'),
(3, 'approved', 'Подтверждено');

-- --------------------------------------------------------

--
-- Структура таблицы `statusmeropriyatiya`
--

CREATE TABLE `statusmeropriyatiya` (
  `StatusMeropriyatiyaId` int(11) NOT NULL,
  `StatusMeropriyatiyaName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `statusmeropriyatiya`
--

INSERT INTO `statusmeropriyatiya` (`StatusMeropriyatiyaId`, `StatusMeropriyatiyaName`) VALUES
(1, 'Не началось'),
(2, 'Идет в данный момент'),
(3, 'Закончилось');

-- --------------------------------------------------------

--
-- Структура таблицы `tipmeropriyatya`
--

CREATE TABLE `tipmeropriyatya` (
  `TipMeropriyatyaId` int(11) NOT NULL,
  `TipMeropriyatyaName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tipmeropriyatya`
--

INSERT INTO `tipmeropriyatya` (`TipMeropriyatyaId`, `TipMeropriyatyaName`) VALUES
(1, 'Конкурс'),
(2, 'Олимпиада'),
(3, 'Конференция'),
(4, 'Акция'),
(5, 'Хакатон'),
(6, 'Урок'),
(7, 'Проект'),
(8, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `urovenmeropriyatiya`
--

CREATE TABLE `urovenmeropriyatiya` (
  `UrovenMeropriyatiyaId` int(11) NOT NULL,
  `UrovenMeropriyatiyaName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `urovenmeropriyatiya`
--

INSERT INTO `urovenmeropriyatiya` (`UrovenMeropriyatiyaId`, `UrovenMeropriyatiyaName`) VALUES
(1, 'Международный '),
(2, 'Всероссийский'),
(3, 'Региональный'),
(4, 'Районный '),
(5, 'Муниципальный');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Familiya` varchar(255) NOT NULL,
  `Imya` varchar(255) NOT NULL,
  `Otchestvo` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NikTelegramm` varchar(255) NOT NULL,
  `Telefon` varchar(255) NOT NULL,
  `IdRoli` int(11) NOT NULL,
  `IdGruppy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `Familiya`, `Imya`, `Otchestvo`, `Email`, `NikTelegramm`, `Telefon`, `IdRoli`, `IdGruppy`) VALUES
(1, 'test1', '5a105e8b9d40e1329780d62ea2265d8a', 'Иванов', 'Иван', 'Иванович', 'test1@yandex.ru', '', '8 (999) 999-99-97', 1, 'ИС-22'),
(2, 'test2', '827ccb0eea8a706c4c34a16891f84e7b', 'Тарджиманян', 'Лия', 'Николаевна', 'test2@yandex.ru', '', '8 (999) 999-99-98', 2, ''),
(3, 'test3', '8ad8757baa8564dc136c1e07507f4a98', 'Капранова', 'Анжелика', 'Владимировна', 'test1@yandex.ru', '', '8 (999) 999-99-99', 3, ''),
(4, 'test4', '827ccb0eea8a706c4c34a16891f84e7b', 'Что то', 'Что то', 'Что то', 'sdasfad@mail.ru', 'Что то', '+7(999)-999-99-99', 1, 'ИС-24'),
(5, 'test5', '827ccb0eea8a706c4c34a16891f84e7b', 'Что то', 'Что то', 'Что то', 'dsdasfad@mail.ru', 'Что то', '+7(999)-999-99-98', 1, 'ОИБ-24');

-- --------------------------------------------------------

--
-- Структура таблицы `zayavkinauchastievmeropriyatii`
--

CREATE TABLE `zayavkinauchastievmeropriyatii` (
  `ZayavkiNaUchastieVMeropriyatiiId` int(11) NOT NULL,
  `IdMeropriyatiya` int(11) NOT NULL,
  `IdPolzovateli` int(11) NOT NULL,
  `Otzyv` varchar(255) NOT NULL,
  `Photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `zayavkinauchastievmeropriyatii`
--

INSERT INTO `zayavkinauchastievmeropriyatii` (`ZayavkiNaUchastieVMeropriyatiiId`, `IdMeropriyatiya`, `IdPolzovateli`, `Otzyv`, `Photo`) VALUES
(1, 1, 2, 'Было сложно', 'https://clck.ru/3E4i2j');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gruppy`
--
ALTER TABLE `gruppy`
  ADD KEY `GruppyId` (`GruppyId`),
  ADD KEY `IdSpecialnosti` (`IdSpecialnosti`);

--
-- Индексы таблицы `meropriyatiya`
--
ALTER TABLE `meropriyatiya`
  ADD PRIMARY KEY (`MeropriyatiyaId`),
  ADD KEY `IdStatusMeropriyatiya` (`IdStatusMeropriyatiya`),
  ADD KEY `IdUrovenMeropriyatiya` (`IdUrovenMeropriyatiya`),
  ADD KEY `IdTipMeropriyatiya` (`IdTipMeropriyatiya`);

--
-- Индексы таблицы `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `roli`
--
ALTER TABLE `roli`
  ADD PRIMARY KEY (`RoliId`);

--
-- Индексы таблицы `specialnosti`
--
ALTER TABLE `specialnosti`
  ADD PRIMARY KEY (`SpecialnostiId`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statusmeropriyatiya`
--
ALTER TABLE `statusmeropriyatiya`
  ADD PRIMARY KEY (`StatusMeropriyatiyaId`);

--
-- Индексы таблицы `tipmeropriyatya`
--
ALTER TABLE `tipmeropriyatya`
  ADD PRIMARY KEY (`TipMeropriyatyaId`);

--
-- Индексы таблицы `urovenmeropriyatiya`
--
ALTER TABLE `urovenmeropriyatiya`
  ADD PRIMARY KEY (`UrovenMeropriyatiyaId`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `IdRoli` (`IdRoli`),
  ADD KEY `IdGruppy` (`IdGruppy`);

--
-- Индексы таблицы `zayavkinauchastievmeropriyatii`
--
ALTER TABLE `zayavkinauchastievmeropriyatii`
  ADD PRIMARY KEY (`ZayavkiNaUchastieVMeropriyatiiId`),
  ADD UNIQUE KEY `IdMeropriyatiya` (`IdMeropriyatiya`),
  ADD KEY `IdPolzovateli` (`IdPolzovateli`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `meropriyatiya`
--
ALTER TABLE `meropriyatiya`
  MODIFY `MeropriyatiyaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `request`
--
ALTER TABLE `request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `roli`
--
ALTER TABLE `roli`
  MODIFY `RoliId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `specialnosti`
--
ALTER TABLE `specialnosti`
  MODIFY `SpecialnostiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `statusmeropriyatiya`
--
ALTER TABLE `statusmeropriyatiya`
  MODIFY `StatusMeropriyatiyaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tipmeropriyatya`
--
ALTER TABLE `tipmeropriyatya`
  MODIFY `TipMeropriyatyaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `urovenmeropriyatiya`
--
ALTER TABLE `urovenmeropriyatiya`
  MODIFY `UrovenMeropriyatiyaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `zayavkinauchastievmeropriyatii`
--
ALTER TABLE `zayavkinauchastievmeropriyatii`
  MODIFY `ZayavkiNaUchastieVMeropriyatiiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `meropriyatiya`
--
ALTER TABLE `meropriyatiya`
  ADD CONSTRAINT `Meropriyatiya_ibfk_1` FOREIGN KEY (`IdUrovenMeropriyatiya`) REFERENCES `urovenmeropriyatiya` (`UrovenMeropriyatiyaId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Meropriyatiya_ibfk_2` FOREIGN KEY (`IdStatusMeropriyatiya`) REFERENCES `statusmeropriyatiya` (`StatusMeropriyatiyaId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Meropriyatiya_ibfk_3` FOREIGN KEY (`MeropriyatiyaId`) REFERENCES `zayavkinauchastievmeropriyatii` (`IdMeropriyatiya`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Meropriyatiya_ibfk_4` FOREIGN KEY (`IdTipMeropriyatiya`) REFERENCES `tipmeropriyatya` (`TipMeropriyatyaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`IdRoli`) REFERENCES `roli` (`RoliId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `zayavkinauchastievmeropriyatii`
--
ALTER TABLE `zayavkinauchastievmeropriyatii`
  ADD CONSTRAINT `ZayavkiNaUchastieVMeropriyatii_ibfk_1` FOREIGN KEY (`IdPolzovateli`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

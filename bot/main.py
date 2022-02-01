import asyncio
import aiogram as aig
from aiogram import types
import logging

import os

from mysql import DataBaseQuery
import config
from menu import Menu


async def main():
    @dp.callback_query_handler(text='start')
    async def back_to_the_main_menu(call: types.CallbackQuery):
        await cmd_start(call.message)

    @dp.message_handler(lambda message: message.text == '< назад' or message.text == '/start')
    async def cmd_start(message: types.Message):

        """
        /start (сообщение с inline клавиатурой)
        "< назад"
        Добавление новых пользователей в таблицу БД
        :param message:
        """

        dbq = DataBaseQuery()
        dbq.insert_new_user_into_users(message.chat.id, str(message.chat.first_name), str(message.chat.last_name))

        text = '👋Приветствую!\n\n' \
               'Я создан, чтобы помочь тебе с изучением\n' \
               'правил русского языка.\n\n' \
               'Подробнее о моих возможностях ты можешь узнать\n' \
               'в меню "Подробнее ..."'
        kb = types.InlineKeyboardMarkup()
        buttons = [types.InlineKeyboardButton(text='Подробнее...', callback_data='more'),
                   types.InlineKeyboardButton(text='🔎 Все правила', callback_data='rules'),
                   types.InlineKeyboardButton(text='❤ Избранное', callback_data='liked'),
                   types.InlineKeyboardButton(text='💪 Тренажер', callback_data='train')]

        menu_ex = Menu(text, kb, buttons)
        await menu_ex.send_menu(message)

    # далее идут кнопки главного меню
    @dp.callback_query_handler(text='more')
    async def more_menu(call: types.CallbackQuery):

        """
        Кнопка "Подробнее..."
        :param call:
        """

        text = '<b>Этот бот содержит <u>все</u> правила русского языка.</b>\n' \
               'Благодаря ему, можно легко найти нужное правило, нажав пару кнопок.\n\n' \
               'В меню "🔎 Все правила" содержатся правила, поделенные на три раздела <b><u>(орфография, ' \
               'пунктуация, орфоэпия)</u></b>.\n\n' \
               'В меню "❤ Избранное" будут хранится правила, которые вы отметите, чтобы не потерять. \n\n' \
               'В меню "💪 Тренажер" предложены упражнения на определенные правила, чтобы закрепить изученное\n' \
               '<b><u>(все упражнения взяты из вариантов ЕГЭ)</u></b>.\n\n' \
               '😊 Приятного пользования!'

        kb = types.InlineKeyboardMarkup()
        buttons = [types.InlineKeyboardButton(text='👈 назад', callback_data='start')]

        menu_ex = Menu(text, kb, buttons, parse_mode=types.ParseMode.HTML)
        await menu_ex.send_menu(call.message)

    @dp.callback_query_handler(text='rules')
    async def rules_menu(call: types.CallbackQuery):

        """
        Кнопка "🔎 Все правила"
        :param call:
        """

        text = 'Все правила поделены на три раздела:\n\n' \
               '▫️  <b><u>Орфография</u></b>- правописание разных частей речи.\n\n' \
               '▫️  <b><u>Пунктуация</u></b> - правильная постановка знаков припинания.\n\n' \
               '▫️  <b><u>Орфоэпия</u></b> - правильное произношение слов.'

        kb = types.InlineKeyboardMarkup()
        buttons = [types.InlineKeyboardButton(text='Орфография', callback_data='spelling'),
                   types.InlineKeyboardButton(text='Пунктуация', callback_data='punctuation'),
                   types.InlineKeyboardButton(text='Орфоэпия', callback_data='pronunciation'),
                   types.InlineKeyboardButton(text='👈 назад', callback_data='start')]

        menu_ex = Menu(text, kb, buttons, parse_mode=types.ParseMode.HTML)
        await menu_ex.send_menu(call.message)

    @dp.callback_query_handler(text='liked')
    async def liked_menu(call: types.CallbackQuery):

        """
        Кнопка "❤ Избранное"
        :param call:
        """

        text1 = 'Здесь находятся правила, которые вы отметили.'
        text2 = 'Здесь будут находится правила, которые вы отметите.'

        dbq = DataBaseQuery()
        rules_ides = dbq.get_liked_rules_list(call.message.chat.id)

        if rules_ides is not None:
            menu_ex = Menu(text1, None, None)
            await menu_ex.send_rule_menu(rules_ides, call.message, 'start')
        else:
            kb = types.InlineKeyboardMarkup()
            buttons = [types.InlineKeyboardButton(text='👈 назад', callback_data='start')]

            menu_ex = Menu(text2, kb, buttons)
            await menu_ex.send_menu(call.message)

    @dp.callback_query_handler(text='train')
    async def train(call: types.CallbackQuery):

        """
        Не сделанная кнопка "💪 Тренажер"
        :param call:
        """

        await call.message.answer('Скоро ...')

    # далее идут кнопки навигации по разделам русского языка
    @dp.callback_query_handler(text='spelling')
    async def show_spelling_rules(call: types.CallbackQuery):

        dbq = DataBaseQuery()
        rules_ides = dbq.get_rule_id_by_it_type(call.data)

        menu_ex = Menu('Правила орфографии:', None, None)
        await menu_ex.send_rule_menu(rules_ides, call.message, 'rules')

    @dp.callback_query_handler(text='punctuation')
    async def show_punctuation_rules(call: types.CallbackQuery):
        dbq = DataBaseQuery()
        rules_ides = dbq.get_rule_id_by_it_type(call.data)

        menu_ex = Menu('Правила пунктуации:', None, None)
        await menu_ex.send_rule_menu(rules_ides, call.message, 'rules')

    @dp.callback_query_handler(text='pronunciation')
    async def show_pronunciation_rules(call: types.CallbackQuery):
        dbq = DataBaseQuery()
        rules_ides = dbq.get_rule_id_by_it_type(call.data)

        menu_ex = Menu('Правила орфоэпии:', None, None)
        await menu_ex.send_rule_menu(rules_ides, call.message, 'rules')

    # вызов конкретного правила по ID
    @dp.callback_query_handler(lambda call: call.data in config.rules_ides)
    async def show_rule(call: types.CallbackQuery):

        """
        Кнопка правила (call.data == rule_id)
        :param call:
        """

        dbq = DataBaseQuery()

        rule_id = int(call.data)

        if dbq.has_user_already_ticked_the_rule(call.message.chat.id, rule_id):
            button_text = '🗑'
            callback_data = 'delete' + call.data
        else:
            button_text = '❤'
            callback_data = 'insert' + call.data

        kb = types.InlineKeyboardMarkup()
        buttons = [types.InlineKeyboardButton(text='👈 назад', callback_data=dbq.get_rule_type_by_it_id(rule_id)),
                   types.InlineKeyboardButton(text=button_text, callback_data=callback_data)]

        paths = dbq.get_rule_imges(rule_id)

        if paths is not None:
            photos = []
            for i in paths:
                photos.append(types.InputFile(os.getcwd() + i))

            menu_ex = Menu(dbq.read_rows_from_table('rules', 'id', rule_id)[0]['rule_text'], kb, buttons, photos=photos,
                           parse_mode=types.ParseMode.HTML)
            await menu_ex.send_menu(call.message, kb_included=False)
            await menu_ex.send_photos(call.message)
        else:
            menu_ex = Menu(dbq.read_rows_from_table('rules', 'id', rule_id)[0]['rule_text'], kb, buttons,
                           parse_mode=types.ParseMode.HTML)
            await menu_ex.send_menu(call.message)

    @dp.callback_query_handler(lambda call: call.data in config.rules_to_insert)
    async def insert_into_liked(call: types.CallbackQuery):

        """
        Внести в избранное (кнопка "❤")
        """

        rule_id = int(call.data[6:])
        print(rule_id, call.data)

        dbq = DataBaseQuery()

        if not dbq.has_user_already_ticked_the_rule(call.message.chat.id, rule_id):
            dbq.insert_rule_id_into_liked(call.message.chat.id, rule_id)
            await call.message.reply('Правило добавленно в избранное.\n'
                                     'Теперь вы сможете найти его в там.')
        else:
            await call.message.reply('Правило уже есть в избранном.')

    @dp.callback_query_handler(lambda call: call.data in config.rules_to_delete)
    async def delete_from_liked(call: types.CallbackQuery):

        """
        Удалить из избранного
        """

        rule_id = int(call.data[6:])

        dbq = DataBaseQuery()

        if dbq.has_user_already_ticked_the_rule(call.message.chat.id, rule_id):
            dbq.delete_rule_from_liked(call.message.chat.id, rule_id)
            await call.message.reply('Правило удалено из избранного.')
        else:
            await call.message.reply('Вы не добавляли правило в избранное.')

    await dp.skip_updates()
    await dp.start_polling()


if __name__ == "__main__":

    dbq = DataBaseQuery()
    dbq.renew_all_rules_ides_lists()

    logging.basicConfig(level=logging.INFO)

    bot = aig.Bot(token=config.token)
    dp = aig.Dispatcher(bot)

    asyncio.run(main())

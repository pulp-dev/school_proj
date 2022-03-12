import aiogram as aig
from aiogram import types
from mysql import DataBaseQuery


class Menu:
    def __init__(self, msg_text, kb, kb_buttons, parse_mode=None, photos=None):
        self.msg_text = msg_text
        self.kb = kb
        self.kb_buttons = kb_buttons
        self.parse_mode = parse_mode
        self.photos = photos

    async def send_menu(self, message: types.Message, kb_included=True):

        """
        Отправка меню через message
        :param kb_included: True если надо вставлять клавиатуру
        :param message:
        """
        if kb_included:
            self.kb.add(*self.kb_buttons)
            await message.answer(self.msg_text, reply_markup=self.kb, parse_mode=self.parse_mode)
        else:
            await message.answer(self.msg_text, parse_mode=self.parse_mode)

    async def send_rule_menu(self, rules_ides, message: types.Message, callback_data_for_esc):

        """
        Отправка меню правил (кнопки с названиями правил)
        :param callback_data_for_esc: значение колбэка
        :param rules_ides: ID правил
        :param message: types.Message
        """

        dbq = DataBaseQuery()

        kb = types.InlineKeyboardMarkup(row_width=2)
        buttons = []

        for i in rules_ides:
            buttons.append(types.InlineKeyboardButton(text=dbq.get_rule_name(i), callback_data=str(i)))
        buttons.append(types.InlineKeyboardButton(text='👈 назад', callback_data=callback_data_for_esc))

        self.kb = kb
        self.kb_buttons = buttons

        await self.send_menu(message)

    async def send_exercise_menu(self, message: types.Message):

        """
        Отправка меню тренажера
        """
        self.kb.add(*self.kb_buttons)
        await message.answer(self.msg_text, reply_markup=self.kb)

    async def send_photos(self, message: types.Message):

        """
        Отправка нескольких фото с клавиатурой под последним из них
        :param message: type.Message
        """

        self.kb.add(*self.kb_buttons)

        i = 0
        while i < len(self.photos) - 1:
            await message.answer_photo(self.photos[i])
            i += 1
        await message.answer_photo(self.photos[i], reply_markup=self.kb)

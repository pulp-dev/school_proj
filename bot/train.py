import aiogram as aig
from aiogram import types
from random import randint

from mysql import DataBaseQuery


class Train:
    def __init__(self, callback_data):
        self.callback_data = callback_data
        self.ex_ides = []

    def fit(self):
        dbq = DataBaseQuery()
        callback_data_ex = dbq.get_ex_ides_by_type(self.callback_data)
        for i in callback_data_ex:
            self.ex_ides.append(i['id'])

    async def send_random_ex(self, message: types.Message):
        id = self.ex_ides[randint(0, len(self.ex_ides) - 1)]
        dbq = DataBaseQuery()
        exercise = dbq.get_ex_by_id(id)
        await message.answer(exercise['ex_text'])
        await message.answer('Ответ: ' + '<tg-spoiler>' + exercise['answer'] + '</tg-spoiler>', parse_mode=types.ParseMode.HTML)

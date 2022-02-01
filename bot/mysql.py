import pymysql
import config as cfg


class DataBaseQuery:
    def __init__(self):
        self.con = pymysql.connect(host=cfg.db_host, user=cfg.db_user, password=cfg.db_passwd, database=cfg.db_name,
                                   cursorclass=pymysql.cursors.DictCursor)
        self.cur = self.con.cursor()

    @staticmethod
    def is_result_exists(result):

        """
        Проверка на существование записей в self.cur.fetchall()
        :param: result: результат (self.cur.fetchall())
        :return: boolean в зависимости от результата
        """

        if str(type(result)) == "<class 'tuple'>":
            return False
        return True

    @staticmethod
    def convert_result_into_list(result_dict, key):

        """
        Превращает лист словарей в лист значений словаря (лист значений колонки key)
        :param result_dict: словарь таблицы с одним столбцом
        :param key: имя колонки (ключ в словаре)
        :return: result: лист значений словаря (лист значений колонки key)
        """

        result = []
        for i in result_dict:
            result.append(i[key])
        return result

    def renew_all_rules_ides_lists(self):

        """
        Изменение данных об ID правил в конфиге
        """

        self.cur.execute("select id from rules")
        result = self.cur.fetchall()
        result = self.convert_result_into_list(result, 'id')
        for i in result:
            cfg.rules_ides.append(str(i))
        print(f'cfg.rules_ides renewed: {cfg.rules_ides}')
        for i in range(len(result)):
            cfg.rules_to_delete.append('delete' + str(result[i]))
            cfg.rules_to_insert.append('insert' + str(result[i]))
        print(f'cfg.rules_to_delete renewed: {cfg.rules_to_delete}')
        print(f'cfg.rules_to_insert renewed: {cfg.rules_to_insert}')

    def read_rows_from_table(self, table_name, clm_name, clm_value):

        """
        Прочитать строку/строки таблицы по известному значению какой-либо колонки
        :param table_name: название таблицы
        :param clm_name: название колонки
        :param clm_value: значение колонки clm_name
        :return: лист словарей {clm_name: clm_value, clm_name: clm_value} таблицы table_name,
        имеющих значение clm_value в колонке clm_name
        """

        self.cur.execute(f'select * from {table_name} where {clm_name} = {clm_value}')
        rows = self.cur.fetchall()
        return rows

    def insert_new_user_into_users(self, user_id, first_name, last_name):

        """
        Добавить нового пользователя в таблицу users
        :param user_id: id пользователя в тг
        :param first_name: имя пользователя
        :param last_name: фамилия пользователя
        """

        self.cur.execute(f"select * from users where id = {user_id}")
        answer = self.cur.fetchall()

        if not self.is_result_exists(answer):
            self.cur.execute(f"insert into users values ({user_id}, '{first_name}', '{last_name}')")
            self.con.commit()
            print(f'new user {user_id} added')

    def has_user_already_ticked_the_rule(self, user_id, rule_id):

        """
        Определить, добавил ли пользователь правило в избранное
        :param user_id: ID пользователя
        :param rule_id: ID правила
        :return: True если пользователь уже отметил правило
        """

        self.cur.execute(f"select rule_id from liked where user_id = '{user_id}'")
        result = self.cur.fetchall()
        if self.is_result_exists(result):
            result = self.convert_result_into_list(result, 'rule_id')
            if rule_id in result:
                return True
        return False

    def insert_rule_id_into_liked(self, user_id, rule_id):

        """
        Записать отмеченное пользователем правило в избранное
        :param user_id: ID пользователя
        :param rule_id: ID правила
        """

        self.cur.execute(f"insert into liked values ({user_id}, {rule_id});")
        self.con.commit()

    def delete_rule_from_liked(self, user_id, rule_id):

        """
        Удалить правило из избраноого
        :param user_id: ID пользователя
        :param rule_id: ID правила
        """

        self.cur.execute(f"DELETE FROM liked WHERE user_id = {user_id} AND rule_id = {rule_id};")
        self.con.commit()

    # rules table methods
    def get_liked_rules_list(self, user_id):

        """
        Получить все ID избранных пользователем правил
        :param user_id: id пользователя
        :return: rules: лист ID избранных пользователем правил
                None если пользователем ничего не отмечено
        """

        rows = self.read_rows_from_table('liked', 'user_id', user_id)
        if self.is_result_exists(rows):
            rules = self.convert_result_into_list(rows, 'rule_id')
            return rules
        else:
            return None

    def get_rule_name(self, rule_id):

        """
        Получить название правила по его ID
        :param rule_id: ID правила
        :return: название правила
        """

        self.cur.execute(f'select rule_name from rules where id = {rule_id}')
        rule_name = self.cur.fetchall()[0]['rule_name']
        return rule_name

    def get_rule_imges(self, rule_id):

        """
        Получить пути к фото правила
        :param rule_id: ID правила
        :return: лист путей к фото
        """

        self.cur.execute(f"select img_path from imges where rule_id = {rule_id}")
        result = self.cur.fetchall()
        if self.is_result_exists(result):
            paths = self.convert_result_into_list(result, 'img_path')
            return paths
        else:
            return None

    def get_rule_id_by_it_name(self, rule_name):

        """
        Получить ID правила по его названию
        :param rule_name: название правила
        :return: rule_id
        """

        self.cur.execute(f"SELECT id FROM rules WHERE rule_name = '{rule_name}';")
        rule_id = self.cur.fetchall()[0]['id']
        return rule_id

    def get_rule_id_by_it_type(self, rule_type):

        """
        Получить список ID правил по его типу
        :param rule_type: тип правила
        :return: result: список ID
        """

        self.cur.execute(f"SELECT id FROM rules WHERE rule_type = '{rule_type}';")
        result = self.cur.fetchall()
        result = self.convert_result_into_list(result, 'id')
        print(result)

        return result

    def get_rule_type_by_it_id(self, rule_id):

        """
        Получить тип правила по его ID
        :param rule_id: ID правила
        :return: rule_type: тип правила
        """

        self.cur.execute(f"select rule_type from rules where id = '{rule_id}'")
        result = self.cur.fetchall()

        return result[0]['rule_type']

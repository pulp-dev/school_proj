DELETE FROM imges;
DELETE FROM liked;
DELETE FROM rules;
DELETE FROM exercises;
#орфоэпия
INSERT INTO rules VALUES
(1, 'pronunciation', 'Ударение в сущ.', '
<b>Постановка ударения в именах существительных</b>\n\n
1. <u><b>Слова иноязычного происхождения</b></u>, как правило, в русском языке сохраняют место ударения, какое они имели в языке-источнике. В английском языке ударения чаще всего имеют ударения на первом слоге, а во французском – на последнем.
Поэтому английские заимствования звучат так:\n
<i>гЕнезис, мАркетинг, мЕнеджмент</i>;\n
а французские так:\n
<i>жалюзИ, каучУк, партЕр, пюпИтр, шассИ.</i>\n\n
2. В сложных словах со второй частью <i>-провод</i> при общем значении «приспособление для транспортировки какого-либо вещества или энергии» ударение падает на <u>корень <i>-вод-</i></u>:
<i>бензопровОд, водопровОд, мусоропровОд.</i>
НО: <i>электропрОвод, электропрИвод.</i>\n\n
3. Постановка ударения зависит от значения слова:\n
<i>- лОг</i> (неодушевленные объекты): <i>каталОг, некролОг</i>\n
<i>-Олог</i> (наименование лиц по роду занятий): <i>биОлог, ихтиОлон</i>\n
<i>-мЕтр</i> (единицы измерения): <i>киломЕтр, сантимЕтр</i>\n
<i>-Ометр</i> (измерительные приборы): <i>барОметр, хронОметр\n
<b>Искл.:</b> ампермЕтр, вольтмЕтр</i>\n\n
5. В <u>отглагольных существительных</u> сохраняется место ударения, что в исходном глаголе, от которого они образованы:\n
<i>(веру) исповЕдать – вероисповЕдание\n
обеспЕчить – обеспЕчение.</i>\n\n
6. В некоторых существительных ударение является <u>неподвижным</u> и остаётся на корне во всех падежах:\n
<i>аэропОрт – аэропОрты\n
бАнт – бАнты – с бАнтами\n
бухгАлтер – бухгАлтеров\n
Икс – с Иксом – Иксы – Иксов\n
крАн – крАны\n
лЕктор – лЕкторы – лЕкторов\n
тОрт – с тОртом – тОрты – тОртами\n
шАрф – шАрфа – шАрфы – шАрфов.</i>\n\n
<b><u>Это интересно!</u></b>\n
В существительном <i>бАловень</i> ударение падает на корень. Во всех словах, образованных от этого слова, ударение на -БАЛ- <b>НЕ</b> падает:\n
<i>балОванный, баловАть, балУю, балУясь, избалОванный, набаловАть.</i>
'),
(2, 'pronunciation', 'Ударение в прил.', '
<b>Постановка удариения в именах прилагательных</b>\n\n
1. В прилагательных образованных от сущ. с помощью <i>-н-, -ск-, -овск-, -чат-, -ов-, -ев-</i> ударение остается на том же слоге, что и у исходного сущ.:\n
<i>слИва – слИвовый\n
кУхня – кУхонный\n
щавЕль – щавЕлевый.</i>\n\n
2. Ударный слог полной формы некоторых прилагательных <u>остаётся ударным и в краткой форме</u>:\n
<i>красИвый – красИв – красИва – красИво – красИвы\n
немЫслимый – немЫслим – немЫслима – немЫслимо – немЫслимы.</i>\n\n
3. Чаще всего окончание краткого приланательного <u>женского рода</u> ударное:\n
<i>прАвый – прАв – правА\n
стрОйный – стрОен – стройнА.</i>\n\n
4. Если ударение в краткой форме женского рода падает на <u>окончание</u>, то в сравнительной форме оно будет на суффиксе <i>-Е-</i> или <i>-ЕЕ-</i>:\n
<i>больнА – больнЕе, сильнА – сильнЕе, стройнА – стройнЕе.</i>\n
Если же ударение в женском роде стоит на <u>основе</u>, то в сравнительной степени оно там и сохраняется:\n
<i>красИва – красИвее, печАльна – печАльнее.</i>
'),
(3, 'pronunciation', 'Ударение в глаголах', '
<b>Постановка ударения в глаголах</b>\n\n
1. Ударение в <u>глаголах прошедшего времени</u> обычно падает на тот же слог, что и инфинитиве:\n
<i>гулЯть – гулЯл, гулЯла\n
прЯтать – прЯтал, прЯтала.</i>\n
2. У глаголов ударение во всех формах неподвижно, но в женском роде прошедшего времени переходит на окончание:\n
<i>брАть – брАл, бралА, брАло, брАли, лгАть – лгАл, лгалА, лгАло, лгАли, взялА, взялАсь, влилАсь, ворвалАсь, воспринялА, воссоздалА, гналА, гналАсь, добралА, добралАсь, ждалА, дождалАсь, занялА, заперлА, заперлАсь, звалА, звалАсь, лилА, лилАсь, навралА, надорвалАсь, назвалАсь, налилА, нарвалА, началА, облилАсь, обнялАсь, обогналА, ободралА, отбылА, отдалА, отозвалА, отозвалАсь, перелилА, позвалА, полилА, понялА, прибылА, рвалА, снялА, создалА, сорвалА, убралА.</i>\n
<b>Искл.:</b> У глаголов <i><b>класть, красть, красться, слать, послать, отослать</b></i> ударение в форме <u>женского рода прошедшего времени</u> НЕ падает на окончание, а остаётся на основе:\n
<i>клАла, крАла, крАлась, слАла, послАла, отослАла.</i>\n
Исключение составляют глаголы с <u>ударной приставкой ВЫ-</u>, которая всегда перетягивает ударение:\n
<i>лилА – вЫлила, крАла – вЫкрала.</i>\n\n
4. В глаголах, <u>оканчивающихся на -ИТЬ</u>, при спряжении ударение падает на окончания:<i> -ИШЬ, -ИТ, -ИМ, -ИТЕ, -АТ/-ЯТ</i>:\n
<i>включИть – включИшь, включИт, включИм, включИте, включАт\n
вручИть – вручИшь, вручИт, вручИм, вручИте, вручАт\n
дозвонИться – дозвонИшься, дозвонИтся, дозвонИмся, дозвонИтесь, дозвонЯтся\n
кровоточИть – кровоточИшь, кровоточИт, кровоточИм, кровоточИте, кровоточАт.</i>\n
По той же схеме спрягаются глаголы:\n
<i>звонИть, исключИть, наделИть, накренИться, насорИть, обзвонИть, облегчИть, ободрИть, ободрИться, одолжИть, окружИть, повторИть, перезвонИть, позвонИть, сверлИть, укрепИть, щемИть.</i>\n
<b>Искл.:</b> <i>опОшлить – опОшлят освЕдомиться – освЕдомишься.</i>\n\n
6. В инфинитивах глаголов, <u>образованных от имён прилагательных</u>, ударение чаще всего падает на <i>-ИТЬ</i>:\n
<i>быстрый – убыстрИть, острый – обострИть, лёгкий – облегчИть, бодрый – ободрИть, глубокий – углубИть.</i>\n
<b>НО:</b> глагол <i>озлОбить</i>, образованный от прилагательного <i>злой</i>, этому правилу не подчиняется.\n\n
7. В <u>возвратных глаголах</u> ударение в форме прошедшего времени мужского рода часто переходит на окончание или суффикс:\n
<i>начАться – началсЯ, началАсь, началОсь, началИсь,
принЯться – принялсЯ, принялАсь, принялОсь, принялИсь.</i>
'),
(4, 'pronunciation', 'Ударение в прич. и отглагольных прилагательнаых', '
<b>Постановка ударения в причастиях и отглагольных прилагательных.</b>
1. В <u>действительных причастиях прошедшего времени</u> с суффиксом <i>-ВШ-</i> ударение, как правило, падает на ту же гласную, что стоит в слове перед этим суффиксом:\n
<i>зажИ<b><u>вш</u></b>ий, налИ<b><u>вш</u></b>ий, посмотрЕ<b><u>вш</u></b>ий</i>\n\n
2. В страдательных причастиях прошедшего времени, образованных от глаголов <i><b>изогнуть, загнуть, согнуть</b></i> ударение падает на приставку:\n
<i>изОгнутый, зАгнутый, сОгнутый.</i>\n\n
3. В <u>кратких страдательных причастиях прошедшего времени женского рода</u> ударение падает на окончание:\n
<i>занятА, запертА, заселенА, нажитА, налитА, ободренА, снятА, созданА.</i>\n\n
4. Если ударение в <u>полной форме падает на суффикс <i>-ЁНН-</i></u>, то в краткой форме оно сохраняется только в мужском роде, а в остальных формах переходит на окончание:\n
<i>включЁнный – включЁн, включенА, включенО, включенЫ\n
довезЁнный – довезЁн, довезенА, довезенО, довезенЫ\n
заселЁнный – заселЁн, заселенА, заселенО, заселенЫ.</i>\n\n
5. В <u>полных формах причастий с суффиксом <i>-Т-</i></u>, образованных от глаголов с суффиксами <i>-О-</i> и <i>-НУ-</i> в инфинитиве, ударение падает на один слог вперёд:\n
<i>полОть – пОло<b><u>т</u></b>ый, колОть – кОло<b><u>т</u></b>ый, согнУть – сОгну<b><u>т</u></b>ый, завернУть – завЁрну<b><u>т</u></b>ый.</i>
');

#пунктуация
INSERT INTO rules VALUES
(5, 'punctuation', 'Тире между подл. и сказ.', '
<b>Тире между подлежащим и сказуемым.</b>\n\n
1. Тире требуется между подлежащим и сказуемым в том случае, если и подлежащее, и сказуемое выражены <u>существительным</u>, <u>числительным</u> или <u>инфинитивом</u>. Тире ставится и в том случае, если сказуемое выражено <u>фразеологизмом</u>.\n
2. . Если есть слова <i>«это», «вот», «значит»</i>, то тире ставится <i>(Чтение – вот лучшее учение. Государство – это мы.)</i>; не влияют даже исключения, указанные в таблице ниже.
'),
(6, 'punctuation', 'Тире в неполном предложении', '
<b>Тире в неполном предложении</b>.\n\n
<b><u>Неполные простые предложения</u></b> — это предложения с пропущенным одним или несколькими членами, необходимыми для полноты его строения и смыслового содержания.\n
В неполном предложении пропущенный член легко восстанавливается из предыдущего контекста, например:\n
<i>И как-будто в ту минуту что-то вспомнил генерал. <b>На бойца взглянул душевней</b></i> (пропупущено подлежащее <i>генерал</i>).\n
Неполное предложение является по смыслу несамостоятельным. Его выдергивать из контекста нельзя. Неполные предложения часто используются в сложных предложениях:\n
<i>Золото испытывают огнём, человека — трудом (пословица).</i>\n
В сложном предложении вторая двусоставная часть является неполной, так как в ней пропущено сказуемое <i>«пробуждает»</i>.\n\n
На месте опущенного члена предложения ставится <b>тире</b>:
'),
(7, 'punctuation', 'Запятые при однородных членах', '
<b>Запятые при однородных членах</b>\n\n
<b><u>Однородные члены</u></b> – это члены предложения, которые обычно отвечают на один и тот же вопрос и связаны с одним и тем же словом в предложении.\n\n
<u>Однородные члены</u> обычно выражаются одной и той же частью речи, например:
<i><u>Перегной</u> и <u>мох</u> – имена существительные в именительном падеже.</i>\n\n
Но однородные члены могут быть и морфологически разнородными:\n
<i>Вошёл молодой человек <u>лет двадцати пяти</u>, <u>блещущий здоровьем</u>, <u>со смеющимися щеками, губами и глазами</u>.</i>\n
В данном предложении среди однородных определений первое выражено именным словосочетанием в родительном падеже (<u>лет двадцати пяти</u>), второе – причастным оборотом (<u>блещущий здоровьем</u>), третье – сочетанием трёх существительных в творительном падеже с предлогом "с" с зависимым причастием (<u>со смеющимися щеками, губами и глазами</u>).\n\n
<b>Запятая в предложениях с однородными членами</b>
'),
(8, 'punctuation', 'Двоеточие и тире при однородных членах', '
<b>Двоеточие и тире в предложениях с однородными членами</b>\n\n
В предложениях с однородными членами могут присутствовать <b>обобщающие слова.</b>\n
<b><u>Обобщающие слова</u></b> — слова, объединяющие однородные члены предложения в одну смысловую группу и выражающие их общее значение. Чаще всего обобщающие слова представлены существительным, наречием или местоимением.\n
<b><u>Пример:</u></b> Рядом с театром росли хвойные <u>деревья</u>: <u>сосны</u>, <u>ели</u>, <u>пихты</u>.\n
В этом предложении четыре подлежащих, но не все они являются однородными, так как первое из подлежащих «<u>деревья</u>» объединяет значения последующих, то есть три последних подлежащих «<u>сосны</u>, <u>ели</u>, <u>пихты</u>» уточняют и конкретизируют значение первого. От первого подлежащего «<u>деревья</u>» к последующим «<u>сосны</u>, <u>ели</u>, <u>пихты</u>» можно задать вопрос: <b>"А какие именно?»</b>.\n\n
<b>Двоеточие и/или тире ставится в следующих случаях:</b>
'),
(9, 'punctuation', 'Запятые при однородных опр.', '
<b>Запятые при однородных опр.</b>\n\n
<b><u>Однородные определения</u></b> - это второстепенные члены предложения, которые непосредственно обозначают признаки одного и того же предмета, отвечают на один и тот же вопрос и соединены между собой сочинительной связью и интонацией перечисления.\n
Однородные определения <u><b>всегда</b> выражены одной частью речи</u>!\n\n
<b>Определения - однородные, если:</b>\n\n
▫️ описывают объект с одной стороны: по форме, вкусовым качествам, размеру, текстуре и т. д. (между ними можно поставить союз <b><i>и</i></b>):\n
<i>Я знаю, что ты прячешь <b>сладкий, сочный</b> апельсин.</i>\n\n
▫️ Однородные прилагательные всегда относятся к одному разряду (качественные, притяжательные и относительные):\n
<i>В преддверии праздника все дети были в <b>приподнятом, радостном</b> настроении.</i> В этом предложении прилагательные <b>«приподнятый»</b> и <b>«радостный»</b> являются качественными.\n
<i>Вдруг между деревьев промелькнул <b>пушистый лисий</b> хвост.</i> В этом предложении прилагательное <b>«пушистый»</b> — качественное, а <b>«лисий»</b> — притяжательное, следовательно, определения являются неоднородными.\n\n
<b>ИНОГДА</b> определения, которые характеризуют предмет с разных сторон (неоднородные определения), воспринимаются как синонимичные (близкие по смыслу), так как создают общее настрение, общие признаки:\n
<i>Наступила <b>тихая, теплая, звездная</b> ночь.</i>
');

INSERT INTO imges VALUES
(DEFAULT, '/photos/tire_pdodl_skaz.jpg', 5),
(DEFAULT, '/photos/tire_v_nepolnom.jpg', 6),
(DEFAULT, '/photos/zapyataya_pri_odnorodnih_1.jpg', 7),
(DEFAULT, '/photos/zapyataya_pri_odnorodnih_2.jpg', 7),
(DEFAULT, '/photos/dvoetochie&tire_pri_odnorodnih_1.jpg', 8),
(DEFAULT, '/photos/dvoetochie&tire_pri_odnorodnih_2.jpg', 8),
(DEFAULT, '/photos/propisnaya_bukva.jpg', 10),
(DEFAULT, '/photos/pre-.jpg', 11),
(DEFAULT, '/photos/pri-.jpg', 11),
(DEFAULT, '/photos/N&NNadj.jpeg', 12),
(DEFAULT, '/photos/N&NNing.jpg', 13),
(DEFAULT, '/photos/CHereduyuschiesya-glasnye-v-korne.jpg', 14);

INSERT INTO exercises VALUES 
(1, 'pronunciation_button', 'эропорты', 'аэропОрты'),
(2, 'pronunciation_button', 'банты', 'бАнты'),
(3, 'pronunciation_button', 'бороду', 'бОроду'),
(4, 'pronunciation_button', 'бухгалтеров', 'бухгАлтеров'),
(5, 'pronunciation_button', 'вероисповедание', 'вероисповЕдание'),
(6, 'pronunciation_button', 'газопровод', 'газопровОд'),
(7, 'pronunciation_button', 'гражданство', 'граждАнство'),
(8, 'pronunciation_button', 'дефис', 'дефИс'),
(9, 'pronunciation_button', 'дешевизна', 'дешевИзна'),
(10, 'pronunciation_button', 'диспансер', 'диспансЕр'),
(11, 'pronunciation_button', 'договоренность', 'договорЕнность'),
(12, 'pronunciation_button', 'документ', 'докумЕнт'),
(13, 'pronunciation_button', 'досуг', 'досУг'),
(14, 'pronunciation_button', 'еретик', 'еретИк'),
(15, 'pronunciation_button', 'жалюзи', 'жалюзИ'),
(16, 'pronunciation_button', 'значимость', 'знАчимость'),
(17, 'pronunciation_button', 'иксы', 'Иксы'),
(18, 'pronunciation_button', 'каталог', 'каталОг'),
(19, 'pronunciation_button', 'квартал', 'квартАл'),
(20, 'pronunciation_button', 'километр', 'киломЕтр'),
(21, 'pronunciation_button', 'конусов', 'кОнусов'),
(23, 'pronunciation_button', 'краны', 'крАны'),
(24, 'pronunciation_button', 'кремень, кремня', 'кремЕнь, кремнЯ'),
(25, 'pronunciation_button', 'лекторы, лекторов', 'лЕкторы, лЕкторов'),
(26, 'pronunciation_button', 'лыжня', 'лыжнЯ'),
(27, 'pronunciation_button', 'местностей, почестей', 'мЕстностей, пОчестей'),
(28, 'pronunciation_button', 'челюстей', 'чЕлюстей'),
(29, 'punctuation_button', 'Хотя предъявлять договор он не обязан (1) бывают ситуации (2) когда это лучше сделать (3) чтобы не портить отношения с людьми (4) расположение (5) которых (6) впоследствии ещё может пригодиться.', '1234'),
(30, 'punctuation_button', 'Отцу казалось (1) что так будет легче сосредоточиться и подготовить себя к тому разговору (2) при одной мысли (3) о котором (4) тягостно холодело внутри (5) потому что он опасался реакции сына.', '125'),
(31, 'punctuation_button', 'Неподалёку находилось поместье (1) владельцы (2) которого (3) мало что заслужили, кроме худой о себе славы по округе (4) где их не любили (5) несмотря на то что (6) никто уже даже не мог сказать (7) из-за чего (8) именно появилась такая ненависть.', '1457'),
(32, 'punctuation_button', 'Грачику чудилось (1) что и торжественную песнь оргáна (2) под звуки (3) которого (4) совершалось шествие (5) он воспроизвёл бы теперь без ошибки.', '125'),
(33, 'punctuation_button', 'Так начался изнурительный кошмар этих двух недель (1) в продолжение (2) которых (3) он пытался заставить себя решиться на проверку (4) что ему давалось с огромным трудом (5) и одновременно уговорить докторов (6) что здоров и ни в какой проверке не нуждается.', '1456'),
(34, 'punctuation_button', 'Прибор (1) который (2) учёные назвали «браслетом дружбы» (3) сможет достаточно ярко выразить эмоции и чувства вашего партнёра (4) под действием (5) которых (6) браслет у вас на запястье будет нагреваться, изгибаться и вибрировать (7) так что обладатель такого устройства с помощью специальных датчиков почувствует даже самое лёгкое прикосновение', '1347'),
(35, 'punctuation_button', 'Как только (1) Кудиныч увидел медведя (2) он быстро пробежал лес и выскочил на опушку (3) в нескольких шагах (4) от которой (5) расположена была деревня.', '2'),
(36, 'punctuation_button', 'По радио назидательным тоном говорил о чём-то молодой господин (1) при звуках трескучего голоса (2) которого (3) Артём (4) чтобы посмеяться всласть (5) даже остановил работу.', '145'),
(37, 'punctuation_button', 'Сколько лет ни проходило бы между нашими встречами с Володькой (1) он оставался всё тем же улыбчивым толстячком (2) оптимизма и добродушия (3) у которого (4) с годами (5) несмотря на то что на его долю выпало немало трудностей (6) становилось только больше.', '1256'),
(38, 'punctuation_button', 'Журналист начал рассказывать историю о том (1) как к известному экстрасенсу пришла немолодая женщина (2) сын (3) которой (4) пропал несколько лет назад (5) когда был ещё ребёнком.', '125'),
(39, 'punctuation_button', 'Главная трудность учёного-первооткрывателя заключается как раз в том (1) что ему нужно увидеть вещь в новом качестве (2) чтобы в буквальном смысле слова «открыть» свойство (3) наличие (4) которого (5) не являлось до сих пор очевидным.', '123'),
(40, 'punctuation_button', 'Трудно было понять (1) как это могут кончиться горы (2) цепь (3) которых (4) настолько длинна (5) что её хватило бы на целую неделю пути.', '125'),
(41, 'spelling_button', 'Укажите варианты ответов, в которых во всех словах одного ряда пропущена одна и та же буква.\n
пред..нфарктный, без..гольный, меж..нтернатский\n
пр..уныл, пр..вратные (представления), пр..домовой (участок)\n
п..едестал, всеоб..емлющий, пред..юбилейный\n
и..брал, бе..вкусный, ра..жать\n
р..ссыпал, поз..прошлый, нез..менимый', '45'),
(42, 'spelling_button', 'Укажите варианты ответов, в которых во всех словах одного ряда пропущена одна и та же буква.\n
пр..возмочь, пр..дания (старины), пр..рываемый (собеседником)\n
не..говорчивый, бе..цельный, в..дремнуть\n
соб..ётся, супер..яркий, в..ётся\n
о..бойный (молоток), на..строчный, по..черкни\n
от..скать, под..тожить, с..змала\n
Запишите номера выбранных вариантов.', '15'),
(43, 'spelling_button', 'Укажите варианты ответов, в которых во всех словах одного ряда пропущена одна и та же буква.\n
сверх..дея, под..скать, от..скать\n
пр..домовая (территория), пр..щедрый, пр..ступить (к делу)\n
без..языкий, в..явь, из..ян\n
бе..полезный, и..царапать, и..синя-чёрный\n
пр..вратные, пр..граждать, пр..емник', '345'),
(44, 'spelling_button', 'Укажите варианты ответов, в которых во всех словах одного ряда пропущена одна и та же буква.\n
без..нициативный, без..сходность, с..змала\n
предн..значение, под..рваться, пр..браться (в комнату)\n
пр..дать (форму), беспр..станный, непр..ложная (истина)\n
ни..провергнуть, не..доровится, и..подлобья\n
кинос..ёмка, раз..ярённый, меж..ярусный', '15');

INSERT INTO rules VALUES 
(10, 'spelling', 'Употребление прописной буквы', 'Прописная буква используется в следующих случаях:'),
(11, 'spelling', 'Правописание приставок', '
<b>Приставки, оканчивающиеся на -З и -С</b>\n\n
Правописание приставки зависит от того, какой звук следует за приставкой:\n
<b>C</b> -> <u>после приставки стоит глухой согласный: <i>ра<b>сп</b>исание, во<b>сс</b>оздать</i></u>\n
<b>З</b> -> <u>после приставки стоит гласный или звонкий согласный: <i>ра<b>зо</b>рить, во<b>зр</b>одить</i></u>\n\n
<b>Приставки ПРЕ- и ПРИ-</b>\n\n
<u>Правописание приставок <b>пре-</b> и <b>при-</b></u> зависит от оттенка лексического значения.
'),
(12, 'spelling', '-НН- и -Н- в прил', 'Правописание одной и двойной н'),
(13, 'spelling', '-НН- и -Н- в прич', 'Правописание одной и двойной н'),
(14, 'spelling', 'Чередующиеся гласные', '<b><u>Чередующиеся гласные в корне</u></b> — это заме­на глас­ных «а» и «о», «и» и «е» в корне род­ствен­ных слов или  в раз­ных грам­ма­ти­че­ских фор­мах одно­го и того же слова.\n\n
Таблица с примерами и исключениями поможет усвоить правило написания корней слов с  <b><u>чередующимися гласными</u></b> в русском языке.
')
























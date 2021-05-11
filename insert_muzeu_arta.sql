insert into locatii values(100, 'Romania', null, 'Bucuresti', 'Calea Victoriei', 88);
insert into locatii values(101, 'Romania', 'Constanta', 'Constanta', 'Bulevardul Mamaia', 47);
insert into locatii values(102, 'Romania', null, 'Bucuresti', 'Pavel D. Kiseleff', 130);
insert into locatii values(103, 'Romania', null, 'Bucuresti', 'Bulevardul Ion C. Bratianu', 15);
insert into locatii values(104, 'Romania', 'Timis', 'Timisoara', 'Martin Luther', 4);
insert into locatii values(105, 'Romania', 'Cluj', 'Cluj-Napoca', 'Piata Unirii', 30);

commit;

insert into cladiri values(100, 'Nicolae Grigorescu', 1, to_date('1960','yyyy'), 20, 100);
insert into cladiri values(101, 'Rembant', 1, to_date('1990','yyyy'), 15, 100);
insert into cladiri values(102, 'Amfiteatrul Traian Grozavescu', 3, to_date('1950','yyyy'), 3, 102);
insert into cladiri values(103, 'Constantin Brancusi', 2, to_date('1983','yyyy'), 40, 105);
insert into cladiri values(104, 'Bedivan Petre', 1, to_date('2019','yyyy'), 12, 101);
insert into cladiri values(105, 'Nicolae Tonitza', 1, to_date('1971','yyyy'), 20, 103);
insert into cladiri values(106, 'Casa Muhle', 0, to_date('1876','yyyy'), 6, 104);
insert into cladiri values(107, 'Palatul Kretzulescu', 1, to_date('1965','yyyy'), 13, 103);

commit;

insert into evenimente values(100, 'Concert de vioara si pian', 'Muzical', 'Muzeul de Arta si Conservatorul din Bucuresti', to_date('02-02-2020', 'dd-mm-yyyy'), '19:00', '21:30', 102);
insert into evenimente values(101, 'Expozitia Europeana de arta', 'Expozitie', 'Muzeul de Arta din Bucuresti', to_date('15-03-2020', 'dd-mm-yyyy'), null, null, 100);
insert into evenimente values(102, 'Straini in noapte', 'Teatru', 'Muzeul de Arta si Teatrul National Bucuresti', to_date('20-01-2020', 'dd-mm-yyyy'), '20:00', '22:30', 102);

commit;

insert into expozitii values(100, 10, 'Arta europeana', 'Renascentist', 101);
insert into expozitii values(101, 9, 'Sculptura', null, 103);
insert into expozitii values(102, 11, 'Arta Romaneasca', 'Romantism', 100);

commit;

insert into donatori values(100, 'Constantin', 'Alexandru', 'Intrare gratuita la expozitiile muzeului');
insert into donatori values(101, 'Popescu', 'Marian', 'Intrare gratuita la evenimentele muzicale');
insert into donatori values(102, 'Serban', 'Ioana', 'Intrare gratuita la toate evenimentele muzeului');

commit;

insert into opera_de_arta values(100, 'Mona Lisa', 'Leonardo da Vinci', 'pictura', 'Reprezinta o femeie cu expresie ganditoare si un suras abia schitat', 77, 53, 'ulei pe lemn', '1503 - 1507', 100, 102);
insert into opera_de_arta values(101, 'Cina cea de taina', 'Leonardo da Vinci', 'pictura', 'Reprezinta scena biblica a Ultimei Cine a lui Iisus Hristos', 460, 880, 'ulei, tempera pe ipsos', '1495 - 1498', 100, null);
insert into opera_de_arta values(102, 'Salvator Mundi', 'Leonardo da Vinci', 'pictura', 'Pictura il prezinta pe Hristos, in imbracaminte renascentista, oferind o binecuvantare cu mana dreapta ridicata si cu degetele incrucisate, in timp ce in mana stanga tine o sfera de cristal', 65.6, 45.4, 'ulei pe lemn de nuc', 'c. 1500', 100, null);
insert into opera_de_arta values(103, 'Madonna Sixtina', 'Rafael', 'pictura', 'Panza a fost una dintre ultimele Madonnas pictate de Raphael.', 265, 196, 'ulei pe panza', '1512', 100, 101);
insert into opera_de_arta values(104, 'Venus din Milo', 'Alexandros de Antioch', 'sculptura', 'O sculptur? din Grecia Antic?, ce o reprezint? pe zei?a greac? a iubirii ?i frumuse?ii, Afrodita (Venus la romani).', 203, null, 'marmura', '1512', 101, null);
insert into opera_de_arta values(105, 'Discobolul', 'Miron', 'sculptura', 'Discobolul de Myron este o sculptur? greac? finalizat? la începutul perioadei clasice, reprezentând un tân?r atlet grec care arunc? discul', 168, null, 'bronz', '460 - 450 i. Hr', 101, 102);

commit;

insert into angajati values(100, 'Popescu', 'Ion', 'Management', null, 7000, 'pion', '0743588991', null);
insert into angajati values(200, 'Ionescu', 'Vasile', 'Curator', 100, 5000, 'ivasile', '0753566901', 101);
insert into angajati values(201, 'Anton', 'Alexandru', 'Curatenie', 100, 3000, 'aalexandru', '0756874298', 105);
insert into angajati values(202, 'Constantin', 'GheorgHe', 'Paza', 100, 3000, 'cgheorghe', '0771734754', 106);
insert into angajati values(300, 'Alexandrescu', 'Andrei', 'Curator', 200, 4000, 'aandrei', '0788965321', 101);
insert into angajati values(301, 'Bului', 'Leonard', 'Curator', 200, 3900, 'bleonard', '0733283382', 100);
insert into angajati values(302, 'Mirica', 'Serban', 'Curator', 200, 4100, 'mserban', '0722453391', 103);
insert into angajati values(303, 'Tanase', 'Loredana', 'Curator', 200, 3500, 'cloredana', '0755652189', 104);
insert into angajati values(304, 'Ababei', 'Valentin', 'Curator', 200, 4250, 'avalentin', '0774589632', 105);
insert into angajati values(305, 'Roman', 'Vasile', 'Paza', 202, 1800, 'rvasile', '0754772138', 100);
insert into angajati values(306, 'Ion', 'Alexandru', 'Paza', 202, 1800, 'ialexandru', '0754892008', 101);
insert into angajati values(307, 'Barbu', 'Paul', 'Paza', 202, 1800, 'bpaul', '0774586008', 102);
insert into angajati values(308, 'Apetrei', 'Ioan', 'Paza', 202, 1800, 'aioan', '0777889008', 103);
insert into angajati values(310, 'Oprea', 'Mircea', 'Paza', 202, 1800, 'omircea', '0766342008', 104);
insert into angajati values(309, 'Mihai', 'Razvan', 'Paza', 202, 1800, 'mrazvan', '0733619775', 105);
insert into angajati values(311, 'Faur', 'Cosmin', 'Paza', 202, 1800, 'fcosmin', '0774893214', 107);
insert into angajati values(312, 'Stanculescu', 'Alexandra', 'Curatenie', 201, 2400, 'salexandra', '0745932147', 100);
insert into angajati values(313, 'Iovan', 'Andreea', 'Curatenie', 201, 2400, 'iandreea', '0789741147', 101);
insert into angajati values(314, 'Calin', 'Adrian', 'Curatenie', 201, 2400, 'cadrian', '0789778632', 102);
insert into angajati values(315, 'Bogza', 'Mihaela', 'Curatenie', 201, 2400, 'bmihaela', '0786541893', 103);
insert into angajati values(316, 'Vasilescu', 'Ioana', 'Curatenie', 201, 2400, 'vioana', '0766235849', 104);
insert into angajati values(317, 'Neamtu', 'Anamaria', 'Curatenie', 201, 2400, 'nanamaria', '0789996331', 106);
insert into angajati values(318, 'Hobasa', 'Laurentiu', 'Curatenie', 201, 2400, 'hlaurentiu', '0723457866', 107);

commit;





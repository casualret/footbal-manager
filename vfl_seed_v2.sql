-- seed v2
BEGIN;
INSERT INTO seasons(year, name) VALUES (2025, 'Лето 2025') ON CONFLICT DO NOTHING;
INSERT INTO leagues(name, level) VALUES ('ПЛ', 1) ON CONFLICT (level) DO NOTHING;
INSERT INTO rounds(season_id, league_id, round_number)
SELECT s.id, l.id, 3 FROM seasons s, leagues l
WHERE s.year=2025 AND s.name='Лето 2025' AND l.level=1
ON CONFLICT (season_id, league_id, round_number) DO NOTHING;
INSERT INTO leagues(name, level) VALUES ('1 лига', 2) ON CONFLICT (level) DO NOTHING;
INSERT INTO rounds(season_id, league_id, round_number)
SELECT s.id, l.id, 3 FROM seasons s, leagues l
WHERE s.year=2025 AND s.name='Лето 2025' AND l.level=2
ON CONFLICT (season_id, league_id, round_number) DO NOTHING;
INSERT INTO leagues(name, level) VALUES ('2 лига', 3) ON CONFLICT (level) DO NOTHING;
INSERT INTO rounds(season_id, league_id, round_number)
SELECT s.id, l.id, 3 FROM seasons s, leagues l
WHERE s.year=2025 AND s.name='Лето 2025' AND l.level=3
ON CONFLICT (season_id, league_id, round_number) DO NOTHING;
INSERT INTO leagues(name, level) VALUES ('3 лига', 4) ON CONFLICT (level) DO NOTHING;
INSERT INTO rounds(season_id, league_id, round_number)
SELECT s.id, l.id, 3 FROM seasons s, leagues l
WHERE s.year=2025 AND s.name='Лето 2025' AND l.level=4
ON CONFLICT (season_id, league_id, round_number) DO NOTHING;
INSERT INTO leagues(name, level) VALUES ('4 лига', 5) ON CONFLICT (level) DO NOTHING;
INSERT INTO rounds(season_id, league_id, round_number)
SELECT s.id, l.id, 3 FROM seasons s, leagues l
WHERE s.year=2025 AND s.name='Лето 2025' AND l.level=5
ON CONFLICT (season_id, league_id, round_number) DO NOTHING;
INSERT INTO teams(name) VALUES ('ХЕТАФЕ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ХЕТАФЕ' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('КОРОНА ЭКСТРА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='КОРОНА ЭКСТРА' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('АМПЕР') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='АМПЕР' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('МОЛНИЯ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='МОЛНИЯ' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('КОТ@ПЁС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='КОТ@ПЁС' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('SALUT GZHEL') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='SALUT GZHEL' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ОЛИМПИК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ОЛИМПИК' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('RAYS UTD') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='RAYS UTD' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('EGOIST') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='EGOIST' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('СПК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='СПК' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('VEGAZ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='VEGAZ' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('РАФС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='РАФС' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('RAMCITY') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='RAMCITY' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('СССР') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='СССР' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('НОВОЕ СЕЛО') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='НОВОЕ СЕЛО' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЭНЕРГИЯ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЭНЕРГИЯ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ФАБУС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ФАБУС' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ELASTIC') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ELASTIC' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ВОЗРОЖДЕНИЕ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ВОЗРОЖДЕНИЕ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ДЭМА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ДЭМА' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('АМПЕР МЕДИА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='АМПЕР МЕДИА' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('PALERMO') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='PALERMO' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ТЕМП INS Автоподбор') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ТЕМП INS Автоподбор' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('КОРОНА БРОННИЦЫ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='КОРОНА БРОННИЦЫ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('INTERNATIONAL') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='INTERNATIONAL' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЧЕТЫРЕ ЛАПЫ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЧЕТЫРЕ ЛАПЫ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЭМЗ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЭМЗ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ИСТИКЛОЛ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ИСТИКЛОЛ' AND l.level=3 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ПРОМОТОРС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ПРОМОТОРС' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('HELLES') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='HELLES' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('БАНКА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='БАНКА' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ТОКК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ТОКК' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЛЕОН') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЛЕОН' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ПОИСК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ПОИСК' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЛИОН 04') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЛИОН 04' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ШТУРМ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ШТУРМ' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ИЛЬИНКА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ИЛЬИНКА' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('АТЛЕТИК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='АТЛЕТИК' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ФТП') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ФТП' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('CSAK') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='CSAK' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЭДЕЛЬВЕЙС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЭДЕЛЬВЕЙС' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('VENERA') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='VENERA' AND l.level=4 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('РЕАЛ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='РЕАЛ' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ЛИОН') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ЛИОН' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ДОМОК БРОННИЦЫ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ДОМОК БРОННИЦЫ' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('CHELSEA') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='CHELSEA' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('33 КМ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='33 КМ' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('БРОК') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='БРОК' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('СПАРТАК БЫКОВО') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='СПАРТАК БЫКОВО' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('BORODACH') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='BORODACH' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ВОСХОД') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ВОСХОД' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('STREET') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='STREET' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('АЛЬЯНС') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='АЛЬЯНС' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('ВЕРТИКАЛЬ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ВЕРТИКАЛЬ' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('СОЛНЕЧНАЯ') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='СОЛНЕЧНАЯ' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO teams(name) VALUES ('BORUSSIA') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='BORUSSIA' AND l.level=5 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('66551f96a902245f3bdea64d94db1897', 'Варюшин Игорь Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='66551f96a902245f3bdea64d94db1897' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e80c1ae23143facef7fac8109b2075bf', 'Воробьёв Даниил Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e80c1ae23143facef7fac8109b2075bf' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4007fd9c509bade2183c9565a729c6b0', 'Епифанов Артем Илнурович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4007fd9c509bade2183c9565a729c6b0' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ac08073085ba8def1490850e85fe0463', 'Житников Алексей Анатольевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ac08073085ba8def1490850e85fe0463' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2e445494f0846cc552e1ec6c84b206f0', 'Ионин Олег Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2e445494f0846cc552e1ec6c84b206f0' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f5e2e7834e5e1e0ed1917f3663e0f269', 'Колесников Даниил Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f5e2e7834e5e1e0ed1917f3663e0f269' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1185f44013f7771de2db766fdee70a11', 'Корж Константин Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1185f44013f7771de2db766fdee70a11' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bdd7f2dc9a3ff65ca4d051b93ed02d3e', 'Коробов Никита Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bdd7f2dc9a3ff65ca4d051b93ed02d3e' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e65b01f1b40135046ca1a973276783e0', 'Костин Андрей Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e65b01f1b40135046ca1a973276783e0' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5a52c9ef7ee2095c7759f203a69cd33c', 'Котунов Александр Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5a52c9ef7ee2095c7759f203a69cd33c' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e7c40b06b6e916ae44b12035bcf504ec', 'Марков Владимир Вадимович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e7c40b06b6e916ae44b12035bcf504ec' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ee37265fe3c6dbdff171d88ea7a6bac8', 'Моисеев Сергей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ee37265fe3c6dbdff171d88ea7a6bac8' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f02e41926265ecdf4e616c01847b0384', 'Никаноров Николай Эдуардович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f02e41926265ecdf4e616c01847b0384' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('817776f654d773b978e4e44b003621f5', 'Новичков Артем Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='817776f654d773b978e4e44b003621f5' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('754a4d97aa3daea9830f0a45751b0980', 'Новосёлов Игорь Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='754a4d97aa3daea9830f0a45751b0980' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6796012ac11c6d1ef3026288499762c0', 'Потапов Андрей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6796012ac11c6d1ef3026288499762c0' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1a368fe2351d5ab2d1a86f3a5d93a8a6', 'Сауткин Андрей Иванович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1a368fe2351d5ab2d1a86f3a5d93a8a6' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ec8a9f6b9fa54c710794dac502bb303c', 'Сичкар Игорь Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ec8a9f6b9fa54c710794dac502bb303c' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('527a47807503ddb730c275a5aaead569', 'Струков Владислав Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='527a47807503ddb730c275a5aaead569' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('14890684a5693321aec461a80c5571a6', 'Хотулёв Алексей Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='14890684a5693321aec461a80c5571a6' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8cd1e117552a5d393227f8971faece94', 'Шанин Ян Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8cd1e117552a5d393227f8971faece94' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bea8e226843f7adddc0e9b90a988c691', 'Шульга Егор Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bea8e226843f7adddc0e9b90a988c691' AND t.name='ХЕТАФЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('528782ffd5051148beae0a93ed1a3b17', 'Борисов Павел Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='528782ffd5051148beae0a93ed1a3b17' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bbf04b52d7a6f28402fff349992f9123', 'Будковский Александр Олегович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bbf04b52d7a6f28402fff349992f9123' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2291c05d63a76212b437827abcb5f888', 'Галиц Максим', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2291c05d63a76212b437827abcb5f888' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3764936261237191084c164486a7caa1', 'Кожемякин Дмитрий Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3764936261237191084c164486a7caa1' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3db9374475afbce39e5dd2772ae36e3f', 'Костерев Валерий Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3db9374475afbce39e5dd2772ae36e3f' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5f138dd15557b3a62419a38bd8d75b17', 'Кулагин Антон Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5f138dd15557b3a62419a38bd8d75b17' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b406a7f9f778d95f932b69750c1267d5', 'Курапов Родион Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b406a7f9f778d95f932b69750c1267d5' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('50b8aaf2c6c4fd25072752d4f1005eac', 'Лаптев Иван Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='50b8aaf2c6c4fd25072752d4f1005eac' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('def1d1ebb70d09b73a3f758496992e88', 'Латышев Иван Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='def1d1ebb70d09b73a3f758496992e88' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('79a1972a18cc3efc4ed99c0e95c8ad8e', 'Медведев Алексей Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='79a1972a18cc3efc4ed99c0e95c8ad8e' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('db3ac63cb52e94ea64c0e01590b74fba', 'Мозжухин Юрий Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='db3ac63cb52e94ea64c0e01590b74fba' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ec0629497be4d51da501f8c518731470', 'Настусенко Семен Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ec0629497be4d51da501f8c518731470' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('86748d6d5e17b9e92a950ddf492be72b', 'Никитинский Дмитрий Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='86748d6d5e17b9e92a950ddf492be72b' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf0fdd39aa21483bfd26ca719eb68b10', 'Никитянов Владислав Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf0fdd39aa21483bfd26ca719eb68b10' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a5bad28215e8af9f1d9f57fa204de568', 'Новичков Антон Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a5bad28215e8af9f1d9f57fa204de568' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8d65b63b78c1e35175fd29bd71e9310a', 'Новичков Иван Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8d65b63b78c1e35175fd29bd71e9310a' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4bf61d0a2f4ae74dd537e96e3ce2c616', 'Орлов Сергей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4bf61d0a2f4ae74dd537e96e3ce2c616' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e6acf2d5916bb81b190265b1253797e7', 'Семячкин Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e6acf2d5916bb81b190265b1253797e7' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2bb7ef71f4ab0daa6cceb5ebf65b326', 'Столбовой Иван Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2bb7ef71f4ab0daa6cceb5ebf65b326' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('45d0a2f1a29d711932d408473ba4e61d', 'Тринитацкий Алексей Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='45d0a2f1a29d711932d408473ba4e61d' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dcd8a3fa086cd36f7b6e6a983f85f1f1', 'Тулушев Георгий Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dcd8a3fa086cd36f7b6e6a983f85f1f1' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6c72bad2968d7820331426ece9996d24', 'Чесноков Александр Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6c72bad2968d7820331426ece9996d24' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e302b4e045c22d43b717fb545fc4313b', 'Широков Георгий Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e302b4e045c22d43b717fb545fc4313b' AND t.name='КОРОНА ЭКСТРА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e44525d275f3120f491771262ba4a1bc', 'Боровков Артем Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e44525d275f3120f491771262ba4a1bc' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('76a55c4f6e7505ab2094443e7f830568', 'Денисов Людвиг Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='76a55c4f6e7505ab2094443e7f830568' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf0c9a22de6af7331b79741534444752', 'Ежунов Сергей Денисович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf0c9a22de6af7331b79741534444752' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ef5a869c692c902e91b1e03904ced2e9', 'Золотущенко Максим Валентинович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ef5a869c692c902e91b1e03904ced2e9' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2a50a0304e93313e23ffe5b316726119', 'Ипатов Матвей Ильич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2a50a0304e93313e23ffe5b316726119' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9189b295608f0275f239c8f55e6cd768', 'Керебко Илья Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9189b295608f0275f239c8f55e6cd768' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ded955ce3380360795e66522047b7a1f', 'Кирьянов Павел Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ded955ce3380360795e66522047b7a1f' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('558f6e6ceecea09fc185e7a2718afa50', 'Куликович Тимур Романович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='558f6e6ceecea09fc185e7a2718afa50' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b350a87d88bcc1dd1747bf584140c477', 'Панюшкин Павел Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b350a87d88bcc1dd1747bf584140c477' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9bdd9ca4fd6cf86912593221cf6ea754', 'Поздняков Дмитрий Гарифович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9bdd9ca4fd6cf86912593221cf6ea754' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d08354c0e5acebd697b10604230dc7f9', 'Порохов Илья Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d08354c0e5acebd697b10604230dc7f9' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1bf0d8b1e8244505f504c24d2b974dc8', 'Романов Кирилл Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1bf0d8b1e8244505f504c24d2b974dc8' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('702fa1219f5c1612ac3e7b3740341f96', 'Трещалов Тимофей Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='702fa1219f5c1612ac3e7b3740341f96' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b041a588cb31773fb3352f3db25edf47', 'Ульянов Михаил Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b041a588cb31773fb3352f3db25edf47' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fa911ab87733714b7caa591f532d5d32', 'Харитонов Денис Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fa911ab87733714b7caa591f532d5d32' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ab8f68457c1d0ad55849f625599a1813', 'Цулая Спиридон Темуриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ab8f68457c1d0ad55849f625599a1813' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6f17110d3dbc8140b7e56b7789d31961', 'Чернокальский Андрей Денисович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6f17110d3dbc8140b7e56b7789d31961' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b9a0a1966d99fa8bba2cb4054079bf9d', 'Ямщиков Даниил Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b9a0a1966d99fa8bba2cb4054079bf9d' AND t.name='АМПЕР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2807c585422bdce9a71489dfe6446d91', 'Буркин Сергей Вячеславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2807c585422bdce9a71489dfe6446d91' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dff5293c7ecc90095eadb2e6458741b1', 'Ерохин Иван Геннадьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dff5293c7ecc90095eadb2e6458741b1' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bb5ebaf391f819039827a6ffc3065f1d', 'Клинин Андрей Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bb5ebaf391f819039827a6ffc3065f1d' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6a511f8b1c03744c6785f5b5a3ac4448', 'Костенко Сергей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6a511f8b1c03744c6785f5b5a3ac4448' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('09ab3dae72a466e97e730c4bad0b43b7', 'Коханов Станислав Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='09ab3dae72a466e97e730c4bad0b43b7' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5c60dab69e0c45082b74f6e87e8f1057', 'Кузьмин Данила Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5c60dab69e0c45082b74f6e87e8f1057' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('66e3ac27281567e7118d3f51cfcf33b8', 'Куксов Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='66e3ac27281567e7118d3f51cfcf33b8' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6772d5f187736da9e9245674743d2920', 'Куксов Владимир Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6772d5f187736da9e9245674743d2920' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('532b6c7b30be78cb50881afb9e3a1308', 'Магомедов Камиль Гаджиевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='532b6c7b30be78cb50881afb9e3a1308' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a85f42f8bc78bf9cd4ff923195e1176e', 'Максимов Александр Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a85f42f8bc78bf9cd4ff923195e1176e' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2e30722e53e89cf1a1f0528517657ab3', 'Маслов Георгий Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2e30722e53e89cf1a1f0528517657ab3' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1ccab70ccee6f5039fbfe5a7c142d62b', 'Мирзакобилов Элбек Нуриддинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1ccab70ccee6f5039fbfe5a7c142d62b' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0a103f79dec82b338145d7808b9ade30', 'Моргун Максим Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0a103f79dec82b338145d7808b9ade30' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6cffde43ac27d6b97110546278a195c5', 'Мухин Максим Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6cffde43ac27d6b97110546278a195c5' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e934d5ef0d4bef0ab231cf2d9347b59f', 'Нефёдов Вячеслав Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e934d5ef0d4bef0ab231cf2d9347b59f' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('feeda59d860e4ec885ff79cb1ca63ca8', 'Романов Роман Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='feeda59d860e4ec885ff79cb1ca63ca8' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1f2afaddc6b95e120ffeb31f7bb592e6', 'Сухарев Данила Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1f2afaddc6b95e120ffeb31f7bb592e6' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f851c4be870457012acd070de593053e', 'Федин Николай Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f851c4be870457012acd070de593053e' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c1807bde1fccc71b71fc96ad222a5b14', 'Хиев Иван Романович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c1807bde1fccc71b71fc96ad222a5b14' AND t.name='МОЛНИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7b25759cd02a91229c250156009f69cb', 'Бельчиков Иван Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7b25759cd02a91229c250156009f69cb' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0b5f198afd3c9e64bdd83ef1c483ec78', 'Богославский Михаил Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0b5f198afd3c9e64bdd83ef1c483ec78' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('75f9b51a9cf6a843b50b23c78eded4eb', 'Востриков Илья Григорьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='75f9b51a9cf6a843b50b23c78eded4eb' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('49e98f9d177f9ce58dd88eb0602bf344', 'Григорьев Дмитрий Олегович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='49e98f9d177f9ce58dd88eb0602bf344' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('421ba403783338efe281b0eb4570f319', 'Гурбанов Новруз Сахибович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='421ba403783338efe281b0eb4570f319' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b8144a5ff961e892c845acf031c555ba', 'Джичоная Давид Давидович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b8144a5ff961e892c845acf031c555ba' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c878e05e00f43447a730f0e54a46427b', 'Захаров Роман Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c878e05e00f43447a730f0e54a46427b' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0cd58094223032894e5783dcb59931b8', 'Игнатьев Алексей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0cd58094223032894e5783dcb59931b8' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9484c53fad34c80724fad7c31a5efca2', 'Казахян Артур Арутюнович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9484c53fad34c80724fad7c31a5efca2' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d57f836e9413be10d0a2071286ba490', 'Корчагин Дмитрий Денисович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d57f836e9413be10d0a2071286ba490' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c7b3f5eb2e164f21c99b5c0eb26f52c', 'Макаров Никита Иванович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c7b3f5eb2e164f21c99b5c0eb26f52c' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4957f850f1f4c8002c307ab6ed59577d', 'Малков Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4957f850f1f4c8002c307ab6ed59577d' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6ef2d353333ada7cb1c6fecfa1b06006', 'Миронов Леонид Витальевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6ef2d353333ada7cb1c6fecfa1b06006' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('02e8fa1d415f6c2127bd378295ef8a77', 'Митрофанов Виталий Иванович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='02e8fa1d415f6c2127bd378295ef8a77' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea04a366e83320434a0db51a2589ec62', 'Мкртчян Андраник Лазрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea04a366e83320434a0db51a2589ec62' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('296e1cbc61e3aa59f2174b86d37b664b', 'Модников Николай Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='296e1cbc61e3aa59f2174b86d37b664b' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4ea930f65d5a9b633c389c0299d7c168', 'Пахомов Кирилл Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4ea930f65d5a9b633c389c0299d7c168' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ccf692b878f3e8abd9687e339ca7f143', 'Семенов Леонардо Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ccf692b878f3e8abd9687e339ca7f143' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea12db726c4b44f93b89f7e48f581054', 'Ступишин Дмитрий Владиславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea12db726c4b44f93b89f7e48f581054' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c5af0228b3157f7244789bed4a9e4edb', 'Сусликов Михаил Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c5af0228b3157f7244789bed4a9e4edb' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c0d2d5cc90cbbbaa137a04623a061c6', 'Фролов Алексей Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c0d2d5cc90cbbbaa137a04623a061c6' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8360db5a0a23a72176758048299176b3', 'Царев Арсений Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8360db5a0a23a72176758048299176b3' AND t.name='КОТ@ПЁС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('08414a2242ba09460008ef7da460b41d', 'Бураков Никита Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='08414a2242ba09460008ef7da460b41d' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e267c2615340908803136c8529d32391', 'Бутов Роман Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e267c2615340908803136c8529d32391' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6a9bf400608285b53aae5c3b82bb3fff', 'Воробьёв Дмитрий Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6a9bf400608285b53aae5c3b82bb3fff' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('40d8c7c5675059a3841b151406f6ab69', 'Гапешин Егор Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='40d8c7c5675059a3841b151406f6ab69' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9e2bded16354ed68fc6747b7b7864949', 'Гоняхин Максим Вячеславович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9e2bded16354ed68fc6747b7b7864949' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f914404a61c663d5fd33e925b8af5c32', 'Гумадо Евгений Алексадрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f914404a61c663d5fd33e925b8af5c32' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0e127b5a9bb7938f57686c9836e411ae', 'Елин Сергей Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0e127b5a9bb7938f57686c9836e411ae' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9ce1dbd21f4431aaefa73aad3d7a69fb', 'Жадченко Станислав Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9ce1dbd21f4431aaefa73aad3d7a69fb' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6331867641647dfbb09bcd5996d8bab7', 'Жуков Артур Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6331867641647dfbb09bcd5996d8bab7' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('42017674e928dca5270b3a4be235e515', 'Корунов Андрей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='42017674e928dca5270b3a4be235e515' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('367fa3d39048bb770eccf727ec5ca900', 'Камшилин Андрей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='367fa3d39048bb770eccf727ec5ca900' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f3b80d8fbafc6f8b904000b5dcfded21', 'Кузьмичёв Денис Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f3b80d8fbafc6f8b904000b5dcfded21' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d09f3e9e6d4b17c3911f81cf604e61ec', 'Осокин Кирилл Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d09f3e9e6d4b17c3911f81cf604e61ec' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9b71266d533e26166454a5cd3294d816', 'Попов Кирилл Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9b71266d533e26166454a5cd3294d816' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4bf2c85c627b0622d86e99789d263b81', 'Петров Сергей Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4bf2c85c627b0622d86e99789d263b81' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26910bbf72935e76dc4c7f9bb0bb5008', 'Рикун Иван Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26910bbf72935e76dc4c7f9bb0bb5008' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('810224cc2c5ef668f3983bfcc05a0d6e', 'Рыжов Александр Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='810224cc2c5ef668f3983bfcc05a0d6e' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6696dd3bfa3ba65cc3f84fdc966814a1', 'Рябчиков Максим Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6696dd3bfa3ba65cc3f84fdc966814a1' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c98453944b277bc7e4c54a94937a568f', 'Самодуров Игорь Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c98453944b277bc7e4c54a94937a568f' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ece3e8ddb3fc278a7a12e78bc089097a', 'Селиверстов Николай Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ece3e8ddb3fc278a7a12e78bc089097a' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7e019f22d11018be3ef0521e7ee9363f', 'Тепляшин Владислав Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7e019f22d11018be3ef0521e7ee9363f' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6565ca911bcbced6bc40be36cdb9d838', 'Федченко Роман Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6565ca911bcbced6bc40be36cdb9d838' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c84691c6ec6ed2dfb42fcfee4c7a7c52', 'Черткоев Сармат Джумберович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c84691c6ec6ed2dfb42fcfee4c7a7c52' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('efddc3a45559fff9119e26366b3f24a8', 'Шинкоренко Иван Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='efddc3a45559fff9119e26366b3f24a8' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4e35d025a77af003849143fb02b053d7', 'Щербаков Андрей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4e35d025a77af003849143fb02b053d7' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6955708dbdf74576c638fad499bc147b', 'Щербаков Дмитрий Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6955708dbdf74576c638fad499bc147b' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('498a31176d4dc7e8cfe04756c33f01a5', 'Ядыкин Глеб Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='498a31176d4dc7e8cfe04756c33f01a5' AND t.name='SALUT GZHEL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5bcc8f1585d54ac79678f261055fa6b4', 'Архипов Артём Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5bcc8f1585d54ac79678f261055fa6b4' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4a3f1f8b54693b793e42121d12c1fcad', 'Бабкин Станислав Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4a3f1f8b54693b793e42121d12c1fcad' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b8f598d1d32b3fad33227f9d1489520e', 'Баракин Игорь Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b8f598d1d32b3fad33227f9d1489520e' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0d07b5b1db1a1515e9905a925c56e45b', 'Благов Дмитрий Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0d07b5b1db1a1515e9905a925c56e45b' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('09b95b2d0a95959e5c49648ce401028a', 'Волков Максим Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='09b95b2d0a95959e5c49648ce401028a' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cb555de77cf99db6e63ea31a24f21ce8', 'Иваньшин Алексей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cb555de77cf99db6e63ea31a24f21ce8' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('09aa5a33cafcc13d7769c653c6608e95', 'Карпов Алексей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='09aa5a33cafcc13d7769c653c6608e95' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('52aa392bcbd68479390f823ed0ec91be', 'Клементьев Максим Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='52aa392bcbd68479390f823ed0ec91be' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e777bdb666f7656258a7c9243a93c9de', 'Климочкин Владислав Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e777bdb666f7656258a7c9243a93c9de' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6a3e3efb68f33268bdae996dd5b92782', 'Кузьмин Василий Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6a3e3efb68f33268bdae996dd5b92782' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d20ca8aabb713b60b19bb846b5c14e85', 'Кунцевич Георгий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d20ca8aabb713b60b19bb846b5c14e85' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a3ead44ef5055097aad0d15b05ee4bbd', 'Орлов Александр Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a3ead44ef5055097aad0d15b05ee4bbd' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0d02f137fc6615c9a39798d56f57760e', 'Пызин Вадим Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0d02f137fc6615c9a39798d56f57760e' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7c880b10864eb4fec54727813d20dbb3', 'Сосков Даниил Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7c880b10864eb4fec54727813d20dbb3' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('99a2ce65b568c2a2ae8d93eea2705f79', 'Сосков Иван Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='99a2ce65b568c2a2ae8d93eea2705f79' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7ef254a4bb026d1be10160e075999159', 'Цуркану Никита Вадимович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7ef254a4bb026d1be10160e075999159' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('74ad45da18c81af317bd99110d1e2ab8', 'Цыганов Игорь Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='74ad45da18c81af317bd99110d1e2ab8' AND t.name='ОЛИМПИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7a60850a0458a9d48ef7d6886ed23a2b', 'Власенко Алексей Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7a60850a0458a9d48ef7d6886ed23a2b' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3dcf09ad4f4ae39801b43b5c9e99d042', 'Воронин Андрей Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3dcf09ad4f4ae39801b43b5c9e99d042' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4bde39952d89a384e8a9da22da7fec32', 'Гаврилов Антон Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4bde39952d89a384e8a9da22da7fec32' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ab480d1c0483fe3d71b494c9b510d0b9', 'Галбура Мариан Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ab480d1c0483fe3d71b494c9b510d0b9' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b03a2b9cd8184df6f6f7c07922fd6650', 'Гордиенко Александр Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b03a2b9cd8184df6f6f7c07922fd6650' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('923d2c85af107dea7df9b23f464383d3', 'Гребиннюк Роман Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='923d2c85af107dea7df9b23f464383d3' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e422e2e524028f6a92d1e88d27f96b0e', 'Данильев Станислав Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e422e2e524028f6a92d1e88d27f96b0e' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('62701da917ab88c31313dc49af72d62c', 'Жуков Роман Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='62701da917ab88c31313dc49af72d62c' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d2e1c1eea33383867684e20f1a93544a', 'Корягин Кирилл Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d2e1c1eea33383867684e20f1a93544a' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a0b7b150a4fca63cba0a7b4cc408b414', 'Лямин Данил Серафимович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a0b7b150a4fca63cba0a7b4cc408b414' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('32f2298ef1b6267ca6f46cd49c56e3f2', 'Митяков Илья Геннадиевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='32f2298ef1b6267ca6f46cd49c56e3f2' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f0cf6bdf1399edf6f8c85fec0ebcf25e', 'Ночка Сергей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f0cf6bdf1399edf6f8c85fec0ebcf25e' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9c0677404ba3c56973ab24a52bd3e7fc', 'Поляков Сергей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9c0677404ba3c56973ab24a52bd3e7fc' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e309ae97864dce127916b1d562b482a4', 'Рожко Александр Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e309ae97864dce127916b1d562b482a4' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cf8d9bbb9bbfc26778253816f02a37e5', 'Старостин Антон Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cf8d9bbb9bbfc26778253816f02a37e5' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e7e0be6a11439d2097b64f61b85a37d6', 'Черных Александр Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e7e0be6a11439d2097b64f61b85a37d6' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('82e64c30b4bae2969463bab616effd70', 'Шепелев Никита Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='82e64c30b4bae2969463bab616effd70' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('72cbebebb6160f9272de4729eb7a2fae', 'Шуравин Александр Вячеславович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='72cbebebb6160f9272de4729eb7a2fae' AND t.name='RAYS UTD'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8f2910efdbc42441db21457e81124cd', 'Баринов Сергей Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8f2910efdbc42441db21457e81124cd' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7ad69f2c822333b3f0f04ec47973040d', 'Беликов Андрей Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7ad69f2c822333b3f0f04ec47973040d' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dc7f037f64dddab63e5af3fcb25daf6e', 'Беляев Артем Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dc7f037f64dddab63e5af3fcb25daf6e' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ebb8a5fb1873ac4d7b3dd26393d6f558', 'Волков Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ebb8a5fb1873ac4d7b3dd26393d6f558' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('36403de7adb82fd8214a5afd61413a77', 'Волков Василий Вячеславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='36403de7adb82fd8214a5afd61413a77' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('960cc08e915b1b75651d1b51543088b4', 'Волков Виктор Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='960cc08e915b1b75651d1b51543088b4' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ee489672a18febb84e54910d83364579', 'Дергаев Дмитрий Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ee489672a18febb84e54910d83364579' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f82bc26605c36e18774bae3f756e213c', 'Ивандаев Роман Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f82bc26605c36e18774bae3f756e213c' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('85b366a8825c0dde367db244da7ba2cb', 'Климов Александр Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='85b366a8825c0dde367db244da7ba2cb' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f4ef66b01fe83b2c28d2adcf0ff14424', 'Клопов Максим Иванович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f4ef66b01fe83b2c28d2adcf0ff14424' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c57aabc63c6c794dba954adf8abd3924', 'Кондаков Павел Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c57aabc63c6c794dba954adf8abd3924' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('257c90b1751389eb395eefef02b0bad2', 'Лаппо Иван Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='257c90b1751389eb395eefef02b0bad2' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('72df3b2a7853be76867f1d412c704fd6', 'Летников Сергей Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='72df3b2a7853be76867f1d412c704fd6' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('147ba134aedcc25398a7d0c5ccef9ec9', 'Литвинов Владимир Денисович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='147ba134aedcc25398a7d0c5ccef9ec9' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fb1b76eaafb15a5603b96010d7ad0f1e', 'Мазаев Богдан Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fb1b76eaafb15a5603b96010d7ad0f1e' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5ea14ff7f41facd99165739c788544ee', 'Моисеев Денис Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5ea14ff7f41facd99165739c788544ee' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea192a30a71884e4c7aeb792b40a3f21', 'Морозов Алексей Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea192a30a71884e4c7aeb792b40a3f21' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('46d9cd73de1fe77038e9db05be453e43', 'Никитин Денис Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='46d9cd73de1fe77038e9db05be453e43' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('efde1d3beb9f300323e26c4c5c19782f', 'Овсянников Марк Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='efde1d3beb9f300323e26c4c5c19782f' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c53ec4707446c8116918fbac70705066', 'Попов Максим Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c53ec4707446c8116918fbac70705066' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('55ca4654ba74e457e8fd2fceb19a9a28', 'Прыскалин Роман Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='55ca4654ba74e457e8fd2fceb19a9a28' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4c81eca5a64a4f9d9cab6c4453bd3135', 'Сагалаков Александр Эдуардович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4c81eca5a64a4f9d9cab6c4453bd3135' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c189a782d5411f9767fd6dd613911405', 'Сентюрёв Иван Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c189a782d5411f9767fd6dd613911405' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('baa191733f44d566f9df85e2089b5487', 'Терехов Денис Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='baa191733f44d566f9df85e2089b5487' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aa552026e6307bca9f4e43d9c761ae10', 'Худобин Виктор Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aa552026e6307bca9f4e43d9c761ae10' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3cf8d160baa19639bfc8ed010a3fe7af', 'Шимшек Шэрван-Дэниз', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3cf8d160baa19639bfc8ed010a3fe7af' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d2446981368e6923470c71e073100141', 'Яшков Иван Романович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d2446981368e6923470c71e073100141' AND t.name='EGOIST'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e289ab245a6f4520ef5c528d1026aa4f', 'Андреев Андрей Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e289ab245a6f4520ef5c528d1026aa4f' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('95f89702572135093c4c7a93d03e79f3', 'Балуев Сергей Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='95f89702572135093c4c7a93d03e79f3' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c05e0699deb654ba38b4d9efd29e8688', 'Бессуднов Михаил Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c05e0699deb654ba38b4d9efd29e8688' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5a2614838b8bfe5fa14246729d76362d', 'Богачёв Николай Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5a2614838b8bfe5fa14246729d76362d' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e99c10ea2af6dc0fd731c6a2a07419ee', 'Васин Валентин Эдуардович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e99c10ea2af6dc0fd731c6a2a07419ee' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b90a43d50bbd2e1c2665ff5e7c95db21', 'Гладус Артём Олегович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b90a43d50bbd2e1c2665ff5e7c95db21' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b63757a7a771faea84fc9760d69b0f8e', 'Голенкин Антон Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b63757a7a771faea84fc9760d69b0f8e' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8f6f473357b046559f74370ac5695efa', 'Доманский Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8f6f473357b046559f74370ac5695efa' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d9fa097774544085c84a83439e47e77b', 'Дочев Владислав Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d9fa097774544085c84a83439e47e77b' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('301c2a4469ba28cafbe86f41fc6725f1', 'Евдокимов Олег Германович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='301c2a4469ba28cafbe86f41fc6725f1' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('48c1a521437d699cea42030932975407', 'Ефремов Владислав Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='48c1a521437d699cea42030932975407' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('95f4f8fd1ee5e1f09d6238e2d642c115', 'Жуков Сергей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='95f4f8fd1ee5e1f09d6238e2d642c115' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5e6172fa8d9bbc5d80475e74f1d63885', 'Ивашков Владислав Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5e6172fa8d9bbc5d80475e74f1d63885' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8512774cfbba318011ad24c2c1acffd2', 'Колесников Артём Романович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8512774cfbba318011ad24c2c1acffd2' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('823f70e8f763686314fa65ac5d95196c', 'Кузнецов Александр Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='823f70e8f763686314fa65ac5d95196c' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('03c1c4e4839a33b5cf8c48b01926903c', 'Крученков Артём Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='03c1c4e4839a33b5cf8c48b01926903c' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('afbff7d36395654dff7bba42172f1bfd', 'Липатин Иван Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='afbff7d36395654dff7bba42172f1bfd' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4964a7a94bf87f1906644c6686be1859', 'Мамаднабиев Мавлуд Мирвалиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4964a7a94bf87f1906644c6686be1859' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5d3e8c80a6c33f90729b89354b8594d9', 'Мамаднабиев Максуд Мирвалиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5d3e8c80a6c33f90729b89354b8594d9' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fc79b92b33ab56194acc30b4c0494468', 'Небесный Сергей Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fc79b92b33ab56194acc30b4c0494468' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('87d8c6a770290cedc39108b15c7fa8e9', 'Полыгалов Никита Денисович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='87d8c6a770290cedc39108b15c7fa8e9' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1ea14364ee2dc953206aef2660889f00', 'Прокофьев Дмитрий Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1ea14364ee2dc953206aef2660889f00' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c799ddf2e5cb570b9063440d4cc9a332', 'Прусов Николай Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c799ddf2e5cb570b9063440d4cc9a332' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3f213c1e42867ab3de1b84c0329b8838', 'Пушкарюк Андрей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3f213c1e42867ab3de1b84c0329b8838' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bdd159439b27851fd22e640a90bb0e47', 'Рыбаков Кирилл', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bdd159439b27851fd22e640a90bb0e47' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('66776c8951a1c9da3fec2296988469dc', 'Фирстов Дмитрий Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='66776c8951a1c9da3fec2296988469dc' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('afcee8d4b66ce781190a637f5eef6b7d', 'Чаплыгин Иван Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='afcee8d4b66ce781190a637f5eef6b7d' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('98a2a6e4c65cd93274c3e671a029e5ae', 'Шевченко Алексей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='98a2a6e4c65cd93274c3e671a029e5ae' AND t.name='СПК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ad30bf06d7cb0df7d8126417673eb5bf', 'Волков Максим Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ad30bf06d7cb0df7d8126417673eb5bf' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6ddc1049f03a13ab45ff1efc04b46da7', 'Дорос Николай Васильевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6ddc1049f03a13ab45ff1efc04b46da7' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7c73d9058d50964583b0766d34b59251', 'Зыков Иван Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7c73d9058d50964583b0766d34b59251' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('37447835d4c2254b582835c3a670c6d2', 'Иванников Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='37447835d4c2254b582835c3a670c6d2' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('24033be6e8c4f54f51f40d8d6511f50a', 'Кирякин Николай Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='24033be6e8c4f54f51f40d8d6511f50a' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1f498951cd1b93eb9b584d8ea3a60011', 'Кожин Илья Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1f498951cd1b93eb9b584d8ea3a60011' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d6d45c48fb5cfada2c1abbe6beecd140', 'Кудашов Андрей Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d6d45c48fb5cfada2c1abbe6beecd140' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e36e32807e0ae43fd0f449bb98a2a878', 'Кузнецов Иван Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e36e32807e0ae43fd0f449bb98a2a878' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3f905d29b87464c059e851ac426852b4', 'Кулаков Егор Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3f905d29b87464c059e851ac426852b4' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e2afe244d4e4c9953d0da1ef98178250', 'Мельников Матвей Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e2afe244d4e4c9953d0da1ef98178250' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b2101ce8da281c85432859c9df725fb5', 'Мисиюк Анатолий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b2101ce8da281c85432859c9df725fb5' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d92fc50f03b3c99de1329e76d2af9cbc', 'Мисиюк Егор Валерьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d92fc50f03b3c99de1329e76d2af9cbc' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c4e49d758cd86ab88ff1074cf60ca15f', 'Мисиюк Степан Анатольевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c4e49d758cd86ab88ff1074cf60ca15f' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8620c92dee562008087adac65e78230', 'Митрохин Роман Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8620c92dee562008087adac65e78230' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6e16dd24c64f8f443c916c3c89bbd433', 'Мишаков Алексей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6e16dd24c64f8f443c916c3c89bbd433' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('34aa04e490ce8b81a23337c9bc46d435', 'Мишаков Максим Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='34aa04e490ce8b81a23337c9bc46d435' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1849245eb88e4b04c9d20ba78ab68e50', 'Протько Александр Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1849245eb88e4b04c9d20ba78ab68e50' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6c70ac22794b6be99676b1be9060f03b', 'Шмаков Никита Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6c70ac22794b6be99676b1be9060f03b' AND t.name='VEGAZ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cd5610ba864cb49999dea4143653bcbd', 'Грицко Захар Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cd5610ba864cb49999dea4143653bcbd' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2d08e138db37b318e2a98c7fadff045', 'Дергач Александр Геннадьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2d08e138db37b318e2a98c7fadff045' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6f1c3d31ba75e5c309d52dac2ca6d9fd', 'Дорожкин Максим Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6f1c3d31ba75e5c309d52dac2ca6d9fd' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3f2284732e24cce1662913711bbacfbb', 'Ефимов Сергей Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3f2284732e24cce1662913711bbacfbb' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('882a4db5e3f2cdc80da94888b8946045', 'Корнеев Артём Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='882a4db5e3f2cdc80da94888b8946045' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fc3157b19d723335f1a98fd65a4f4232', 'Левшин Андрей Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fc3157b19d723335f1a98fd65a4f4232' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0a295085b0956b960a2f80d6321bf349', 'Литвинов Максим Александрович (к)', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0a295085b0956b960a2f80d6321bf349' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('14f2c5cfff297f6c50d2e3d53f0a66b4', 'Мартакова Дарья Эдуардовна', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='14f2c5cfff297f6c50d2e3d53f0a66b4' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3e361ef1809a8250256aeda751a0c2b1', 'Матвеенков Валерий Валерьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3e361ef1809a8250256aeda751a0c2b1' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a476c7a1beaa0b924245cd091ac9ffe0', 'Окуньков Николай Николаевич (к)', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a476c7a1beaa0b924245cd091ac9ffe0' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('474927b02b959da1c43a7ded5b435c90', 'Ольховик Артем Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='474927b02b959da1c43a7ded5b435c90' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6e665b447a9293aa3b1cbeafc00d98e8', 'Парницын Роман Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6e665b447a9293aa3b1cbeafc00d98e8' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ef3879c833660e6d39ec974b2576e3ec', 'Рачков Владислав Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ef3879c833660e6d39ec974b2576e3ec' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('15d4ee1073c3824869ba52cccd25b7db', 'Романов Дмитрий Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='15d4ee1073c3824869ba52cccd25b7db' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6c6e8377c5e848c38fb2db18ec1887e7', 'Сафонов Даниил Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6c6e8377c5e848c38fb2db18ec1887e7' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b508f118a7d4f20f54340f8e53fa322d', 'Сеченков Сергей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b508f118a7d4f20f54340f8e53fa322d' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('24a2a60c239d9f746cc8bb7563922b05', 'Скрипкович Сергей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='24a2a60c239d9f746cc8bb7563922b05' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('52120f768a4e98581f8eb47b6e8029e1', 'Сычёв Леонид Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='52120f768a4e98581f8eb47b6e8029e1' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('65e985abfbf2267ce60464ae16d3b0af', 'Устинов Максим Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='65e985abfbf2267ce60464ae16d3b0af' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d2ff71138fb49279e2c566fccee4c6e', 'Шкодин Антон Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d2ff71138fb49279e2c566fccee4c6e' AND t.name='РАФС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8368614fe173b785f8c57e08e5743777', 'Гамов Артём Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8368614fe173b785f8c57e08e5743777' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe6a0ec7b832e49d771403fd41c3fcd3', 'Джангидзе Шота Шотаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe6a0ec7b832e49d771403fd41c3fcd3' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a40e3e11fd3a9fb27bca5627e292ae86', 'Зеров Александр Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a40e3e11fd3a9fb27bca5627e292ae86' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('745dd11e21dd4baa087a322373ade153', 'Кандаев Артём Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='745dd11e21dd4baa087a322373ade153' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6d109a7faaf111b0c93d9c15a8ea970f', 'Кирсанов Евгений Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6d109a7faaf111b0c93d9c15a8ea970f' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('89e632d2fd76aad65602c16298b523c0', 'Кузнецов Александр Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='89e632d2fd76aad65602c16298b523c0' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f26b4001decbfffae3d7871616924495', 'Кузнецов Денис Андреевич (к)', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f26b4001decbfffae3d7871616924495' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8287de4b03621ed7d6182342100cdcf9', 'Кузнецов Максим Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8287de4b03621ed7d6182342100cdcf9' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('60514fd6c6ce5a8ae0fcf3c2149998c9', 'Нарзиев Умид Ахадкулович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='60514fd6c6ce5a8ae0fcf3c2149998c9' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('645d2dc7f4ab95c58ae924489de7c9c9', 'Неясов Павел Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='645d2dc7f4ab95c58ae924489de7c9c9' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dced61c5ccdc0687a1af2d8ab5f53d2f', 'Пеганов Иван Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dced61c5ccdc0687a1af2d8ab5f53d2f' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ce3fc3690a23d018a7ca8cb754aef959', 'Платонов Александр Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ce3fc3690a23d018a7ca8cb754aef959' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b680b60ff8da6a61f8b135f32e998bc8', 'Прокошин Иван Вячеславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b680b60ff8da6a61f8b135f32e998bc8' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('17b944ab6495a801ca345e42d61ebcd0', 'Сарайкин Дмитрий Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='17b944ab6495a801ca345e42d61ebcd0' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('54aa68c05d358462d23ce3d1e350e84c', 'Тепикин Евгений Вадимович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='54aa68c05d358462d23ce3d1e350e84c' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5f712a29fb6b6b648915eff58177a448', 'Топильский Михаил Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5f712a29fb6b6b648915eff58177a448' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3a08786e56242a05c8ea1f3148bc2e71', 'Трофимов Артемий Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3a08786e56242a05c8ea1f3148bc2e71' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7595714900c0456bd0272f3ed6f9b59c', 'Улитин Алексей Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7595714900c0456bd0272f3ed6f9b59c' AND t.name='RAMCITY'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('539cadda87ddc11e787fd2ab82702a8d', 'Атлуханов Марат Арсенович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='539cadda87ddc11e787fd2ab82702a8d' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6e54f99292ec935a88728b83b3bf7b0c', 'Волков Владислав Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6e54f99292ec935a88728b83b3bf7b0c' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2315cce8e0ba3041144e6c8d419ca21e', 'Давлаткадамов Бахтовар Саидкадамович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2315cce8e0ba3041144e6c8d419ca21e' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b4b7bc585a15b7f222c051d70efe475e', 'Заварухин Дмитрий Владиславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b4b7bc585a15b7f222c051d70efe475e' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('30777706d22390c55a5536eeddc52b35', 'Мамедов Амил Сарванович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='30777706d22390c55a5536eeddc52b35' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a53a8f99c48a7485ad97cbbf36f29f4e', 'Окулбеков Мухтор Окулбекович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a53a8f99c48a7485ad97cbbf36f29f4e' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8f88b9318634bdf446e13635464b4052', 'Пашутин Александр Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8f88b9318634bdf446e13635464b4052' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('09faf123524cd05172b4849a56cfc84d', 'Петросян Артём Самвелович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='09faf123524cd05172b4849a56cfc84d' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('973ca730b392947c5ffcd4c1305c1dcb', 'Равшанбеков Зарифбек Джонибекович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='973ca730b392947c5ffcd4c1305c1dcb' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e4651f42aa18c5273c99b4da310db705', 'Сафаров Манучехр Хуршедович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e4651f42aa18c5273c99b4da310db705' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3b24bb71941fe7da4b3ea32227e9ae8d', 'Сафаров Шоди Хуршедович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3b24bb71941fe7da4b3ea32227e9ae8d' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1a3981a031492ffe8b100b08edb2e3b0', 'Тупица Данила Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1a3981a031492ffe8b100b08edb2e3b0' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('70e895ba4a75b5148f69fb2ab11944d7', 'Чалабян Карен Ашотович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='70e895ba4a75b5148f69fb2ab11944d7' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('efc01ef5800de5b2a34b51e6c88b5ba9', 'Эргашев Бехруз Абдусаломович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='efc01ef5800de5b2a34b51e6c88b5ba9' AND t.name='СССР'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('47a0470939a7b44f89f47a6a6aa13ee9', 'Алфимов Денис Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='47a0470939a7b44f89f47a6a6aa13ee9' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e09d2b72d834deaf47bd89234a176be6', 'Базаров Артур Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e09d2b72d834deaf47bd89234a176be6' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c5959c4aaa600f6983b0713a2d8db4b3', 'Белов Ярослав Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c5959c4aaa600f6983b0713a2d8db4b3' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('79bc673b484db5c7cb1f961f9727163d', 'Бободжанов Музаффар Михмонович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='79bc673b484db5c7cb1f961f9727163d' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c71bc9e3ddfab4165edf7e8cf6c6c2ca', 'Бондарев Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c71bc9e3ddfab4165edf7e8cf6c6c2ca' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('36297a9229c199b4e346c51e756a5541', 'Бородулин Михаил Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='36297a9229c199b4e346c51e756a5541' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6f21ea522e3facb94627c9608e2942af', 'Гавриков Алексей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6f21ea522e3facb94627c9608e2942af' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1de2a2737a1dce095350d347db8b60fb', 'Грибков Евгений Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1de2a2737a1dce095350d347db8b60fb' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aac5b6db0a398bcb16f38e6c893c6c1e', 'Джобир Мехроби', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aac5b6db0a398bcb16f38e6c893c6c1e' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a99cae55c98d89cfd0000953b3a88904', 'Ермишин Александр Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a99cae55c98d89cfd0000953b3a88904' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6d686fe23c40631ef3450073da968409', 'Иванович Василий Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6d686fe23c40631ef3450073da968409' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7acb759fce8444c940bfc981cc50a7a3', 'Измайлов Никита Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7acb759fce8444c940bfc981cc50a7a3' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8bc537bed408ae54c4307a4b13be21be', 'Константинов Сергей Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8bc537bed408ae54c4307a4b13be21be' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a30c77d98937f30ab2ed29f2e72b7aea', 'Кутузов Дмитрий Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a30c77d98937f30ab2ed29f2e72b7aea' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('090fb4cb084eac5ce6de9d1531370dc5', 'Кутузов Николай Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='090fb4cb084eac5ce6de9d1531370dc5' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('27e54c2bfb6d5b329cddf5dc76d1069c', 'Мартынов Ярослав Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='27e54c2bfb6d5b329cddf5dc76d1069c' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0afd1c9b383665f582d54c03c03893bd', 'Мелякин Роман Петрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0afd1c9b383665f582d54c03c03893bd' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a1d113f2096b43cee70eded7c24f7460', 'Морозов Дмитрий Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a1d113f2096b43cee70eded7c24f7460' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('075690107357a324be83ec45f1cc0205', 'Морозов Михаил Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='075690107357a324be83ec45f1cc0205' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('365506ffc6dcf597adbcbc7ce4a8138e', 'Очилов Амирбек Алижон Угли', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='365506ffc6dcf597adbcbc7ce4a8138e' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d65fd9833eedbab81598c639939a8bbf', 'Полянский Максим Иванович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d65fd9833eedbab81598c639939a8bbf' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e06de8836ef00b4ccbfd14141743d94a', 'Скрипников Дмитрий Вячеславович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e06de8836ef00b4ccbfd14141743d94a' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9c6e5e74afed49df3b8ff86beecfd664', 'Степнов Савелий Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9c6e5e74afed49df3b8ff86beecfd664' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('31e1be9d912b293eec072874643e3dbf', 'Трощенко Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='31e1be9d912b293eec072874643e3dbf' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ece8ce6e688faad1d41580390ff2853b', 'Терновой Николай Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ece8ce6e688faad1d41580390ff2853b' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('391d8a6620cb06de13737305718a58bf', 'Хмаладзе Давид Геннадьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='391d8a6620cb06de13737305718a58bf' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9d99601383cc08929fb1182fc4b7416d', 'Челышков Роман Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9d99601383cc08929fb1182fc4b7416d' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ef432000a07c020dc57985cc5a1c088e', 'Ярченко Илья Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ef432000a07c020dc57985cc5a1c088e' AND t.name='НОВОЕ СЕЛО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('308f54862e43547d920cef8dc75ba702', 'Артёмов Анатолий Николаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='308f54862e43547d920cef8dc75ba702' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aba8a8bdd17b4e42256a2f3fb3af9ef8', 'Борисов Павел Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aba8a8bdd17b4e42256a2f3fb3af9ef8' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7031f24de1017dd0b40880908b9964e9', 'Вороницкий Дмитрий Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7031f24de1017dd0b40880908b9964e9' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5c7ea06db759beee0c6e8b317314d870', 'Грачёв Алексей Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5c7ea06db759beee0c6e8b317314d870' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fafab208120b3bf2b27a347c1cb02454', 'Дворядкин Виктор Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fafab208120b3bf2b27a347c1cb02454' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('609cf186d7250e61d87a717546744417', 'Довбыш Данила Анатольевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='609cf186d7250e61d87a717546744417' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1cc741d6d4decd641825ba196de5a71a', 'Зеленов Алексей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1cc741d6d4decd641825ba196de5a71a' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('374b3d9d0370e5e175ef04ac30b92456', 'Книгин Андрей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='374b3d9d0370e5e175ef04ac30b92456' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ff713750397417d0b044593524355a0a', 'Колтин Николай Виктороич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ff713750397417d0b044593524355a0a' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('76ef1e4cb137eca09ec20a41f2f79c57', 'Кондратенко Владимир Петрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='76ef1e4cb137eca09ec20a41f2f79c57' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2c4019853e2e4f274fdb41b40cb68088', 'Леонов Николай Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2c4019853e2e4f274fdb41b40cb68088' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f60668f303e51939b1b8fa6c67e48b71', 'Магомедов Усман Расулович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f60668f303e51939b1b8fa6c67e48b71' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1dfebcb8a739168e24915f3b00569db2', 'Марков Александр Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1dfebcb8a739168e24915f3b00569db2' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4c08cd564e1456da1422fc5c0bb39b30', 'Марченков Дмитрий Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4c08cd564e1456da1422fc5c0bb39b30' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('efe9e65f167443d3623a99f2b8c8dce2', 'Новиков Алексей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='efe9e65f167443d3623a99f2b8c8dce2' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('90bbe56274f1b7f5af9b4f9cd9473170', 'Савин Дмитрий Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='90bbe56274f1b7f5af9b4f9cd9473170' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77a0835b18577692c66a7cb8977fa3a1', 'Столярский Сергей Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77a0835b18577692c66a7cb8977fa3a1' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('190db88e5586a3be4509f5292cc78c56', 'Трещалов Артем Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='190db88e5586a3be4509f5292cc78c56' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a254261cb35521df62e3020aefdb5f0c', 'Шпинюк Юрий Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a254261cb35521df62e3020aefdb5f0c' AND t.name='ЭНЕРГИЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f1dad7efac376719ab4345d7604c880a', 'Бабиков Сергей Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f1dad7efac376719ab4345d7604c880a' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d4ccc6aed2be873824fdcc1f3067cfb9', 'Бердышевский Василий', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d4ccc6aed2be873824fdcc1f3067cfb9' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2b50894daa5beba258ece92d52bbe99e', 'Борисенко Максим Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2b50894daa5beba258ece92d52bbe99e' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cab94adf840cf2111bb9822f95d4296d', 'Егоров Сергей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cab94adf840cf2111bb9822f95d4296d' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8b9b180f6a4ebb72679b0e75c77731b7', 'Житков Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8b9b180f6a4ebb72679b0e75c77731b7' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9a3eade831e0fffe9d643513ff33cccb', 'Кривченков Алексей Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9a3eade831e0fffe9d643513ff33cccb' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f7da29bba42d822657421a650015b663', 'Кривченков Николай Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f7da29bba42d822657421a650015b663' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('38c84e73e1901117f64c357e8652eaa7', 'Кисткин Алексей Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='38c84e73e1901117f64c357e8652eaa7' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d6cff8eefc2731ab171c5478c592cda9', 'Кисткин Никита Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d6cff8eefc2731ab171c5478c592cda9' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('80598c918800f4af96596a1aab7323d4', 'Кузьмин Дмитрий Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='80598c918800f4af96596a1aab7323d4' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b5be6ef3ebd2800146db379199c98294', 'Кузьмин Игорь Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b5be6ef3ebd2800146db379199c98294' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ce13fff626fab3a1649f22b34dbdd569', 'Кулик Владислав Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ce13fff626fab3a1649f22b34dbdd569' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2b23d152b93d28d39bef70771463c008', 'Курапов Сергей Михайлович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2b23d152b93d28d39bef70771463c008' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b426e9ffbe20947ec85b25d99540c0d1', 'Миннибаев Фарид Мидихатевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b426e9ffbe20947ec85b25d99540c0d1' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c3b4df41ecfef67fd9cff60f5973a38', 'Неупокоев Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c3b4df41ecfef67fd9cff60f5973a38' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('05368686b3e8e0e9903fdc6ff3e411af', 'Пугачев Сергей Борисович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='05368686b3e8e0e9903fdc6ff3e411af' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dcd04f6f57b72c7d83f03220903448d7', 'Смирнов Сергей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dcd04f6f57b72c7d83f03220903448d7' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a251801ce9dce8eb1a26dd3755c76b30', 'Шамилов Эмин Сурхай-Оглы', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a251801ce9dce8eb1a26dd3755c76b30' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('78ce0cff4413e9928dc054589beeba01', 'Яковлев Валерий Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='78ce0cff4413e9928dc054589beeba01' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('61b9a6e7dd145c704ca1ce4608b0d6b0', 'Яковченко Максим Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='61b9a6e7dd145c704ca1ce4608b0d6b0' AND t.name='ФАБУС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4b10adbb05f59479122a68208527d841', 'Барминов Сергей Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4b10adbb05f59479122a68208527d841' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('abc11bb7a62663678debcc01fdba5e23', 'Биктимиров Рамиль Ринатович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='abc11bb7a62663678debcc01fdba5e23' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c9734f3c42e646cb0205667a1aec9445', 'Богданович Кирилл Вячелавович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c9734f3c42e646cb0205667a1aec9445' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('88ef3410f1368a53b72f185be9273291', 'Долгов Александр Владиславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='88ef3410f1368a53b72f185be9273291' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c1580d9ccadb052912a5f81531ca5a61', 'Зуев Никита Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c1580d9ccadb052912a5f81531ca5a61' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9252edf749fe9666ddec8b1eb0a2c12e', 'Королёв Владимир Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9252edf749fe9666ddec8b1eb0a2c12e' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3dcc98bbe654e5e8929719bbcce5f463', 'Кочин Григорий Ильич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3dcc98bbe654e5e8929719bbcce5f463' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d8554721dae24c9691064ef4f89b0b3', 'Кузин Кирилл Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d8554721dae24c9691064ef4f89b0b3' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fda1a58892f3e8d8951ae66c0ce1214f', 'Лихитченко Евгений Юрьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fda1a58892f3e8d8951ae66c0ce1214f' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6807328edabf9e538c0349afc4e24ce4', 'Нерубальский Данила Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6807328edabf9e538c0349afc4e24ce4' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('08e91d1cb10ef64a5d30ea6fd6548f38', 'Ниёзбеков Азизшо Давроншоевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='08e91d1cb10ef64a5d30ea6fd6548f38' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6e0ef703c73d3c08f9816836682abba7', 'Новичков Иван Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6e0ef703c73d3c08f9816836682abba7' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('39f87c46cc96a9722fc2b56431b6cead', 'Осипов Владимир Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='39f87c46cc96a9722fc2b56431b6cead' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9e4aff0d4e7e197897c60ea82050d71c', 'Петров Александр Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9e4aff0d4e7e197897c60ea82050d71c' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e55b2e8d2a46a4e97985cecd69b5f6cb', 'Подкользин Владислав Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e55b2e8d2a46a4e97985cecd69b5f6cb' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e34d56a49d65efa2dafa874e9d588e15', 'Постнов Алексей Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e34d56a49d65efa2dafa874e9d588e15' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('59d1be83e3a65fc9f24bc684c2a2b978', 'Сафронов Алексей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='59d1be83e3a65fc9f24bc684c2a2b978' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ca11b70e32c2a83a32661b1484910a7f', 'Степанников Александр Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ca11b70e32c2a83a32661b1484910a7f' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f482483f02847704e19264a4a6588789', 'Стрепетов Артем Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f482483f02847704e19264a4a6588789' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c8da4c8d530443ac7acd4753aa14a4bc', 'Теодореску Мариус', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c8da4c8d530443ac7acd4753aa14a4bc' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26f57e83b72c9689aa13d1631780e4f1', 'Фомин Игорь Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26f57e83b72c9689aa13d1631780e4f1' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('46aa114845db24d87b1715058810bd33', 'Шуктуев Александр Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='46aa114845db24d87b1715058810bd33' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dc8359ad1b42b1e696dc7113681eb523', 'Ярченко Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dc8359ad1b42b1e696dc7113681eb523' AND t.name='ELASTIC'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('27e939ae48e813f37b6bffbb2229fc4f', 'Воронцев Владислав Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='27e939ae48e813f37b6bffbb2229fc4f' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8e4992d7458c4d0d8b63d6190820e25', 'Воронцев Николай Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8e4992d7458c4d0d8b63d6190820e25' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5531a5308a6a1d1559a30c25abc306e5', 'Гуленков Антон Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5531a5308a6a1d1559a30c25abc306e5' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b00283303d3a2f3419fef635b9f34d26', 'Калинин Дмитрий Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b00283303d3a2f3419fef635b9f34d26' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6549751d3625b094f0e53c97d48b2cc0', 'Калиниченко Александр Русланович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6549751d3625b094f0e53c97d48b2cc0' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea0cd54fc36c9093cd8b6bca9abd1db9', 'Каличава Ромео Какоевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea0cd54fc36c9093cd8b6bca9abd1db9' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c0d27b45900a07a68746066c3b62cf16', 'Кудрявцев Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c0d27b45900a07a68746066c3b62cf16' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('65b1424d9c40d94edb3e9683e67eb2de', 'Кузьмин Алексей Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='65b1424d9c40d94edb3e9683e67eb2de' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e20a020a8043fd763d029ce5ef130938', 'Леонов Алексей Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e20a020a8043fd763d029ce5ef130938' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf4c4630b01ef372a2fd4a0ad100dff7', 'Макаров Артём Георгиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf4c4630b01ef372a2fd4a0ad100dff7' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('88dab281932695da28e9113f99b0ca00', 'Морозов Алексей Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='88dab281932695da28e9113f99b0ca00' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a7c9d2969292339b1483b888192c7190', 'Олейников Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a7c9d2969292339b1483b888192c7190' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('274af5b38be80cbe2671f8c1bc6364f6', 'Олексенко Владимир Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='274af5b38be80cbe2671f8c1bc6364f6' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b0bd345cacb3c8da2c11c78230dc6b11', 'Пешко Кирилл Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b0bd345cacb3c8da2c11c78230dc6b11' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('76c6fd3e48e22254bd4fc21ade6b8a44', 'Попокин Владимир Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='76c6fd3e48e22254bd4fc21ade6b8a44' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3a35cf9a0cb1594d35a0845a860fcb98', 'Рожнов Евгений Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3a35cf9a0cb1594d35a0845a860fcb98' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('71b1ce5bba87b87d19a7beba91eb96d2', 'Хухия Теймураз Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='71b1ce5bba87b87d19a7beba91eb96d2' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2d6113b954002cdd9db05a4af68a9ab1', 'Цветков Дмитрий Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2d6113b954002cdd9db05a4af68a9ab1' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a0c6126b025a360ae927ab12debc1f13', 'Щёткин Данил Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a0c6126b025a360ae927ab12debc1f13' AND t.name='ВОЗРОЖДЕНИЕ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4acfc199b6114ebae9afde926d24c92f', 'Белухов Валерий Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4acfc199b6114ebae9afde926d24c92f' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c09ceca2cc78f1a7b32e525f4fd95fa9', 'Булыкин Иван Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c09ceca2cc78f1a7b32e525f4fd95fa9' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4ffc7f1937816a4b86171033809d4a23', 'Володин Денис Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4ffc7f1937816a4b86171033809d4a23' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0b6e24d576e708d976abdd4a2dcbc76e', 'Галкин Виталий Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0b6e24d576e708d976abdd4a2dcbc76e' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6308bf88fc4b04a016fb6df8079f18a0', 'Герасимов Никита Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6308bf88fc4b04a016fb6df8079f18a0' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf54565816e29ef51b3f5d047e96d125', 'Епифанов Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf54565816e29ef51b3f5d047e96d125' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5ba68e6d844aa74b83aeb63b9c5a37c8', 'Иваненко Алексей Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5ba68e6d844aa74b83aeb63b9c5a37c8' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ef7891832e7f266e9a129bf903081d7', 'Карпов Артём Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ef7891832e7f266e9a129bf903081d7' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('62307872011a825c51f4d7f2719fdf3b', 'Каурцев Артём Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='62307872011a825c51f4d7f2719fdf3b' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6ff7a2cf3d64ab37e262c76121aaa01d', 'Кусков Павел Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6ff7a2cf3d64ab37e262c76121aaa01d' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('386b493afca82800389d8968218d958e', 'Локтионов Никита Юрьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='386b493afca82800389d8968218d958e' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('936416ad21269e0f9f8eb8067726ba28', 'Неженский Фёдор Иванович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='936416ad21269e0f9f8eb8067726ba28' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('45f9f03df4b2c269b72a225fdeb7ca69', 'Осинцев Андрей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='45f9f03df4b2c269b72a225fdeb7ca69' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c39472a6a68001a0e32d94c80dc05aa4', 'Павлий Кирилл Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c39472a6a68001a0e32d94c80dc05aa4' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c57d63b690aa761df10cb06239533c68', 'Пчелинцев Андрей Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c57d63b690aa761df10cb06239533c68' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('38d72e13fd676cf81ab68ba80c5e241b', 'Самохин Илья Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='38d72e13fd676cf81ab68ba80c5e241b' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a8055e7d388978ef0af043d5b9757ce0', 'Стародворский Владислав Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a8055e7d388978ef0af043d5b9757ce0' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('059afcf581fd03ecbc32aece8ad9d1ba', 'Терёхин Кирилл Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='059afcf581fd03ecbc32aece8ad9d1ba' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('abb8264aadffaa3db1a13f228874886a', 'Титков Егор Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='abb8264aadffaa3db1a13f228874886a' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a9b04e94101eeed7a72b6ca823cf6068', 'Тягин Михаил Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a9b04e94101eeed7a72b6ca823cf6068' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9c3d360b55cb715167b7ac9ffa2e2994', 'Чепелёв Никита Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9c3d360b55cb715167b7ac9ffa2e2994' AND t.name='ДЭМА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('78c0c59f039e5532682b6b406953b629', 'Архипов Алексей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='78c0c59f039e5532682b6b406953b629' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ddaf86885c694f4308bbc40e243ce116', 'Боларев Максим Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ddaf86885c694f4308bbc40e243ce116' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('899bb63a0da92477f92a41645c66814d', 'Будкин Артём Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='899bb63a0da92477f92a41645c66814d' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('54aacc265eaa450c53f0d524ae3a58ae', 'Бычков Егор Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='54aacc265eaa450c53f0d524ae3a58ae' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('609b6aada19b0950e9fa3869ddc92af6', 'Касьянов Илья Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='609b6aada19b0950e9fa3869ddc92af6' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77d28d0fc6688120e65852097f07120d', 'Козлов Алексей Николаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77d28d0fc6688120e65852097f07120d' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('663e5668a4c0f6b5131e966fe0ecc5d4', 'Крылов Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='663e5668a4c0f6b5131e966fe0ecc5d4' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e95914b8d28aa5d98a05e4122a16a605', 'Куренков Артем Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e95914b8d28aa5d98a05e4122a16a605' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7c57d3eb956f7078491da85b4a3de078', 'Кущ Захар Дмитриевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7c57d3eb956f7078491da85b4a3de078' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('46082b3184e0c9bd7be51b4838763852', 'Мирошниченко Александр Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='46082b3184e0c9bd7be51b4838763852' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('64a654fb0e4eb3cb1bf8d4379c45140f', 'Митрохин Андрей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='64a654fb0e4eb3cb1bf8d4379c45140f' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a3b49f90121e4b3843505c9c035c31c4', 'Овсянников Матвей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a3b49f90121e4b3843505c9c035c31c4' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e289e67869d3756f98dd9e870e408804', 'Панков Максим Евгеньевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e289e67869d3756f98dd9e870e408804' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0bbc8a7cef948f8beaa7b25e3abc45a6', 'Рахалин Никита Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0bbc8a7cef948f8beaa7b25e3abc45a6' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('022e389233ae6feca9ee901f11bd6b78', 'Ротару Даниил Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='022e389233ae6feca9ee901f11bd6b78' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dec9a73b077f453a3aeb9f3bbae9d5cc', 'Самарский Иван Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dec9a73b077f453a3aeb9f3bbae9d5cc' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3703057dc66947c014b311ac61651045', 'Соловьёв Леонид Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3703057dc66947c014b311ac61651045' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d13785b46b4073e9ec89901c0c1568fb', 'Соловьёв Сергей Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d13785b46b4073e9ec89901c0c1568fb' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('42012cba773065da6a7f787044816a66', 'Сугробов Павел Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='42012cba773065da6a7f787044816a66' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('337f9233737178beae1da7c040620f09', 'Целинский Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='337f9233737178beae1da7c040620f09' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('52d56eead8d8cba53da4858cd48d10a1', 'Яловегин Дмитрий Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='52d56eead8d8cba53da4858cd48d10a1' AND t.name='АМПЕР МЕДИА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('27d936a8353086bbd3f3e066e4964b2a', 'Айдаев Радим Маликович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='27d936a8353086bbd3f3e066e4964b2a' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b5008cb3a1d3874518ce043a962e11fb', 'Воробьёв Вячеслав Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b5008cb3a1d3874518ce043a962e11fb' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b4ea230940d421253d35d68a2ce1d79f', 'Жирнов Валентин Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b4ea230940d421253d35d68a2ce1d79f' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8f9f4e2c38cdbca62016760a01a8201a', 'Зотов Евгений Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8f9f4e2c38cdbca62016760a01a8201a' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4999d6be2a396b61608a08bd033da139', 'Коцоев Сослан Тельманович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4999d6be2a396b61608a08bd033da139' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8707af1171a6f37ad68e0748246247bd', 'Макаров Леонид Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8707af1171a6f37ad68e0748246247bd' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('56c537602aacc352edb33d67ccf8f5ea', 'Оганезов Михаил Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='56c537602aacc352edb33d67ccf8f5ea' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e9d03a62743d03d43d41665db5dd0645', 'Окулбеков Хурсанд Окулбекович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e9d03a62743d03d43d41665db5dd0645' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9246b2d5742c560b7437166bf39e0c71', 'Петросян Карен Гургенович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9246b2d5742c560b7437166bf39e0c71' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('39a7f105804f2a4783cf391e1339f08f', 'Разин Андрей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='39a7f105804f2a4783cf391e1339f08f' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0e65ef5fbecc57726eccdb847b582849', 'Рязанов Алексей Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0e65ef5fbecc57726eccdb847b582849' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d2cfd43aafb608a9a0ea749965c2d05d', 'Салия Иракли Левонович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d2cfd43aafb608a9a0ea749965c2d05d' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c46809fec0f4ca2bb4ca666ebb307f6a', 'Светайло Давид Владиславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c46809fec0f4ca2bb4ca666ebb307f6a' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f629948f4008920aa9a3e174615d6303', 'Смоляженков Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f629948f4008920aa9a3e174615d6303' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('033f45aaa8d8d5ec65385c0207fdf2f4', 'Харашвили Саба Темурович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='033f45aaa8d8d5ec65385c0207fdf2f4' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4cef8768e2f445b9058e8970a21e2c7f', 'Шектарев Андрей Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4cef8768e2f445b9058e8970a21e2c7f' AND t.name='PALERMO'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ddb50c2793813a84179e255e4b07c317', 'Артюшкин Иван Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ddb50c2793813a84179e255e4b07c317' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('497ca19996340984fd99d4e9322bfc05', 'Галаган Алексей Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='497ca19996340984fd99d4e9322bfc05' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ebc700f6a105f7adfef27c3072ef823', 'Какорин Артем Константинович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ebc700f6a105f7adfef27c3072ef823' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8f4e02fde97a6a0afe91cc0556057a27', 'Карауш Михаил Леонидович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8f4e02fde97a6a0afe91cc0556057a27' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fbdc56f27b90bddf041c31669d055c8c', 'Киселёв Степан Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fbdc56f27b90bddf041c31669d055c8c' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5d9b6205f53dbb0503f10486387cbb0f', 'Колесников Максим Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5d9b6205f53dbb0503f10486387cbb0f' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5af57367d1ca171e8eb41087840b2f82', 'Кукушкин Алексей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5af57367d1ca171e8eb41087840b2f82' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d86cc2ae8e329fd50f260c24560ac67d', 'Логунов Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d86cc2ae8e329fd50f260c24560ac67d' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('93486b3e10bdae5bab6de952577379f8', 'Лунин Анатолий Вадимович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='93486b3e10bdae5bab6de952577379f8' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e6e422a57b16fbddabb1e3d7e44528fe', 'Масленников Максим Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e6e422a57b16fbddabb1e3d7e44528fe' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d6c7a0949b9ae2928e4098477092f38', 'Панков Леонид Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d6c7a0949b9ae2928e4098477092f38' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d7ae621b4b7ea683638c5313e415e57c', 'Платов Дмитрий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d7ae621b4b7ea683638c5313e415e57c' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('011756a930027ad72323bec65c7d169b', 'Почеховский Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='011756a930027ad72323bec65c7d169b' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8bcb4c19bf360d50e71c28db78fc1788', 'Споняков Евгений Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8bcb4c19bf360d50e71c28db78fc1788' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bcb832407c9312f9261a62fb3d34a0dd', 'Хитров Дмитрий Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bcb832407c9312f9261a62fb3d34a0dd' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('14baea0a58df4df948a31ce3e5322eea', 'Юдаков Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='14baea0a58df4df948a31ce3e5322eea' AND t.name='ТЕМП INS Автоподбор'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('02f649e929f29d4fdbd7fad1ff1e96be', 'Власенко Ярослав Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='02f649e929f29d4fdbd7fad1ff1e96be' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3264de7eafc2f45e36d9574a25037655', 'Горлатов Михаил Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3264de7eafc2f45e36d9574a25037655' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9befe1ddb65e8e4f1ec193465dc0aef5', 'Гостев Станислав Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9befe1ddb65e8e4f1ec193465dc0aef5' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('813de60799ed0b8f6a8f805c52c7eed5', 'Исаев Николай Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='813de60799ed0b8f6a8f805c52c7eed5' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('739c402d7b9a5fad46b871ae21c17d51', 'Кайнов Константин Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='739c402d7b9a5fad46b871ae21c17d51' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b4efb7b76b71d94e624d23656c16e0fe', 'Калмыков Андрей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b4efb7b76b71d94e624d23656c16e0fe' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f0a1c0533643342789e7ddcf996bf08a', 'Кешишев Валерий Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f0a1c0533643342789e7ddcf996bf08a' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('41bad6139ce1cc85baff94e44388ead7', 'Кочубеев Артем Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='41bad6139ce1cc85baff94e44388ead7' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('204451fe923143656533deab7ed707bc', 'Лункин Сергей Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='204451fe923143656533deab7ed707bc' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dc94ebf9cb8eeb5d7c5544a13cb1d914', 'Майоров Роман Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dc94ebf9cb8eeb5d7c5544a13cb1d914' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ef079512ad7c769ab03a49590b8872da', 'Малин Егор Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ef079512ad7c769ab03a49590b8872da' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5d59031f29944744a901731e14af76bb', 'Николаев Тимур Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5d59031f29944744a901731e14af76bb' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0fa99843d99f2bc73ac4a9629bce07d4', 'Озерский Алексей Вячеславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0fa99843d99f2bc73ac4a9629bce07d4' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c2eb7dcea254f982b24df10b2869f0f2', 'Поляков Алексей Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c2eb7dcea254f982b24df10b2869f0f2' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77ea61d06271dbf2f707e5568c43ae00', 'Удовиченко Сергей Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77ea61d06271dbf2f707e5568c43ae00' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('83f8c5070d682b62ef1cdeca7c38cfe4', 'Чепинога Глеб Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='83f8c5070d682b62ef1cdeca7c38cfe4' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a3d9c1c86017a30c72875dd58383a2e8', 'Чернухин Антон Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a3d9c1c86017a30c72875dd58383a2e8' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8a172e3c413d53f5b3444272bc9cd24b', 'Чернухин Артем Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8a172e3c413d53f5b3444272bc9cd24b' AND t.name='КОРОНА БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f56c994e308f26e8145a4711e3e82b57', 'Азаев Мушвиг Шахин Оглы', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f56c994e308f26e8145a4711e3e82b57' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cfd5b4b97bbdb156d48499c4c8a4e838', 'Азаев Сахил Шахин Оглы', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cfd5b4b97bbdb156d48499c4c8a4e838' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('47aeaee142fa649d4e17460826e46c9a', 'Бинятов Фамил Октай Оглы', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='47aeaee142fa649d4e17460826e46c9a' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1ef14c9e5b251e39bdb54ff0ac8f1a58', 'Далгатов Рамазан Заурович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1ef14c9e5b251e39bdb54ff0ac8f1a58' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('299450d0046d8212cfd924ccdf65d65e', 'Демьяновский Захар Максимович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='299450d0046d8212cfd924ccdf65d65e' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5a16bdb78e65463120348959c741cc71', 'Евсюков Тимофей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5a16bdb78e65463120348959c741cc71' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('01bb16e48d688e3fdfebaadd116d9890', 'Железняк Кирилл Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='01bb16e48d688e3fdfebaadd116d9890' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c089e899ce7cf3cea53d2592f3d46a9', 'Каримов Рустам Самид Оглы', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c089e899ce7cf3cea53d2592f3d46a9' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b422005a37c19a747698b889cd61ef31', 'Конюшенко Александр Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b422005a37c19a747698b889cd61ef31' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9b42cbfdb9ecc5db0ae275ce748bb4ff', 'Крылов Дэниэль Умидович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9b42cbfdb9ecc5db0ae275ce748bb4ff' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ed853a519106d9bc73c6e63a804a39f3', 'Лагутин Руслан Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ed853a519106d9bc73c6e63a804a39f3' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2df8770f24417f7f145b3987ca229b6', 'Межевов Илья Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2df8770f24417f7f145b3987ca229b6' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26b004f89c1ee032833c6103e344840c', 'Орлов Елисей Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26b004f89c1ee032833c6103e344840c' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('49ef5ca1a74ccacd635d41694f489b06', 'Папян Арен Артаки', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='49ef5ca1a74ccacd635d41694f489b06' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d5e0cd586b8f408c0a12426ebdae480b', 'Папян Артем Артаки', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d5e0cd586b8f408c0a12426ebdae480b' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9e61ae74153425ead158525801da0525', 'Хакимов Генрих Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9e61ae74153425ead158525801da0525' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8fb509b6bdafb7e346cede705344f1b0', 'Царукян Самвел Артакович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8fb509b6bdafb7e346cede705344f1b0' AND t.name='INTERNATIONAL'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b0ffd086a85cd42152c23c52a58730da', 'Гводков Евгений Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b0ffd086a85cd42152c23c52a58730da' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c2e385c3f150bae367d12a9ed76651c9', 'Гримодеев Сергей Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c2e385c3f150bae367d12a9ed76651c9' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0e8b549034ee1649fb339a8d38897908', 'Дацко Сергей Григорьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0e8b549034ee1649fb339a8d38897908' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c09c8442cdb5c0fab76e4980a8071351', 'Земляков Богдан Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c09c8442cdb5c0fab76e4980a8071351' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3b1ead010be2c447c868a5113e3c4817', 'Золотых Пётр Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3b1ead010be2c447c868a5113e3c4817' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('41aa6abc1990b504d767f9431e17051d', 'Мазуренко Роман Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='41aa6abc1990b504d767f9431e17051d' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe1fa0df70e8505e57ec1e22f22a8319', 'Макеев Алексей Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe1fa0df70e8505e57ec1e22f22a8319' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2130664bf306bfbcb297b046671ee02e', 'Малыгин Кирилл Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2130664bf306bfbcb297b046671ee02e' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e11603c8328f42ab0e4d4302692b3b0d', 'Мамедов Самир Русланович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e11603c8328f42ab0e4d4302692b3b0d' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('86b1136836e2f607957d61788c50aee8', 'Мотков Андрей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='86b1136836e2f607957d61788c50aee8' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2dfa839d8134b68e845add6a865ad92', 'Никулин Вадим Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2dfa839d8134b68e845add6a865ad92' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('65b2f8c879dacfe09ed36b986c627b7d', 'Пантюхин Иван Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='65b2f8c879dacfe09ed36b986c627b7d' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3bef3167da7055f68270b151c7a634df', 'Радель Дмитрий Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3bef3167da7055f68270b151c7a634df' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aa399de068dc89cd65f1abeba6d1746a', 'Родионов Игорь Артёмович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aa399de068dc89cd65f1abeba6d1746a' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c389916532238cee073b5bfe63457907', 'Самохин Дмитрий Геннадьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c389916532238cee073b5bfe63457907' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3615697c0108ea5bcea8722bb437acc8', 'Соловьёв Максим Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3615697c0108ea5bcea8722bb437acc8' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2c29cbd2f13aaaaed7306ba314eb8a21', 'Чайка Сергей Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2c29cbd2f13aaaaed7306ba314eb8a21' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('86dd093dab6c14f3c93b1dda47d97297', 'Шогин Анатолий Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='86dd093dab6c14f3c93b1dda47d97297' AND t.name='ЧЕТЫРЕ ЛАПЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4aed79412ab41cd180fa900b9b7e06bf', 'Бобков Николай Васильевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4aed79412ab41cd180fa900b9b7e06bf' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d698af9986087ff04ec3070dbaa63e5', 'Бодунов Ярослав Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d698af9986087ff04ec3070dbaa63e5' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6e5290e293a22c808b76f6a05c43011d', 'Брусов Алексей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6e5290e293a22c808b76f6a05c43011d' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ae8aba5a00d90f9d28f4e912353d441', 'Вилков Дмитрий Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ae8aba5a00d90f9d28f4e912353d441' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5d882d0df21a3f57a3448a8543e5ef05', 'Ипец Иван Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5d882d0df21a3f57a3448a8543e5ef05' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4a2ccf00ef21540e80ee5ce42ce0e500', 'Каротаев Егор Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4a2ccf00ef21540e80ee5ce42ce0e500' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('63f8e8177f6a1fcbccf715f801a3d7a4', 'Кожевников Александр Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='63f8e8177f6a1fcbccf715f801a3d7a4' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d412a02214ad6279d25a6b510ce970b1', 'Комаров Андрей Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d412a02214ad6279d25a6b510ce970b1' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e317e567269fe292f49043dff643310d', 'Копылов Никита Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e317e567269fe292f49043dff643310d' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4cc094f2a409595c75537bbf6bcb5c66', 'Котельников Кирилл Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4cc094f2a409595c75537bbf6bcb5c66' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('88d7940c90d4d263fd9dd14440145604', 'Лункин Егор Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='88d7940c90d4d263fd9dd14440145604' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ff014e4c4b84a26d9aff43e41d6bd1e', 'Малякин Михаил Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ff014e4c4b84a26d9aff43e41d6bd1e' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('79f25084447510355887b18ad478c96d', 'Матюхин Павел Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='79f25084447510355887b18ad478c96d' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('526189c6505e6c1c088c210eefd12c3e', 'Мельников Дмитрий Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='526189c6505e6c1c088c210eefd12c3e' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e151d9733963d584ee2a86bab1747506', 'Мордашов Артём Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e151d9733963d584ee2a86bab1747506' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4a9e7e9510248a62355535d06b746fd5', 'Пазюк Андрей Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4a9e7e9510248a62355535d06b746fd5' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('79cc97a9fb45e96700515c5699d4e666', 'Петриков Юрий Григорьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='79cc97a9fb45e96700515c5699d4e666' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('daf9bf18067ac0231477cc10d860d89d', 'Прусов Данил Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='daf9bf18067ac0231477cc10d860d89d' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bc699a5138d08d09f90c60fdecdfb50d', 'Рухлев Александр Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bc699a5138d08d09f90c60fdecdfb50d' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b4b45a3369c307b95cf447fdaf5cc144', 'Скляр Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b4b45a3369c307b95cf447fdaf5cc144' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f6ba3b8e1a7109154a23fd053db108bf', 'Трушкин Денис Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f6ba3b8e1a7109154a23fd053db108bf' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3586329fd7fac3f4963299530aed736f', 'Халитов Михаил Эдуардович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3586329fd7fac3f4963299530aed736f' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ad78d741a39b8713ddc61b0638727cbc', 'Шадаев Кирилл Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ad78d741a39b8713ddc61b0638727cbc' AND t.name='ЭМЗ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('512c3e148ccdff646de7985f4e3049ea', 'Алимов Максуджон Бахромович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='512c3e148ccdff646de7985f4e3049ea' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e276dee74de8ce64ae7e35264ac10d26', 'Бобомуродов Газал Нематиллаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e276dee74de8ce64ae7e35264ac10d26' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2003063c3508f059c20fd9ad7780b2ef', 'Джамолидинзода Нуриддин', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2003063c3508f059c20fd9ad7780b2ef' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('013ea35a8e20b00b4c24b0211ef3c9da', 'Косимов Начибулло Махмадиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='013ea35a8e20b00b4c24b0211ef3c9da' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a5767a0bc5289e8cb1bdd45b0d327bfc', 'Мамарахимов Фарходжон Абдурасулович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a5767a0bc5289e8cb1bdd45b0d327bfc' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2a40043dbe2fa7477bc6319b3802ea73', 'Норбутаев Саидакбар Мухидинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2a40043dbe2fa7477bc6319b3802ea73' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('309a509f3f7d166955f1a96f4a9dde30', 'Равшанов Бахромжон Муроталиевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='309a509f3f7d166955f1a96f4a9dde30' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('00bc4142123b200529dedb125cba1659', 'Равшанов Мухаммаджон Хошимхонович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='00bc4142123b200529dedb125cba1659' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26626a5f59814a766e2da189e84b8ca8', 'Тешазода Мухторджон Абдулхамид', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26626a5f59814a766e2da189e84b8ca8' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d616332ddbcf1dbc49bc5537f752b37c', 'Шераев Комилжон Мустафакулович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d616332ddbcf1dbc49bc5537f752b37c' AND t.name='ИСТИКЛОЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('443bdf0e44650a5cddce21ebe0d4fe40', 'Бароян Рафаэль Гарикович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='443bdf0e44650a5cddce21ebe0d4fe40' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2b915092953b64318e95c93d15ee2737', 'Бескибальный Кирилл Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2b915092953b64318e95c93d15ee2737' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d8438a29b3b286ccada5cce1b48e7d4d', 'Боков Константин Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d8438a29b3b286ccada5cce1b48e7d4d' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('67ade1524bcabf4c09ab50a5d32a89c3', 'Бушнин Сергей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='67ade1524bcabf4c09ab50a5d32a89c3' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3862ac9790f460f6c438ba07f863c4a9', 'Власов Артём Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3862ac9790f460f6c438ba07f863c4a9' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4d32f21dcad68f80c16e157d2230e608', 'Воловик Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4d32f21dcad68f80c16e157d2230e608' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('97baec886b9d862773bb2ccefc56477e', 'Дмитриев Георгий Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='97baec886b9d862773bb2ccefc56477e' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4632cffc98d0e0b0d992d7f5b0661ad9', 'Зимин Олег Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4632cffc98d0e0b0d992d7f5b0661ad9' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('73e7ada99577d2d5e7136640dd86990a', 'Ибрагимов Расул Латифович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='73e7ada99577d2d5e7136640dd86990a' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ee3b4c5c93dcdbeaa47446fd388e0849', 'Каримов Мехрон Эргашович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ee3b4c5c93dcdbeaa47446fd388e0849' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('360829afdc411d8ee599eaadc937ebec', 'Кесельман Семён Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='360829afdc411d8ee599eaadc937ebec' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('477eea5b91a54d5520233602a7b98473', 'Лисицын Егор Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='477eea5b91a54d5520233602a7b98473' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d9306870402de0cf7c332eeb6aae9c2a', 'Матюшков Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d9306870402de0cf7c332eeb6aae9c2a' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('06665dd1703433377c86890e734c4f4a', 'Назаров Артём Максимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='06665dd1703433377c86890e734c4f4a' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('132655289dc2ac51584a91e798bde673', 'Нурматов Авазбек Алишерович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='132655289dc2ac51584a91e798bde673' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('41f0b8cfa6c1ca988951d9be1f580ff3', 'Писарьков Иван Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='41f0b8cfa6c1ca988951d9be1f580ff3' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fedd3e195df367764050cefd97a9c2d0', 'Поликушин Егор Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fedd3e195df367764050cefd97a9c2d0' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ced61789dd8e9972c721c9652d924c89', 'Прохоров Андрей Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ced61789dd8e9972c721c9652d924c89' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('caef4a3e5331aeaca164c7eb9e51ce0b', 'Рогалёв Никита Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='caef4a3e5331aeaca164c7eb9e51ce0b' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c525f5dde25b4633bd01b03749bc53d4', 'Следник Александр Серегеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c525f5dde25b4633bd01b03749bc53d4' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('da21a99a09dbd3b400f2e31c86aa8318', 'Чернилин Павел Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='da21a99a09dbd3b400f2e31c86aa8318' AND t.name='ПРОМОТОРС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9f0cd52e80d6d12ffdb6a08835c4a65b', 'Заболотный Денис Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9f0cd52e80d6d12ffdb6a08835c4a65b' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d8d011eb30d35bfa6f94d27a9af41953', 'Кочетков Роман Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d8d011eb30d35bfa6f94d27a9af41953' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('81e00a29c1895554a34b2aaa7c2c13a8', 'Ларионов Илья Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='81e00a29c1895554a34b2aaa7c2c13a8' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('604a927b9a3eec2ba1bf738f61a4f096', 'Лобачёв Игорь Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='604a927b9a3eec2ba1bf738f61a4f096' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2e2e490d323a3b3609b90ab5388598ba', 'Макаров Даниил Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2e2e490d323a3b3609b90ab5388598ba' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6f67df8e0416a374bd8db0c0773a24b9', 'Новичков Максим Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6f67df8e0416a374bd8db0c0773a24b9' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8191a90de6ed6ad166cbfdc99ac9216', 'Ольховский Роман Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8191a90de6ed6ad166cbfdc99ac9216' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a793e9c5536440f3eb51bb597c2b241d', 'Пархоменко Алексей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a793e9c5536440f3eb51bb597c2b241d' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2fbdc5321cdfd338b3483a6e8facd09f', 'Пархоменко Дмитрий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2fbdc5321cdfd338b3483a6e8facd09f' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6360b87f41cdec2ff1ef0538008fc0cb', 'Посисеев Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6360b87f41cdec2ff1ef0538008fc0cb' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('53cc234df6774a5a734f62d12bcad2cc', 'Прибыловский Леонид Владленович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='53cc234df6774a5a734f62d12bcad2cc' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a180e57dfc03bf1487a0c854eab0190c', 'Рымар Александр Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a180e57dfc03bf1487a0c854eab0190c' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b10d22c531146c8d2930278f7537bdcc', 'Рябов Владислав Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b10d22c531146c8d2930278f7537bdcc' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7bba45b68a223733264085b5077da543', 'Смирнов Даниил Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7bba45b68a223733264085b5077da543' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dd36b6fad4e40ed4ed991320a7403834', 'Тихонов Илья Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dd36b6fad4e40ed4ed991320a7403834' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a41b6cf4890801b80f753b1f02f32806', 'Хачатрян Айк Самвелович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a41b6cf4890801b80f753b1f02f32806' AND t.name='HELLES'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eaf4634509c8929c9422e433c4dcab07', 'Акатьев Максим Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eaf4634509c8929c9422e433c4dcab07' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('344f89282bf9cbaf80030db0e2ac5737', 'Алёшин Александр Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='344f89282bf9cbaf80030db0e2ac5737' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('df1e1ca9179d1f141cb50c7182d6064e', 'Булгаков Павел Намигович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='df1e1ca9179d1f141cb50c7182d6064e' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('649018e6a46e02c9ec086e2b94e1a487', 'Гаффнер Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='649018e6a46e02c9ec086e2b94e1a487' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('991ef01d668d3f5f1cbd24547dbdf99d', 'Домрачев Илья Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='991ef01d668d3f5f1cbd24547dbdf99d' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e614b0637058b4c36d6c6eb5277cb352', 'Забелин Павел Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e614b0637058b4c36d6c6eb5277cb352' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('751c7eeaef48d9ed097b9931748d7766', 'Зотов Даниил Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='751c7eeaef48d9ed097b9931748d7766' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2171e89c5615464125df74b52888924b', 'Караваев Владислав Федорович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2171e89c5615464125df74b52888924b' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7cbbc5ac161a98386bcb861f58a622bd', 'Кетруш Давид Анатолиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7cbbc5ac161a98386bcb861f58a622bd' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b74279aeae0865b6849d0e11e657774a', 'Кирилкин Максим Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b74279aeae0865b6849d0e11e657774a' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e0df1ac0f7ec67908075dfe2c65d052d', 'Козуб Игорь Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e0df1ac0f7ec67908075dfe2c65d052d' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('40fd92157bd6a841108891211e707e8e', 'Колосов Максим Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='40fd92157bd6a841108891211e707e8e' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ae88a07e07cac21bb06bea2307efaeed', 'Лазарев Владимир Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ae88a07e07cac21bb06bea2307efaeed' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f1d99a085b2fe11445a0847293ca480c', 'Логушков Вадим Денисович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f1d99a085b2fe11445a0847293ca480c' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('25cab4167380b1b57807daa07df6d234', 'Муратов Амир Алимжанович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='25cab4167380b1b57807daa07df6d234' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5b3ee38128f094a1e2be7296e2d9d920', 'Пеньков Владислав Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5b3ee38128f094a1e2be7296e2d9d920' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e77f5b195bf53fbc124f1dfa25343878', 'Погосян Арман Самвелович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e77f5b195bf53fbc124f1dfa25343878' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d2423390c8e26514b588731c37d510cc', 'Понявин Артем Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d2423390c8e26514b588731c37d510cc' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('21a51ed34ae44df3eb5208e665ca04b9', 'Пронин Иван Денисович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='21a51ed34ae44df3eb5208e665ca04b9' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf1354ee7e8007c6426e98d1bc854795', 'Пунин Артём Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf1354ee7e8007c6426e98d1bc854795' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('67c00a1d9c406723f29fc2648e271ea9', 'Ростовщиков Дмитрий Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='67c00a1d9c406723f29fc2648e271ea9' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d3b488d7cbd76874d413e565a3919010', 'Стихарёв Дмитрий Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d3b488d7cbd76874d413e565a3919010' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('14ac45ba9ad8c1c4bedac5b5c61c5c56', 'Сурков Вадим Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='14ac45ba9ad8c1c4bedac5b5c61c5c56' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5bb21372aedeee6b8561d14ba12b87ef', 'Сырбу Константин Григорьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5bb21372aedeee6b8561d14ba12b87ef' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a6ce14b174e0e57d4f529b50a9d560f3', 'Устинов Евгений Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a6ce14b174e0e57d4f529b50a9d560f3' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('378507ee8e355f5f2575f8f09abd5d26', 'Устинов Сергей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='378507ee8e355f5f2575f8f09abd5d26' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e0e2442e7bf78d21c6e1ac075a641cb8', 'Федотов Даниил Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e0e2442e7bf78d21c6e1ac075a641cb8' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('70a6f02c142277ef90951e5c2d229a27', 'Шамухамедов Шамурад Шаравшанович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='70a6f02c142277ef90951e5c2d229a27' AND t.name='БАНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('25e212724597c7d59f07dc42400099e7', 'Баширов Эмиль Абдурашидович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='25e212724597c7d59f07dc42400099e7' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3c85de153a49b329f838d30a48731362', 'Беляев-Жаров Павел Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3c85de153a49b329f838d30a48731362' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('de34fd8114a02564ec346d4daa012828', 'Болбочану Иван Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='de34fd8114a02564ec346d4daa012828' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('263ae7bb92252bddd07237110eda5bfb', 'Боровинский Антон Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='263ae7bb92252bddd07237110eda5bfb' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b4274537f0aafebf26a5c5a96f2bff2f', 'Гулуев Роял Мушвиг Оглы', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b4274537f0aafebf26a5c5a96f2bff2f' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('66f52041b7001224ff62352cb93da891', 'Дадашов Самир Яковлевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='66f52041b7001224ff62352cb93da891' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f275421d45cf32e558bed1c596afad69', 'Ершов Сергей Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f275421d45cf32e558bed1c596afad69' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('73ad409fd9e5ddf0fcc6e666f9838307', 'Колосов Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='73ad409fd9e5ddf0fcc6e666f9838307' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2f83a2272d62a44f61464fcddbc8dd8a', 'Кумаков Матвей Евгеньевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2f83a2272d62a44f61464fcddbc8dd8a' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c64b198b75c39ffe31f953b44a2c53b9', 'Маркосян Паском Лерникович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c64b198b75c39ffe31f953b44a2c53b9' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d5538165851d54a95d69ab1872cee404', 'Мирсодиков Илхом Баротджонович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d5538165851d54a95d69ab1872cee404' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('29db227739dc33d5908e20424a50a4b3', 'Митькин Дмитрий Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='29db227739dc33d5908e20424a50a4b3' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6506db945e58daf1310d5cfaed558e34', 'Михайлов Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6506db945e58daf1310d5cfaed558e34' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bbad588f3110b63ebc81df8c5f4e99ed', 'Назаров Владимир Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bbad588f3110b63ebc81df8c5f4e99ed' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9ac6f1785437ae5329d5dd9f55c49592', 'Пупонов Сергей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9ac6f1785437ae5329d5dd9f55c49592' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4f6aa377f240aa2bfa1fb2d74df79bd5', 'Сафтаров Руфат Алисьян-Оглы', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4f6aa377f240aa2bfa1fb2d74df79bd5' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3017c8d761e2734e2c259dec8ce381d3', 'Серков Роман Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3017c8d761e2734e2c259dec8ce381d3' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7f722b87e840321854efd0a1e9da33a6', 'Скородумов Кирилл Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7f722b87e840321854efd0a1e9da33a6' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aea9585c180853eb81a1dc37ab0b0661', 'Слюсарь Руслан Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aea9585c180853eb81a1dc37ab0b0661' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2deb266800c142dfd36cd6b0547ad1de', 'Смакотин Николай Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2deb266800c142dfd36cd6b0547ad1de' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e02fe069487eecf1d071d11389b35f2d', 'Тамгин Олег Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e02fe069487eecf1d071d11389b35f2d' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9d1d0351b249c1bd5782008fcd1b4be2', 'Шепелев Антон Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9d1d0351b249c1bd5782008fcd1b4be2' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c4251e49ceff96d11117f2b03ae06c81', 'Шомахмадов Амир Исматуллович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c4251e49ceff96d11117f2b03ae06c81' AND t.name='ТОКК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3f7b4686c1bfb4d4c5d9f9c342a16b24', 'Бардыгин Владимир Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3f7b4686c1bfb4d4c5d9f9c342a16b24' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ed71cea704d17377f2d463f6a5fb614d', 'Богданов Павел Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ed71cea704d17377f2d463f6a5fb614d' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c483dcef725ec30b2449ec72bb2ee9fc', 'Брыгалин Андрей Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c483dcef725ec30b2449ec72bb2ee9fc' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7674d7a08ce4e109c8997c9d608e2ee3', 'Васильев Максим Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7674d7a08ce4e109c8997c9d608e2ee3' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a944dfe7be96530f9d810a1b8a939dd9', 'Данилов Антон Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a944dfe7be96530f9d810a1b8a939dd9' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c759c2d2607af30a31822837e0177ccf', 'Дугарский Александр Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c759c2d2607af30a31822837e0177ccf' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1f4619eeb60c9d8c50d460119dcaf4c3', 'Еремеев Владислав Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1f4619eeb60c9d8c50d460119dcaf4c3' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('690dcfffcd3f1863efb52e65d3a447d5', 'Канищев Илья Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='690dcfffcd3f1863efb52e65d3a447d5' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9d81892bf909c719e9439492649ca57c', 'Кирсанов Константин Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9d81892bf909c719e9439492649ca57c' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e85dd18d3b617aaa09bf7b9d167e1b19', 'Кузнецов Максим Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e85dd18d3b617aaa09bf7b9d167e1b19' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dc98e7662da997f7bf15d246a2cf7509', 'Лонщаков Павел Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dc98e7662da997f7bf15d246a2cf7509' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bdcdd00b1cd689b3d4c71acbe49b47b4', 'Маслов Алексей Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bdcdd00b1cd689b3d4c71acbe49b47b4' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3e5ce46484f7023f1c07ce6a67774405', 'Маслов Сергей Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3e5ce46484f7023f1c07ce6a67774405' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eadc94c1fc7fec4a81afc7fea834cd9d', 'Мовсумов Кирим Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eadc94c1fc7fec4a81afc7fea834cd9d' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('66074f7c14c2595837d92baf56385965', 'Мордаков Артем Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='66074f7c14c2595837d92baf56385965' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e25d8c65bf135faa94f17918b6d850eb', 'Савцилло Артём Кириллович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e25d8c65bf135faa94f17918b6d850eb' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('331c9f74eed2c44b8ae20ba50c0487fe', 'Семенов Григорий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='331c9f74eed2c44b8ae20ba50c0487fe' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ef4368accf0d98f9014db9e6c20a677', 'Соболев Алексей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ef4368accf0d98f9014db9e6c20a677' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26a94253a10bc5a93967d88c4b7ac02d', 'Спирин Святослав Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26a94253a10bc5a93967d88c4b7ac02d' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0fd0734ffff17cce1168b9de3975e33c', 'Трифонов Тимур Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0fd0734ffff17cce1168b9de3975e33c' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('35ca9d2b8ced9337f544c158d73e7cfb', 'Хлопко Никита Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='35ca9d2b8ced9337f544c158d73e7cfb' AND t.name='ЛЕОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6d2eab7a0026450c6e6639d6b3dcabe9', 'Абдулхакзода Абдухаким', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6d2eab7a0026450c6e6639d6b3dcabe9' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('17568d83e975055e197cfc1dd81fbe3f', 'Амириллозода Абдуллозода Асфиёхуча', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='17568d83e975055e197cfc1dd81fbe3f' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1a259f8c92aaabb654d086f9326e5be0', 'Гоффоров Искандар Тулкин Угли', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1a259f8c92aaabb654d086f9326e5be0' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c19cf2e28d51a82f251c81318cf6a4c7', 'Домуллозода Абдусабур', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c19cf2e28d51a82f251c81318cf6a4c7' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('595f46f225ee0c051506190c1331e3f2', 'Домуллозода Сафиюллохон', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='595f46f225ee0c051506190c1331e3f2' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('02386d0e5600aa6e0b0367a881b0d815', 'Котенко Сергей Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='02386d0e5600aa6e0b0367a881b0d815' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b34c377997243736b2addcbfd4803a42', 'Лазизов Савридин Гиесович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b34c377997243736b2addcbfd4803a42' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('af5c026ef07f13fc98bf8f3ee6b46ab0', 'Мордасов Вячеслав Викторович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='af5c026ef07f13fc98bf8f3ee6b46ab0' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('31ac0e93ada7afd90fdc715fae31cf3c', 'Мусаямов Абдучалол Комилджонович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='31ac0e93ada7afd90fdc715fae31cf3c' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3301afd616321ab899982b7c77d08807', 'Набиев Ходжипулод Абдурасулович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3301afd616321ab899982b7c77d08807' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5d7aee75d1fdfaaf1cc33ad58250c082', 'Родичев Константин Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5d7aee75d1fdfaaf1cc33ad58250c082' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('68d453d8ce1a4ccfdac99a5dd8002a0e', 'Самадов Абдурафи Рахимчонович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='68d453d8ce1a4ccfdac99a5dd8002a0e' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3a94a042e7e708b173c8ac5ba43258c4', 'Сафаров Мехробидин Насруллоевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3a94a042e7e708b173c8ac5ba43258c4' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d9439a3459eeca133e082318d65c0908', 'Саханов Отахон Муродиллаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d9439a3459eeca133e082318d65c0908' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e90d484a553c2356904938bf0753a985', 'Туйчиев Акрам Екубович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e90d484a553c2356904938bf0753a985' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fa281b76124fe08e97d565f717a2a8e3', 'Файзиев Руслан', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fa281b76124fe08e97d565f717a2a8e3' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7401543cb5bc2c2826a07e7a607db38e', 'Хасанов Зикрулло Ахруллоевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7401543cb5bc2c2826a07e7a607db38e' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('87ddaa160f340c008e39200ae6707caf', 'Холов Мухаммад Давлаткулович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='87ddaa160f340c008e39200ae6707caf' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('29049eb12afbe8ac8a092b40229a76ed', 'Хусейнов Парвиз Хафизович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='29049eb12afbe8ac8a092b40229a76ed' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('066c62bf67e61c682644e3c3ecb3e0f2', 'Шарипов Шарифджон Амирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='066c62bf67e61c682644e3c3ecb3e0f2' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('da1a647bcc536eb5e08940ec26b9cc59', 'Шодмонов Парвиз Киматшоевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='da1a647bcc536eb5e08940ec26b9cc59' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('da24c04e1a506f3bb49823e097bc73b5', 'Юнуси Сулаймон', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='da24c04e1a506f3bb49823e097bc73b5' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ee201d34dba2cdf7bd783b98ffdcb39', 'Юрченко Николай Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ee201d34dba2cdf7bd783b98ffdcb39' AND t.name='ПОИСК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe4d1191abe66e88fe2697213c6db0ff', 'Асадбеков Акобир Тохирбекович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe4d1191abe66e88fe2697213c6db0ff' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fec1149dffaf7b786986c4aa88291558', 'Джоналиев Фируз Ильчибекович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fec1149dffaf7b786986c4aa88291558' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ca197269d9f0b5542e6201fb60295025', 'Ёрасенов Курбонхусейн Мунавварович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ca197269d9f0b5542e6201fb60295025' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ade9e1262aa4229acde031f3668c25d0', 'Жовлиев Нурбек Эркин Угли', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ade9e1262aa4229acde031f3668c25d0' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2e3918f548febf657f996fcb7212e7a3', 'Иброхимов Ёкуб Шамсудинович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2e3918f548febf657f996fcb7212e7a3' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2f133ca4316999043eee3e08ac21abc', 'Мамаджонов Кодиржон Собитхон Угли', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2f133ca4316999043eee3e08ac21abc' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2f220e9f7010000405f453da0f8d00ee', 'Мардонаев Наримон Бадахшонович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2f220e9f7010000405f453da0f8d00ee' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c1c24a7880686e49cec87a85eab3bdcb', 'Надиркулов Азизбек Алиджамович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c1c24a7880686e49cec87a85eab3bdcb' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3ef076e20fb0a8896d959b9d28936d59', 'Окимбеков Адиб Олимбекович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3ef076e20fb0a8896d959b9d28936d59' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9e1088dbaab592bedb7fc4c0775040e8', 'Саъдулоев Аброр Файзуллоевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9e1088dbaab592bedb7fc4c0775040e8' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4333a87814035588884badc3d0feb462', 'Саъдулоев Асрор Файзулоевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4333a87814035588884badc3d0feb462' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9127d52c709bdb61661a47a3ef1dd6e4', 'Юлдошев Равшан Олимжон Угли', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9127d52c709bdb61661a47a3ef1dd6e4' AND t.name='ЛИОН 04'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5417ba7e479672638416f4decd139b29', 'Баринов Роман Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5417ba7e479672638416f4decd139b29' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('45adad01b5d8665afc8f6026c5351813', 'Беляев Иван Ильич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='45adad01b5d8665afc8f6026c5351813' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('255111374ff4b3446b9a866a50d220b5', 'Борисов Алексей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='255111374ff4b3446b9a866a50d220b5' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('68ca9103dfcac38a8575da09f441b022', 'Греков Кирилл Романович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='68ca9103dfcac38a8575da09f441b022' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a19321bdfd28cfbe0be33d00a1400aca', 'Григорьев Артем Петрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a19321bdfd28cfbe0be33d00a1400aca' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('690b3929f2f9ef765c268500482c8379', 'Ежов Александр Денисович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='690b3929f2f9ef765c268500482c8379' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('49fb847d83f8114cdb7a16f1f65e20ea', 'Ерошевич Максим Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='49fb847d83f8114cdb7a16f1f65e20ea' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ec91b6e57fbe3165ea88756c04e6d6cf', 'Каплун Юрий Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ec91b6e57fbe3165ea88756c04e6d6cf' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('502f36cc8d76d3ec4962abdd4f2997f3', 'Колпиков Андрей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='502f36cc8d76d3ec4962abdd4f2997f3' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6c0320c7eec91c52abdcb7b3abff172e', 'Лобанов Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6c0320c7eec91c52abdcb7b3abff172e' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bacfc358dcfe65950275463435e0a286', 'Михайлов Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bacfc358dcfe65950275463435e0a286' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9bf11a07fbdca2ff97fd69823cb854b1', 'Мусатов Виктор Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9bf11a07fbdca2ff97fd69823cb854b1' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5597fd19282b69d6cf173ffd9b5bb162', 'Мякотин Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5597fd19282b69d6cf173ffd9b5bb162' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0dfca01a9543df4d23cb464fa4e60f74', 'Савин Артём Станиславович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0dfca01a9543df4d23cb464fa4e60f74' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b2c2366d971c76b945b3aec824fa74cb', 'Сарафанов Игорь Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b2c2366d971c76b945b3aec824fa74cb' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e890579c98b7b43dd4d871b1705ab2bc', 'Соколов Алексей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e890579c98b7b43dd4d871b1705ab2bc' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a96e8ad19559f28eee54b68865252671', 'Федотов Николай Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a96e8ad19559f28eee54b68865252671' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9036db8e18535e0d657f87e04323fac0', 'Филичкин Сергей Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9036db8e18535e0d657f87e04323fac0' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2d53ead1780be08255a244a9e97da972', 'Фролов Алексей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2d53ead1780be08255a244a9e97da972' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('31e5d6988cb74ad633ed8920289917c5', 'Чухлебов Денис Константинович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='31e5d6988cb74ad633ed8920289917c5' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4010cc60f9659296be7d43996dc56a58', 'Шеченков Кирилл Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4010cc60f9659296be7d43996dc56a58' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('efcc26d63229fa651e4db918189cce5d', 'Щеглов Андрей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='efcc26d63229fa651e4db918189cce5d' AND t.name='ШТУРМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('be3076b539fa68ed0dfe33faaf093ec1', 'Бровяков Андрей Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='be3076b539fa68ed0dfe33faaf093ec1' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e021c97082194a192dc8a1ea40cfac66', 'Веселов Евгений Михайлович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e021c97082194a192dc8a1ea40cfac66' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0ad6a001c35a92c36d4198b8527ccd6e', 'Воляница Павел Петрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0ad6a001c35a92c36d4198b8527ccd6e' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('823c7d11565f6fb787f59f1ed39c7dd4', 'Глебов Илья Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='823c7d11565f6fb787f59f1ed39c7dd4' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b1274bb550a2766190a8afb34a4d1142', 'Еремин Геннадий Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b1274bb550a2766190a8afb34a4d1142' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e6d6a75750833ce59651c551a984b61f', 'Ефимов Назар Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e6d6a75750833ce59651c551a984b61f' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a3c94d80c1310bd919fb03f32b91abe2', 'Карпович Александр Васильевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a3c94d80c1310bd919fb03f32b91abe2' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f19f9004ccaca1ec7cd755086be0951b', 'Кожевников Николай Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f19f9004ccaca1ec7cd755086be0951b' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5ac8c9a12b5cd986d5c1a481b092f271', 'Козлов Андрей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5ac8c9a12b5cd986d5c1a481b092f271' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a9bf6c031405064b8549dc671c2b04c2', 'Крюков Андрей Владиславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a9bf6c031405064b8549dc671c2b04c2' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c2225bc827b0e7fdcbea16896ee95086', 'Кузнецов Никита Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c2225bc827b0e7fdcbea16896ee95086' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf04fc717a2d4259e95c4d1d61b9b11d', 'Малоносов Сергей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf04fc717a2d4259e95c4d1d61b9b11d' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dfe37cd347c47f925e2159ac60331b80', 'Малышев Павел Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dfe37cd347c47f925e2159ac60331b80' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9369eb5bcf795da008d0900ccf356d2d', 'Матюшин Сергей Николаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9369eb5bcf795da008d0900ccf356d2d' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5db9fa618fd46396d3f4c67d450edb23', 'Муминов Шахзод Шавкатович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5db9fa618fd46396d3f4c67d450edb23' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6f533bb46f7e1799ec63102878dfa884', 'Муминов Шерзод Шавкатович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6f533bb46f7e1799ec63102878dfa884' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2ad7a77dbedbd20cb865e4af7b790c14', 'Попков Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2ad7a77dbedbd20cb865e4af7b790c14' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a77d10a2cace4175ae65e14e9d409ebd', 'Семёнов Олег Викторович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a77d10a2cace4175ae65e14e9d409ebd' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('520a9091214540db148fbd49bd2e1aa2', 'Сидюков Олег Николаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='520a9091214540db148fbd49bd2e1aa2' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e064f237e40e7eb6eedd5e61f00ff0e1', 'Симанов Дмитрий Анатольевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e064f237e40e7eb6eedd5e61f00ff0e1' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('93b8183ef6b188ad805d7addccf368cc', 'Судариков Артем Альбертович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='93b8183ef6b188ad805d7addccf368cc' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b75dadc15128722700dc28ebaffd161d', 'Терещенко Андрей Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b75dadc15128722700dc28ebaffd161d' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('91c949060f9b6a33403fa32e72e04f15', 'Фетисов Василий Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='91c949060f9b6a33403fa32e72e04f15' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d74956a8048841f91e741cd35ce0db89', 'Филимонов Михаил Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d74956a8048841f91e741cd35ce0db89' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0fa674c436333fe6e2e4fbbd4f089dfa', 'Филин Александр Борисович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0fa674c436333fe6e2e4fbbd4f089dfa' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c75a3b21b99e91d45f34245986f86e52', 'Хальметов Дамир Билалович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c75a3b21b99e91d45f34245986f86e52' AND t.name='ИЛЬИНКА'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f4310e0671fad38c5efd4d4ccd47a9a7', 'Ачин Евгений Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f4310e0671fad38c5efd4d4ccd47a9a7' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c327765027c4ac0e2a617d113b116395', 'Бабакин Алексей Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c327765027c4ac0e2a617d113b116395' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a72130e8b37704efd063b5c4ccf55496', 'Бутарев Тимофей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a72130e8b37704efd063b5c4ccf55496' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ecd045f569acc6936e505b383839685d', 'Гаричев Денис Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ecd045f569acc6936e505b383839685d' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7cebf808b08d2facb6f36436598ae8ce', 'Грибакин Иван Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7cebf808b08d2facb6f36436598ae8ce' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a94929f37ab1a30d0f3e2d33e6b566d5', 'Григорович Илья Иосифович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a94929f37ab1a30d0f3e2d33e6b566d5' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fd2a96315983b18482dd565876294afc', 'Ефременко Руслан Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fd2a96315983b18482dd565876294afc' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('395f40374faf0573919b93f43429258a', 'Жижкин Матвей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='395f40374faf0573919b93f43429258a' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5b13dc96bcf55e28feb72a66f25ff51d', 'Митин Владислав Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5b13dc96bcf55e28feb72a66f25ff51d' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2948ebae8868c3fb0bcef77a708f57a5', 'Павлов Тимур Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2948ebae8868c3fb0bcef77a708f57a5' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9b4e5494e0a9be32b293c18e1cc2989a', 'Парамонов Андрей Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9b4e5494e0a9be32b293c18e1cc2989a' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9fb6a5e38240b835373b7dfbf0932ef7', 'Саркисян Пётр Эдуардович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9fb6a5e38240b835373b7dfbf0932ef7' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('16aed4c160e05c02c7ba1ec7b8aa9bd6', 'Семенников Иван Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='16aed4c160e05c02c7ba1ec7b8aa9bd6' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7bc2677843bb3794657aa0a8797d3c7e', 'Сучков Данила Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7bc2677843bb3794657aa0a8797d3c7e' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('16814564518401ccfe6ac9a243991088', 'Сычёв Владислав Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='16814564518401ccfe6ac9a243991088' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e6c4dfe6c95e598f9f2304d12871b22e', 'Тихонов Павел Эдуардович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e6c4dfe6c95e598f9f2304d12871b22e' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cc22ffc48bfdcf199977648e28988fa9', 'Федосов Константин Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cc22ffc48bfdcf199977648e28988fa9' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('61a5fe8119c1f254c5a2adb661a49ebb', 'Ходяков Денис Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='61a5fe8119c1f254c5a2adb661a49ebb' AND t.name='АТЛЕТИК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2642bd215ebbeadc32a3a7f9668960c5', 'Аванесов Вадим Каренович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2642bd215ebbeadc32a3a7f9668960c5' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('55dfdeba4669a937602d11f79fbc33ac', 'Бунин Андрей Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='55dfdeba4669a937602d11f79fbc33ac' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d658c6c595bc7f7e803cbf9aa0b71914', 'Дыцков Сергей Владимирович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d658c6c595bc7f7e803cbf9aa0b71914' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d3520c1e86f309267c61f234283d31e0', 'Казарян Александр Геворгович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d3520c1e86f309267c61f234283d31e0' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e6c2c470dfa73086236a3baa8f96a206', 'Калиниченко Николай Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e6c2c470dfa73086236a3baa8f96a206' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('565698d5591bb0e7b41f90ae2fb99c59', 'Найдёнышев Святослав Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='565698d5591bb0e7b41f90ae2fb99c59' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe9516608b39e7a9dbe4857189095d5d', 'Новиков Борис Ильич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe9516608b39e7a9dbe4857189095d5d' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('255514a5cb4d29aed635f00b6fc05410', 'Пискунов Кирилл Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='255514a5cb4d29aed635f00b6fc05410' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b1a7bed2c4912ef0ae372b82642b5de2', 'Сафронов Вячеслав Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b1a7bed2c4912ef0ae372b82642b5de2' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('372496f5d3879e14ffb518c2f4d3b875', 'Сафронов Олег Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='372496f5d3879e14ffb518c2f4d3b875' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2621b7f927318da9d9d8eefa4deddbc8', 'Солодков Антон Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2621b7f927318da9d9d8eefa4deddbc8' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e805a2e4252a7a2ede34c1197f8bd985', 'Солодков Глеб Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e805a2e4252a7a2ede34c1197f8bd985' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ba2ad97563d65315cf8f783049474e50', 'Шепелев Сергей Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ba2ad97563d65315cf8f783049474e50' AND t.name='ФТП'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('419704d90a68b714c6a35ec2bb21d2ee', 'Андронов Вадим Иванович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='419704d90a68b714c6a35ec2bb21d2ee' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('95d286ac291a809718a6e54263c36124', 'Болдин Григорий Романович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='95d286ac291a809718a6e54263c36124' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('549d582e26169d2480d7312778495891', 'Бударёв Тимофей Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='549d582e26169d2480d7312778495891' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0a387b758588a60647a5b2b0601c3ac9', 'Бушеев Денис Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0a387b758588a60647a5b2b0601c3ac9' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3933abb95cfddab82378bcbdb7b96525', 'Бушеев Юрий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3933abb95cfddab82378bcbdb7b96525' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('65147d2044e70182e5514134e03fd167', 'Горностаев Арсентий Дмитриевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='65147d2044e70182e5514134e03fd167' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('48fbd510f000c3c7beea0380dc33e08a', 'Гоцко Илья Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='48fbd510f000c3c7beea0380dc33e08a' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3d3672a3913a4fb6f92f55d34f9f8383', 'Грачёв Данила Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3d3672a3913a4fb6f92f55d34f9f8383' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4305ebcebadcca3f683c976f3ccf059c', 'Гурбанов Максим Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4305ebcebadcca3f683c976f3ccf059c' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8c8a4be72eec03ce520857ac0e56d1a5', 'Жаров Данила Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8c8a4be72eec03ce520857ac0e56d1a5' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eaddb34dfdcb7ffbb20612fb6c9e233d', 'Журавлёв Александр Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eaddb34dfdcb7ffbb20612fb6c9e233d' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('93568920e2a406142e2cfebf86fc598f', 'Журавлёв Артём Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='93568920e2a406142e2cfebf86fc598f' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0503dde129c68e9e77d0d378a2050512', 'Казаков Герман Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0503dde129c68e9e77d0d378a2050512' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2268ad3c07b88853fd0e043156335cf2', 'Киселёв Артём Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2268ad3c07b88853fd0e043156335cf2' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ba5fa159c6a8a70bc04ff6de73a89fed', 'Кулагин Андрей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ba5fa159c6a8a70bc04ff6de73a89fed' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f1e87517329e78614e9b0f05eed7c0e5', 'Лопухов Максим Вячеславович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f1e87517329e78614e9b0f05eed7c0e5' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0ab60591ee2cb5a91b0bd248b3a82b4e', 'Моднов Никита Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0ab60591ee2cb5a91b0bd248b3a82b4e' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6271431453010b4bc2f1c20e788313b9', 'Палинов Семён Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6271431453010b4bc2f1c20e788313b9' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c05cb563b28cd848b32d2bb4a003f3fa', 'Петров Денис Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c05cb563b28cd848b32d2bb4a003f3fa' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1cb11c19ef306f3e8cad2470c99bb833', 'Ряжсков Георгий Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1cb11c19ef306f3e8cad2470c99bb833' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('748a52a105e4aaa421f176a07ae41e27', 'Скоробогатько Андрей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='748a52a105e4aaa421f176a07ae41e27' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9334439a69a4e2fe7895d5bfd5980421', 'Смыслов Михаил Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9334439a69a4e2fe7895d5bfd5980421' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c648571c3b3cb4d1989cc12815c8cfd1', 'Шершаков Данила Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c648571c3b3cb4d1989cc12815c8cfd1' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a1a99a569c4271523a00d41181c7c08e', 'Шершаков Кирилл Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a1a99a569c4271523a00d41181c7c08e' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fcd2379dbd4048f78888e107dc0b305a', 'Юдин Никита Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fcd2379dbd4048f78888e107dc0b305a' AND t.name='CSAK'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0f417238f03bea1d525e751b8890f33d', 'Афонин Александр Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0f417238f03bea1d525e751b8890f33d' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('673aae0848326ff4b1ca59b7689ae1f0', 'Британ Юрий Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='673aae0848326ff4b1ca59b7689ae1f0' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f9412bdb5fdf9a5971716fa371005fd5', 'Волченко Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f9412bdb5fdf9a5971716fa371005fd5' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f2cb54a3e516f5491f8e0607c7dc8b7e', 'Греков Алексей Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f2cb54a3e516f5491f8e0607c7dc8b7e' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8efdb868577f16fa59c0367d1cbf741b', 'Демидов Дмитрий Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8efdb868577f16fa59c0367d1cbf741b' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4975e59f666a9845444a107205f0f5ea', 'Дунаев Александр Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4975e59f666a9845444a107205f0f5ea' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f491b64d6d0d33da77da2e896cc77df0', 'Зопунян Степан Павлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f491b64d6d0d33da77da2e896cc77df0' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8d4ca0954c19a809b72743f524b1397d', 'Игнатьев Дмитрий Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8d4ca0954c19a809b72743f524b1397d' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea5b1b827c74e883006cb227596ebee2', 'Калошин Антон Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea5b1b827c74e883006cb227596ebee2' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('12fccc934091c1455c8c51ac307aff7a', 'Квашнин Александр Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='12fccc934091c1455c8c51ac307aff7a' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f360ae23b7a75560f232181728a8710a', 'Квашнин Илья Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f360ae23b7a75560f232181728a8710a' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('06829d92a31bdfcac6fc7abd753ae877', 'Лазарев Игорь Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='06829d92a31bdfcac6fc7abd753ae877' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('acd925c14eb87ae677eda2ffa202e1b0', 'Музычук Даниил Евгениевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='acd925c14eb87ae677eda2ffa202e1b0' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c23658ecf5294c3035597f533376e17c', 'Панюшкин Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c23658ecf5294c3035597f533376e17c' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('823f7de88667c74f8a758cc6903de7e8', 'Разгасимов Павел Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='823f7de88667c74f8a758cc6903de7e8' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5b09318337f4dfaad9e7866cb943a9bb', 'Рошка Степан Иванович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5b09318337f4dfaad9e7866cb943a9bb' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0626f16db8e1f1d02d1951f5fbc895b6', 'Руденко Михаил Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0626f16db8e1f1d02d1951f5fbc895b6' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a2381b8537a958121fbf259aa1e50882', 'Сатретдинов Равиль Рашидович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a2381b8537a958121fbf259aa1e50882' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('44f8130df72a1e2d4af1899ae5fa0ecc', 'Свиридов Сергей Валентиновч', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='44f8130df72a1e2d4af1899ae5fa0ecc' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8b06b132968fa0e299739c10057a6f4', 'Стрельников Сергей Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8b06b132968fa0e299739c10057a6f4' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2d4e8e2286d432ced236c7f74ca1e268', 'Фомин Антон Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2d4e8e2286d432ced236c7f74ca1e268' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('17ddb349b16f14ade13c0fc823711244', 'Чалый Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='17ddb349b16f14ade13c0fc823711244' AND t.name='ЭДЕЛЬВЕЙС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('92ba29769a6dabaa8a878c3f8f72ce67', 'Баранов Илья Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='92ba29769a6dabaa8a878c3f8f72ce67' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('907fbdf385d904b69e5bac76f7276d3f', 'Гаджиев Микаэль Азерович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='907fbdf385d904b69e5bac76f7276d3f' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('569f4ceee73c8fcfc8decc56fca5bdf1', 'Голоктионов Данила Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='569f4ceee73c8fcfc8decc56fca5bdf1' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0345981c3a271ef2c8a8514c3de9c86f', 'Гуляев Денис Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0345981c3a271ef2c8a8514c3de9c86f' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d2a30949999f61bc6e2125d7df6deb47', 'Зимин Алексей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d2a30949999f61bc6e2125d7df6deb47' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f5032379ebe5c713ce4de609cfc9ff3d', 'Колесников Олег Валерьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f5032379ebe5c713ce4de609cfc9ff3d' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a77fa2d8adaa33549a6a06b0f9f2a1fd', 'Колосов Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a77fa2d8adaa33549a6a06b0f9f2a1fd' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7467a702566543e45ae21962064d715b', 'Лузгин Сергей Викторович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7467a702566543e45ae21962064d715b' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c13a150f3c19266375dcce524694ff90', 'Люль Борис Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c13a150f3c19266375dcce524694ff90' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('01ee4953d858f331f97349ce0d7a2360', 'Малычев Алексей Анатольевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='01ee4953d858f331f97349ce0d7a2360' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f5789c6f3b4db12c4f1eaee86b275ef8', 'Малявин Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f5789c6f3b4db12c4f1eaee86b275ef8' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3dc43bf9696284323928d9868e1dced5', 'Муравьев Олег Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3dc43bf9696284323928d9868e1dced5' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('81349dc9bd1833b95a9c32c833e14a35', 'Салов Иван Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='81349dc9bd1833b95a9c32c833e14a35' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7bdfbbf5d1ad22850bfb873636f23923', 'Сапожников Михаил Максимович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7bdfbbf5d1ad22850bfb873636f23923' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0e3b4e002cfd3631cf3300c8ddcf5aaf', 'Скворцов Иван Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0e3b4e002cfd3631cf3300c8ddcf5aaf' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5998d6b57ea0d4833310194da7873c89', 'Тихонов Даниил Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5998d6b57ea0d4833310194da7873c89' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('29f2fab7f6b5c6c43a31ebcf01a9bd4d', 'Тумашевич Евгений Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='29f2fab7f6b5c6c43a31ebcf01a9bd4d' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5b958085f3a5b77f73787ba81ba3d8c2', 'Хворов Тимур Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5b958085f3a5b77f73787ba81ba3d8c2' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6cb98d083dca39a35b35e83ea3be5f49', 'Чиколай Александр Дмитриевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6cb98d083dca39a35b35e83ea3be5f49' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a7f0769ccd6b0cd3a9191ed3c9e438d4', 'Чирков Матвей Артёмович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a7f0769ccd6b0cd3a9191ed3c9e438d4' AND t.name='VENERA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('977d70a3d62044fb2b8a1226cd03891f', 'Багу Лионель Эделро', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='977d70a3d62044fb2b8a1226cd03891f' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eba444d479a9aa52d9d94e626a3a1513', 'Белов Сергей Геннадьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eba444d479a9aa52d9d94e626a3a1513' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('00e4fc496b185e1eec66e6e72d15040b', 'Драгонин Дмитрий Павлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='00e4fc496b185e1eec66e6e72d15040b' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e305c10fc3098b23b1105e4ba0b84952', 'Думнов Александр Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e305c10fc3098b23b1105e4ba0b84952' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3e6e05d1df346c63e0979e4f9f8f64e8', 'Кадыров Дилшод Закирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3e6e05d1df346c63e0979e4f9f8f64e8' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d895020a502987302f68be48de48f052', 'Клименко Ярослав Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d895020a502987302f68be48de48f052' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('718380d12e48683cd3083db5082f01ee', 'Климчук Артём Владимирович (к)', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='718380d12e48683cd3083db5082f01ee' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a00fb9cab90bef8f028f79ef4ea11cd7', 'Косых Илья Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a00fb9cab90bef8f028f79ef4ea11cd7' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('84ff661a46a53f37b77ec4f4e63bf5b4', 'Крайный Илья Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='84ff661a46a53f37b77ec4f4e63bf5b4' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3624f22e405c97d7b99b8373a30d712f', 'Малачинский Андрей Михайлович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3624f22e405c97d7b99b8373a30d712f' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9386d590b3cf72cc0a9e52cbfdaee1dd', 'Москалюк Дмитрий', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9386d590b3cf72cc0a9e52cbfdaee1dd' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8ab4c9703f5881662dbacb1e6fc5fecf', 'Мустяца Максим Русланович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8ab4c9703f5881662dbacb1e6fc5fecf' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('566225b9b103a8993a8295a619e699c4', 'Орлов Михаил Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='566225b9b103a8993a8295a619e699c4' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5a36cd0047b628f571704e194de8dc80', 'Плукчи Александр Георгиевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5a36cd0047b628f571704e194de8dc80' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8df18dcb0bf40d4c5086ebaf9b7ee136', 'Прокопенко Артём Викторович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8df18dcb0bf40d4c5086ebaf9b7ee136' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dca054b5c6fcb3f969955c752971dc6d', 'Пяткин Александр Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dca054b5c6fcb3f969955c752971dc6d' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4ea81a9f6aad34c8243abf06b0ed3960', 'Салехметов Марат Вильданович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4ea81a9f6aad34c8243abf06b0ed3960' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8564f55ae1ced83cd17cf9802a07a888', 'Софронов Владислав Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8564f55ae1ced83cd17cf9802a07a888' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1ab0a086b28ebf9c6f2a3fe938053d3f', 'Супрун Данил Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1ab0a086b28ebf9c6f2a3fe938053d3f' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0612669f781dbed6bd11f023093ccb94', 'Тумакаев Александр Альбертович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0612669f781dbed6bd11f023093ccb94' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ac4a15fd5ce0c81250e7b70468c1ecc8', 'Худнев Иван Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ac4a15fd5ce0c81250e7b70468c1ecc8' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('053b05fb23093b41a691084d58307c24', 'Фёдоров Дмитрий Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='053b05fb23093b41a691084d58307c24' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f52620b20f6aaf0e313aa2aae89f2c00', 'Чернявский Виталий Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f52620b20f6aaf0e313aa2aae89f2c00' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a30519e03b7d052b3cb684b13da4ba30', 'Швецов Евгений Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a30519e03b7d052b3cb684b13da4ba30' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d80d0cee219b089b2f18e45ced7c9dcd', 'Эшматов Гуломджон Алижонович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d80d0cee219b089b2f18e45ced7c9dcd' AND t.name='РЕАЛ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ab42a79bea57359002611d108bbbf99e', 'Блажеев Евгений Андреевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ab42a79bea57359002611d108bbbf99e' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3b0a28306ec63abea46a028be4746503', 'Болдырев Никита Эдуардович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3b0a28306ec63abea46a028be4746503' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d0a4b3b4a30210589abf111bf92544b5', 'Брыгалин Иван Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d0a4b3b4a30210589abf111bf92544b5' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('09dddd007a270adbe6138a1a2b23f3a2', 'Вдовин Дмитрий Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='09dddd007a270adbe6138a1a2b23f3a2' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('437bd80f45caf2cfddae2c723306062c', 'Войтович Никита Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='437bd80f45caf2cfddae2c723306062c' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3830e09f25b68e46532fd623234fc672', 'Воронов Сергей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3830e09f25b68e46532fd623234fc672' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('499bca44a7584108cddb4727d57fcb88', 'Гаган Дмитрий Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='499bca44a7584108cddb4727d57fcb88' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a432b03a5ba4829325e532d3ca474763', 'Гамов Павел Павлович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a432b03a5ba4829325e532d3ca474763' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ea2a7889cb8ddd5e619a243e132bf4dd', 'Журавлев Григорий Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ea2a7889cb8ddd5e619a243e132bf4dd' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c79b05096f0fed34f8813a57d5b76152', 'Зайцев Александр Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c79b05096f0fed34f8813a57d5b76152' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9ab8d28b6aed44b7437b2b807594c18b', 'Зубов Роман Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9ab8d28b6aed44b7437b2b807594c18b' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7bcb3940b9b09b9f537a2c5f175e262c', 'Истомин Кирилл Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7bcb3940b9b09b9f537a2c5f175e262c' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('874d0ba26cc195713bf6aad45c59a4e1', 'Киселёв Дмитрий Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='874d0ba26cc195713bf6aad45c59a4e1' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c9e4c15922f85bd7461032e1c7ae140c', 'Клюйков Альберт Эдуардович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c9e4c15922f85bd7461032e1c7ae140c' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2127540e226f312d1de6cff982a402cb', 'Манукян Дживан Гагикович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2127540e226f312d1de6cff982a402cb' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('81b6b642cc026d838dd88d52195531d7', 'Небесных Илья Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='81b6b642cc026d838dd88d52195531d7' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0c935d8bb283d772ae65b0df936c9133', 'Оганисян Ашот Оганесович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0c935d8bb283d772ae65b0df936c9133' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('847f6b14cdc8d2fdff857371c8ae1147', 'Осипенко Василий Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='847f6b14cdc8d2fdff857371c8ae1147' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7559d85e5b8d7444738cdffbafe6a93e', 'Панков Дмитрий Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7559d85e5b8d7444738cdffbafe6a93e' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0b680e27c9b07bcb9d69951b5105206d', 'Попов Иван Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0b680e27c9b07bcb9d69951b5105206d' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('81a02cfdbe88f8273bfb8bdc373f9879', 'Сидоров Даниил Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='81a02cfdbe88f8273bfb8bdc373f9879' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8491a40f88e06e600596c80b595f9c76', 'Соленов Константин Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8491a40f88e06e600596c80b595f9c76' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1a4d7b5b2a6c42602de93af0cb9c8408', 'Сорокин Виктор Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1a4d7b5b2a6c42602de93af0cb9c8408' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('50fa0b4644fe0a40db04941bc2264ff9', 'Тиллачаков Азизбек Тахирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='50fa0b4644fe0a40db04941bc2264ff9' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('924747d4550bebc41aa65c4080917285', 'Турлаев Дмитрий Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='924747d4550bebc41aa65c4080917285' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fff4379c366881285609c7fa849d65c5', 'Чертыковцев Андрей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fff4379c366881285609c7fa849d65c5' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2b8a8a715d73ba41fb4f35e58465d4ad', 'Щепин Артём Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2b8a8a715d73ba41fb4f35e58465d4ad' AND t.name='ЛИОН'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2bd6484a921fe777572f7f4f85a52fd6', 'Бозоров Улугбек Бузуглонович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2bd6484a921fe777572f7f4f85a52fd6' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('10ca9d57906db15ac006d4a4c9f00142', 'Бутаков Дмитрий Михайлович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='10ca9d57906db15ac006d4a4c9f00142' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3447baa27ac79869a7bc2bb70d5781f7', 'Васильев Дмитрий Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3447baa27ac79869a7bc2bb70d5781f7' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('41b6d90c8c70523086023d6cdb360744', 'Васильев Максим Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='41b6d90c8c70523086023d6cdb360744' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('86f4a604afe4c9b3cf3f95db68a5c277', 'Волков Дмитрий Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='86f4a604afe4c9b3cf3f95db68a5c277' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a872138e235cfd2d8c76c17e0d823fd0', 'Воробьёв Андрей Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a872138e235cfd2d8c76c17e0d823fd0' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b9415ace0c97d75fdfc41b5f68ee6b53', 'Галацков Андрей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b9415ace0c97d75fdfc41b5f68ee6b53' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('62205ee9768e48b31eb22ceedc957fc5', 'Дрожжин Алексей Геннадьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='62205ee9768e48b31eb22ceedc957fc5' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('20ef1d48447cbbd71dba762708a8f67d', 'Дрожжин Кирилл Геннадьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='20ef1d48447cbbd71dba762708a8f67d' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('dc9b53eecc743a715b90e4f59ba5802f', 'Ерёмин Сергей Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='dc9b53eecc743a715b90e4f59ba5802f' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('073759cbd08ad79cef1ddd3bcc023cbb', 'Житников Артём Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='073759cbd08ad79cef1ddd3bcc023cbb' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77f8119c91e58d2117337da9e975e647', 'Жумаев Бобожон Нуриллоевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77f8119c91e58d2117337da9e975e647' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('082819f588de1d3521365882e2159bd1', 'Заяц Вячеслав Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='082819f588de1d3521365882e2159bd1' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0a7f54275feadcecb6359d43ac141fb6', 'Калинин Илья Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0a7f54275feadcecb6359d43ac141fb6' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b48310ee5a6dd42807774b49d19f7f2e', 'Кузяев Михаил Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b48310ee5a6dd42807774b49d19f7f2e' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('70013240cc55e9547aa08252db8f3604', 'Куцар Георгий Васильевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='70013240cc55e9547aa08252db8f3604' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cd0fbf77f0df500a1aff9facff1e0f60', 'Лушников Михаил Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cd0fbf77f0df500a1aff9facff1e0f60' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('48bdfa6fb99462afd1779c466a994296', 'Майоров Демид Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='48bdfa6fb99462afd1779c466a994296' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('aedd08aca9b293dc332b944425901886', 'Морарь Владимир Иванович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='aedd08aca9b293dc332b944425901886' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c66bc2ad4993177f5ef5d07e6017b820', 'Морозов Давид Русланович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c66bc2ad4993177f5ef5d07e6017b820' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('522a2cdeae89b99fe1991c9907b14afe', 'Московсков Юрий Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='522a2cdeae89b99fe1991c9907b14afe' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b96112e83dbf55eec34c67576b9fcd90', 'Николаев Руслан Тимурович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b96112e83dbf55eec34c67576b9fcd90' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fa10465a2a2a40886ff2aa61b090c6a8', 'Прилуцкий Дмитрий Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fa10465a2a2a40886ff2aa61b090c6a8' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('514063dd13a233c46d0b29c9b2868fd3', 'Тома Даниил Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='514063dd13a233c46d0b29c9b2868fd3' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c1f56acfd6d287f56527429d68de5938', 'Усанов Владимир Вячеславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c1f56acfd6d287f56527429d68de5938' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('82a3a6c6af03d066c1069e36d3a4379d', 'Фирсов Дмитрий Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='82a3a6c6af03d066c1069e36d3a4379d' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('640e1b00395a38cb8c64603292b9f971', 'Чернов Даниил Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='640e1b00395a38cb8c64603292b9f971' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ee90d5fdabc6235eda24dadb3ea41a06', 'Чурилов Павел Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ee90d5fdabc6235eda24dadb3ea41a06' AND t.name='ДОМОК БРОННИЦЫ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('244439de189922e2871f17b9c6012095', 'Бордуков Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='244439de189922e2871f17b9c6012095' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('85e4914e29f59a3fb98a3665443ad214', 'Гончаров Иван Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='85e4914e29f59a3fb98a3665443ad214' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('450989d8351fe32037545721fb12f3f0', 'Гузеев Евгений Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='450989d8351fe32037545721fb12f3f0' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('208e60597848a63cd478c2642ee9a72a', 'Давлатов Насим Нусратуллоевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='208e60597848a63cd478c2642ee9a72a' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e3acd8b3338d305da72e4863eecf4ec5', 'Елисеев Максим Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e3acd8b3338d305da72e4863eecf4ec5' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c399a841f9e56df9928fb16689990843', 'Золотарёв Денис Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c399a841f9e56df9928fb16689990843' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('38c204c42395f8b44953c1c073024b84', 'Микаелян Карен Ншанович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='38c204c42395f8b44953c1c073024b84' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1fb6f363ab0dc4a879095b96480014c4', 'Мухиддинов Омадбек', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1fb6f363ab0dc4a879095b96480014c4' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1ed031b6d23a9ce5b0c4f4e795c31635', 'Мышлёнок Сергей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1ed031b6d23a9ce5b0c4f4e795c31635' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('97074206d4d504bdf236f2acfcdaa5f5', 'Наталич Иван Владиславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='97074206d4d504bdf236f2acfcdaa5f5' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c957ba6da07445f7a6cc2c3127a85a41', 'Наумов Михаил Маркович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c957ba6da07445f7a6cc2c3127a85a41' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ca60e9e8b341a6c0aee6b23aa1ff6b82', 'Пискунов Артем Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ca60e9e8b341a6c0aee6b23aa1ff6b82' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2774f2fd91cabd7b508d0fc8628218ef', 'Родионов Артём Денисович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2774f2fd91cabd7b508d0fc8628218ef' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7f58517f2f0f6b3cae3b25d2968463b1', 'Селиванов Дмитрий Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7f58517f2f0f6b3cae3b25d2968463b1' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('87f7503bd8596bcb5a235edfa515cdcc', 'Сысоев Данила Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='87f7503bd8596bcb5a235edfa515cdcc' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5532444befc3e1558b382c3736be5e21', 'Турдиев Некруз Зарифович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5532444befc3e1558b382c3736be5e21' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('21fbaaaecdc431404bbeeb9d933b27a1', 'Хадиев Рустам Исматуллаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='21fbaaaecdc431404bbeeb9d933b27a1' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6d804cfd72816f9531b3287f4b0c9a65', 'Хакимов Рустам Самиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6d804cfd72816f9531b3287f4b0c9a65' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4c79eeffee3225fbb50a2b430c8035d4', 'Шиндяков Сергей Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4c79eeffee3225fbb50a2b430c8035d4' AND t.name='CHELSEA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d1ee8687488bca3af9d2f9638843091b', 'Алёхин Александр Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d1ee8687488bca3af9d2f9638843091b' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('be1c881e18be9ef7cb11025872fc2f13', 'Бандорин Сергей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='be1c881e18be9ef7cb11025872fc2f13' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('50631ccb13d63d37a62760b115df41f8', 'Воеводин Денис Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='50631ccb13d63d37a62760b115df41f8' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fdf6b7d19d3317d9ec7005964ccae7dc', 'Данилов Михаил Григорьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fdf6b7d19d3317d9ec7005964ccae7dc' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3f9a8bf266db8316d2580ce7aea58243', 'Демидов Алексей Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3f9a8bf266db8316d2580ce7aea58243' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('96ed2491d5c46c13ba4da9f6ed07a841', 'Доброжан Валерий Афанасьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='96ed2491d5c46c13ba4da9f6ed07a841' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a50526f62c4d24b0e45553371d9f7172', 'Елисеев Андрей Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a50526f62c4d24b0e45553371d9f7172' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2ceb5c46c9f04708358adee26d0fc0c8', 'Коршунов Артем Олегович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2ceb5c46c9f04708358adee26d0fc0c8' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5695706ea62b0ed00584f6d20aa61674', 'Матвеенков Владислав Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5695706ea62b0ed00584f6d20aa61674' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f0dcd9d9e7897882e5189cb8d45cbf93', 'Надточиев Антон Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f0dcd9d9e7897882e5189cb8d45cbf93' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4e25a4077bf53f77ed57fca9c6a4d260', 'Орлов Максим Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4e25a4077bf53f77ed57fca9c6a4d260' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('025208e61f6add175c46148e0303476d', 'Светлов Дмитрий Андреевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='025208e61f6add175c46148e0303476d' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5b1c910641a9c4c3c3f18fb933099ff9', 'Синицын Денис Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5b1c910641a9c4c3c3f18fb933099ff9' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('89053b441c04ee46b4237d9c13fd674b', 'Соколов Иван Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='89053b441c04ee46b4237d9c13fd674b' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9a19b440b2c4e7ffa353567b526d82db', 'Степанов Виктор Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9a19b440b2c4e7ffa353567b526d82db' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2806325454fd2fbd7ec62731dc38b325', 'Тиунов Андрей Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2806325454fd2fbd7ec62731dc38b325' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ad337f4aec05acf65c4e8d6f0ef9d353', 'Фадеев Иван Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ad337f4aec05acf65c4e8d6f0ef9d353' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('895e77f4fd1674b26873981e84d9d3fe', 'Фролов Виктор Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='895e77f4fd1674b26873981e84d9d3fe' AND t.name='33 КМ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('57d874721de08e96fa573aafa7b5748a', 'Белов Денис Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='57d874721de08e96fa573aafa7b5748a' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8547183255662adaa0eb71846aa90961', 'Бердник Вячеслав Вячеславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8547183255662adaa0eb71846aa90961' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf0b96db54fe3e2ab4b05e6616231a23', 'Каковкин Павел Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf0b96db54fe3e2ab4b05e6616231a23' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c50c573de2b7668c0d411980a7a4889', 'Исаенков Евгений Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c50c573de2b7668c0d411980a7a4889' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3b191d218f9d40096edcd8dce46699a7', 'Куриленков Александр Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3b191d218f9d40096edcd8dce46699a7' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ffadccc82fdcf69bf12caefcafa27829', 'Куриленков Андрей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ffadccc82fdcf69bf12caefcafa27829' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8ed56ebd590570480c82700fade16572', 'Куриленков Дмитрий Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8ed56ebd590570480c82700fade16572' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('365e6a1dcd665bb22773e824817e0aaa', 'Мисиюков Андрей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='365e6a1dcd665bb22773e824817e0aaa' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a0630e584b1e1189e101c0cec5802e93', 'Обрушников Константин Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a0630e584b1e1189e101c0cec5802e93' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('407ed809102dac2f352a9b38b0b8e5ee', 'Пикулёв Илья Константинович=', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='407ed809102dac2f352a9b38b0b8e5ee' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6087703f58190d22c1b98df7886c9e7a', 'Соломатин Владислав Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6087703f58190d22c1b98df7886c9e7a' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('231cf822425a9852c94b361d34e6e904', 'Федотов Андрей Викторович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='231cf822425a9852c94b361d34e6e904' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d0451189afff7086a674335bc3f75fbd', 'Фирсов Эдуард Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d0451189afff7086a674335bc3f75fbd' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2e81221252e5190f41b399055e66b249', 'Хватьков Николай Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2e81221252e5190f41b399055e66b249' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('712eae405b96df165bab28b28aa1ab58', 'Шмелёв Андрей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='712eae405b96df165bab28b28aa1ab58' AND t.name='БРОК'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7cf6d52bb66d280ca533b40482fea6b4', 'Волков Александр Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7cf6d52bb66d280ca533b40482fea6b4' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bc654ee21166f97f33d12b3743e315f5', 'Воробьёв Павел Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bc654ee21166f97f33d12b3743e315f5' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3003fa7ae84132e067db9894b55d3bd6', 'Гайдак Федор Николаевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3003fa7ae84132e067db9894b55d3bd6' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eabc68928a5f924a1446cdd40b98634c', 'Дулин Иван Евгеньевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eabc68928a5f924a1446cdd40b98634c' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('87dae21892de71478db780f2cc7f7133', 'Ибодов Дмитрий Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='87dae21892de71478db780f2cc7f7133' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e9c218bd0e354e19b2d6e401d4480420', 'Коленкин Максим Вячеславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e9c218bd0e354e19b2d6e401d4480420' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b2659a6a8ea5a41a4935e996fd8891cf', 'Корнеев Денис Андреевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b2659a6a8ea5a41a4935e996fd8891cf' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('60814bc7f32076e9a8b2e9a429ab99b9', 'Корнеев Кирилл Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='60814bc7f32076e9a8b2e9a429ab99b9' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8c11773e1476457ae92161f809a98a7f', 'Корнеев Константин Денисович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8c11773e1476457ae92161f809a98a7f' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b0f20b576e81301610c999423748a0be', 'Кругликов Сергей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b0f20b576e81301610c999423748a0be' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1af99aa34a9a83542914426cb6672d1e', 'Крючков Сергей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1af99aa34a9a83542914426cb6672d1e' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('704265e3b9c387d302483297b0e2cdb3', 'Марочкин Сергей Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='704265e3b9c387d302483297b0e2cdb3' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b66a2df84884885bd4e031d6bcafeeac', 'Махмудов Алик Ахмаджонович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b66a2df84884885bd4e031d6bcafeeac' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c7f657a49723f8c8280d9eabaa41d514', 'Нарзиев Ахмад Ахадкулович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c7f657a49723f8c8280d9eabaa41d514' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0419a11ff74b6a6998ae97fc13a0a5ac', 'Петров Дмитрий Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0419a11ff74b6a6998ae97fc13a0a5ac' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe0d0fc3eef2cae0eb74db76b68d8c30', 'Полятыкин Матвей Витальевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe0d0fc3eef2cae0eb74db76b68d8c30' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0268a918c92616ffc8e7d005f33c2c1c', 'Попов Денис Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0268a918c92616ffc8e7d005f33c2c1c' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fb762e61930415a60bd77a3c4ad0a6d7', 'Рогозин Кирилл Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fb762e61930415a60bd77a3c4ad0a6d7' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9daa347a0ae1ddbbdafc7142edcb6c90', 'Рябов Александр Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9daa347a0ae1ddbbdafc7142edcb6c90' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('00867c3e91e35c1c34cf29ba5707d8bd', 'Саргсян Сергей Аркадьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='00867c3e91e35c1c34cf29ba5707d8bd' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b728d8113c87ff637afa274bdc12e5d0', 'Севостьянов Алексей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b728d8113c87ff637afa274bdc12e5d0' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8f9b751fae676abf4c154b34f1d0f0dc', 'Смирнов Владислав Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8f9b751fae676abf4c154b34f1d0f0dc' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('728c90e8a021c134747af8d7efadf3ac', 'Тиляев Данил Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='728c90e8a021c134747af8d7efadf3ac' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ac1e55fa5da3f9a30c88ceb616d298c3', 'Филякин Александр Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ac1e55fa5da3f9a30c88ceb616d298c3' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bea56579f0c8b4c0d8964da4d18646ce', 'Шевцов Дмитрий Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bea56579f0c8b4c0d8964da4d18646ce' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2f3ff17d3d28fa84d52518465b50097d', 'Шмырев Александр Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2f3ff17d3d28fa84d52518465b50097d' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('131ed3ecf45ab3b14c9f8a9176c809e6', 'Шульженко Алексей Вячеславович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='131ed3ecf45ab3b14c9f8a9176c809e6' AND t.name='СПАРТАК БЫКОВО'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4d615b06337b8074c9335e0d7df92b59', 'Бокарев Никита Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4d615b06337b8074c9335e0d7df92b59' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6bc06a52d90a343013c108fcc0fd3786', 'Белых Василий Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6bc06a52d90a343013c108fcc0fd3786' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d0d8c0e32a78ea3017076ba74c13c83a', 'Белых Владислав Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d0d8c0e32a78ea3017076ba74c13c83a' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('421c491c94872b0b0982c803d5f820d0', 'Вардоев Эдгар Нугзарович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='421c491c94872b0b0982c803d5f820d0' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ff67c38b9e41a026ab0ed4f4209d70df', 'Горшков Олег Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ff67c38b9e41a026ab0ed4f4209d70df' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('879d28efdab00fb7b84405f289e91a1a', 'Заржицкий Богдан Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='879d28efdab00fb7b84405f289e91a1a' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f8efff1da48997b8ac057e1f19e482cc', 'Калинин Никита Владиславович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f8efff1da48997b8ac057e1f19e482cc' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('26072b0f0d55b815c4f60167dd7608bc', 'Киржой Аурел Виорелович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='26072b0f0d55b815c4f60167dd7608bc' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77da5fbe272462a0f8ea19f9aee2309a', 'Кураксин Михаил Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77da5fbe272462a0f8ea19f9aee2309a' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7dd2548f6b58d5d48221ab3d7df83b6b', 'Мамадчонов Чамшед Нозимович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7dd2548f6b58d5d48221ab3d7df83b6b' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9164458cfb52905f06549b0af9f52c29', 'Маслов Алексей Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9164458cfb52905f06549b0af9f52c29' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('665bb06ce6f04918698437418a13cfd1', 'Мельников Даниил Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='665bb06ce6f04918698437418a13cfd1' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('5cdfb3ac50228739b8e4b2dac353143f', 'Мельников Никита Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='5cdfb3ac50228739b8e4b2dac353143f' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('35a63a11d1f79e34c3054ee78bb4d854', 'Пашнин Александр Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='35a63a11d1f79e34c3054ee78bb4d854' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('03fdaf698cb038084916b9b36b61afc7', 'Рахмонов Тимур Мамирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='03fdaf698cb038084916b9b36b61afc7' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2a25ed79307eed149a3efabb31999a31', 'Рогов Евгений Юрьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2a25ed79307eed149a3efabb31999a31' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8b2468d78d4bad3def748e829009aac1', 'Семейкин Владимир Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8b2468d78d4bad3def748e829009aac1' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('668406ed70cfcbab4ca972ccef42e9fd', 'Тучин Савелий Константинович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='668406ed70cfcbab4ca972ccef42e9fd' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('21e1a91cdcd86b2696f81969d60b82fd', 'Целяр Владимир Валерьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='21e1a91cdcd86b2696f81969d60b82fd' AND t.name='BORODACH'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('0a147f2043f53ad8092381e4a51b86fd', 'Бацких Алексей Андреевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='0a147f2043f53ad8092381e4a51b86fd' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9ee0461cf3aed0ef5c5d1ae3b3dfef42', 'Бутусов Артём Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9ee0461cf3aed0ef5c5d1ae3b3dfef42' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('259c3d96ba396e5e812b433d2bd88e8c', 'Виноградов Максим Евгеньевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='259c3d96ba396e5e812b433d2bd88e8c' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c6006b047f35535ec1838e0cb00d49fc', 'Воробьёв Глеб Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c6006b047f35535ec1838e0cb00d49fc' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7e9c30941ac31f27343bdc5a6c179df4', 'Гатилов Василий Вадимович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7e9c30941ac31f27343bdc5a6c179df4' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('39a75a050aad433d4b7eff7afa86ebf5', 'Карплюк Евгений Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='39a75a050aad433d4b7eff7afa86ebf5' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c23d923f962fbdedaeeadd6253ed088d', 'Коростелев Максим Юрьевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c23d923f962fbdedaeeadd6253ed088d' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cbb2a9693dde5c3fd4171d87d28281fe', 'Котов Роман Васильевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cbb2a9693dde5c3fd4171d87d28281fe' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c8020e8600ead78ad6bd1ebe31b882e6', 'Кукушкин Артём Кириллович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c8020e8600ead78ad6bd1ebe31b882e6' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2540ee3254497f050c12f000d03e76cf', 'Макаров Кирилл Иванович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2540ee3254497f050c12f000d03e76cf' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('461d2b81b83f5eee912ef4253560030d', 'Марчук Артём Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='461d2b81b83f5eee912ef4253560030d' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('372cf00d031f1f430a6899d9e1969ee3', 'Махов Александр Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='372cf00d031f1f430a6899d9e1969ee3' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e118e3eac82b2b6b6ee8b4551ec8b884', 'Николаев Илья Игоревич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e118e3eac82b2b6b6ee8b4551ec8b884' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('adf13d8724b72ac477a93b09ea30d97d', 'Фулин Егор Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='adf13d8724b72ac477a93b09ea30d97d' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('02affbcc805a96e1baababbaeba13977', 'Шепляков Даниил Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='02affbcc805a96e1baababbaeba13977' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e4cbe828ca0601f56054796e2032a33f', 'Шепляков Никита Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e4cbe828ca0601f56054796e2032a33f' AND t.name='ВОСХОД'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8587a02ace97c5e733ba813086a414de', 'Башков Сергей Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8587a02ace97c5e733ba813086a414de' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bb84dde3ec48027ef87d9cf7b298b316', 'Буров Климент Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bb84dde3ec48027ef87d9cf7b298b316' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('347142efddbd22d18f65398efa5d2f3b', 'Дмитриев Алексей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='347142efddbd22d18f65398efa5d2f3b' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a9bf6e9a680821f4aeec2f5a4124a022', 'Дойков Фёдор Гаврилович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a9bf6e9a680821f4aeec2f5a4124a022' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bbd703474aa6ffc701f56ed3b09cb13a', 'Дудник Глеб Викторович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bbd703474aa6ffc701f56ed3b09cb13a' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('230dca0ec4e85e240ce7c8b56b6b8f1c', 'Евсеев Кирилл Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='230dca0ec4e85e240ce7c8b56b6b8f1c' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2431b07b56ebcd129f3e68d6e8f36c3d', 'Калупин Павел Олегович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2431b07b56ebcd129f3e68d6e8f36c3d' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e83df3f53ca866e4615cabf29c43552c', 'Кириленко Егор Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e83df3f53ca866e4615cabf29c43552c' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a1d6340784c79e446d6595b847ad300d', 'Кириленко Максим Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a1d6340784c79e446d6595b847ad300d' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('47b0b478540f5157265a2867961eadde', 'Колесников Егор Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='47b0b478540f5157265a2867961eadde' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6a1b9d3f7fafa7a91e2793cc8910075c', 'Колтуненко Андрей Владимирович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6a1b9d3f7fafa7a91e2793cc8910075c' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('99828e0ecd40bcdbee3c944a217b9311', 'Лапшин Степан Артёмович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='99828e0ecd40bcdbee3c944a217b9311' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2798b87fb0bc8bf1c0952717a5c17c42', 'Малышев Данила Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2798b87fb0bc8bf1c0952717a5c17c42' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('edff97797224c40002729aa69158f08d', 'Мамедов Вадим Курбанович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='edff97797224c40002729aa69158f08d' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('6ed3561f2cc152b4b06f187674d58b6d', 'Печёнкин Дмитрий Владимирович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='6ed3561f2cc152b4b06f187674d58b6d' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3fd46dae4cf507ca030d4027e54da62e', 'Разваляев Тимофей Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3fd46dae4cf507ca030d4027e54da62e' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1d3b15e6a5fc9a5f98fd64eb0b873007', 'Роднов Данила Алексеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1d3b15e6a5fc9a5f98fd64eb0b873007' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('28196bf82a32bf261c8358d888dc58ee', 'Хенченко Егор Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='28196bf82a32bf261c8358d888dc58ee' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f7af507ad46ba9e7334961e0d19b0a18', 'Ходаковский Павел', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f7af507ad46ba9e7334961e0d19b0a18' AND t.name='STREET'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a3e2011ebb4dc18deffe4d39b2ff357c', 'Витвицкий Вячеслав Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a3e2011ebb4dc18deffe4d39b2ff357c' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d309d19cad8346b093135293da0f9975', 'Витушкин Семён Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d309d19cad8346b093135293da0f9975' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f11531fba3bed1a910d2db01c11011ca', 'Гаврюшкин Антон Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f11531fba3bed1a910d2db01c11011ca' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('4930e76b3ff717a07b4544256599c048', 'Грюк Дмитрий Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='4930e76b3ff717a07b4544256599c048' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8386dd2314688a39830d1bbddf7732ce', 'Елесин Тимофей Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8386dd2314688a39830d1bbddf7732ce' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('83ebbbdde2f04faf74649fe8960c132d', 'Забозлаев Станислав Игоревич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='83ebbbdde2f04faf74649fe8960c132d' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fbaa54ac0d0a61608ec6e99be05462ea', 'Захаров Руслан Мухамад Розикович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fbaa54ac0d0a61608ec6e99be05462ea' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('27f817813dd543f328e918215aa8e298', 'Иванов Станислав Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='27f817813dd543f328e918215aa8e298' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b2f9a522eb0f9095059969d8773b527d', 'Клочков Михаил Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b2f9a522eb0f9095059969d8773b527d' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ddf18f04c924f0fed86b60a267db5c03', 'Котляров Игорь Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ddf18f04c924f0fed86b60a267db5c03' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('77c8972a6f976638ca69d7d4756c2a16', 'Крылов Сергей Валерьевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='77c8972a6f976638ca69d7d4756c2a16' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9f165cd36770e6672a0fbb5e39ad4a0c', 'Куваев Антон Сергеевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9f165cd36770e6672a0fbb5e39ad4a0c' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('199a3e1cd9cdd9569902e151c6073252', 'Носов Андрей Сергеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='199a3e1cd9cdd9569902e151c6073252' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7459c3ace683b17bab293416c54a930e', 'Петрушенко Андрей Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7459c3ace683b17bab293416c54a930e' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('3172f7af851096f267588a822d785074', 'Редько Никита Романович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='3172f7af851096f267588a822d785074' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a9345444d9db6554b67cb1f0a007726e', 'Чурсаков Александр Юрьевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a9345444d9db6554b67cb1f0a007726e' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f1f52981a3a8dd18ab6bfe1449248e3d', 'Шаргунов Денис Владимирович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f1f52981a3a8dd18ab6bfe1449248e3d' AND t.name='АЛЬЯНС'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('79c4f35f5aafc39058beac068be02a6d', 'Атабеков Дильшод Абдулович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='79c4f35f5aafc39058beac068be02a6d' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('46fa795f5b62b48ebe7b45ebb05488f1', 'Бахишев Умиджон Холниёз', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='46fa795f5b62b48ebe7b45ebb05488f1' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d52bc8c68b47b8c56df32f664625c273', 'Белов Сергей Анатольевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d52bc8c68b47b8c56df32f664625c273' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('13dc633ba6cba62ad7cf2b6f6b9c53e4', 'Гончаров Сергей Николаевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='13dc633ba6cba62ad7cf2b6f6b9c53e4' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b52c543bdc82f011d94dd8df81884a4d', 'Игнатов Сергей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b52c543bdc82f011d94dd8df81884a4d' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('c9bf9321e68ed55be5b8c5aacaad885a', 'Каверзин Роман Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='c9bf9321e68ed55be5b8c5aacaad885a' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('10fb272da3589f3183ca07815217478f', 'Кузнецов Кирилл Дмитриевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='10fb272da3589f3183ca07815217478f' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cf117ab7a2a63f29f8068e8ba21811a9', 'Курочкин Максим Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cf117ab7a2a63f29f8068e8ba21811a9' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('660861c084c43bb3c67efb4508632175', 'Лавренов Владимир Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='660861c084c43bb3c67efb4508632175' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bc5bf019dd155a41f7ff9d401844eaa5', 'Луков Даниил Викторович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bc5bf019dd155a41f7ff9d401844eaa5' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('851d5937ccc9ce1ead74b0204cd5e4a3', 'Олешко Роман Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='851d5937ccc9ce1ead74b0204cd5e4a3' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cafb61d8b562f63b59b42de02564305d', 'Олимов Хуршид Давронович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cafb61d8b562f63b59b42de02564305d' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('708b55c9a10e9ff76e43bb00dddf7a1b', 'Расулов Санжар Сафаралиевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='708b55c9a10e9ff76e43bb00dddf7a1b' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('56847529caac0edf3633e839d9238d8f', 'Рахимкулов Нематтулло Шерали Угли', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='56847529caac0edf3633e839d9238d8f' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7f575d0dc7a21aee23377866565efd13', 'Рахимкулов Тайгоймурод Шерали Угли', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7f575d0dc7a21aee23377866565efd13' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1c6c388908b78955397c6440b5666b06', 'Рахмонов Муслим Журабекович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1c6c388908b78955397c6440b5666b06' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e344f07fa64a1803b012828280b3fc00', 'Савельев Алексей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e344f07fa64a1803b012828280b3fc00' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('940f3560c30ff7beca13e7a5b4909c90', 'Усупов Адилет Мирбекович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='940f3560c30ff7beca13e7a5b4909c90' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7430958f094913530411e7231b46c0e3', 'Худойбердиев Элдорбек Валижон Улги', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7430958f094913530411e7231b46c0e3' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ec8beeaaa549e3e574951d823c9bcf40', 'Шарипов Илхомжон Иномович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ec8beeaaa549e3e574951d823c9bcf40' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('df267cfb52a5df9d546d2d8e8000a83b', 'Юсупов Карим Нематуллаевич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='df267cfb52a5df9d546d2d8e8000a83b' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('da04eb2c370bff2ff202d225d1dc88c5', 'Юсупов Эргашбой Икромчонвич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='da04eb2c370bff2ff202d225d1dc88c5' AND t.name='ВЕРТИКАЛЬ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('46ace9e1ee01f7451e258e4e72d05472', 'Артамонов Роман Алексеевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='46ace9e1ee01f7451e258e4e72d05472' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('653b7a106c9fc8f8d63c5396a299fc89', 'Басенков Никита Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='653b7a106c9fc8f8d63c5396a299fc89' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('915eedeb4657aca80c84d3662dc2d5eb', 'Блинов Владислав Константинович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='915eedeb4657aca80c84d3662dc2d5eb' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('437c8b77073354b73aa5df4bf66f94ea', 'Булеков Степан Алексеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='437c8b77073354b73aa5df4bf66f94ea' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe55aa6de8562a1a2431c287238192c7', 'Волков Артем Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe55aa6de8562a1a2431c287238192c7' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('226fbe968d78df0937d9d48906753049', 'Вырский Сергей Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='226fbe968d78df0937d9d48906753049' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('f49c92f240f6114f41913251829b9e40', 'Долганов Евгений Олегович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='f49c92f240f6114f41913251829b9e40' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a0757511967b3f537c408ae88b6d97f2', 'Жижин Денис Михайлович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a0757511967b3f537c408ae88b6d97f2' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d50bc98e973d2585130e08e62d460d4f', 'Зенин Григорий Вячеславович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d50bc98e973d2585130e08e62d460d4f' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('04b795bfa894138d90a3833f2535869d', 'Калтыгин Валентин Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='04b795bfa894138d90a3833f2535869d' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('9d27085c1f1c1ce2284d83bf6f39fa96', 'Капустин Глеб Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='9d27085c1f1c1ce2284d83bf6f39fa96' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fb2de8390ac3361957c4f2c9b9d2eaab', 'Кит Андрей Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fb2de8390ac3361957c4f2c9b9d2eaab' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('640485e9e91887ec64a7df43fafd7848', 'Кит Сергей Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='640485e9e91887ec64a7df43fafd7848' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bfff4ac55a6acd5132f48deb0e95fa3f', 'Кочнев Михаил Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bfff4ac55a6acd5132f48deb0e95fa3f' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d1d5d8e93e9865fe42d4cc15da368765', 'Крайнов Даниил Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d1d5d8e93e9865fe42d4cc15da368765' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1126d308e68559a862631b6b105376fa', 'Кудрявцев Никита Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1126d308e68559a862631b6b105376fa' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('72e088b239bbb0d1a011c47f1994ef49', 'Курочкин Алексей Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='72e088b239bbb0d1a011c47f1994ef49' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('db40d5101ed446d3be035757d08fed17', 'Ларичев Иван Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='db40d5101ed446d3be035757d08fed17' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('211b443295b28f0a2206f7770407e00e', 'Малышенко Александр Сергеевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='211b443295b28f0a2206f7770407e00e' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('eeb1d9fbc388a6406835bbb21d5a444f', 'Муборакшоев Муборакшо Адолатшоевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='eeb1d9fbc388a6406835bbb21d5a444f' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('387e0f09afde610310faa705c67e46e1', 'Муравьёв Михаил Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='387e0f09afde610310faa705c67e46e1' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('d4b7a1e0f42568da988493fdff6810b9', 'Петров Иван Николаевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='d4b7a1e0f42568da988493fdff6810b9' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('274dc46708373574dd1527f0dd538f57', 'Самсонов Илья Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='274dc46708373574dd1527f0dd538f57' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('a7c1b9c82636e2572599dd0c2c70db5d', 'Слатеньков Егор Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='a7c1b9c82636e2572599dd0c2c70db5d' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('78aec010db1cce1e37e391882e5c4d03', 'Уманец Мирослав Юрьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='78aec010db1cce1e37e391882e5c4d03' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('41ac9c98aaa6297a62e55601b5a95fb9', 'Чиков Александр Александрович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='41ac9c98aaa6297a62e55601b5a95fb9' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1454fa30d2ba0c30edfcc54051c2b050', 'Шипов Максим Игоревич', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1454fa30d2ba0c30edfcc54051c2b050' AND t.name='СОЛНЕЧНАЯ'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('cbc0bcd01df797d16bf03edb2f336799', 'Балян Арутюн Геворгович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='cbc0bcd01df797d16bf03edb2f336799' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7d48e91b6d14cb292cde23917823acfc', 'Габриелян Григорий Варужанович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7d48e91b6d14cb292cde23917823acfc' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('861cb6c792ef1f3b8e538acfdff5ad75', 'Егиазарян Генрих Гамлетович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='861cb6c792ef1f3b8e538acfdff5ad75' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('acf0d510dbc3561b19baaf406f443971', 'Замащиков Степан Алексеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='acf0d510dbc3561b19baaf406f443971' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('7cf89c535484d411889f3e65997aa181', 'Захарчук Артём Геннадьевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='7cf89c535484d411889f3e65997aa181' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ff7f0e00d5f412933cf4af81b6c9670e', 'Каримов Роман Рустамович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ff7f0e00d5f412933cf4af81b6c9670e' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('23c3c872f4080001c2e9902f28bfe128', 'Ковалев Константин Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='23c3c872f4080001c2e9902f28bfe128' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('fe4e44c63048dd2d099f2571cc7b4d34', 'Ковалев Михаил Борисович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='fe4e44c63048dd2d099f2571cc7b4d34' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('b3015abec17be1c758d9d83e899f2a61', 'Оганисян Каро Бабкенович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='b3015abec17be1c758d9d83e899f2a61' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ec3359121769aeac683e79c7a474d25a', 'Оганян Грачя Грантович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ec3359121769aeac683e79c7a474d25a' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('1e874cdee6a351a353b5944739b6d053', 'Приходов Роман Михайлович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='1e874cdee6a351a353b5944739b6d053' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('bf905068e36cda8288ae92f117ca781a', 'Рябцев Артем Дмитриевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='bf905068e36cda8288ae92f117ca781a' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ff5b98ae123cfbdb96b34c9ab9a04cab', 'Самышкин Кирилл Александрович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ff5b98ae123cfbdb96b34c9ab9a04cab' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('8cef9282e7a71546daf9885b66dbaf25', 'Сапрыгин Добрыня Денисович', 'нападающий') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='8cef9282e7a71546daf9885b66dbaf25' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('54b0911e962b9c677f70f61927614544', 'Соркин Александр Александрович', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='54b0911e962b9c677f70f61927614544' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('adec07227de572a652857b9d1e80cf7a', 'Степанов Вячеслав Евгеньевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='adec07227de572a652857b9d1e80cf7a' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('75366c9b35817bd1f1e0fdf7266cd277', 'Тарасов Алексей Викторович', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='75366c9b35817bd1f1e0fdf7266cd277' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('2382b0cc9142f76fbfd08274d11c095e', 'Тюняев Сергей Игоревич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='2382b0cc9142f76fbfd08274d11c095e' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('40e80344cc966ed4cc72d868e479ad74', 'Фаер Максим Александрович', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='40e80344cc966ed4cc72d868e479ad74' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('ba6104ea996322ec1f5860727e53c7d6', 'Федонин Андрей Дмитриевич', 'вратарь') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='ba6104ea996322ec1f5860727e53c7d6' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('68df40b86207953860e805e45dd98d12', 'Федоров Александр Дмитриевич', 'полузащитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='68df40b86207953860e805e45dd98d12' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO players(uid, full_name, position) VALUES ('e87b5dbd66421a1a80fa9369b18963af', 'Хандогин Александр Сергеевич', 'защитник') ON CONFLICT (uid) DO NOTHING;
INSERT INTO player_team_history(player_id, team_id, start_date)
SELECT p.id, t.id, DATE '2025-06-01'
FROM players p, teams t
WHERE p.uid='e87b5dbd66421a1a80fa9369b18963af' AND t.name='BORUSSIA'
ON CONFLICT DO NOTHING;
INSERT INTO teams(name) VALUES ('ТЕХНИЧЕСКАЯ КОМАНДА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ТЕХНИЧЕСКАЯ КОМАНДА' AND l.level=1 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 1, 4, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ХЕТАФЕ' AND ta.name='КОРОНА ЭКСТРА'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=1
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 1, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='АМПЕР' AND ta.name='МОЛНИЯ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=1
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 2, 0, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='КОТ@ПЁС' AND ta.name='ТЕХНИЧЕСКАЯ КОМАНДА'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=1
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO teams(name) VALUES ('ТЕХНИЧЕСКАЯ КОМАНДА') ON CONFLICT DO NOTHING;
INSERT INTO team_league_season(team_id, league_id, season_id)
SELECT t.id, l.id, s.id FROM teams t, leagues l, seasons s
WHERE t.name='ТЕХНИЧЕСКАЯ КОМАНДА' AND l.level=2 AND s.year=2025 AND s.name='Лето 2025'
ON CONFLICT (team_id, season_id) DO NOTHING;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 8, 4, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='SALUT GZHEL' AND ta.name='ОЛИМПИК'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=2
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 1, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='RAYS UTD' AND ta.name='EGOIST'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=2
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 6, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='СПК' AND ta.name='VEGAZ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=2
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 11, 3, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='РАФС' AND ta.name='RAMCITY'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=2
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 0, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='СССР' AND ta.name='ТЕХНИЧЕСКАЯ КОМАНДА'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=2
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 4, 6, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='НОВОЕ СЕЛО' AND ta.name='ЭНЕРГИЯ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 8, 5, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ФАБУС' AND ta.name='ELASTIC'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 5, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ВОЗРОЖДЕНИЕ' AND ta.name='ДЭМА'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 2, 3, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='АМПЕР МЕДИА' AND ta.name='PALERMO'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 6, 11, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ТЕМП INS Автоподбор' AND ta.name='КОРОНА БРОННИЦЫ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 5, 9, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='INTERNATIONAL' AND ta.name='ЧЕТЫРЕ ЛАПЫ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 10, 1, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ЭМЗ' AND ta.name='ИСТИКЛОЛ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=3
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 14, 3, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ПРОМОТОРС' AND ta.name='HELLES'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 5, 3, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='БАНКА' AND ta.name='ТОКК'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 11, 4, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ЛЕОН' AND ta.name='ПОИСК'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 7, 8, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ЛИОН 04' AND ta.name='ШТУРМ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 3, 7, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ИЛЬИНКА' AND ta.name='АТЛЕТИК'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 5, 5, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ФТП' AND ta.name='CSAK'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 9, 9, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ЭДЕЛЬВЕЙС' AND ta.name='VENERA'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=4
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 6, 3, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='РЕАЛ' AND ta.name='ЛИОН'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 1, 11, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ДОМОК БРОННИЦЫ' AND ta.name='CHELSEA'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 4, 6, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='33 КМ' AND ta.name='БРОК'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 6, 13, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='СПАРТАК БЫКОВО' AND ta.name='BORODACH'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 7, 12, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='ВОСХОД' AND ta.name='STREET'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 5, 9, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='АЛЬЯНС' AND ta.name='ВЕРТИКАЛЬ'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
INSERT INTO matches(date, home_team_id, away_team_id, season_id, home_score, away_score, round_id)
SELECT DATE '2025-08-10', th.id, ta.id, s.id, 4, 6, r.id
FROM teams th, teams ta, seasons s, leagues l, rounds r
WHERE th.name='СОЛНЕЧНАЯ' AND ta.name='BORUSSIA'
  AND s.year=2025 AND s.name='Лето 2025'
  AND l.level=5
  AND r.season_id=s.id AND r.league_id=l.id AND r.round_number=3;
-- goalscorers
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ХЕТАФЕ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1a368fe2351d5ab2d1a86f3a5d93a8a6'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1a368fe2351d5ab2d1a86f3a5d93a8a6'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА ЭКСТРА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='50b8aaf2c6c4fd25072752d4f1005eac'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='50b8aaf2c6c4fd25072752d4f1005eac'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА ЭКСТРА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='ec0629497be4d51da501f8c518731470'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='ec0629497be4d51da501f8c518731470'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА ЭКСТРА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8d65b63b78c1e35175fd29bd71e9310a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8d65b63b78c1e35175fd29bd71e9310a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АМПЕР' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6f17110d3dbc8140b7e56b7789d31961'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6f17110d3dbc8140b7e56b7789d31961'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='МОЛНИЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6772d5f187736da9e9245674743d2920'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6772d5f187736da9e9245674743d2920'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОТ@ПЁС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c5af0228b3157f7244789bed4a9e4edb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c5af0228b3157f7244789bed4a9e4edb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОТ@ПЁС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8360db5a0a23a72176758048299176b3'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8360db5a0a23a72176758048299176b3'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='08414a2242ba09460008ef7da460b41d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='08414a2242ba09460008ef7da460b41d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9e2bded16354ed68fc6747b7b7864949'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9e2bded16354ed68fc6747b7b7864949'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6331867641647dfbb09bcd5996d8bab7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6331867641647dfbb09bcd5996d8bab7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='26910bbf72935e76dc4c7f9bb0bb5008'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='26910bbf72935e76dc4c7f9bb0bb5008'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c98453944b277bc7e4c54a94937a568f'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c98453944b277bc7e4c54a94937a568f'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='SALUT GZHEL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6955708dbdf74576c638fad499bc147b'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6955708dbdf74576c638fad499bc147b'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ОЛИМПИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='5bcc8f1585d54ac79678f261055fa6b4'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='5bcc8f1585d54ac79678f261055fa6b4'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ОЛИМПИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='09aa5a33cafcc13d7769c653c6608e95'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='09aa5a33cafcc13d7769c653c6608e95'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ОЛИМПИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7ef254a4bb026d1be10160e075999159'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7ef254a4bb026d1be10160e075999159'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='RAYS UTD' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3dcf09ad4f4ae39801b43b5c9e99d042'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3dcf09ad4f4ae39801b43b5c9e99d042'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='RAYS UTD' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e309ae97864dce127916b1d562b482a4'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e309ae97864dce127916b1d562b482a4'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='EGOIST' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='ea192a30a71884e4c7aeb792b40a3f21'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='ea192a30a71884e4c7aeb792b40a3f21'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='301c2a4469ba28cafbe86f41fc6725f1'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='301c2a4469ba28cafbe86f41fc6725f1'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c799ddf2e5cb570b9063440d4cc9a332'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c799ddf2e5cb570b9063440d4cc9a332'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='66776c8951a1c9da3fec2296988469dc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='66776c8951a1c9da3fec2296988469dc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VEGAZ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e2afe244d4e4c9953d0da1ef98178250'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e2afe244d4e4c9953d0da1ef98178250'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VEGAZ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c4e49d758cd86ab88ff1074cf60ca15f'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c4e49d758cd86ab88ff1074cf60ca15f'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VEGAZ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f8620c92dee562008087adac65e78230'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f8620c92dee562008087adac65e78230'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='cd5610ba864cb49999dea4143653bcbd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='cd5610ba864cb49999dea4143653bcbd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3f2284732e24cce1662913711bbacfbb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3f2284732e24cce1662913711bbacfbb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='882a4db5e3f2cdc80da94888b8946045'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='882a4db5e3f2cdc80da94888b8946045'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='474927b02b959da1c43a7ded5b435c90'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='474927b02b959da1c43a7ded5b435c90'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='ef3879c833660e6d39ec974b2576e3ec'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='ef3879c833660e6d39ec974b2576e3ec'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='b508f118a7d4f20f54340f8e53fa322d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='b508f118a7d4f20f54340f8e53fa322d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РАФС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='24a2a60c239d9f746cc8bb7563922b05'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='24a2a60c239d9f746cc8bb7563922b05'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='RAMCITY' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8368614fe173b785f8c57e08e5743777'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8368614fe173b785f8c57e08e5743777'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='RAMCITY' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3a08786e56242a05c8ea1f3148bc2e71'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3a08786e56242a05c8ea1f3148bc2e71'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='RAMCITY' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7595714900c0456bd0272f3ed6f9b59c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7595714900c0456bd0272f3ed6f9b59c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СССР' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2315cce8e0ba3041144e6c8d419ca21e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2315cce8e0ba3041144e6c8d419ca21e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СССР' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1a3981a031492ffe8b100b08edb2e3b0'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1a3981a031492ffe8b100b08edb2e3b0'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='НОВОЕ СЕЛО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c5959c4aaa600f6983b0713a2d8db4b3'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c5959c4aaa600f6983b0713a2d8db4b3'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='НОВОЕ СЕЛО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e06de8836ef00b4ccbfd14141743d94a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e06de8836ef00b4ccbfd14141743d94a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='НОВОЕ СЕЛО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9d99601383cc08929fb1182fc4b7416d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9d99601383cc08929fb1182fc4b7416d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭНЕРГИЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7031f24de1017dd0b40880908b9964e9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7031f24de1017dd0b40880908b9964e9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭНЕРГИЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1cc741d6d4decd641825ba196de5a71a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1cc741d6d4decd641825ba196de5a71a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭНЕРГИЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='76ef1e4cb137eca09ec20a41f2f79c57'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='76ef1e4cb137eca09ec20a41f2f79c57'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭНЕРГИЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1dfebcb8a739168e24915f3b00569db2'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1dfebcb8a739168e24915f3b00569db2'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ФАБУС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d6cff8eefc2731ab171c5478c592cda9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d6cff8eefc2731ab171c5478c592cda9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ФАБУС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='b5be6ef3ebd2800146db379199c98294'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 5, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='b5be6ef3ebd2800146db379199c98294'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ФАБУС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='78ce0cff4413e9928dc054589beeba01'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='78ce0cff4413e9928dc054589beeba01'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ELASTIC' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c9734f3c42e646cb0205667a1aec9445'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c9734f3c42e646cb0205667a1aec9445'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ELASTIC' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3dcc98bbe654e5e8929719bbcce5f463'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3dcc98bbe654e5e8929719bbcce5f463'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ELASTIC' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9e4aff0d4e7e197897c60ea82050d71c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9e4aff0d4e7e197897c60ea82050d71c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ELASTIC' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='26f57e83b72c9689aa13d1631780e4f1'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='26f57e83b72c9689aa13d1631780e4f1'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОЗРОЖДЕНИЕ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e20a020a8043fd763d029ce5ef130938'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e20a020a8043fd763d029ce5ef130938'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОЗРОЖДЕНИЕ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='bf4c4630b01ef372a2fd4a0ad100dff7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='bf4c4630b01ef372a2fd4a0ad100dff7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОЗРОЖДЕНИЕ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='b0bd345cacb3c8da2c11c78230dc6b11'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='b0bd345cacb3c8da2c11c78230dc6b11'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ДЭМА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0b6e24d576e708d976abdd4a2dcbc76e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0b6e24d576e708d976abdd4a2dcbc76e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ДЭМА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3ef7891832e7f266e9a129bf903081d7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3ef7891832e7f266e9a129bf903081d7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ДЭМА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9c3d360b55cb715167b7ac9ffa2e2994'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9c3d360b55cb715167b7ac9ffa2e2994'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АМПЕР МЕДИА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='022e389233ae6feca9ee901f11bd6b78'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='022e389233ae6feca9ee901f11bd6b78'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АМПЕР МЕДИА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3703057dc66947c014b311ac61651045'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3703057dc66947c014b311ac61651045'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='PALERMO' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8f9f4e2c38cdbca62016760a01a8201a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8f9f4e2c38cdbca62016760a01a8201a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='PALERMO' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c46809fec0f4ca2bb4ca666ebb307f6a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c46809fec0f4ca2bb4ca666ebb307f6a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ТЕМП INS Автоподбор' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3ebc700f6a105f7adfef27c3072ef823'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3ebc700f6a105f7adfef27c3072ef823'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ТЕМП INS Автоподбор' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d86cc2ae8e329fd50f260c24560ac67d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d86cc2ae8e329fd50f260c24560ac67d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ТЕМП INS Автоподбор' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='bcb832407c9312f9261a62fb3d34a0dd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='bcb832407c9312f9261a62fb3d34a0dd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='813de60799ed0b8f6a8f805c52c7eed5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='813de60799ed0b8f6a8f805c52c7eed5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='dc94ebf9cb8eeb5d7c5544a13cb1d914'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='dc94ebf9cb8eeb5d7c5544a13cb1d914'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='ef079512ad7c769ab03a49590b8872da'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='ef079512ad7c769ab03a49590b8872da'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c2eb7dcea254f982b24df10b2869f0f2'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c2eb7dcea254f982b24df10b2869f0f2'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='КОРОНА БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8a172e3c413d53f5b3444272bc9cd24b'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8a172e3c413d53f5b3444272bc9cd24b'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='INTERNATIONAL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1c089e899ce7cf3cea53d2592f3d46a9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1c089e899ce7cf3cea53d2592f3d46a9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='INTERNATIONAL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='ed853a519106d9bc73c6e63a804a39f3'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='ed853a519106d9bc73c6e63a804a39f3'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='INTERNATIONAL' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f2df8770f24417f7f145b3987ca229b6'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f2df8770f24417f7f145b3987ca229b6'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='41aa6abc1990b504d767f9431e17051d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='41aa6abc1990b504d767f9431e17051d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2130664bf306bfbcb297b046671ee02e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2130664bf306bfbcb297b046671ee02e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='65b2f8c879dacfe09ed36b986c627b7d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='65b2f8c879dacfe09ed36b986c627b7d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='aa399de068dc89cd65f1abeba6d1746a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='aa399de068dc89cd65f1abeba6d1746a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c389916532238cee073b5bfe63457907'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c389916532238cee073b5bfe63457907'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЧЕТЫРЕ ЛАПЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='86dd093dab6c14f3c93b1dda47d97297'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='86dd093dab6c14f3c93b1dda47d97297'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭМЗ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6e5290e293a22c808b76f6a05c43011d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6e5290e293a22c808b76f6a05c43011d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭМЗ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='88d7940c90d4d263fd9dd14440145604'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='88d7940c90d4d263fd9dd14440145604'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭМЗ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='4a9e7e9510248a62355535d06b746fd5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='4a9e7e9510248a62355535d06b746fd5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭМЗ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='daf9bf18067ac0231477cc10d860d89d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='daf9bf18067ac0231477cc10d860d89d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭМЗ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f6ba3b8e1a7109154a23fd053db108bf'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f6ba3b8e1a7109154a23fd053db108bf'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ИСТИКЛОЛ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='26626a5f59814a766e2da189e84b8ca8'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='26626a5f59814a766e2da189e84b8ca8'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='443bdf0e44650a5cddce21ebe0d4fe40'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='443bdf0e44650a5cddce21ebe0d4fe40'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d8438a29b3b286ccada5cce1b48e7d4d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 5, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d8438a29b3b286ccada5cce1b48e7d4d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='67ade1524bcabf4c09ab50a5d32a89c3'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='67ade1524bcabf4c09ab50a5d32a89c3'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='360829afdc411d8ee599eaadc937ebec'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='360829afdc411d8ee599eaadc937ebec'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='132655289dc2ac51584a91e798bde673'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='132655289dc2ac51584a91e798bde673'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='caef4a3e5331aeaca164c7eb9e51ce0b'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='caef4a3e5331aeaca164c7eb9e51ce0b'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПРОМОТОРС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='da21a99a09dbd3b400f2e31c86aa8318'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='da21a99a09dbd3b400f2e31c86aa8318'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='HELLES' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f8191a90de6ed6ad166cbfdc99ac9216'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f8191a90de6ed6ad166cbfdc99ac9216'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='HELLES' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6360b87f41cdec2ff1ef0538008fc0cb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6360b87f41cdec2ff1ef0538008fc0cb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БАНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='40fd92157bd6a841108891211e707e8e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='40fd92157bd6a841108891211e707e8e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БАНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d2423390c8e26514b588731c37d510cc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d2423390c8e26514b588731c37d510cc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БАНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='5bb21372aedeee6b8561d14ba12b87ef'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='5bb21372aedeee6b8561d14ba12b87ef'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БАНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e0e2442e7bf78d21c6e1ac075a641cb8'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e0e2442e7bf78d21c6e1ac075a641cb8'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ТОКК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='25e212724597c7d59f07dc42400099e7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='25e212724597c7d59f07dc42400099e7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛЕОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e85dd18d3b617aaa09bf7b9d167e1b19'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e85dd18d3b617aaa09bf7b9d167e1b19'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛЕОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3e5ce46484f7023f1c07ce6a67774405'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3e5ce46484f7023f1c07ce6a67774405'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛЕОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='eadc94c1fc7fec4a81afc7fea834cd9d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='eadc94c1fc7fec4a81afc7fea834cd9d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛЕОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3ef4368accf0d98f9014db9e6c20a677'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3ef4368accf0d98f9014db9e6c20a677'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛЕОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0fd0734ffff17cce1168b9de3975e33c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0fd0734ffff17cce1168b9de3975e33c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПОИСК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3301afd616321ab899982b7c77d08807'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3301afd616321ab899982b7c77d08807'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ПОИСК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='29049eb12afbe8ac8a092b40229a76ed'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='29049eb12afbe8ac8a092b40229a76ed'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН 04' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='fec1149dffaf7b786986c4aa88291558'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='fec1149dffaf7b786986c4aa88291558'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН 04' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c1c24a7880686e49cec87a85eab3bdcb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c1c24a7880686e49cec87a85eab3bdcb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН 04' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9e1088dbaab592bedb7fc4c0775040e8'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9e1088dbaab592bedb7fc4c0775040e8'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН 04' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='4333a87814035588884badc3d0feb462'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='4333a87814035588884badc3d0feb462'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='45adad01b5d8665afc8f6026c5351813'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='45adad01b5d8665afc8f6026c5351813'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='a19321bdfd28cfbe0be33d00a1400aca'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='a19321bdfd28cfbe0be33d00a1400aca'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='bacfc358dcfe65950275463435e0a286'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='bacfc358dcfe65950275463435e0a286'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='b2c2366d971c76b945b3aec824fa74cb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='b2c2366d971c76b945b3aec824fa74cb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='e890579c98b7b43dd4d871b1705ab2bc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='e890579c98b7b43dd4d871b1705ab2bc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ШТУРМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='4010cc60f9659296be7d43996dc56a58'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='4010cc60f9659296be7d43996dc56a58'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ИЛЬИНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='823c7d11565f6fb787f59f1ed39c7dd4'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='823c7d11565f6fb787f59f1ed39c7dd4'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ИЛЬИНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9369eb5bcf795da008d0900ccf356d2d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9369eb5bcf795da008d0900ccf356d2d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ИЛЬИНКА' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='520a9091214540db148fbd49bd2e1aa2'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='520a9091214540db148fbd49bd2e1aa2'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f4310e0671fad38c5efd4d4ccd47a9a7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f4310e0671fad38c5efd4d4ccd47a9a7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7cebf808b08d2facb6f36436598ae8ce'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7cebf808b08d2facb6f36436598ae8ce'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='a94929f37ab1a30d0f3e2d33e6b566d5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='a94929f37ab1a30d0f3e2d33e6b566d5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7bc2677843bb3794657aa0a8797d3c7e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7bc2677843bb3794657aa0a8797d3c7e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='16814564518401ccfe6ac9a243991088'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='16814564518401ccfe6ac9a243991088'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АТЛЕТИК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='cc22ffc48bfdcf199977648e28988fa9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='cc22ffc48bfdcf199977648e28988fa9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ФТП' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d3520c1e86f309267c61f234283d31e0'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 5, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d3520c1e86f309267c61f234283d31e0'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CSAK' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0a387b758588a60647a5b2b0601c3ac9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0a387b758588a60647a5b2b0601c3ac9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CSAK' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3933abb95cfddab82378bcbdb7b96525'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3933abb95cfddab82378bcbdb7b96525'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CSAK' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0503dde129c68e9e77d0d378a2050512'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0503dde129c68e9e77d0d378a2050512'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f9412bdb5fdf9a5971716fa371005fd5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f9412bdb5fdf9a5971716fa371005fd5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f2cb54a3e516f5491f8e0607c7dc8b7e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f2cb54a3e516f5491f8e0607c7dc8b7e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8efdb868577f16fa59c0367d1cbf741b'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8efdb868577f16fa59c0367d1cbf741b'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8d4ca0954c19a809b72743f524b1397d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8d4ca0954c19a809b72743f524b1397d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='acd925c14eb87ae677eda2ffa202e1b0'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='acd925c14eb87ae677eda2ffa202e1b0'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c23658ecf5294c3035597f533376e17c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c23658ecf5294c3035597f533376e17c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЭДЕЛЬВЕЙС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='44f8130df72a1e2d4af1899ae5fa0ecc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='44f8130df72a1e2d4af1899ae5fa0ecc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VENERA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='92ba29769a6dabaa8a878c3f8f72ce67'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='92ba29769a6dabaa8a878c3f8f72ce67'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VENERA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d2a30949999f61bc6e2125d7df6deb47'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d2a30949999f61bc6e2125d7df6deb47'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VENERA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3dc43bf9696284323928d9868e1dced5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3dc43bf9696284323928d9868e1dced5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='VENERA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='81349dc9bd1833b95a9c32c833e14a35'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='81349dc9bd1833b95a9c32c833e14a35'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РЕАЛ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='84ff661a46a53f37b77ec4f4e63bf5b4'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='84ff661a46a53f37b77ec4f4e63bf5b4'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РЕАЛ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9386d590b3cf72cc0a9e52cbfdaee1dd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9386d590b3cf72cc0a9e52cbfdaee1dd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РЕАЛ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8ab4c9703f5881662dbacb1e6fc5fecf'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8ab4c9703f5881662dbacb1e6fc5fecf'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='РЕАЛ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='8564f55ae1ced83cd17cf9802a07a888'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='8564f55ae1ced83cd17cf9802a07a888'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7559d85e5b8d7444738cdffbafe6a93e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7559d85e5b8d7444738cdffbafe6a93e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ЛИОН' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='50fa0b4644fe0a40db04941bc2264ff9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='50fa0b4644fe0a40db04941bc2264ff9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ДОМОК БРОННИЦЫ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='073759cbd08ad79cef1ddd3bcc023cbb'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='073759cbd08ad79cef1ddd3bcc023cbb'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='244439de189922e2871f17b9c6012095'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='244439de189922e2871f17b9c6012095'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='450989d8351fe32037545721fb12f3f0'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='450989d8351fe32037545721fb12f3f0'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1ed031b6d23a9ce5b0c4f4e795c31635'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1ed031b6d23a9ce5b0c4f4e795c31635'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2774f2fd91cabd7b508d0fc8628218ef'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2774f2fd91cabd7b508d0fc8628218ef'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7f58517f2f0f6b3cae3b25d2968463b1'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7f58517f2f0f6b3cae3b25d2968463b1'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='21fbaaaecdc431404bbeeb9d933b27a1'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='21fbaaaecdc431404bbeeb9d933b27a1'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='CHELSEA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6d804cfd72816f9531b3287f4b0c9a65'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6d804cfd72816f9531b3287f4b0c9a65'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='33 КМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='025208e61f6add175c46148e0303476d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='025208e61f6add175c46148e0303476d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='33 КМ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2806325454fd2fbd7ec62731dc38b325'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2806325454fd2fbd7ec62731dc38b325'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БРОК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='57d874721de08e96fa573aafa7b5748a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='57d874721de08e96fa573aafa7b5748a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БРОК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1c50c573de2b7668c0d411980a7a4889'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1c50c573de2b7668c0d411980a7a4889'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БРОК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='a0630e584b1e1189e101c0cec5802e93'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='a0630e584b1e1189e101c0cec5802e93'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='БРОК' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d0451189afff7086a674335bc3f75fbd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d0451189afff7086a674335bc3f75fbd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПАРТАК БЫКОВО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3003fa7ae84132e067db9894b55d3bd6'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3003fa7ae84132e067db9894b55d3bd6'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПАРТАК БЫКОВО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='60814bc7f32076e9a8b2e9a429ab99b9'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='60814bc7f32076e9a8b2e9a429ab99b9'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПАРТАК БЫКОВО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c7f657a49723f8c8280d9eabaa41d514'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c7f657a49723f8c8280d9eabaa41d514'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПАРТАК БЫКОВО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0268a918c92616ffc8e7d005f33c2c1c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0268a918c92616ffc8e7d005f33c2c1c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СПАРТАК БЫКОВО' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='fb762e61930415a60bd77a3c4ad0a6d7'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='fb762e61930415a60bd77a3c4ad0a6d7'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='4d615b06337b8074c9335e0d7df92b59'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='4d615b06337b8074c9335e0d7df92b59'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='421c491c94872b0b0982c803d5f820d0'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='421c491c94872b0b0982c803d5f820d0'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='879d28efdab00fb7b84405f289e91a1a'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='879d28efdab00fb7b84405f289e91a1a'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='665bb06ce6f04918698437418a13cfd1'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='665bb06ce6f04918698437418a13cfd1'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2a25ed79307eed149a3efabb31999a31'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2a25ed79307eed149a3efabb31999a31'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORODACH' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='668406ed70cfcbab4ca972ccef42e9fd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='668406ed70cfcbab4ca972ccef42e9fd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОСХОД' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='0a147f2043f53ad8092381e4a51b86fd'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='0a147f2043f53ad8092381e4a51b86fd'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОСХОД' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='c6006b047f35535ec1838e0cb00d49fc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='c6006b047f35535ec1838e0cb00d49fc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОСХОД' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='372cf00d031f1f430a6899d9e1969ee3'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='372cf00d031f1f430a6899d9e1969ee3'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОСХОД' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='adf13d8724b72ac477a93b09ea30d97d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='adf13d8724b72ac477a93b09ea30d97d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВОСХОД' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='02affbcc805a96e1baababbaeba13977'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='02affbcc805a96e1baababbaeba13977'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='STREET' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='2431b07b56ebcd129f3e68d6e8f36c3d'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 5, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='2431b07b56ebcd129f3e68d6e8f36c3d'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='STREET' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='47b0b478540f5157265a2867961eadde'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='47b0b478540f5157265a2867961eadde'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='STREET' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='6a1b9d3f7fafa7a91e2793cc8910075c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='6a1b9d3f7fafa7a91e2793cc8910075c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='STREET' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='3fd46dae4cf507ca030d4027e54da62e'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='3fd46dae4cf507ca030d4027e54da62e'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='STREET' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1d3b15e6a5fc9a5f98fd64eb0b873007'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1d3b15e6a5fc9a5f98fd64eb0b873007'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АЛЬЯНС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d309d19cad8346b093135293da0f9975'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d309d19cad8346b093135293da0f9975'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АЛЬЯНС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='4930e76b3ff717a07b4544256599c048'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='4930e76b3ff717a07b4544256599c048'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='АЛЬЯНС' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='9f165cd36770e6672a0fbb5e39ad4a0c'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='9f165cd36770e6672a0fbb5e39ad4a0c'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВЕРТИКАЛЬ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='d52bc8c68b47b8c56df32f664625c273'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='d52bc8c68b47b8c56df32f664625c273'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВЕРТИКАЛЬ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='bc5bf019dd155a41f7ff9d401844eaa5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 4, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='bc5bf019dd155a41f7ff9d401844eaa5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВЕРТИКАЛЬ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7f575d0dc7a21aee23377866565efd13'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7f575d0dc7a21aee23377866565efd13'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВЕРТИКАЛЬ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1c6c388908b78955397c6440b5666b06'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1c6c388908b78955397c6440b5666b06'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='ВЕРТИКАЛЬ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='da04eb2c370bff2ff202d225d1dc88c5'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='da04eb2c370bff2ff202d225d1dc88c5'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СОЛНЕЧНАЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='f49c92f240f6114f41913251829b9e40'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='f49c92f240f6114f41913251829b9e40'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СОЛНЕЧНАЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='640485e9e91887ec64a7df43fafd7848'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='640485e9e91887ec64a7df43fafd7848'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='СОЛНЕЧНАЯ' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='bfff4ac55a6acd5132f48deb0e95fa3f'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 2, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='bfff4ac55a6acd5132f48deb0e95fa3f'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORUSSIA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='7d48e91b6d14cb292cde23917823acfc'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 3, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='7d48e91b6d14cb292cde23917823acfc'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORUSSIA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='861cb6c792ef1f3b8e538acfdff5ad75'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='861cb6c792ef1f3b8e538acfdff5ad75'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORUSSIA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='23c3c872f4080001c2e9902f28bfe128'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='23c3c872f4080001c2e9902f28bfe128'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
WITH m AS (
  SELECT m.id AS match_id, 
         CASE WHEN m.home_team_id = t.id THEN m.home_team_id ELSE m.away_team_id END AS team_id
  FROM matches m
  JOIN teams t ON (t.name='BORUSSIA' AND (m.home_team_id=t.id OR m.away_team_id=t.id))
  JOIN seasons s ON s.year=2025 AND s.name='Лето 2025' AND m.season_id=s.id
)
INSERT INTO match_participation(match_id, player_id, team_id, is_starting)
SELECT m.match_id, p.id, m.team_id, true
FROM m
JOIN players p ON p.uid='1e874cdee6a351a353b5944739b6d053'
ON CONFLICT DO NOTHING;
INSERT INTO player_stats(match_participation_id, goals, passes, yellow_cards, red_cards)
SELECT mp.id, 1, 0, 0, 0
FROM match_participation mp
JOIN players p ON mp.player_id=p.id AND p.uid='1e874cdee6a351a353b5944739b6d053'
ORDER BY mp.id DESC LIMIT 1
ON CONFLICT DO NOTHING;
COMMIT;
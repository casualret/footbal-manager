import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link,
  useParams,
} from "react-router-dom";

const API_URL = "http://localhost:8080";

function PlayerList() {
  const [players, setPlayers] = useState([]);
  const [teamMap, setTeamMap] = useState({});
  const [search, setSearch] = useState("");

  useEffect(() => {
    fetch(`${API_URL}/players`)
      .then((res) => res.json())
      .then((data) => setPlayers(data));
    fetch(`${API_URL}/teams`)
      .then((res) => res.json())
      .then((data) => {
        const map = {};
        data.forEach((t) => {
          map[t.name] = t.id;
        });
        setTeamMap(map);
      });
  }, []);

  return (
    <div className="p-6">
      <h1 className="text-4xl font-bold mb-6 text-center text-blue-800">
        Футбольная Лига
      </h1>
      <input
        type="text"
        placeholder="Поиск по имени"
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="mb-6 p-2 border rounded w-full sm:w-1/2 mx-auto block"
      />
      <div className="grid gap-6 grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
        {players
          .filter((p) =>
            p.full_name.toLowerCase().includes(search.toLowerCase()),
          )
          .map((p) => (
            <Link to={`/players/${p.uid}`} key={p.uid}>
              <div className="bg-white shadow-md border border-gray-200 rounded-xl p-4 hover:shadow-xl transition">
                <div className="flex items-center gap-4">
                  <div className="border-4 border-blue-300 rounded-full overflow-hidden w-20 h-20">
                    <img
                      src={
                        p.photo_url
                          ? `${API_URL}${p.photo_url}`
                          : "https://via.placeholder.com/80x80?text=?"
                      }
                      alt={p.full_name}
                      className="object-cover w-full h-full"
                    />
                  </div>
                  <div>
                    <div className="font-semibold text-lg text-blue-700">
                      {p.full_name}
                    </div>
                    <div className="text-gray-600 text-sm">
                      {p.position} —{" "}
                      {teamMap[p.team] ? (
                        <Link
                          to={`/teams/${teamMap[p.team]}`}
                          className="text-blue-600 hover:underline"
                        >
                          {p.team}
                        </Link>
                      ) : (
                        p.team
                      )}
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          ))}
      </div>
    </div>
  );
}

function PlayerCard() {
  const { uid } = useParams();
  const [player, setPlayer] = useState(null);
  const [teamMap, setTeamMap] = useState({});

  useEffect(() => {
    fetch(`${API_URL}/players/${uid}`)
      .then((res) => res.json())
      .then((data) => setPlayer(data));
    }, [uid]);

  useEffect(() => {
    fetch(`${API_URL}/teams`)
      .then((res) => res.json())
      .then((data) => {
        const map = {};
        data.forEach((t) => {
          map[t.name] = t.id;
        });
        setTeamMap(map);
      });
  }, []);

  if (!player) return <div className="p-6">Загрузка...</div>;

  return (
    <div className="max-w-2xl mx-auto p-6">
      <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-200">
        <img
          src={
            player.photo_url
              ? `${API_URL}${player.photo_url}`
              : "https://via.placeholder.com/400x200?text=ФОТО+ИГРОКА"
          }
          alt={player.full_name}
          className="w-full h-48 object-cover rounded-md mb-4 border"
        />
        <h1 className="text-2xl font-bold text-blue-800 mb-1">
          {player.full_name}
        </h1>
        <div className="text-gray-600 text-lg mb-2">{player.position}</div>
        <div className="text-blue-600 font-semibold mb-4">
          {teamMap[player.team] ? (
            <Link
              to={`/teams/${teamMap[player.team]}`}
              className="hover:underline"
            >
              {player.team}
            </Link>
          ) : (
            player.team
          )}
        </div>

        <div className="grid grid-cols-2 gap-4 text-sm text-gray-800">
          <div>
            <b>Голы:</b> {player.stats.goals}
          </div>
          <div>
            <b>Пасы:</b> {player.stats.passes}
          </div>
          <div>
            <b>ЖК:</b> {player.stats.yellow_cards}
          </div>
          <div>
            <b>КК:</b> {player.stats.red_cards}
          </div>
          <div>
            <b>Победы:</b> {player.stats.wins}
          </div>
          <div>
            <b>Поражения:</b> {player.stats.losses}
          </div>
        </div>

        <Link
          to="/players"
          className="block mt-6 text-blue-500 hover:underline"
        >
          ← Назад к списку
        </Link>
      </div>
    </div>
  );
}

function TeamList() {
  const [teams, setTeams] = useState([]);

  useEffect(() => {
    fetch(`${API_URL}/teams`)
      .then((res) => res.json())
      .then((data) => setTeams(data));
  }, []);

  return (
    <div className="p-6">
      <h1 className="text-4xl font-bold mb-6 text-center text-blue-800">
        Команды
      </h1>
      <div className="grid gap-6 grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
        {teams.map((t) => (
          <Link to={`/teams/${t.id}`} key={t.id}>
            <div className="bg-white shadow-md border border-gray-200 rounded-xl p-4 hover:shadow-xl transition">
              <div className="flex items-center gap-4">
                  <div className="border-4 border-blue-300 rounded-full overflow-hidden w-20 h-20">
                    <img
                      src={
                        t.logo_url
                          ? `${API_URL}${t.logo_url}`
                          : "https://via.placeholder.com/80x80?text=?"
                      }
                      alt={t.name}
                      className="object-cover w-full h-full"
                    />
                  </div>
                <div className="font-semibold text-lg text-blue-700">
                  {t.name}
                </div>
              </div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}

function TeamCard() {
  const { id } = useParams();
  const [team, setTeam] = useState(null);

  useEffect(() => {
    fetch(`${API_URL}/teams/${id}`)
      .then((res) => res.json())
      .then((data) => setTeam(data));
  }, [id]);

  if (!team) return <div className="p-6">Загрузка...</div>;

  return (
    <div className="max-w-2xl mx-auto p-6">
      <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-200">
        <img
          src={
            team.logo_url
              ? `${API_URL}${team.logo_url}`
              : "https://via.placeholder.com/400x200?text=ЛОГО+КОМАНДЫ"
          }
          alt={team.name}
          className="w-full h-48 object-cover rounded-md mb-4 border"
        />
        <h1 className="text-2xl font-bold text-blue-800 mb-4">{team.name}</h1>

        <div className="grid gap-6 grid-cols-1 sm:grid-cols-2">
        {team.players.map((p) => (
            <Link to={`/players/${p.uid}`} key={p.uid}>
              <div className="bg-white shadow-md border border-gray-200 rounded-xl p-4 hover:shadow-xl transition">
                <div className="flex items-center gap-4">
                    <div className="border-4 border-blue-300 rounded-full overflow-hidden w-20 h-20">
                      <img
                        src={
                          p.photo_url
                            ? `${API_URL}${p.photo_url}`
                            : "https://via.placeholder.com/80x80?text=?"
                        }
                        alt={p.full_name}
                        className="object-cover w-full h-full"
                      />
                    </div>
                  <div>
                    <div className="font-semibold text-lg text-blue-700">
                      {p.full_name}
                    </div>
                    <div className="text-gray-600 text-sm">{p.position}</div>
                  </div>
                </div>
              </div>
            </Link>
          ))}
        </div>

        <Link to="/teams" className="block mt-6 text-blue-500 hover:underline">
          ← Назад к списку команд
        </Link>
      </div>
    </div>
  );
}

function MatchList() {
  const [matches, setMatches] = useState([]);
  const [teamMap, setTeamMap] = useState({});

  useEffect(() => {
    fetch(`${API_URL}/matches`)
      .then((res) => res.json())
      .then((data) => setMatches(data));
    fetch(`${API_URL}/teams`)
      .then((res) => res.json())
      .then((data) => {
        const map = {};
        data.forEach((t) => {
          map[t.id] = t.name;
        });
        setTeamMap(map);
      });
  }, []);

  return (
    <div className="p-6">
      <h1 className="text-4xl font-bold mb-6 text-center text-blue-800">
        Матчи
      </h1>
      <div className="space-y-4">
        {matches.map((m) => (
          <div
            key={m.id}
            className="bg-white shadow-md border border-gray-200 rounded-xl p-4"
          >
            <div className="flex justify-between items-center mb-2">
              <Link
                to={`/teams/${m.home_team_id}`}
                className="text-blue-700 hover:underline"
              >
                {teamMap[m.home_team_id] || m.home_team_id}
              </Link>
              <div className="font-bold text-blue-800">
                {m.home_score} : {m.away_score}
              </div>
              <Link
                to={`/teams/${m.away_team_id}`}
                className="text-blue-700 hover:underline"
              >
                {teamMap[m.away_team_id] || m.away_team_id}
              </Link>
            </div>
            <div className="text-sm text-gray-600 mb-2">{m.date}</div>
            <Link
              to={`/matches/${m.id}`}
              className="text-blue-500 hover:underline"
            >
              Подробнее
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}

function MatchCard() {
  const { id } = useParams();
  const [match, setMatch] = useState(null);
  const [teamMap, setTeamMap] = useState({});
  const [playerMap, setPlayerMap] = useState({});

  useEffect(() => {
    fetch(`${API_URL}/matches/${id}`)
      .then((res) => res.json())
      .then((data) => setMatch(data));
  }, [id]);

  useEffect(() => {
    fetch(`${API_URL}/teams`)
      .then((res) => res.json())
      .then((data) => {
        const map = {};
        data.forEach((t) => {
          map[t.id] = t.name;
        });
        setTeamMap(map);
      });
    fetch(`${API_URL}/players`)
      .then((res) => res.json())
      .then((data) => {
        const map = {};
        data.forEach((p) => {
          map[p.id] = { name: p.full_name, uid: p.uid };
        });
        setPlayerMap(map);
      });
  }, []);

  if (!match) return <div className="p-6">Загрузка...</div>;

  return (
    <div className="max-w-3xl mx-auto p-6">
      <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-200">
        <div className="text-center mb-4">
          <div className="flex justify-between text-xl font-semibold text-blue-800">
            <Link
              to={`/teams/${match.home_team_id}`}
              className="hover:underline"
            >
              {teamMap[match.home_team_id] || match.home_team_id}
            </Link>
            <div>
              {match.home_score} : {match.away_score}
            </div>
            <Link
              to={`/teams/${match.away_team_id}`}
              className="hover:underline"
            >
              {teamMap[match.away_team_id] || match.away_team_id}
            </Link>
          </div>
          <div className="text-gray-600">{match.date}</div>
        </div>

        <table className="w-full text-sm text-left">
          <thead>
            <tr className="border-b">
              <th className="py-2">Игрок</th>
              <th className="py-2">Команда</th>
              <th className="py-2">Голы</th>
              <th className="py-2">Пасы</th>
              <th className="py-2">ЖК</th>
              <th className="py-2">КК</th>
            </tr>
          </thead>
          <tbody>
            {match.participants.map((p) => (
              <tr key={p.player_id} className="border-b">
                <td className="py-2">
                  <Link
                    to={`/players/${playerMap[p.player_id]?.uid || ""}`}
                    className="text-blue-600 hover:underline"
                  >
                    {playerMap[p.player_id]?.name || p.player_id}
                  </Link>
                </td>
                <td className="py-2">
                  <Link
                    to={`/teams/${p.team_id}`}
                    className="text-blue-600 hover:underline"
                  >
                    {teamMap[p.team_id] || p.team_id}
                  </Link>
                </td>
                <td className="py-2">{p.goals}</td>
                <td className="py-2">{p.passes}</td>
                <td className="py-2">{p.yellow_cards}</td>
                <td className="py-2">{p.red_cards}</td>
              </tr>
            ))}
          </tbody>
        </table>

        <Link
          to="/matches"
          className="block mt-6 text-blue-500 hover:underline"
        >
          ← Назад к списку матчей
        </Link>
      </div>
    </div>
  );
}

export default function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<PlayerList />} />
        <Route path="/players" element={<PlayerList />} />
        <Route path="/players/:uid" element={<PlayerCard />} />
        <Route path="/teams" element={<TeamList />} />
        <Route path="/teams/:id" element={<TeamCard />} />
        <Route path="/matches" element={<MatchList />} />
        <Route path="/matches/:id" element={<MatchCard />} />
      </Routes>
    </Router>
  );
}

import React, { useEffect, useState } from 'react'
import { BrowserRouter as Router, Routes, Route, Link, useParams } from 'react-router-dom'

const API_URL = "http://localhost:8080"

function PlayerList() {
  const [players, setPlayers] = useState([])

  useEffect(() => {
    fetch(`${API_URL}/players`)
      .then(res => res.json())
      .then(data => setPlayers(data))
  }, [])

  return (
    <div className="p-6">
      <h1 className="text-4xl font-bold mb-6 text-center text-blue-800">Футбольная Лига</h1>
      <div className="grid gap-6 grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
        {players.map(p => (
          <Link to={`/players/${encodeURIComponent(p.full_name)}`} key={p.full_name}>
            <div className="bg-white shadow-md border border-gray-200 rounded-xl p-4 hover:shadow-xl transition">
              <div className="flex items-center gap-4">
                <div className="border-4 border-blue-300 rounded-full overflow-hidden w-20 h-20">
                  <img
                    src={p.photo_url || "https://via.placeholder.com/80x80?text=?"}
                    alt={p.full_name}
                    className="object-cover w-full h-full"
                  />
                </div>
                <div>
                  <div className="font-semibold text-lg text-blue-700">{p.full_name}</div>
                  <div className="text-gray-600 text-sm">{p.position} — {p.team}</div>
                </div>
              </div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  )
}

function PlayerCard() {
  const { name } = useParams()
  const [player, setPlayer] = useState(null)

  useEffect(() => {
    fetch(`${API_URL}/players/${name}`)
      .then(res => res.json())
      .then(data => setPlayer(data))
  }, [name])

  if (!player) return <div className="p-6">Загрузка...</div>

  return (
    <div className="max-w-2xl mx-auto p-6">
      <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-200">
        <img
          src={player.photo_url || "https://via.placeholder.com/400x200?text=ФОТО+ИГРОКА"}
          alt={player.full_name}
          className="w-full h-48 object-cover rounded-md mb-4 border"
        />
        <h1 className="text-2xl font-bold text-blue-800 mb-1">{player.full_name}</h1>
        <div className="text-gray-600 text-lg mb-2">{player.position}</div>
        <div className="text-blue-600 font-semibold mb-4">{player.team}</div>

        <div className="grid grid-cols-2 gap-4 text-sm text-gray-800">
          <div><b>Игры:</b> {player.stats.games}</div>
          <div><b>Победы:</b> {player.stats.wins}</div>
          <div><b>Поражения:</b> {player.stats.losses}</div>
          <div><b>Голы:</b> {player.stats.goals}</div>
          <div><b>Передачи:</b> {player.stats.assists}</div>
          <div><b>Штрафы:</b> {player.stats.penalties}</div>
          <div><b>ЖК:</b> {player.stats.yellow_cards}</div>
          <div><b>КК:</b> {player.stats.red_cards}</div>
        </div>

        <Link to="/players" className="block mt-6 text-blue-500 hover:underline">← Назад к списку</Link>
      </div>
    </div>
  )
}

export default function App() {
  return (
    <Router>
      <Routes>
        <Route path="/players" element={<PlayerList />} />
        <Route path="/players/:name" element={<PlayerCard />} />
      </Routes>
    </Router>
  )
}

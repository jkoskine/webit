SELECT player.fname, player.lname, player.position, session.duration, session.comments, drill.subject
FROM session_has_player
JOIN player ON player.id_player = session_has_player.player_id_player
JOIN session ON session.id_session = session_has_player.session_id_session
JOIN drill ON drill.id_drill = session.drill_id_drill
ORDER BY player.lname

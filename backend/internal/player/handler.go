package player

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type Handler struct {
	uc Usecase
}

func NewHandler(u Usecase) *Handler {
	return &Handler{uc: u}
}

func (h *Handler) RegisterRoutes(r *gin.Engine) {
	r.GET("/players", h.getPlayers)
	r.GET("/players/:uid", h.getPlayerCard)
	r.POST("/players", h.createPlayer)
	r.POST("/player-team", h.addPlayerToTeam)
}

func (h *Handler) getPlayerCard(c *gin.Context) {
	uid := c.Param("uid")

	playerCard, err := h.uc.GetPlayerCardByUID(uid)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "player not found"})
		return
	}
	c.JSON(http.StatusOK, playerCard)
}

func (h *Handler) createPlayer(c *gin.Context) {
	var req NewPlayer
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	uid, err := h.uc.CreatePlayer(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"uid": uid})
}

func (h *Handler) addPlayerToTeam(c *gin.Context) {
	var req PlayerTeam
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	id, err := h.uc.AddPlayerToTeam(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"id": id})
}

func (h *Handler) getPlayers(c *gin.Context) {
	name := c.Query("name")
	leagueStr := c.Query("league")
	teamStr := c.Query("team")

	var (
		leagueID int
		teamID   int
		err      error
	)

	if leagueStr != "" {
		leagueID, err = strconv.Atoi(leagueStr)
		if err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "invalid league id"})
			return
		}
	}

	if teamStr != "" {
		teamID, err = strconv.Atoi(teamStr)
		if err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "invalid team id"})
			return
		}
	}

	if name == "" && leagueID == 0 && teamID == 0 {
		players, err := h.uc.GetAllPlayers()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, players)
		return
	}

	players, err := h.uc.SearchPlayers(name, leagueID, teamID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, players)
}

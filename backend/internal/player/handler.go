package player

import (
	"net/http"
	"net/url"

	"github.com/gin-gonic/gin"
)

type Handler struct {
	uc Usecase
}

func NewHandler(u Usecase) *Handler {
	return &Handler{uc: u}
}

func (h *Handler) RegisterRoutes(r *gin.Engine) {
	r.GET("/players/:name", h.getPlayerCard)
	r.GET("/players", h.getAllPlayers)
}

func (h *Handler) getPlayerCard(c *gin.Context) {
	encodedName := c.Param("name")
	name, err := url.QueryUnescape(encodedName)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid player name"})
		return
	}

	playerCard, err := h.uc.GetPlayerCardByName(name)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "player not found"})
		return
	}
	c.JSON(http.StatusOK, playerCard)
}

func (h *Handler) getAllPlayers(c *gin.Context) {
	players, err := h.uc.GetAllPlayers()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, players)
}

package team

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
	r.GET("/teams", h.getTeams)
	r.GET("/teams/:id", h.getTeamCard)
}

func (h *Handler) getTeamCard(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.Atoi(idStr)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid team id"})
		return
	}

	team, err := h.uc.GetTeamCardByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "team not found"})
		return
	}

	c.JSON(http.StatusOK, team)
}

func (h *Handler) getTeams(c *gin.Context) {
	teams, err := h.uc.GetTeams()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, teams)
}

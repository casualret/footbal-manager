package match

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

// Handler handles HTTP routes for match related operations
type Handler struct {
	uc Usecase
}

func NewHandler(u Usecase) *Handler {
	return &Handler{uc: u}
}

// RegisterRoutes registers match related endpoints
func (h *Handler) RegisterRoutes(r *gin.Engine) {
	r.POST("/api/rounds", h.createRound)
	r.POST("/api/matches", h.createMatch)
	r.POST("/api/match-participation", h.addMatchParticipation)
	r.POST("/api/player-stats", h.addPlayerStats)
	r.PATCH("/api/matches/:id", h.updateMatchScore)
	r.GET("/api/matches", h.listMatches)
	r.GET("/api/matches/:id", h.getMatch)
}

func (h *Handler) createRound(c *gin.Context) {
	var req NewRound
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	id, err := h.uc.CreateRound(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"round_id": id})
}

func (h *Handler) createMatch(c *gin.Context) {
	var req NewMatch
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	id, err := h.uc.CreateMatch(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"match_id": id})
}

func (h *Handler) addMatchParticipation(c *gin.Context) {
	var req MatchParticipation
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	id, err := h.uc.AddMatchParticipation(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"match_participation_id": id})
}

func (h *Handler) addPlayerStats(c *gin.Context) {
	var req PlayerStats
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	id, err := h.uc.AddPlayerStats(req)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusCreated, gin.H{"id": id})
}

func (h *Handler) updateMatchScore(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.Atoi(idStr)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid match id"})
		return
	}
	var req MatchScore
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if err := h.uc.UpdateMatchScore(id, req); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, gin.H{"status": "updated"})
}

func (h *Handler) listMatches(c *gin.Context) {
	matches, err := h.uc.ListMatches()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, matches)
}

func (h *Handler) getMatch(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.Atoi(idStr)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid match id"})
		return
	}
	match, err := h.uc.GetMatchDetails(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "match not found"})
		return
	}
	c.JSON(http.StatusOK, match)
}

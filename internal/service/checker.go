package service

import (
	"strings"
	"unicode"
	"unicode/utf8"

	"english-backend/internal/models"
)

func normalize(s string, caseSensitive bool) string {
	s = strings.TrimSpace(s)
	if !caseSensitive {
		s = strings.ToLower(s)
	}
	// normalize internal whitespace (collapse non-space unicode separators)
	s = strings.Join(strings.FieldsFunc(s, func(r rune) bool {
		return unicode.IsSpace(r) && r != ' '
	}), " ")
	return s
}

func eq(a, b string, caseSensitive bool) bool {
	return normalize(a, caseSensitive) == normalize(b, caseSensitive)
}

// CheckCloze validates answers and returns details + score [0..1]
func CheckCloze(payload models.ClozePayload, answers map[string]string) models.CheckResult {
	total := len(payload.Blanks)
	if total == 0 {
		return models.CheckResult{Correct: true, Score: 1, Details: nil}
	}
	correct := 0
	details := make([]models.CheckDetail, 0, total)

	for _, b := range payload.Blanks {
		given := answers[b.ID]
		ok := false
		for _, acc := range b.Accept {
			if eq(given, acc, true) {
				ok = true
				break
			}
		}
		if ok {
			correct++
		}
		details = append(details, models.CheckDetail{
			BlankID:  b.ID,
			Expected: b.Accept,
			Given:    given,
			Correct:  ok,
		})
	}

	score := float64(correct) / float64(total)
	return models.CheckResult{
		Correct: correct == total,
		Score:   score,
		Details: details,
	}
}

// IsAnswersShapeValid performs quick sanity checks
func IsAnswersShapeValid(answers map[string]string) bool {
	for k, v := range answers {
		if strings.TrimSpace(k) == "" {
			return false
		}
		if utf8.RuneCountInString(v) > 200 {
			return false
		}
	}
	return true
}

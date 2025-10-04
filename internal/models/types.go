package models

type ClozeBlank struct {
	ID     string   `json:"id"`
	Accept []string `json:"accept"`
}

type ClozePayload struct {
	Text   string       `json:"text"`
	Blanks []ClozeBlank `json:"blanks"`
}

type Exercise struct {
	ID      string       `json:"id"`
	Kind    string       `json:"kind"`
	Payload ClozePayload `json:"payload"`
}

type CheckDetail struct {
	BlankID  string   `json:"blankId"`
	Expected []string `json:"expected"`
	Given    string   `json:"given"`
	Correct  bool     `json:"correct"`
}

type CheckResult struct {
	Correct bool          `json:"correct"`
	Score   float64       `json:"score"`
	Details []CheckDetail `json:"details"`
}

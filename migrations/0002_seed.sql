INSERT INTO exercises (kind, prompt, payload)
VALUES (
  'cloze',
  'Complete: "Yesterday I ___ to school and ___ my homework."',
  '{
    "text": "He is {{a1}} engineer. I go to {{a2|∅}} work.",
    "blanks": [
      { "id": "a1", "accept": ["an"], "caseSensitive": false },
      { "id": "a2", "accept": ["the"], "caseSensitive": false }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

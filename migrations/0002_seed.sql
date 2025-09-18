INSERT INTO exercises (kind, prompt, payload)
VALUES (
  'cloze',
  'Complete: "Yesterday I ___ to school and ___ my homework."',
  '{
    "text": "Yesterday I __b1__ to school and __b2__ my homework.",
    "blanks": [
      { "id": "b1", "accept": ["went"], "caseSensitive": false },
      { "id": "b2", "accept": ["did", "finished"], "caseSensitive": false }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

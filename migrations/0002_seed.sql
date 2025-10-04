
INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "{{a1|∅}} sun was shining over {{a2|∅}} quiet village.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
);

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "She adopted {{a1|∅}} energetic puppy from {{a2|∅}} shelter downtown.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We climbed {{a1|∅}} Mount Fuji at dawn and watched {{a2|∅}} sunrise.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "After {{a1|∅}} hour of waiting, {{a2|∅}} bus finally arrived.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He dreams of becoming {{a1|∅}} astronaut and exploring {{a2|∅}} space.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "There is {{a1|∅}} bakery next to {{a2|∅}} old library.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Maya poured {{a1|∅}} glass of water for {{a2|∅}} guest.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "They sailed across {{a1|∅}} Mediterranean Sea during {{a2|∅}} summer.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "I bought {{a1|∅}} umbrella because {{a2|∅}} forecast predicted rain.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He studies {{a1|∅}} economics at {{a2|∅}} university in Berlin.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "{{a1|∅}} Amazon River flows through {{a2|∅}} rainforest.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Lena found {{a1|∅}} coin on {{a2|∅}} sidewalk outside her house.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We met {{a1|∅}} inspiring teacher during {{a2|∅}} workshop.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "She plays {{a1|∅}} piano every evening before {{a2|∅}} dinner.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Tom is {{a1|∅}} honest man with {{a2|∅}} strong sense of duty.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We visited {{a1|∅}} Louvre and admired {{a2|∅}} Mona Lisa.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Sara wants to become {{a1|∅}} engineer after {{a2|∅}} graduation.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "They stayed at {{a1|∅}} hotel overlooking {{a2|∅}} lake.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Cooking {{a1|∅}} breakfast together became {{a2|∅}} family tradition.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He whispered {{a1|∅}} secret into {{a2|∅}} ear of his friend.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We watched {{a1|∅}} television while waiting for {{a2|∅}} call.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Julia adopted {{a1|∅}} cat and {{a2|∅}} dog on the same day.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "{{a1|∅}} Eiffel Tower attracts millions of visitors every year.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "They moved to {{a1|∅}} Canada after {{a2|∅}} graduation ceremony.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Grandma baked {{a1|∅}} apple pie for {{a2|∅}} neighbors.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He plays {{a1|∅}} guitar in {{a2|∅}} local band.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Clara bought {{a1|∅}} orange and {{a2|∅}} banana from the market.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He read {{a1|∅}} book about {{a2|∅}} history of chess.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We rented {{a1|∅}} apartment with {{a2|∅}} balcony overlooking the park.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Emily studied {{a1|∅}} French before traveling to {{a2|∅}} Paris.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "The chef prepared {{a1|∅}} soup using {{a2|∅}} fresh herbs.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We spotted {{a1|∅}} owl perched on {{a2|∅}} oak tree.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He took {{a1|∅}} elevator to {{a2|∅}} tenth floor.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Listening to {{a1|∅}} music helps her focus on {{a2|∅}} assignments.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Marcus bought {{a1|∅}} house with {{a2|∅}} spacious garden.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "I saw {{a1|∅}} owl and {{a2|∅}} hedgehog in the forest.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "She makes {{a1|∅}} excellent coffee every {{a2|∅}} morning.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "They watched {{a1|∅}} moon rise above {{a2|∅}} mountains.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He is {{a1|∅}} vegetarian who never eats {{a2|∅}} meat.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          ""
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "{{a1|∅}} young artist painted {{a2|∅}} mural on the wall.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Mom packed {{a1|∅}} apple for {{a2|∅}} lunchbox.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We saw {{a1|∅}} Statue of Liberty during {{a2|∅}} trip.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He visited {{a1|∅}} dentist because he had {{a2|∅}} toothache.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We planted {{a1|∅}} oak tree in {{a2|∅}} backyard.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "Is there {{a1|∅}} pharmacy near {{a2|∅}} station?",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He teaches {{a1|∅}} history at {{a2|∅}} school in town.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          ""
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "{{a1|∅}} orchestra will perform at {{a2|∅}} city hall tonight.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "She saw {{a1|∅}} elephant at {{a2|∅}} zoo.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "an"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "We spent {{a1|∅}} week in {{a2|∅}} Alps.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

INSERT INTO exercises (kind, payload)
VALUES (
  'cloze',
  '{
    "text": "He borrowed {{a1|∅}} book from {{a2|∅}} library yesterday.",
    "blanks": [
      {
        "id": "a1",
        "accept": [
          "a"
        ],
        "caseSensitive": false
      },
      {
        "id": "a2",
        "accept": [
          "the"
        ],
        "caseSensitive": false
      }
    ]
  }'::jsonb
)
ON CONFLICT DO NOTHING;

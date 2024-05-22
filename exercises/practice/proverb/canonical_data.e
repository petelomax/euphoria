-- created automatically by the test generator and brutally overwritten on a regular basis.
-- To permanently mark a test as ignoring all of this copy the following into test.exw:
--<do not edit>
--ignore canonical_data.e
--</do not edit>
-- Otherwise copy/paste this lot (rather than include, so it can verify up-to-date-ness):
--  **NB** If this begins {-1,{`exercise`,`<slug_name>`, then it's still raw json, and the
--          test generator needs updating to munge it, or you can just ignore it as above.
--<do not edit>
constant canonical_data = {
{-1,
 {`exercise`, `proverb`},
 {`comments`,
  {-2,
   `JSON doesn't allow for multi-line strings, so all expected outputs are presented `,
   `here as arrays of strings. It's up to the test generator to join the `,
   `lines together with line breaks. `}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `e974b73e-7851-484f-8d6d-92e07fe742fc`},
    {`description`, `zero pieces`}, {`property`, `recite`},
    {`input`, {-1, {`strings`, {-2}}}}, {`expected`, {-2}}},
   {-1, {`uuid`, `2fcd5f5e-8b82-4e74-b51d-df28a5e0faa4`},
    {`description`, `one piece`}, {`property`, `recite`},
    {`input`, {-1, {`strings`, {-2, `nail`}}}},
    {`expected`, {-2, `And all for the want of a nail.`}}},
   {-1, {`uuid`, `d9d0a8a1-d933-46e2-aa94-eecf679f4b0e`},
    {`description`, `two pieces`}, {`property`, `recite`},
    {`input`, {-1, {`strings`, {-2, `nail`, `shoe`}}}},
    {`expected`,
     {-2, `For want of a nail the shoe was lost.`,
      `And all for the want of a nail.`}}},
   {-1, {`uuid`, `c95ef757-5e94-4f0d-a6cb-d2083f5e5a83`},
    {`description`, `three pieces`}, {`property`, `recite`},
    {`input`, {-1, {`strings`, {-2, `nail`, `shoe`, `horse`}}}},
    {`expected`,
     {-2, `For want of a nail the shoe was lost.`,
      `For want of a shoe the horse was lost.`,
      `And all for the want of a nail.`}}},
   {-1, {`uuid`, `433fb91c-35a2-4d41-aeab-4de1e82b2126`},
    {`description`, `full proverb`}, {`property`, `recite`},
    {`input`,
     {-1,
      {`strings`,
       {-2, `nail`, `shoe`, `horse`, `rider`, `message`, `battle`,
        `kingdom`}}}},
    {`expected`,
     {-2, `For want of a nail the shoe was lost.`,
      `For want of a shoe the horse was lost.`,
      `For want of a horse the rider was lost.`,
      `For want of a rider the message was lost.`,
      `For want of a message the battle was lost.`,
      `For want of a battle the kingdom was lost.`,
      `And all for the want of a nail.`}}},
   {-1, {`uuid`, `c1eefa5a-e8d9-41c7-91d4-99fab6d6b9f7`},
    {`description`, `four pieces modernized`}, {`property`, `recite`},
    {`input`, {-1, {`strings`, {-2, `pin`, `gun`, `soldier`, `battle`}}}},
    {`expected`,
     {-2, `For want of a pin the gun was lost.`,
      `For want of a gun the soldier was lost.`,
      `For want of a soldier the battle was lost.`,
      `And all for the want of a pin.`}}}}}}
}
--</do not edit>


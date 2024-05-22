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
 {`exercise`, `nth-prime`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `75c65189-8aef-471a-81de-0a90c728160c`},
    {`description`, `first prime`}, {`property`, `prime`},
    {`input`, {-1, {`number`, 1}}}, {`expected`, 2}},
   {-1, {`uuid`, `2c38804c-295f-4701-b728-56dea34fd1a0`},
    {`description`, `second prime`}, {`property`, `prime`},
    {`input`, {-1, {`number`, 2}}}, {`expected`, 3}},
   {-1, {`uuid`, `56692534-781e-4e8c-b1f9-3e82c1640259`},
    {`description`, `sixth prime`}, {`property`, `prime`},
    {`input`, {-1, {`number`, 6}}}, {`expected`, 13}},
   {-1, {`uuid`, `fce1e979-0edb-412d-93aa-2c744e8f50ff`},
    {`description`, `big prime`}, {`property`, `prime`},
    {`input`, {-1, {`number`, 10001}}}, {`expected`, 104743}},
   {-1, {`uuid`, `bd0a9eae-6df7-485b-a144-80e13c7d55b2`},
    {`description`, `there is no zeroth prime`}, {`property`, `prime`},
    {`input`, {-1, {`number`, 0}}},
    {`expected`, {-1, {`error`, `there is no zeroth prime`}}}}}}}
}
--</do not edit>


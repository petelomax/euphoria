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
 {`exercise`, `resistor-color-trio`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `d6863355-15b7-40bb-abe0-bfb1a25512ed`},
    {`description`, `Orange and orange and black`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `orange`, `orange`, `black`}}}},
    {`expected`, {-1, {`value`, 33}, {`unit`, `ohms`}}}},
   {-1, {`uuid`, `1224a3a9-8c8e-4032-843a-5224e04647d6`},
    {`description`, `Blue and grey and brown`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `blue`, `grey`, `brown`}}}},
    {`expected`, {-1, {`value`, 680}, {`unit`, `ohms`}}}},
   {-1, {`uuid`, `b8bda7dc-6b95-4539-abb2-2ad51d66a207`},
    {`description`, `Red and black and red`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `red`, `black`, `red`}}}},
    {`expected`, {-1, {`value`, 2}, {`unit`, `kiloohms`}}}},
   {-1, {`uuid`, `5b1e74bc-d838-4eda-bbb3-eaba988e733b`},
    {`description`, `Green and brown and orange`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `green`, `brown`, `orange`}}}},
    {`expected`, {-1, {`value`, 51}, {`unit`, `kiloohms`}}}},
   {-1, {`uuid`, `f5d37ef9-1919-4719-a90d-a33c5a6934c9`},
    {`description`, `Yellow and violet and yellow`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `yellow`, `violet`, `yellow`}}}},
    {`expected`, {-1, {`value`, 470}, {`unit`, `kiloohms`}}}},
   {-1, {`uuid`, `5f6404a7-5bb3-4283-877d-3d39bcc33854`},
    {`description`, `Blue and violet and blue`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `blue`, `violet`, `blue`}}}},
    {`expected`, {-1, {`value`, 67}, {`unit`, `megaohms`}}}},
   {-1, {`uuid`, `7d3a6ab8-e40e-46c3-98b1-91639fff2344`},
    {`description`, `Minimum possible value`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `black`, `black`, `black`}}}},
    {`expected`, {-1, {`value`, 0}, {`unit`, `ohms`}}}},
   {-1, {`uuid`, `ca0aa0ac-3825-42de-9f07-dac68cc580fd`},
    {`description`, `Maximum possible value`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `white`, `white`, `white`}}}},
    {`expected`, {-1, {`value`, 99}, {`unit`, `gigaohms`}}}},
   {-1, {`uuid`, `0061a76c-903a-4714-8ce2-f26ce23b0e09`},
    {`description`, `First two colors make an invalid octal number`},
    {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `black`, `grey`, `black`}}}},
    {`expected`, {-1, {`value`, 8}, {`unit`, `ohms`}}}},
   {-1, {`uuid`, `30872c92-f567-4b69-a105-8455611c10c4`},
    {`description`, `Ignore extra colors`}, {`property`, `label`},
    {`input`, {-1, {`colors`, {-2, `blue`, `green`, `yellow`, `orange`}}}},
    {`expected`, {-1, {`value`, 650}, {`unit`, `kiloohms`}}}}}}}
}
--</do not edit>


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
 {`exercise`, `queen-attack`},
 {`comments`,
  {-2,
   `Testing invalid positions will vary by language. The expected value of   `,
   `'error' is there to indicate some sort of failure should occur, while a 0`,
   `means no failure.                                                        `,
   `Some languages implement tests beyond this set, such as checking for two `,
   `pieces being placed on the same position, representing the board         `,
   `graphically, or using standard chess notation. Those tests can be offered`,
   `as extra credit.                                                         `,
   `                                                                         `,
   `All row and column positions are considered to be zero-indexed array     `,
   `indices, where the first row - with index 0 - represents the top of the  `,
   `board, and the first column - with index 0 - represents the left of the  `,
   `board. In chess notation that is a8.                                     `}},
 {`cases`,
  {-2,
   {-1,
    {`description`,
     `Test creation of Queens with valid and invalid positions`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `3ac4f735-d36c-44c4-a3e2-316f79704203`},
       {`description`, `queen with a valid position`},
       {`property`, `create`},
       {`input`,
        {-1, {`queen`, {-1, {`position`, {-1, {`row`, 2}, {`column`, 2}}}}}}},
       {`expected`, 0}},
      {-1, {`uuid`, `4e812d5d-b974-4e38-9a6b-8e0492bfa7be`},
       {`description`, `queen must have positive row`},
       {`property`, `create`},
       {`input`,
        {-1,
         {`queen`, {-1, {`position`, {-1, {`row`, -2}, {`column`, 2}}}}}}},
       {`expected`, {-1, {`error`, `row not positive`}}}},
      {-1, {`uuid`, `f07b7536-b66b-4f08-beb9-4d70d891d5c8`},
       {`description`, `queen must have row on board`},
       {`property`, `create`},
       {`input`,
        {-1, {`queen`, {-1, {`position`, {-1, {`row`, 8}, {`column`, 4}}}}}}},
       {`expected`, {-1, {`error`, `row not on board`}}}},
      {-1, {`uuid`, `15a10794-36d9-4907-ae6b-e5a0d4c54ebe`},
       {`description`, `queen must have positive column`},
       {`property`, `create`},
       {`input`,
        {-1,
         {`queen`, {-1, {`position`, {-1, {`row`, 2}, {`column`, -2}}}}}}},
       {`expected`, {-1, {`error`, `column not positive`}}}},
      {-1, {`uuid`, `6907762d-0e8a-4c38-87fb-12f2f65f0ce4`},
       {`description`, `queen must have column on board`},
       {`property`, `create`},
       {`input`,
        {-1, {`queen`, {-1, {`position`, {-1, {`row`, 4}, {`column`, 8}}}}}}},
       {`expected`, {-1, {`error`, `column not on board`}}}}}}},
   {-1, {`description`, `Test the ability of one queen to attack another`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `33ae4113-d237-42ee-bac1-e1e699c0c007`},
       {`description`, `cannot attack`}, {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 4}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 6}, {`column`, 6}}}}}}},
       {`expected`, {-3, `false`}}},
      {-1, {`uuid`, `eaa65540-ea7c-4152-8c21-003c7a68c914`},
       {`description`, `can attack on same row`}, {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 4}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 6}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `bae6f609-2c0e-4154-af71-af82b7c31cea`},
       {`description`, `can attack on same column`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 4}, {`column`, 5}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 5}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `0e1b4139-b90d-4562-bd58-dfa04f1746c7`},
       {`description`, `can attack on first diagonal`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 2}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 0}, {`column`, 4}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `ff9b7ed4-e4b6-401b-8d16-bc894d6d3dcd`},
       {`description`, `can attack on second diagonal`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 2}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 3}, {`column`, 1}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `0a71e605-6e28-4cc2-aa47-d20a2e71037a`},
       {`description`, `can attack on third diagonal`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 2}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 1}, {`column`, 1}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `0790b588-ae73-4f1f-a968-dd0b34f45f86`},
       {`description`, `can attack on fourth diagonal`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 1}, {`column`, 7}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 0}, {`column`, 6}}}}}}},
       {`expected`, {-3, `true`}}},
      {-1, {`uuid`, `543f8fd4-2597-4aad-8d77-cbdab63619f8`},
       {`description`,
        `cannot attack if falling diagonals are only the same when reflected across the longest falling diagonal`},
       {`property`, `canAttack`},
       {`input`,
        {-1,
         {`white_queen`,
          {-1, {`position`, {-1, {`row`, 4}, {`column`, 1}}}}},
         {`black_queen`,
          {-1, {`position`, {-1, {`row`, 2}, {`column`, 5}}}}}}},
       {`expected`, {-3, `false`}}}}}}}}}
}
--</do not edit>


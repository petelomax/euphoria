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
 {`exercise`, `meetup`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `d7f8eadd-d4fc-46ee-8a20-e97bd3fd01c8`},
    {`description`,
     `when teenth Monday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `teenth`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-05-13`}},
   {-1, {`uuid`, `f78373d1-cd53-4a7f-9d37-e15bf8a456b4`},
    {`description`,
     `when teenth Monday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `teenth`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-08-19`}},
   {-1, {`uuid`, `8c78bea7-a116-425b-9c6b-c9898266d92a`},
    {`description`,
     `when teenth Monday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `teenth`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-09-16`}},
   {-1, {`uuid`, `cfef881b-9dc9-4d0b-8de4-82d0f39fc271`},
    {`description`,
     `when teenth Tuesday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `teenth`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-03-19`}},
   {-1, {`uuid`, `69048961-3b00-41f9-97ee-eb6d83a8e92b`},
    {`description`,
     `when teenth Tuesday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `teenth`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-04-16`}},
   {-1, {`uuid`, `d30bade8-3622-466a-b7be-587414e0caa6`},
    {`description`,
     `when teenth Tuesday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `teenth`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-08-13`}},
   {-1, {`uuid`, `8db4b58b-92f3-4687-867b-82ee1a04f851`},
    {`description`,
     `when teenth Wednesday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `teenth`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-01-16`}},
   {-1, {`uuid`, `6c27a2a2-28f8-487f-ae81-35d08c4664f7`},
    {`description`,
     `when teenth Wednesday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `teenth`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-02-13`}},
   {-1, {`uuid`, `008a8674-1958-45b5-b8e6-c2c9960d973a`},
    {`description`,
     `when teenth Wednesday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `teenth`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-06-19`}},
   {-1, {`uuid`, `e4abd5e3-57cb-4091-8420-d97e955c0dbd`},
    {`description`,
     `when teenth Thursday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `teenth`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-05-16`}},
   {-1, {`uuid`, `85da0b0f-eace-4297-a6dd-63588d5055b4`},
    {`description`,
     `when teenth Thursday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `teenth`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-06-13`}},
   {-1, {`uuid`, `ecf64f9b-8413-489b-bf6e-128045f70bcc`},
    {`description`,
     `when teenth Thursday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `teenth`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-19`}},
   {-1, {`uuid`, `ac4e180c-7d0a-4d3d-b05f-f564ebb584ca`},
    {`description`,
     `when teenth Friday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `teenth`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-04-19`}},
   {-1, {`uuid`, `b79101c7-83ad-4f8f-8ec8-591683296315`},
    {`description`,
     `when teenth Friday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `teenth`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-08-16`}},
   {-1, {`uuid`, `6ed38b9f-0072-4901-bd97-7c8b8b0ef1b8`},
    {`description`,
     `when teenth Friday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `teenth`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-09-13`}},
   {-1, {`uuid`, `dfae03ed-9610-47de-a632-655ab01e1e7c`},
    {`description`,
     `when teenth Saturday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `teenth`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-16`}},
   {-1, {`uuid`, `ec02e3e1-fc72-4a3c-872f-a53fa8ab358e`},
    {`description`,
     `when teenth Saturday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `teenth`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-04-13`}},
   {-1, {`uuid`, `d983094b-7259-4195-b84e-5d09578c89d9`},
    {`description`,
     `when teenth Saturday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `teenth`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-10-19`}},
   {-1, {`uuid`, `d84a2a2e-f745-443a-9368-30051be60c2e`},
    {`description`,
     `when teenth Sunday is the 19th, the last day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `teenth`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-05-19`}},
   {-1, {`uuid`, `0e64bc53-92a3-4f61-85b2-0b7168c7ce5a`},
    {`description`,
     `when teenth Sunday is some day in the middle of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `teenth`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-06-16`}},
   {-1, {`uuid`, `de87652c-185e-4854-b3ae-04cf6150eead`},
    {`description`,
     `when teenth Sunday is the 13th, the first day of the teenth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `teenth`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-10-13`}},
   {-1, {`uuid`, `2cbfd0f5-ba3a-46da-a8cc-0fe4966d3411`},
    {`description`,
     `when first Monday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `first`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-03-04`}},
   {-1, {`uuid`, `a6168c7c-ed95-4bb3-8f92-c72575fc64b0`},
    {`description`,
     `when first Monday is the 1st, the first day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `first`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-04-01`}},
   {-1, {`uuid`, `1bfc620f-1c54-4bbd-931f-4a1cd1036c20`},
    {`description`,
     `when first Tuesday is the 7th, the last day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `first`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-05-07`}},
   {-1, {`uuid`, `12959c10-7362-4ca0-a048-50cf1c06e3e2`},
    {`description`,
     `when first Tuesday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `first`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-06-04`}},
   {-1, {`uuid`, `1033dc66-8d0b-48a1-90cb-270703d59d1d`},
    {`description`,
     `when first Wednesday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 7}, {`week`, `first`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-07-03`}},
   {-1, {`uuid`, `b89185b9-2f32-46f4-a602-de20b09058f6`},
    {`description`,
     `when first Wednesday is the 7th, the last day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `first`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-08-07`}},
   {-1, {`uuid`, `53aedc4d-b2c8-4dfb-abf7-a8dc9cdceed5`},
    {`description`,
     `when first Thursday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `first`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-05`}},
   {-1, {`uuid`, `b420a7e3-a94c-4226-870a-9eb3a92647f0`},
    {`description`,
     `when first Thursday is another day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `first`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-10-03`}},
   {-1, {`uuid`, `61df3270-28b4-4713-bee2-566fa27302ca`},
    {`description`,
     `when first Friday is the 1st, the first day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 11}, {`week`, `first`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-11-01`}},
   {-1, {`uuid`, `cad33d4d-595c-412f-85cf-3874c6e07abf`},
    {`description`,
     `when first Friday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 12}, {`week`, `first`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-12-06`}},
   {-1, {`uuid`, `a2869b52-5bba-44f0-a863-07bd1f67eadb`},
    {`description`,
     `when first Saturday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `first`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-01-05`}},
   {-1, {`uuid`, `3585315a-d0db-4ea1-822e-0f22e2a645f5`},
    {`description`,
     `when first Saturday is another day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `first`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-02`}},
   {-1, {`uuid`, `c49e9bd9-8ccf-4cf2-947a-0ccd4e4f10b1`},
    {`description`,
     `when first Sunday is some day in the middle of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `first`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-03-03`}},
   {-1, {`uuid`, `1513328b-df53-4714-8677-df68c4f9366c`},
    {`description`,
     `when first Sunday is the 7th, the last day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `first`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-04-07`}},
   {-1, {`uuid`, `49e083af-47ec-4018-b807-62ef411efed7`},
    {`description`,
     `when second Monday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `second`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-03-11`}},
   {-1, {`uuid`, `6cb79a73-38fe-4475-9101-9eec36cf79e5`},
    {`description`,
     `when second Monday is the 8th, the first day of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `second`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-04-08`}},
   {-1, {`uuid`, `4c39b594-af7e-4445-aa03-bf4f8effd9a1`},
    {`description`,
     `when second Tuesday is the 14th, the last day of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `second`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-05-14`}},
   {-1, {`uuid`, `41b32c34-2e39-40e3-b790-93539aaeb6dd`},
    {`description`,
     `when second Tuesday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `second`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-06-11`}},
   {-1, {`uuid`, `90a160c5-b5d9-4831-927f-63a78b17843d`},
    {`description`,
     `when second Wednesday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 7}, {`week`, `second`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-07-10`}},
   {-1, {`uuid`, `23b98ce7-8dd5-41a1-9310-ef27209741cb`},
    {`description`,
     `when second Wednesday is the 14th, the last day of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `second`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-08-14`}},
   {-1, {`uuid`, `447f1960-27ca-4729-bc3f-f36043f43ed0`},
    {`description`,
     `when second Thursday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `second`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-12`}},
   {-1, {`uuid`, `c9aa2687-300c-4e79-86ca-077849a81bde`},
    {`description`,
     `when second Thursday is another day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `second`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-10-10`}},
   {-1, {`uuid`, `a7e11ef3-6625-4134-acda-3e7195421c09`},
    {`description`,
     `when second Friday is the 8th, the first day of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 11}, {`week`, `second`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-11-08`}},
   {-1, {`uuid`, `8b420e5f-9290-4106-b5ae-022f3e2a3e41`},
    {`description`,
     `when second Friday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 12}, {`week`, `second`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-12-13`}},
   {-1, {`uuid`, `80631afc-fc11-4546-8b5f-c12aaeb72b4f`},
    {`description`,
     `when second Saturday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `second`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-01-12`}},
   {-1, {`uuid`, `e34d43ac-f470-44c2-aa5f-e97b78ecaf83`},
    {`description`,
     `when second Saturday is another day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `second`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-09`}},
   {-1, {`uuid`, `a57d59fd-1023-47ad-b0df-a6feb21b44fc`},
    {`description`,
     `when second Sunday is some day in the middle of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `second`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-03-10`}},
   {-1, {`uuid`, `a829a8b0-abdd-4ad1-b66c-5560d843c91a`},
    {`description`,
     `when second Sunday is the 14th, the last day of the second week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `second`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-04-14`}},
   {-1, {`uuid`, `501a8a77-6038-4fc0-b74c-33634906c29d`},
    {`description`,
     `when third Monday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `third`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-03-18`}},
   {-1, {`uuid`, `49e4516e-cf32-4a58-8bbc-494b7e851c92`},
    {`description`,
     `when third Monday is the 15th, the first day of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `third`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-04-15`}},
   {-1, {`uuid`, `4db61095-f7c7-493c-85f1-9996ad3012c7`},
    {`description`,
     `when third Tuesday is the 21st, the last day of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `third`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-05-21`}},
   {-1, {`uuid`, `714fc2e3-58d0-4b91-90fd-61eefd2892c0`},
    {`description`,
     `when third Tuesday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `third`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-06-18`}},
   {-1, {`uuid`, `b08a051a-2c80-445b-9b0e-524171a166d1`},
    {`description`,
     `when third Wednesday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 7}, {`week`, `third`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-07-17`}},
   {-1, {`uuid`, `80bb9eff-3905-4c61-8dc9-bb03016d8ff8`},
    {`description`,
     `when third Wednesday is the 21st, the last day of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `third`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-08-21`}},
   {-1, {`uuid`, `fa52a299-f77f-4784-b290-ba9189fbd9c9`},
    {`description`,
     `when third Thursday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `third`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-19`}},
   {-1, {`uuid`, `f74b1bc6-cc5c-4bf1-ba69-c554a969eb38`},
    {`description`,
     `when third Thursday is another day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `third`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-10-17`}},
   {-1, {`uuid`, `8900f3b0-801a-466b-a866-f42d64667abd`},
    {`description`,
     `when third Friday is the 15th, the first day of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 11}, {`week`, `third`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-11-15`}},
   {-1, {`uuid`, `538ac405-a091-4314-9ccd-920c4e38e85e`},
    {`description`,
     `when third Friday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 12}, {`week`, `third`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-12-20`}},
   {-1, {`uuid`, `244db35c-2716-4fa0-88ce-afd58e5cf910`},
    {`description`,
     `when third Saturday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `third`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-01-19`}},
   {-1, {`uuid`, `dd28544f-f8fa-4f06-9bcd-0ad46ce68e9e`},
    {`description`,
     `when third Saturday is another day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `third`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-16`}},
   {-1, {`uuid`, `be71dcc6-00d2-4b53-a369-cbfae55b312f`},
    {`description`,
     `when third Sunday is some day in the middle of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `third`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-03-17`}},
   {-1, {`uuid`, `b7d2da84-4290-4ee6-a618-ee124ae78be7`},
    {`description`,
     `when third Sunday is the 21st, the last day of the third week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `third`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-04-21`}},
   {-1, {`uuid`, `4276dc06-a1bd-4fc2-b6c2-625fee90bc88`},
    {`description`,
     `when fourth Monday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `fourth`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-03-25`}},
   {-1, {`uuid`, `ddbd7976-2deb-4250-8a38-925ac1a8e9a2`},
    {`description`,
     `when fourth Monday is the 22nd, the first day of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `fourth`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-04-22`}},
   {-1, {`uuid`, `eb714ef4-1656-47cc-913c-844dba4ebddd`},
    {`description`,
     `when fourth Tuesday is the 28th, the last day of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `fourth`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-05-28`}},
   {-1, {`uuid`, `16648435-7937-4d2d-b118-c3e38fd084bd`},
    {`description`,
     `when fourth Tuesday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `fourth`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-06-25`}},
   {-1, {`uuid`, `de062bdc-9484-437a-a8c5-5253c6f6785a`},
    {`description`,
     `when fourth Wednesday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 7}, {`week`, `fourth`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-07-24`}},
   {-1, {`uuid`, `c2ce6821-169c-4832-8d37-690ef5d9514a`},
    {`description`,
     `when fourth Wednesday is the 28th, the last day of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `fourth`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-08-28`}},
   {-1, {`uuid`, `d462c631-2894-4391-a8e3-dbb98b7a7303`},
    {`description`,
     `when fourth Thursday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `fourth`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-26`}},
   {-1, {`uuid`, `9ff1f7b6-1b72-427d-9ee9-82b5bb08b835`},
    {`description`,
     `when fourth Thursday is another day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `fourth`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-10-24`}},
   {-1, {`uuid`, `83bae8ba-1c49-49bc-b632-b7c7e1d7e35f`},
    {`description`,
     `when fourth Friday is the 22nd, the first day of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 11}, {`week`, `fourth`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-11-22`}},
   {-1, {`uuid`, `de752d2a-a95e-48d2-835b-93363dac3710`},
    {`description`,
     `when fourth Friday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 12}, {`week`, `fourth`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-12-27`}},
   {-1, {`uuid`, `eedd90ad-d581-45db-8312-4c6dcf9cf560`},
    {`description`,
     `when fourth Saturday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `fourth`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-01-26`}},
   {-1, {`uuid`, `669fedcd-912e-48c7-a0a1-228b34af91d0`},
    {`description`,
     `when fourth Saturday is another day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `fourth`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-23`}},
   {-1, {`uuid`, `648e3849-ea49-44a5-a8a3-9f2a43b3bf1b`},
    {`description`,
     `when fourth Sunday is some day in the middle of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `fourth`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-03-24`}},
   {-1, {`uuid`, `f81321b3-99ab-4db6-9267-69c5da5a7823`},
    {`description`,
     `when fourth Sunday is the 28th, the last day of the fourth week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `fourth`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-04-28`}},
   {-1, {`uuid`, `1af5e51f-5488-4548-aee8-11d7d4a730dc`},
    {`description`, `last Monday in a month with four Mondays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `last`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-03-25`}},
   {-1, {`uuid`, `f29999f2-235e-4ec7-9dab-26f137146526`},
    {`description`, `last Monday in a month with five Mondays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `last`},
      {`dayofweek`, `Monday`}}}, {`expected`, `2013-04-29`}},
   {-1, {`uuid`, `31b097a0-508e-48ac-bf8a-f63cdcf6dc41`},
    {`description`, `last Tuesday in a month with four Tuesdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 5}, {`week`, `last`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-05-28`}},
   {-1, {`uuid`, `8c022150-0bb5-4a1f-80f9-88b2e2abcba4`},
    {`description`, `last Tuesday in another month with four Tuesdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 6}, {`week`, `last`},
      {`dayofweek`, `Tuesday`}}}, {`expected`, `2013-06-25`}},
   {-1, {`uuid`, `0e762194-672a-4bdf-8a37-1e59fdacef12`},
    {`description`, `last Wednesday in a month with five Wednesdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 7}, {`week`, `last`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-07-31`}},
   {-1, {`uuid`, `5016386a-f24e-4bd7-b439-95358f491b66`},
    {`description`, `last Wednesday in a month with four Wednesdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 8}, {`week`, `last`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2013-08-28`}},
   {-1, {`uuid`, `12ead1a5-cdf9-4192-9a56-2229e93dd149`},
    {`description`, `last Thursday in a month with four Thursdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 9}, {`week`, `last`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-09-26`}},
   {-1, {`uuid`, `7db89e11-7fbe-4e57-ae3c-0f327fbd7cc7`},
    {`description`, `last Thursday in a month with five Thursdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 10}, {`week`, `last`},
      {`dayofweek`, `Thursday`}}}, {`expected`, `2013-10-31`}},
   {-1, {`uuid`, `e47a739e-b979-460d-9c8a-75c35ca2290b`},
    {`description`, `last Friday in a month with five Fridays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 11}, {`week`, `last`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-11-29`}},
   {-1, {`uuid`, `5bed5aa9-a57a-4e5d-8997-2cc796a5b0ec`},
    {`description`, `last Friday in a month with four Fridays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 12}, {`week`, `last`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2013-12-27`}},
   {-1, {`uuid`, `61e54cba-76f3-4772-a2b1-bf443fda2137`},
    {`description`, `last Saturday in a month with four Saturdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 1}, {`week`, `last`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-01-26`}},
   {-1, {`uuid`, `8b6a737b-2fa9-444c-b1a2-80ce7a2ec72f`},
    {`description`, `last Saturday in another month with four Saturdays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 2}, {`week`, `last`},
      {`dayofweek`, `Saturday`}}}, {`expected`, `2013-02-23`}},
   {-1, {`uuid`, `0b63e682-f429-4d19-9809-4a45bd0242dc`},
    {`description`, `last Sunday in a month with five Sundays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 3}, {`week`, `last`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-03-31`}},
   {-1, {`uuid`, `5232307e-d3e3-4afc-8ba6-4084ad987c00`},
    {`description`, `last Sunday in a month with four Sundays`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2013}, {`month`, 4}, {`week`, `last`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2013-04-28`}},
   {-1, {`uuid`, `0bbd48e8-9773-4e81-8e71-b9a51711e3c5`},
    {`description`,
     `when last Wednesday in February in a leap year is the 29th`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2012}, {`month`, 2}, {`week`, `last`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2012-02-29`}},
   {-1, {`uuid`, `fe0936de-7eee-4a48-88dd-66c07ab1fefc`},
    {`description`,
     `last Wednesday in December that is also the last day of the year`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2014}, {`month`, 12}, {`week`, `last`},
      {`dayofweek`, `Wednesday`}}}, {`expected`, `2014-12-31`}},
   {-1, {`uuid`, `2ccf2488-aafc-4671-a24e-2b6effe1b0e2`},
    {`description`,
     `when last Sunday in February in a non-leap year is not the 29th`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2015}, {`month`, 2}, {`week`, `last`},
      {`dayofweek`, `Sunday`}}}, {`expected`, `2015-02-22`}},
   {-1, {`uuid`, `00c3ce9f-cf36-4b70-90d8-92b32be6830e`},
    {`description`,
     `when first Friday is the 7th, the last day of the first week`},
    {`property`, `meetup`},
    {`input`,
     {-1, {`year`, 2012}, {`month`, 12}, {`week`, `first`},
      {`dayofweek`, `Friday`}}}, {`expected`, `2012-12-07`}}}}}
}
--</do not edit>


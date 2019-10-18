dotnet test
REM สั่งให้การเทสครั้งนี้เก็บ Coverage
/p:CollectCoverage=true
REM เมื่อมีการ Test หลายๆโปรเจค จะทำการ Merge เพิ่มเข้าไปเรื่อยๆในไฟล์ result ที่เป็นสกุล .XML (ถ้าใช้ท่า output ปกติอย่างเดียว ไฟล์จะทับกัน)
/p:MergeWith=../coverage/lcov.json
REM ตำแหน่งที่วาง result file
/p:CoverletOutput=../coverage/lcov
REM format ของการเก็บ coverage ครั้งนี้
/p:CoverletOutputFormat="json%%2copencover"
REM ไฟล์ solution ของโปรเจค
CodeCoverageDotnetCore.sln

REM -----------------------------------------

reportgenerator
REM ตำแหน่งไฟล์ result ที่ได้จากการเทส นำมาอ่านเพื่อ Generate report ออกมา
"-reports:coverage/lcov.opencover.xml"
REM โฟล์เดอร์ที่วาง file report
"-targetdir:coveragereport"

REM -----------------------------------------

REM เปิดไฟล์ index.htm เพื่อดูผล test
start coveragereport/index.htm

REM -----------------------------------------

REM is mean comment on command line
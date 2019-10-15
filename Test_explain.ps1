# ลบไฟล์ coverage ตัวเก่า (หากไม่มีไฟล์เก่าจะขึ้น error แต่ไม่มีผลต่อการเทส)
Remove-Item -LiteralPath "coverage" -Force -Recurse
# ลบไฟล์ coveragereport ตัวเก่า (หากไม่มีไฟล์เก่าจะขึ้น error แต่ไม่มีผลต่อการเทส)
Remove-Item -LiteralPath "coveragereport" -Force -Recurse

dotnet test
# สั่งให้การเทสครั้งนี้เก็บ Coverage
/p:CollectCoverage=true
# เมื่อมีการ Test หลายๆโปรเจค จะทำการ Merge เพิ่มเข้าไปเรื่อยๆในไฟล์ result ที่เป็นสกุล .json
/p:MergeWith=../coverage/lcov.json
# ตำแหน่งที่วาง result file
/p:CoverletOutput=../coverage/lcov
# format ของการเก็บ coverage ครั้งนี้ แบ่งเป็น json (เพื่อเอาไว้ Merge) ส่วน opencover เอาไว้สำหรับ GenerateReport
/p:CoverletOutputFormat='json%2copencover'
# ไฟล์ solution ของโปรเจค
CodeCoverageDotnetCore.sln

# -----------------------------------------

reportgenerator
# ตำแหน่งไฟล์ result ที่ได้จากการเทส นำมาอ่านเพื่อ Generate report ออกมา
"-reports:coverage/lcov.opencover.xml"
# โฟล์เดอร์ที่วาง file report
"-targetdir:coveragereport"

# -----------------------------------------

# เปิดไฟล์ index.htm เพื่อดูผล test
start coveragereport/index.htm

# -----------------------------------------

# is mean comment on command line
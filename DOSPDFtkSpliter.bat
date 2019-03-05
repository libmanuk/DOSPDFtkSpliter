@echo off
title DOSPDFtkSpliter, Eric C. Weig 2019
echo Using PDFtk for Windows to split a multipage PDF into separate files

echo File to convert:
for %%i in (*.pdf) do echo %%i
echo.
echo processing files, please wait...
for %%i in (*.pdf) do pdftk %%~ni.pdf dump_data | grep NumberOfPages
echo.
for %%i in (*.pdf) do pdftk %%~ni.pdf burst > nul 2> nul
echo.
del "doc_data.txt"
echo All done!  :)
pause

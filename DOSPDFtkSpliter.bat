@echo off
title DOSPDFtkSpliter, Eric C. Weig 2019
echo Using PDFtk for Windows to split a multipage PDF into separate files

echo File to convert:
for %%i in (*.tif) do echo %%i
echo processing files, please wait...
for %%i in (*.tif) do pdftk input.pdf burst output output_%02d.pdf
echo.
echo All done!  :)
pause

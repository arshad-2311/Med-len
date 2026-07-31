param($pptPath, $pdfPath)

try {
    $powerpoint = New-Object -ComObject PowerPoint.Application
    # Open the presentation (FileName, ReadOnly, Untitled, WithWindow)
    $presentation = $powerpoint.Presentations.Open($pptPath, $false, $false, $false)
    $presentation.SaveAs($pdfPath, 32) # 32 is the enum for ppSaveAsPDF
    $presentation.Close()
    Write-Host "Success"
} catch {
    Write-Host "Error: $_"
} finally {
    if ($powerpoint) {
        $powerpoint.Quit()
        [System.Runtime.Interopservices.Marshal]::ReleaseComObject($powerpoint) | Out-Null
    }
}

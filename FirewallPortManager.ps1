# Script to manage, blocking or unblocking ports in Windows Firewall by PanKamilS

function Add-PortBlock {
    param (
        [string]$Ports
    )
    $PortList = $Ports -split ',' # Split ports into an array
    foreach ($Port in $PortList) {
        $Port = $Port.Trim() # Remove any extra spaces
        if ($Port -match '^\d+$') {
            $RuleName = "Port Block $Port"
            Write-Host "Adding a block for port $Port..." -ForegroundColor Green
            New-NetFirewallRule -DisplayName $RuleName -Direction Inbound -Protocol TCP -LocalPort $Port -Action Block
            Write-Host "Port $Port has been blocked." -ForegroundColor Yellow
        } else {
            Write-Host "Invalid port: $Port. Skipping..." -ForegroundColor Red
        }
    }
}

function Remove-PortBlock {
    param (
        [string]$Ports
    )
    $PortList = $Ports -split ',' # Split ports into an array
    foreach ($Port in $PortList) {
        $Port = $Port.Trim() # Remove any extra spaces
        if ($Port -match '^\d+$') {
            $RuleName = "Port Block $Port"
            Write-Host "Removing block for port $Port..." -ForegroundColor Green
            Remove-NetFirewallRule -DisplayName $RuleName
            Write-Host "Block for port $Port has been removed." -ForegroundColor Yellow
        } else {
            Write-Host "Invalid port: $Port. Skipping..." -ForegroundColor Red
        }
    }
}

function Main-Menu {
    Write-Host "What would you like to do?" -ForegroundColor Cyan
    Write-Host "1. Add a port block"
    Write-Host "2. Remove a port block"
    Write-Host "3. Exit"
    
    $choice = Read-Host "Choose an option (1, 2, or 3)"
    
    switch ($choice) {
        1 {
            $ports = Read-Host "Enter the port numbers to block (separated by commas)"
            Add-PortBlock -Ports $ports
        }
        2 {
            $ports = Read-Host "Enter the port numbers to unblock (separated by commas)"
            Remove-PortBlock -Ports $ports
        }
        3 {
            Write-Host "Exiting the script." -ForegroundColor Cyan
            return
        }
        default {
            Write-Host "Invalid option, please try again." -ForegroundColor Red
        }
    }
    # Return to the main menu
    Main-Menu
}
Main-Menu

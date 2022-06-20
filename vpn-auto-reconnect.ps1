while ($true) {
    $conn = $(Get-VpnConnection -Name $vpnName).ConnectionStatus
    if ($conn -eq 'Disconnected') {
        rasdial vpn_name vpn_username vpn_password
    }
    Start-Sleep 10
}
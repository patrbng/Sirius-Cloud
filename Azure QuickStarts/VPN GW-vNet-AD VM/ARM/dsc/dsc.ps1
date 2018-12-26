configuration InstallFeatures {

    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -ModuleName xActiveDirectory

    node 'localhost'
    {
        WindowsFeature ActiveDirectory
        {
            Ensure = "Present"
            Name = "AD-Domain-Services"
        }

        WindowsFeature ADTools
        {
            Ensure = "Present"
            Name = "RSAT-AD-Tools"
            DependsOn = "[WindowsFeature]ActiveDirectory"
        }

        WindowsFeature PowerShellAD
        {
            Ensure = "Present"
            Name = "RSAT-AD-PowerShell"
            DependsOn = "[WindowsFeature]ActiveDirectory, [WindowsFeature]ADTools"
        }

        WindowsFeature InstallDNS
        {
            Ensure = "Present"
            Name = "DNS"
        }

        WindowsFeature DNSTools
        {
            Ensure = "Present"
            Name = "RSAT-DNS-Server"
            DependsOn = "[WindowsFeature]InstallDNS"
        }

    }
}
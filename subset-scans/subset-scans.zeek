hook scan_only_log_policy(rec: Conn::Info, id: Log::ID, filter: Log::Filter)
{
    if (!rec?$history || (rec$history != "S" && rec$history != "Sr" ))
        break;
}

event zeek_init()
{
    local filter: Log::Filter = [
        $name="conn-scans",
        $path="conn-scans",
        $policy=scan_only_log_policy
    ];
    Log::add_filter(Conn::LOG, filter);
}

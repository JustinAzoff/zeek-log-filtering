function split_conn(id: Log::ID, path: string, rec: Conn::Info) : string
{
    if (!rec?$history)
        return "conn";

    if ( rec$history == "S" || rec$history == "Sr")
        return "conn-scans";

    return "conn";
}

event zeek_init()
{
    local filter: Log::Filter = [
        $name="split-conn",
        $path_func=split_conn
    ];
    Log::remove_default_filter(Conn::LOG);
    Log::add_filter(Conn::LOG, filter);
}

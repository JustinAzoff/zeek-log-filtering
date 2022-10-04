event zeek_init()
{
    local filter: Log::Filter = [
        $name="conn-split",
        $exclude=set("uri")
    ];
    Log::remove_default_filter(HTTP::LOG);
    Log::add_filter(HTTP::LOG, filter);
}

mp.register_script_message('end-time', function()
    mp.osd_message(os.date('%H:%M:%S',os.time()+mp.get_property("time-remaining")),5)
 end)

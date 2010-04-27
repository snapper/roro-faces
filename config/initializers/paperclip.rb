Paperclip::Attachment.interpolations[:filename] = proc do |attachment, style|
  attachment.instance.mugshot_file_name # or whatever you've named your User's login/username/etc. attribute
end

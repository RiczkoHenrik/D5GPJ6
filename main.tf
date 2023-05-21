module "files" {
  source  = "./modules/files"
  content = "test"
 filename = "filename"
}
module "read" {
  source        = "./modules/read"
  read_variable = tostring(module.files.example_output[0])
}
module "write" {
  source        = "./modules/write"
}

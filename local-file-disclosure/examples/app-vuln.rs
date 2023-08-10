use actix_files::NamedFile;
use actix_web::{get, HttpRequest, HttpResponse, Responder, Result};
use std::path::PathBuf;

#[get("/")]
async fn index() -> impl Responder {
  let html = "<!doctype html><html><body><h1>Polygons!</h1><img src=\"/public/static/polygons.svg\"></body></html>";
  HttpResponse::Ok().body(html)
}

async fn r#static(req: HttpRequest) -> Result<NamedFile> {
  let path: PathBuf = req.match_info().query("filename").parse().unwrap();
  Ok(NamedFile::open(path)?)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
  use actix_web::{web, App, HttpServer};

  HttpServer::new(||
    App::new()
      .service(index)
      .route("/public/{filename:.*}", web::get().to(r#static))
    )
    .bind(("127.0.0.1", 8888))?
    .run()
    .await
}
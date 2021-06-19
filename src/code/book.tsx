import React from "react";

/**
 * Our new book component
 */
const Book = ({ _body, book, image, alt, link }: Record<string, string>) => (
  <article className="partial" style={{ overflow: "hidden" }}>
    <img src={image} alt={alt} style={{ float: "left", width: "30%" }} />
    <div style={{ float: "left", width: "68%", margin: "0 0 0 2%" }}>
      {_body}
      <a href={link} style={{ fontWeight: "bold", fontSize: "1.3rem" }}>
        Read about {book}
      </a>
    </div>
  </article>
);

export default Book;

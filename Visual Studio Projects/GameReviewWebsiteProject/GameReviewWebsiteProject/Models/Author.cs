//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GameReviewWebsiteProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Author
    {
        public Author()
        {
            this.GameReviews = new HashSet<GameReview>();
        }
    
        public int AuthorId { get; set; }
        public string Name { get; set; }
        public string Genre { get; set; }
        public string Biography { get; set; }
    
        public virtual ICollection<GameReview> GameReviews { get; set; }
    }
}

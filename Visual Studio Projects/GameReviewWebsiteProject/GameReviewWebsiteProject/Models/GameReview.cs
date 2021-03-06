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
    
    public partial class GameReview
    {
        public GameReview()
        {
            this.Comments = new HashSet<Comment>();
        }
    
        public int GameReviewId { get; set; }
        public int GameId { get; set; }
        public int AuthorId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public decimal Rating { get; set; }
    
        public virtual Author Author { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual Game Game { get; set; }
    }
}

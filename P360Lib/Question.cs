//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace P360Lib
{
    using System;
    using System.Collections.Generic;
    
    public partial class Question
    {
        public Question()
        {
            this.Questions1 = new HashSet<Question>();
            this.QuestionToRoles = new HashSet<QuestionToRole>();
            this.ValidationResults = new HashSet<ValidationResult>();
        }
    
        public int ID { get; set; }
        public Nullable<int> ParentQuestionID { get; set; }
        public string MainText { get; set; }
        public string Description { get; set; }
        public int OrderNum { get; set; }
    
        public virtual ICollection<Question> Questions1 { get; set; }
        public virtual Question Question1 { get; set; }
        public virtual ICollection<QuestionToRole> QuestionToRoles { get; set; }
        public virtual ICollection<ValidationResult> ValidationResults { get; set; }
    }
}

﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Database360Entities : DbContext
    {
        public Database360Entities()
            : base("name=Database360Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<EmployeeGroup> EmployeeGroups { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<EmployeeStatus> EmployeeStatuses { get; set; }
        public virtual DbSet<EmployeeToGroup> EmployeeToGroups { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<QuestionToRole> QuestionToRoles { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<ValidationResult> ValidationResults { get; set; }
        public virtual DbSet<Validation> Validations { get; set; }
        public virtual DbSet<ValidationStatus> ValidationStatuses { get; set; }
        public virtual DbSet<ValidationTask> ValidationTasks { get; set; }
        public virtual DbSet<ValidationTaskStatus> ValidationTaskStatuses { get; set; }
    }
}

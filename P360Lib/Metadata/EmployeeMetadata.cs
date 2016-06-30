using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P360Lib
{
    [MetadataType(typeof(EmployeeMetadata))]
    public partial class Employee
    {
    }

    class EmployeeMetadata
    {
        [Required(ErrorMessage = "Пожалуйста, введите имя")]
        [Display(Name = "Имя")]
        public string Name { get; set; }
    }
}

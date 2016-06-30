using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P360Lib
{
    [MetadataType (typeof (RoleMetadata))]
    public partial class Role
    {
    }

    public partial class RoleMetadata
    {
        [Required(ErrorMessage = "Пожалуйста, введите имя")]
        [Display(Name = "Имя")]
        public string Name { get; set; }
    }
}

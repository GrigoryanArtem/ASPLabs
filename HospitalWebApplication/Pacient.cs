//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HospitalWebApplication
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pacient
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public Gender Gender { get; set; }
    
        public virtual PacientDetail PacientDetail { get; set; }
    }
}

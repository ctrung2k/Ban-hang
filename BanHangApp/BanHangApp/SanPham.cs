//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BanHangApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.CuaHang_SanPham = new HashSet<CuaHang_SanPham>();
        }
    
        public int Id { get; set; }
        public string Ten_sp { get; set; }
        public Nullable<int> DanhMuc_ID { get; set; }
        public Nullable<int> SoLuongTonKho { get; set; }
        public Nullable<byte> SanPham_Hot { get; set; }
        public Nullable<byte> SanPham_Moi { get; set; }
        public byte[] Hinh_SanPham { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CuaHang_SanPham> CuaHang_SanPham { get; set; }
    }
}

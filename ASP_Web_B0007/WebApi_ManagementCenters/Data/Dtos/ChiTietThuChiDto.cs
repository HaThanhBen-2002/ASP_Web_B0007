﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Dtos
{
    public class ChiTietThuChiDto
    {
        public int? MaChiTiet { get; set; }

        public string? TenChiTiet { get; set; }

        public string? DonVi { get; set; }

        public string? SoLuong { get; set; }

        public string? TongTien { get; set; }

        public int? MaPhieu { get; set; }

    }
}

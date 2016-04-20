using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace PartyInvites
{
    public class GuestResponse
    {
        [Required]
        public string Email { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Phone { get; set; }
        [Required(ErrorMessage="please tell us it you will attend")]
        public bool? WillAttend { get; set; }

    }
}
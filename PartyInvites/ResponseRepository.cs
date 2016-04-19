using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PartyInvites
{
    public class ResponseRepository
    {
        //ResponseRepository     是否参加回应数据表<数据库>
        private static ResponseRepository repository = new ResponseRepository();
        private List<GuestResponse> responses = new List<GuestResponse>();
        public static ResponseRepository GetRepository() {
            return repository;
        }

        public IEnumerable<GuestResponse> GetAllResponses() {
            return responses;
        }

        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}
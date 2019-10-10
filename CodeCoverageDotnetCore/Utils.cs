using System;

namespace CodeCoverageDotnetCore
{
    public class Utils
    {
        public string GetRandomString()
        {
            return Guid.NewGuid().ToString();
        }
    }
}
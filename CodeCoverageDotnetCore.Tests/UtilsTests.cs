using System;
using Xunit;

namespace CodeCoverageDotnetCore.Tests
{
    public class UtilsTests
    {
        [Fact]
        public void GetRandomStringTest()
        {
            var result = new Utils();
            Assert.NotEmpty(result.GetRandomString());
        }
    }
}
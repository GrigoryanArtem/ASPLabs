namespace ASPLabs.Model
{
    public class MinMaxResult
    {
        public MinMaxResult(int min, int max)
        {
            Min = min;
            Max = max;
        }

        public int Min { get; set; }
        public int Max { get; set; }
    }
}
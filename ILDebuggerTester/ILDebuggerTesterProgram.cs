using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

internal class SpectralNorm
{
    // Methods
    public static void Main(string[] args)
    {
        int V_0 = RemoteConstantLoader.LoadInt32(0x18);
        if ((args.Length > RemoteConstantLoader.LoadInt32(0x19)) != (RemoteConstantLoader.LoadInt32(0x1a) != 0))
        {
            V_0 = int.Parse(args[RemoteConstantLoader.LoadInt32(0x1b)]);
        }
        Console.WriteLine(RemoteConstantLoader.LoadString(0x1c), RunGame(V_0));
    }

    private static double RunGame(int n)
    {
        int V_3;
        double[] V_0 = new double[n];
        double[] V_1 = new double[n];
        double[] V_2 = new double[n];
        for (V_3 = RemoteConstantLoader.LoadInt32(0x1d); V_3 < n; V_3 += RemoteConstantLoader.LoadInt32(0x1f))
        {
            V_0[V_3] = RemoteConstantLoader.LoadFloat64(30);
        }
        int V_4 = Environment.ProcessorCount;
        BarrierHandle V_5 = new BarrierHandle(V_4);
        Approximate[] V_6 = new Approximate[V_4];
        Thread[] V_7 = new Thread[V_4];
        int V_8 = n / V_4;
        for (V_3 = RemoteConstantLoader.LoadInt32(0x20); V_3 < V_4; V_3 += RemoteConstantLoader.LoadInt32(0x22))
        {
            int V_9 = V_3 * V_8;
            int V_10 = (V_3 < (V_4 - RemoteConstantLoader.LoadInt32(0x21))) ? (V_9 + V_8) : n;
            V_6[V_3] = new Approximate(V_0, V_2, V_1, V_9, V_10);
            V_6[V_3].Barrier = V_5;
            V_7[V_3] = new Thread(new ThreadStart(V_6[V_3].Evaluate));
            V_7[V_3].Start();
        }
        double V_11 = RemoteConstantLoader.LoadFloat64(0x23);
        double V_12 = RemoteConstantLoader.LoadFloat64(0x24);
        for (V_3 = RemoteConstantLoader.LoadInt32(0x25); V_3 < V_4; V_3 += RemoteConstantLoader.LoadInt32(0x26))
        {
            V_7[V_3].Join();
            V_11 += V_6[V_3].m_vBv;
            V_12 += V_6[V_3].m_vv;
        }
        return Math.Sqrt(V_11 / V_12);
    }

    // Nested Types
    private class Approximate
    {
        // Fields
        internal SpectralNorm.BarrierHandle Barrier;
        private int m_range_begin;
        private int m_range_end;
        private double[] m_tmp;
        private double[] m_u;
        private double[] m_v;
        public double m_vBv = RemoteConstantLoader.LoadFloat64(6);
        public double m_vv = RemoteConstantLoader.LoadFloat64(7);

        // Methods
        public Approximate(double[] u, double[] v, double[] tmp, int rbegin, int rend)
        {
            this.m_u = u;
            this.m_v = v;
            this.m_tmp = tmp;
            this.m_range_begin = rbegin;
            this.m_range_end = rend;
        }

        private static double eval_A(int i, int j)
        {
            int V_0 = ((((i + j) * ((i + j) + RemoteConstantLoader.LoadInt32(12))) >> RemoteConstantLoader.LoadInt32(13)) + i) + RemoteConstantLoader.LoadInt32(14);
            return (RemoteConstantLoader.LoadFloat64(15) / ((double)V_0));
        }

        public void Evaluate()
        {
            int V_0;
            for (V_0 = RemoteConstantLoader.LoadInt32(8); V_0 < RemoteConstantLoader.LoadInt32(10); V_0 += RemoteConstantLoader.LoadInt32(9))
            {
                this.MultiplyAtAv(this.m_u, this.m_tmp, this.m_v);
                this.MultiplyAtAv(this.m_v, this.m_tmp, this.m_u);
            }
            for (V_0 = this.m_range_begin; V_0 < this.m_range_end; V_0 += RemoteConstantLoader.LoadInt32(11))
            {
                this.m_vBv += this.m_u[V_0] * this.m_v[V_0];
                this.m_vv += this.m_v[V_0] * this.m_v[V_0];
            }
        }

        private void MultiplyAtAv(double[] v, double[] tmp, double[] AtAv)
        {
            this.MultiplyAv(v, tmp);
            this.Barrier.WaitOne();
            this.MultiplyAtv(tmp, AtAv);
            this.Barrier.WaitOne();
        }

        private void MultiplyAtv(double[] v, double[] Atv)
        {
            for (int V_0 = this.m_range_begin; V_0 < this.m_range_end; V_0 += RemoteConstantLoader.LoadInt32(0x17))
            {
                double V_1 = RemoteConstantLoader.LoadFloat64(20);
                for (int V_2 = RemoteConstantLoader.LoadInt32(0x15); V_2 < v.Length; V_2 += RemoteConstantLoader.LoadInt32(0x16))
                {
                    V_1 += eval_A(V_2, V_0) * v[V_2];
                }
                Atv[V_0] = V_1;
            }
        }

        private void MultiplyAv(double[] v, double[] Av)
        {
            for (int V_0 = this.m_range_begin; V_0 < this.m_range_end; V_0 += RemoteConstantLoader.LoadInt32(0x13))
            {
                double V_1 = RemoteConstantLoader.LoadFloat64(0x10);
                for (int V_2 = RemoteConstantLoader.LoadInt32(0x11); V_2 < v.Length; V_2 += RemoteConstantLoader.LoadInt32(0x12))
                {
                    V_1 += eval_A(V_0, V_2) * v[V_2];
                }
                Av[V_0] = V_1;
            }
        }
    }

    public class BarrierHandle : WaitHandle
    {
        // Fields
        private int current;
        private ManualResetEvent handle = new ManualResetEvent(RemoteConstantLoader.LoadInt32(1) != 0);
        private int threads;

        // Methods
        public BarrierHandle(int threads)
        {
            this.current = threads;
            this.threads = threads;
        }

        public override bool WaitOne()
        {
            ManualResetEvent V_0 = this.handle;
            if ((Interlocked.Decrement(ref this.current) > RemoteConstantLoader.LoadInt32(2)) != (RemoteConstantLoader.LoadInt32(3) != 0))
            {
                V_0.WaitOne();
            }
            else
            {
                this.handle = new ManualResetEvent(RemoteConstantLoader.LoadInt32(4) != 0);
                Interlocked.Exchange(ref this.current, this.threads);
                V_0.Set();
                V_0.Close();
            }
            return RemoteConstantLoader.LoadInt32(5) != 0; //
        }
    }
}
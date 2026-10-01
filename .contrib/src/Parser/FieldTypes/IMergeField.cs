using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT.FieldTypes
{
    public interface IMergeField
    {
        void Merge(object value);
    }
}

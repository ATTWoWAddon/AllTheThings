﻿using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    public class ConcurrentHashSet<T> : IEnumerable<T>
    {
        private readonly ConcurrentDictionary<T, byte> _dict = new ConcurrentDictionary<T, byte>();

        public bool Add(T item) => _dict.TryAdd(item, 0);
        public bool Contains(T item) => _dict.ContainsKey(item);
        public bool Remove(T item) => _dict.TryRemove(item, out _);

        public IEnumerator<T> GetEnumerator() => _dict.Keys.GetEnumerator();

        IEnumerator IEnumerable.GetEnumerator() => _dict.Keys.GetEnumerator();
    }
}

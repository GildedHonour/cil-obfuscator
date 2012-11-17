// Type: System.Collections.Specialized.NameValueCollection
// Assembly: System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
// Assembly location: C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.dll

using System;
using System.Collections;
using System.Runtime;
using System.Runtime.Serialization;

namespace System.Collections.Specialized
{
    /// <summary>
    /// Represents a collection of associated <see cref="T:System.String"/> keys and <see cref="T:System.String"/> values that can be accessed either with the key or with the index.
    /// </summary>
    [Serializable]
    public class NameValueCollection : NameObjectCollectionBase
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the default initial capacity and uses the default case-insensitive hash code provider and the default case-insensitive comparer.
        /// </summary>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection();

        /// <summary>
        /// Copies the entries from the specified <see cref="T:System.Collections.Specialized.NameValueCollection"/> to a new <see cref="T:System.Collections.Specialized.NameValueCollection"/> with the same initial capacity as the number of entries copied and using the same hash code provider and the same comparer as the source collection.
        /// </summary>
        /// <param name="col">The <see cref="T:System.Collections.Specialized.NameValueCollection"/> to copy to the new <see cref="T:System.Collections.Specialized.NameValueCollection"/> instance.</param><exception cref="T:System.ArgumentNullException"><paramref name="col"/> is null.</exception>
        public NameValueCollection(NameValueCollection col);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the default initial capacity and uses the specified hash code provider and the specified comparer.
        /// </summary>
        /// <param name="hashProvider">The <see cref="T:System.Collections.IHashCodeProvider"/> that will supply the hash codes for all keys in the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.</param><param name="comparer">The <see cref="T:System.Collections.IComparer"/> to use to determine whether two keys are equal.</param>
        [Obsolete("Please use NameValueCollection(IEqualityComparer) instead.")]
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(IHashCodeProvider hashProvider, IComparer comparer);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the specified initial capacity and uses the default case-insensitive hash code provider and the default case-insensitive comparer.
        /// </summary>
        /// <param name="capacity">The initial number of entries that the <see cref="T:System.Collections.Specialized.NameValueCollection"/> can contain.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity"/> is less than zero.</exception>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the default initial capacity, and uses the specified <see cref="T:System.Collections.IEqualityComparer"/> object.
        /// </summary>
        /// <param name="equalityComparer">The <see cref="T:System.Collections.IEqualityComparer"/> object to use to determine whether two keys are equal and to generate hash codes for the keys in the collection.</param>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(IEqualityComparer equalityComparer);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the specified initial capacity, and uses the specified <see cref="T:System.Collections.IEqualityComparer"/> object.
        /// </summary>
        /// <param name="capacity">The initial number of entries that the <see cref="T:System.Collections.Specialized.NameValueCollection"/> object can contain.</param><param name="equalityComparer">The <see cref="T:System.Collections.IEqualityComparer"/> object to use to determine whether two keys are equal and to generate hash codes for the keys in the collection.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity"/> is less than zero.</exception>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity, IEqualityComparer equalityComparer);

        /// <summary>
        /// Copies the entries from the specified <see cref="T:System.Collections.Specialized.NameValueCollection"/> to a new <see cref="T:System.Collections.Specialized.NameValueCollection"/> with the specified initial capacity or the same initial capacity as the number of entries copied, whichever is greater, and using the default case-insensitive hash code provider and the default case-insensitive comparer.
        /// </summary>
        /// <param name="capacity">The initial number of entries that the <see cref="T:System.Collections.Specialized.NameValueCollection"/> can contain.</param><param name="col">The <see cref="T:System.Collections.Specialized.NameValueCollection"/> to copy to the new <see cref="T:System.Collections.Specialized.NameValueCollection"/> instance.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity"/> is less than zero.</exception><exception cref="T:System.ArgumentNullException"><paramref name="col"/> is null.</exception>
        public NameValueCollection(int capacity, NameValueCollection col);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is empty, has the specified initial capacity and uses the specified hash code provider and the specified comparer.
        /// </summary>
        /// <param name="capacity">The initial number of entries that the <see cref="T:System.Collections.Specialized.NameValueCollection"/> can contain.</param><param name="hashProvider">The <see cref="T:System.Collections.IHashCodeProvider"/> that will supply the hash codes for all keys in the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.</param><param name="comparer">The <see cref="T:System.Collections.IComparer"/> to use to determine whether two keys are equal.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity"/> is less than zero.</exception>
        [Obsolete("Please use NameValueCollection(Int32, IEqualityComparer) instead.")]
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity, IHashCodeProvider hashProvider, IComparer comparer);

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> class that is serializable and uses the specified <see cref="T:System.Runtime.Serialization.SerializationInfo"/> and <see cref="T:System.Runtime.Serialization.StreamingContext"/>.
        /// </summary>
        /// <param name="info">A <see cref="T:System.Runtime.Serialization.SerializationInfo"/> object that contains the information required to serialize the new <see cref="T:System.Collections.Specialized.NameValueCollection"/> instance.</param><param name="context">A <see cref="T:System.Runtime.Serialization.StreamingContext"/> object that contains the source and destination of the serialized stream associated with the new <see cref="T:System.Collections.Specialized.NameValueCollection"/> instance.</param>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        protected NameValueCollection(SerializationInfo info, StreamingContext context);

        /// <summary>
        /// Resets the cached arrays of the collection to null.
        /// </summary>
        protected void InvalidateCachedArrays();

        /// <summary>
        /// Copies the entries in the specified <see cref="T:System.Collections.Specialized.NameValueCollection"/> to the current <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// <param name="c">The <see cref="T:System.Collections.Specialized.NameValueCollection"/> to copy to the current <see cref="T:System.Collections.Specialized.NameValueCollection"/>.</param><exception cref="T:System.NotSupportedException">The collection is read-only.</exception><exception cref="T:System.ArgumentNullException"><paramref name="c"/> is null.</exception>
        public void Add(NameValueCollection c);

        /// <summary>
        /// Invalidates the cached arrays and removes all entries from the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// <exception cref="T:System.NotSupportedException">The collection is read-only.</exception><PermissionSet><IPermission class="System.Security.Permissions.SecurityPermission, mscorlib, Version=2.0.3600.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" version="1" Flags="UnmanagedCode, ControlEvidence"/></PermissionSet>
        public virtual void Clear();

        /// <summary>
        /// Copies the entire <see cref="T:System.Collections.Specialized.NameValueCollection"/> to a compatible one-dimensional <see cref="T:System.Array"/>, starting at the specified index of the target array.
        /// </summary>
        /// <param name="dest">The one-dimensional <see cref="T:System.Array"/> that is the destination of the elements copied from <see cref="T:System.Collections.Specialized.NameValueCollection"/>. The <see cref="T:System.Array"/> must have zero-based indexing.</param><param name="index">The zero-based index in <paramref name="dest"/> at which copying begins.</param><exception cref="T:System.ArgumentNullException"><paramref name="dest"/> is null.</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index"/> is less than zero.</exception><exception cref="T:System.ArgumentException"><paramref name="dest"/> is multidimensional.-or- The number of elements in the source <see cref="T:System.Collections.Specialized.NameValueCollection"/> is greater than the available space from <paramref name="index"/> to the end of the destination <paramref name="dest"/>.</exception><exception cref="T:System.InvalidCastException">The type of the source <see cref="T:System.Collections.Specialized.NameValueCollection"/> cannot be cast automatically to the type of the destination <paramref name="dest"/>.</exception>
        public void CopyTo(Array dest, int index);

        /// <summary>
        /// Gets a value indicating whether the <see cref="T:System.Collections.Specialized.NameValueCollection"/> contains keys that are not null.
        /// </summary>
        /// 
        /// <returns>
        /// true if the <see cref="T:System.Collections.Specialized.NameValueCollection"/> contains keys that are not null; otherwise, false.
        /// </returns>
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public bool HasKeys();

        /// <summary>
        /// Adds an entry with the specified name and value to the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry to add. The key can be null.</param><param name="value">The <see cref="T:System.String"/> value of the entry to add. The value can be null.</param><exception cref="T:System.NotSupportedException">The collection is read-only. </exception>
        public virtual void Add(string name, string value);

        /// <summary>
        /// Gets the values associated with the specified key from the <see cref="T:System.Collections.Specialized.NameValueCollection"/> combined into one comma-separated list.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> that contains a comma-separated list of the values associated with the specified key from the <see cref="T:System.Collections.Specialized.NameValueCollection"/>, if found; otherwise, null.
        /// </returns>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry that contains the values to get. The key can be null.</param>
        public virtual string Get(string name);

        /// <summary>
        /// Gets the values associated with the specified key from the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> array that contains the values associated with the specified key from the <see cref="T:System.Collections.Specialized.NameValueCollection"/>, if found; otherwise, null.
        /// </returns>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry that contains the values to get. The key can be null.</param>
        public virtual string[] GetValues(string name);

        /// <summary>
        /// Sets the value of an entry in the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry to add the new value to. The key can be null.</param><param name="value">The <see cref="T:System.Object"/> that represents the new value to add to the specified entry. The value can be null.</param><exception cref="T:System.NotSupportedException">The collection is read-only.</exception>
        public virtual void Set(string name, string value);

        /// <summary>
        /// Removes the entries with the specified key from the <see cref="T:System.Collections.Specialized.NameObjectCollectionBase"/> instance.
        /// </summary>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry to remove. The key can be null.</param><exception cref="T:System.NotSupportedException">The collection is read-only.</exception>
        public virtual void Remove(string name);

        /// <summary>
        /// Gets the values at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/> combined into one comma-separated list.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> that contains a comma-separated list of the values at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>, if found; otherwise, null.
        /// </returns>
        /// <param name="index">The zero-based index of the entry that contains the values to get from the collection.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index"/> is outside the valid range of indexes for the collection.</exception>
        public virtual string Get(int index);

        /// <summary>
        /// Gets the values at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> array that contains the values at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>, if found; otherwise, null.
        /// </returns>
        /// <param name="index">The zero-based index of the entry that contains the values to get from the collection.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index"/> is outside the valid range of indexes for the collection. </exception>
        public virtual string[] GetValues(int index);

        /// <summary>
        /// Gets the key at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> that contains the key at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>, if found; otherwise, null.
        /// </returns>
        /// <param name="index">The zero-based index of the key to get from the collection.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index"/> is outside the valid range of indexes for the collection. </exception>
        public virtual string GetKey(int index);

        /// <summary>
        /// Gets or sets the entry with the specified key in the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> that contains the comma-separated list of values associated with the specified key, if found; otherwise, null.
        /// </returns>
        /// <param name="name">The <see cref="T:System.String"/> key of the entry to locate. The key can be null.</param><exception cref="T:System.NotSupportedException">The collection is read-only and the operation attempts to modify the collection. </exception>
        public string this[string name] { [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        get; [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        set; }

        /// <summary>
        /// Gets the entry at the specified index of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> that contains the comma-separated list of values at the specified index of the collection.
        /// </returns>
        /// <param name="index">The zero-based index of the entry to locate in the collection.</param><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index"/> is outside the valid range of indexes for the collection.</exception>
        public string this[int index] { [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        get; }

        /// <summary>
        /// Gets all the keys in the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </summary>
        /// 
        /// <returns>
        /// A <see cref="T:System.String"/> array that contains all the keys of the <see cref="T:System.Collections.Specialized.NameValueCollection"/>.
        /// </returns>
        public virtual string[] AllKeys { get; }
    }
}

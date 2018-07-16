__precompile__(true)

module DataTables

##############################################################################
##
## Dependencies
##
##############################################################################

using Compat
import Compat.String
using Reexport
using StatsBase
import NullableArrays: dropnull, dropnull!
@reexport using NullableArrays
@reexport using CategoricalArrays
using SortingAlgorithms
using Base: Sort, Order
import Base: ==, |>

##############################################################################
##
## Exported methods and types (in addition to everything reexported above)
##
##############################################################################

export @~,
       @csv_str,
       @csv2_str,
       @tsv_str,
       @wsv_str,

       AbstractDataTable,
       DataTable,
       DataTableRow,
       GroupApplied,
       GroupedDataTable,
       SubDataTable,

       aggregate,
       by,
       categorical!,
       colwise,
       combine,
       completecases,
       deleterows!,
       describe,
       dropnull,
       dropnull!,
       eachcol,
       eachrow,
       eltypes,
       groupby,
       melt,
       meltdt,
       names!,
       ncol,
       nonunique,
       nrow,
       nullable!,
       order,
       printtable,
       rename!,
       rename,
       showcols,
       stack,
       stackdt,
       unique!,
       unstack,
       head,
       tail,

       # Remove after deprecation period
       pool,
       pool!


##############################################################################
##
## Load files
##
##############################################################################

const _displaysize = Base.displaysize

for (dir, filename) in [
        ("other", "utils.jl"),
        ("other", "index.jl"),

        ("abstractdatatable", "abstractdatatable.jl"),
        ("datatable", "datatable.jl"),
        ("subdatatable", "subdatatable.jl"),
        ("groupeddatatable", "grouping.jl"),
        ("datatablerow", "datatablerow.jl"),
        ("datatablerow", "utils.jl"),

        ("abstractdatatable", "iteration.jl"),
        ("abstractdatatable", "join.jl"),
        ("abstractdatatable", "reshape.jl"),

        ("abstractdatatable", "io.jl"),

        ("abstractdatatable", "show.jl"),
        ("groupeddatatable", "show.jl"),
        ("datatablerow", "show.jl"),

        ("abstractdatatable", "sort.jl"),
        ("datatable", "sort.jl"),

        ("", "deprecated.jl")
    ]

    include(joinpath(dir, filename))
end

end # module DataTables

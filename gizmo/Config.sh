####################################################################################################
# --------------------------------------- Boundary Conditions & Dimensions
####################################################################################################
BOX_PERIODIC               # Use this if periodic/finite boundaries are needed (otherwise an infinite box [no boundary] is assumed)

####################################################################################################
# --------------------------------------- Input/Output options
####################################################################################################
IO_COMPRESS_HDF5     		    # write HDF5 in compressed form (will slow down snapshot I/O and may cause issues on old machines, but reduce snapshots 2x)

####################################################################################################
# --------------------------------------- Multi-Threading and Parallelization options
####################################################################################################
OPENMP=20                       # top-level switch for explicit OpenMP implementation
MULTIPLEDOMAINS=16             # Multi-Domain option for the top-tree level (alters load-balancing)
####################################################################################################

####################################################################################################
## ------------------------ Gravity & Cosmological Integration Options ---------------------------------
####################################################################################################
PMGRID=512                     # adds Particle-Mesh grid for faster (but less accurate) long-range gravitational forces: value sets resolution (e.g. a PMGRID^3 grid will overlay the box, as the 'top level' grid)

####################################################################################################
# --------------------------------------- Hydro solver method
####################################################################################################
HYDRO_MESHLESS_FINITE_MASS     # solve hydro using the mesh-free Lagrangian (fixed-mass) finite-volume Godunov method

####################################################################################################
# ----------------- Galaxy formation & Galactic Star formation
####################################################################################################
FIRE_PHYSICS_DEFAULTS=3  # set desired FIRE version
FIRE_MHD                 # (optional) MHD, cond, visc
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun h_ack!1428 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!1428)
          ((_ to_fp 11 53) #x4000000000000000))
  #x4018000000000000))

(check-sat)
(exit)

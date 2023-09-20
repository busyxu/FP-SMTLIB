(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!45 () (_ BitVec 64))
(declare-fun h_ack!46 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!46)
          ((_ to_fp 11 53) #x4018000000000000))
  y1_ack!45))

(check-sat)
(exit)

(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!755 () (_ BitVec 64))
(declare-fun h_ack!756 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!756)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x4018000000000000))
  y1_ack!755))

(check-sat)
(exit)

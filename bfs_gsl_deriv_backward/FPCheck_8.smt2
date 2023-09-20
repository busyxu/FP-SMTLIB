(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!14 () (_ BitVec 64))
(declare-fun x_ack!15 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  x_ack!15
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) h_ack!14))
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)

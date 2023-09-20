(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!171 () (_ BitVec 64))
(declare-fun a_ack!172 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  #x40a6c80000000000
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!172)
                  ((_ to_fp 11 53) a_ack!172))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4008000000000000)
                  ((_ to_fp 11 53) b_ack!171)))))

(check-sat)
(exit)

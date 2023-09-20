(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!32 () (_ BitVec 64))
(declare-fun x1_ack!31 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  #x4024000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!31)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!32)
                  ((_ to_fp 11 53) x0_ack!32)))))

(check-sat)
(exit)

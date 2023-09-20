(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p1_ack!81 () (_ BitVec 64))
(declare-fun x1_ack!82 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!82)
                  ((_ to_fp 11 53) p1_ack!81)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!82)
          ((_ to_fp 11 53) p1_ack!81))))

(check-sat)
(exit)

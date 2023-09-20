(declare-fun x0_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x1_ack!60 () (_ BitVec 64))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!61)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  x1_ack!60
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!61)
                  ((_ to_fp 11 53) #x3e50000000000000))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!61)
                  ((_ to_fp 11 53) #x3e50000000000000)))))

(check-sat)
(exit)

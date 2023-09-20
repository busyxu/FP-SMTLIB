(declare-fun x_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y_ack!31 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!32))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) y_ack!31)))
  #x3ff0000000000000))

(check-sat)
(exit)

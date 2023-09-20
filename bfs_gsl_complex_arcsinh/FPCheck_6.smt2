(declare-fun x_ack!11 () (_ BitVec 64))
(declare-fun y_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_asin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!11))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #xbff0000000000000)
                        ((_ to_fp 11 53) y_ack!10)))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #xbff0000000000000
  (CF_asin (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   ((_ to_fp 11 53) y_ack!10)))))

(check-sat)
(exit)

(declare-fun y_ack!20 () (_ BitVec 64))
(declare-fun x_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!21))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xbff0000000000000
  (CF_atan (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   ((_ to_fp 11 53) y_ack!20)))))

(check-sat)
(exit)

(declare-fun y_ack!56 () (_ BitVec 64))
(declare-fun x_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!56) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!57))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #xbff0000000000000
  (CF_atan (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   ((_ to_fp 11 53) y_ack!56)))))

(check-sat)
(exit)

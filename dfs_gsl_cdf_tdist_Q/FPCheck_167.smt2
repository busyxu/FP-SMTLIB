(declare-fun mu_ack!599 () (_ BitVec 64))
(declare-fun x_ack!600 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!599) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!600)
               ((_ to_fp 11 53) x_ack!600))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!599))))
(assert (FPCHECK_FSUB_ACCURACY mu_ack!599 #x3fe0000000000000))

(check-sat)
(exit)

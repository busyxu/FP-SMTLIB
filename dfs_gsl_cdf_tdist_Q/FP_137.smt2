(declare-fun mu_ack!1045 () (_ BitVec 64))
(declare-fun x_ack!1046 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1045) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1046)
               ((_ to_fp 11 53) x_ack!1046))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1045))))

(check-sat)
(exit)

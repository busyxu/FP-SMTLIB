(declare-fun mu_ack!18 () (_ BitVec 64))
(declare-fun x_ack!19 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!18) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!19)
                    ((_ to_fp 11 53) x_ack!19))
            ((_ to_fp 11 53) mu_ack!18))))

(check-sat)
(exit)

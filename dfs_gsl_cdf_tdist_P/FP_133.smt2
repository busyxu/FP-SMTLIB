(declare-fun mu_ack!997 () (_ BitVec 64))
(declare-fun x_ack!998 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!997) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!998)
                    ((_ to_fp 11 53) x_ack!998))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!997)))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!998)
               ((_ to_fp 11 53) x_ack!998))
       ((_ to_fp 11 53) mu_ack!997)))

(check-sat)
(exit)

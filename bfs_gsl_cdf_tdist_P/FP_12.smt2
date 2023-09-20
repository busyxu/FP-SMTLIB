(declare-fun mu_ack!587 () (_ BitVec 64))
(declare-fun x_ack!588 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!587) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!588)
                    ((_ to_fp 11 53) x_ack!588))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!587)))))

(check-sat)
(exit)

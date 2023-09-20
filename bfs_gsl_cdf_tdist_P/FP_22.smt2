(declare-fun mu_ack!685 () (_ BitVec 64))
(declare-fun x_ack!686 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!685) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!686)
                    ((_ to_fp 11 53) x_ack!686))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!685)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!686)
                    ((_ to_fp 11 53) x_ack!686))
            ((_ to_fp 11 53) mu_ack!685))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!686))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!686)
                       ((_ to_fp 11 53) x_ack!686))
               ((_ to_fp 11 53) x_ack!686))
       ((_ to_fp 11 53) x_ack!686)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!686))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!686)
                       ((_ to_fp 11 53) x_ack!686))
               ((_ to_fp 11 53) x_ack!686))
       ((_ to_fp 11 53) x_ack!686)))

(check-sat)
(exit)

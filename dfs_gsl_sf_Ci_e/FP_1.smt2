(declare-fun a_ack!5 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5)
                       ((_ to_fp 11 53) a_ack!5))
               ((_ to_fp 11 53) a_ack!5))
       ((_ to_fp 11 53) a_ack!5)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5)
                       ((_ to_fp 11 53) a_ack!5))
               ((_ to_fp 11 53) a_ack!5))
       ((_ to_fp 11 53) a_ack!5)))

(check-sat)
(exit)

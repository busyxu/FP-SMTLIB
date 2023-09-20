(declare-fun b_ack!229 () (_ BitVec 64))
(declare-fun a_ack!230 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!230) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!230)
                    ((_ to_fp 11 53) b_ack!229))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!230) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!230) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!230)
                       ((_ to_fp 11 53) b_ack!229))
               ((_ to_fp 11 53) a_ack!230))
       ((_ to_fp 11 53) b_ack!229)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!230)
                       ((_ to_fp 11 53) b_ack!229))
               ((_ to_fp 11 53) b_ack!229))
       ((_ to_fp 11 53) a_ack!230)))

(check-sat)
(exit)

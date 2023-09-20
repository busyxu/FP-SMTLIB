(declare-fun b_ack!23 () (_ BitVec 64))
(declare-fun a_ack!24 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!23) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!23))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!23)
                       ((_ to_fp 11 53) b_ack!23))
               ((_ to_fp 11 53) b_ack!23))
       ((_ to_fp 11 53) b_ack!23)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!23))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!23)
                       ((_ to_fp 11 53) b_ack!23))
               ((_ to_fp 11 53) b_ack!23))
       ((_ to_fp 11 53) b_ack!23)))

(check-sat)
(exit)

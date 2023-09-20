(declare-fun b_ack!245 () (_ BitVec 64))
(declare-fun a_ack!246 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!245)
                       ((_ to_fp 11 53) a_ack!246)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!245) ((_ to_fp 11 53) #x3f48406003b2ae5a)))

(check-sat)
(exit)

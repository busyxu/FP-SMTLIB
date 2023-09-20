(declare-fun b_ack!177 () (_ BitVec 64))
(declare-fun a_ack!178 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!178)
                       ((_ to_fp 11 53) b_ack!177)))
       ((_ to_fp 11 53) #x3f20000000000000)))

(check-sat)
(exit)

(declare-fun a_ack!338 () (_ BitVec 64))
(declare-fun b_ack!337 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!338) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!337) ((_ to_fp 11 53) #x4034000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!337)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!338))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!338) ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)

(declare-fun a_ack!699 () (_ BitVec 64))
(declare-fun b_ack!698 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!699)
                       ((_ to_fp 11 53) a_ack!699))
               ((_ to_fp 11 53) a_ack!699))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (= #x00000000 (bvand b_ack!698 #x00000007))))

(check-sat)
(exit)

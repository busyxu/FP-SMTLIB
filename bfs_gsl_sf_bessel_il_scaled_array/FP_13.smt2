(declare-fun b_ack!63 () (_ BitVec 64))
(declare-fun a_ack!64 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!64) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!63))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!64)))
(assert (not (= #x00000000 a_ack!64)))

(check-sat)
(exit)

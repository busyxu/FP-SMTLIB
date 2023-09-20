(declare-fun a_ack!64 () (_ BitVec 32))
(declare-fun b_ack!63 () (_ BitVec 64))
(assert (not (bvslt a_ack!64 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!63))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!64))))

(check-sat)
(exit)

(declare-fun a_ack!25 () (_ BitVec 32))
(declare-fun b_ack!24 () (_ BitVec 64))
(assert (not (bvslt a_ack!25 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!24) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!24))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!25)))))
(assert (= #x00000000 a_ack!25))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!24) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!24) ((_ to_fp 11 53) #xc086232bdd7abcd2)))

(check-sat)
(exit)

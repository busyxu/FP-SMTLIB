(declare-fun a_ack!96 () (_ BitVec 32))
(declare-fun b_ack!95 () (_ BitVec 64))
(assert (not (bvslt a_ack!96 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!95) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!95))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!96)))))
(assert (= #x00000000 a_ack!96))
(assert (fp.gt ((_ to_fp 11 53) b_ack!95) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)

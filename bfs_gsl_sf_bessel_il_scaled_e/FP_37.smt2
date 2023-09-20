(declare-fun b_ack!384 () (_ BitVec 64))
(declare-fun a_ack!385 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!384) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!385 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!385)))
(assert (not (= #x00000001 a_ack!385)))
(assert (= #x00000002 a_ack!385))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) b_ack!384))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)

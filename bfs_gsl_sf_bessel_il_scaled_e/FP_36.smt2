(declare-fun b_ack!374 () (_ BitVec 64))
(declare-fun a_ack!375 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!374) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!375 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!374))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!375)))
(assert (not (= #x00000001 a_ack!375)))
(assert (not (= #x00000002 a_ack!375)))

(check-sat)
(exit)

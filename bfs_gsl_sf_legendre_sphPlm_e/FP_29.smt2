(declare-fun b_ack!537 () (_ BitVec 32))
(declare-fun a_ack!539 () (_ BitVec 32))
(declare-fun c_ack!538 () (_ BitVec 64))
(assert (not (bvslt b_ack!537 #x00000000)))
(assert (not (bvslt a_ack!539 b_ack!537)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!537)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.leq (fp.mul roundNearestTiesToEven
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) #x8000000000000000)
                        ((_ to_fp 11 53) c_ack!538))
                ((_ to_fp 11 53) c_ack!538))
        ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)

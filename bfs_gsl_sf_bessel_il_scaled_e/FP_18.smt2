(declare-fun b_ack!110 () (_ BitVec 64))
(declare-fun a_ack!111 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!110) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!111 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!110))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!111)))
(assert (= #x00000001 a_ack!111))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!110))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!110)))
                  ((_ to_fp 11 53) #x0028000000000000))))
  (not a!1)))

(check-sat)
(exit)

(declare-fun a_ack!107 () (_ BitVec 32))
(declare-fun b_ack!106 () (_ BitVec 64))
(assert (not (bvslt a_ack!107 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!106) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!107 #x00000001)))
(assert (= #x00000000 a_ack!107))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!106)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))

(check-sat)
(exit)

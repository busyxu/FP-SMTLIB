(declare-fun b_ack!1701 () (_ BitVec 32))
(declare-fun a_ack!1703 () (_ BitVec 32))
(declare-fun c_ack!1702 () (_ BitVec 64))
(assert (not (bvslt b_ack!1701 #x00000000)))
(assert (not (bvslt a_ack!1703 #x00000000)))
(assert (not (= #x00000000 b_ack!1701)))
(assert (not (= #x00000001 b_ack!1701)))
(assert (= #x00000000 a_ack!1703))
(assert (not (bvslt b_ack!1701 #x00000000)))
(assert (not (= #x00000000 b_ack!1701)))
(assert (not (= #x00000001 b_ack!1701)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1702) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1702)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))

(check-sat)
(exit)

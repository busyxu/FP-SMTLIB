(declare-fun b_ack!1797 () (_ BitVec 32))
(declare-fun a_ack!1799 () (_ BitVec 32))
(declare-fun c_ack!1798 () (_ BitVec 64))
(assert (not (bvslt b_ack!1797 #x00000000)))
(assert (not (bvslt a_ack!1799 #x00000000)))
(assert (not (= #x00000000 b_ack!1797)))
(assert (not (= #x00000001 b_ack!1797)))
(assert (= #x00000000 a_ack!1799))
(assert (not (bvslt b_ack!1797 #x00000000)))
(assert (not (= #x00000000 b_ack!1797)))
(assert (not (= #x00000001 b_ack!1797)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1798)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvsle #x00000001 (bvadd #xffffffff b_ack!1797)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1798)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (bvsle #x00000002 (bvadd #xffffffff b_ack!1797)))

(check-sat)
(exit)

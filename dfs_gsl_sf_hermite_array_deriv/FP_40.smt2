(declare-fun b_ack!719 () (_ BitVec 32))
(declare-fun a_ack!721 () (_ BitVec 32))
(declare-fun c_ack!720 () (_ BitVec 64))
(assert (not (bvslt b_ack!719 #x00000000)))
(assert (not (bvslt a_ack!721 #x00000000)))
(assert (= #x00000000 a_ack!721))
(assert (not (bvslt b_ack!719 #x00000000)))
(assert (not (= #x00000000 b_ack!719)))
(assert (not (= #x00000001 b_ack!719)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!720)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvslt #x00000001 b_ack!719))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!720)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!719))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!720))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!720)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x7fefffffffffffff))))

(check-sat)
(exit)

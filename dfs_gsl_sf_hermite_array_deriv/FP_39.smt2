(declare-fun b_ack!716 () (_ BitVec 32))
(declare-fun a_ack!718 () (_ BitVec 32))
(declare-fun c_ack!717 () (_ BitVec 64))
(assert (not (bvslt b_ack!716 #x00000000)))
(assert (not (bvslt a_ack!718 #x00000000)))
(assert (= #x00000000 a_ack!718))
(assert (not (bvslt b_ack!716 #x00000000)))
(assert (not (= #x00000000 b_ack!716)))
(assert (not (= #x00000001 b_ack!716)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!717)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvslt #x00000001 b_ack!716))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!717)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!716))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!717))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!717)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!717)))
       ((_ to_fp 11 53) #x7fcccccccccccccc)))

(check-sat)
(exit)

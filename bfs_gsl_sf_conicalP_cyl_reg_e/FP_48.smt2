(declare-fun c_ack!735 () (_ BitVec 64))
(declare-fun a_ack!736 () (_ BitVec 32))
(declare-fun b_ack!734 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!736 #xffffffff)))
(assert (not (= #xffffffff a_ack!736)))
(assert (= #x00000000 a_ack!736))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!734) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!735)))
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!735))))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!735)))
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!735))))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3feffffff8000000)))))

(check-sat)
(exit)

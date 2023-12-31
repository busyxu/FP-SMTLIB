(declare-fun b_ack!4112 () (_ BitVec 64))
(declare-fun a_ack!4113 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4112) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4112) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4112) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4113) ((_ to_fp 11 53) #x4031000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4112)))
                   (fp.abs ((_ to_fp 11 53) b_ack!4112)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4112))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!4112)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4112))))))
  (FPCHECK_FADD_ACCURACY #x3cb0000000000000 a!1)))

(check-sat)
(exit)

(declare-fun c_ack!142 () (_ BitVec 64))
(declare-fun b_ack!141 () (_ BitVec 32))
(declare-fun a_ack!143 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!141)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!143))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!141))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!143))
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!141))))
  (not (fp.eq a!1 (CF_floor a!1)))))

(check-sat)
(exit)

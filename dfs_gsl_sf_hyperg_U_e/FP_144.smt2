(declare-fun c_ack!2834 () (_ BitVec 64))
(declare-fun b_ack!2833 () (_ BitVec 64))
(declare-fun a_ack!2835 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!2834) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!2834) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) a_ack!2835))
                ((_ to_fp 11 53) b_ack!2833))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!2835))
                   ((_ to_fp 11 53) b_ack!2833))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2833) (CF_floor b_ack!2833)))

(check-sat)
(exit)

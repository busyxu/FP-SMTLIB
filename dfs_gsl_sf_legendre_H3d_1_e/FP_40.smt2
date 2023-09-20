(declare-fun b_ack!605 () (_ BitVec 64))
(declare-fun a_ack!606 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!605) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!605) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!606) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!605)
                                  ((_ to_fp 11 53) a_ack!606)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!605)
                                  ((_ to_fp 11 53) a_ack!606)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!605)
                                   ((_ to_fp 11 53) a_ack!606))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f20000000000000)))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!605)
                                   ((_ to_fp 11 53) a_ack!606))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_floor (fp.div roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #x3fe921fb54442d18)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (= #x00000000 (bvand ((_ fp.to_sbv 32) roundTowardZero a!2) #x00000001)))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!605)
                                   ((_ to_fp 11 53) a_ack!606))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_floor (fp.div roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #x3fe921fb54442d18)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (bvslt #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!2)))))

(check-sat)
(exit)

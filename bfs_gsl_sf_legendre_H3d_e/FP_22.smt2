(declare-fun c_ack!412 () (_ BitVec 64))
(declare-fun a_ack!413 () (_ BitVec 32))
(declare-fun b_ack!411 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!412) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!413))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!411) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!411)
                                  ((_ to_fp 11 53) c_ack!412)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!411)
                                   ((_ to_fp 11 53) c_ack!412)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
(let ((a!2 (bvand ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            (CF_floor a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!411)
                                   ((_ to_fp 11 53) c_ack!412)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
(let ((a!2 (bvslt #x00000003
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            (CF_floor a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001))))))
  (not a!2))))

(check-sat)
(exit)

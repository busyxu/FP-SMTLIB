(declare-fun a_ack!221 () (_ BitVec 32))
(declare-fun b_ack!220 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!221 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!220) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!221)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!220) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!220) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!220) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!220))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) b_ack!220))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
(let ((a!2 (bvand ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x7ff8000000000001)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) b_ack!220))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
  (bvslt #x00000003
         ((_ fp.to_sbv 32)
           roundTowardZero
           (fp.sub roundNearestTiesToEven
                   a!1
                   ((_ to_fp 11 53) #x7ff8000000000001))))))

(check-sat)
(exit)

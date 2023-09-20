(declare-fun b_ack!513 () (_ BitVec 32))
(declare-fun a_ack!515 () (_ BitVec 32))
(declare-fun c_ack!514 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!513 #x00000000)))
(assert (not (bvslt a_ack!515 #x00000000)))
(assert (not (= #x00000000 b_ack!513)))
(assert (not (= #x00000001 b_ack!513)))
(assert (= #x00000000 a_ack!515))
(assert (not (bvslt b_ack!513 #x00000000)))
(assert (not (= #x00000000 b_ack!513)))
(assert (not (= #x00000001 b_ack!513)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!514)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!514)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!514)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!514)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!514)))
                   (fp.abs ((_ to_fp 11 53) c_ack!514)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!514)))
  #x3cb0000000000000))

(check-sat)
(exit)

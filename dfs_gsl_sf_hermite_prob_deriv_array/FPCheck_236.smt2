(declare-fun b_ack!1311 () (_ BitVec 32))
(declare-fun a_ack!1313 () (_ BitVec 32))
(declare-fun c_ack!1312 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1311 #x00000000)))
(assert (not (bvslt a_ack!1313 #x00000000)))
(assert (not (= #x00000000 b_ack!1311)))
(assert (not (= #x00000001 b_ack!1311)))
(assert (= #x00000000 a_ack!1313))
(assert (not (bvslt b_ack!1311 #x00000000)))
(assert (not (= #x00000000 b_ack!1311)))
(assert (not (= #x00000001 b_ack!1311)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1312))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!1311))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1312))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!1311))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1312)
                                   ((_ to_fp 11 53) c_ack!1312))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1312))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1312)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1312)
                                   ((_ to_fp 11 53) c_ack!1312))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!1312)))))

(check-sat)
(exit)

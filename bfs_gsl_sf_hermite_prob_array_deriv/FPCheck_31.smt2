(declare-fun b_ack!193 () (_ BitVec 32))
(declare-fun a_ack!195 () (_ BitVec 32))
(declare-fun c_ack!194 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!193 #x00000000)))
(assert (not (bvslt a_ack!195 #x00000000)))
(assert (= #x00000000 a_ack!195))
(assert (not (bvslt b_ack!193 #x00000000)))
(assert (not (= #x00000000 b_ack!193)))
(assert (not (= #x00000001 b_ack!193)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!194))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!193))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!194))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!193))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!194)
                                   ((_ to_fp 11 53) c_ack!194))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!194))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!194)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!194)
                                   ((_ to_fp 11 53) c_ack!194))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!194)))))

(check-sat)
(exit)

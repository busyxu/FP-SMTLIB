(declare-fun a_ack!2408 () (_ BitVec 32))
(declare-fun b_ack!2406 () (_ BitVec 32))
(declare-fun c_ack!2407 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2406 a_ack!2408)))
(assert (not (bvslt a_ack!2408 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2406))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2407))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2407))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2407))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!2407)))
                   ((_ to_fp 11 53) #x4026000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FSUB_OVERFLOW a!2 #x3ff0000000000000))))

(check-sat)
(exit)

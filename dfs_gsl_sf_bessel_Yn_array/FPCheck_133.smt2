(declare-fun a_ack!545 () (_ BitVec 32))
(declare-fun b_ack!543 () (_ BitVec 32))
(declare-fun c_ack!544 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!545 #x00000000)))
(assert (not (bvslt b_ack!543 a_ack!545)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!545 #x00000000)))
(assert (= #x00000000 a_ack!545))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!544) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!544))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!544))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!544)))
                   (fp.abs ((_ to_fp 11 53) c_ack!544)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    #xbff0000000000000)))

(check-sat)
(exit)

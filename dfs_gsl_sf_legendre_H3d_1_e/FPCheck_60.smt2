(declare-fun b_ack!239 () (_ BitVec 64))
(declare-fun a_ack!240 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!239)
                       ((_ to_fp 11 53) a_ack!240)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!239)
                                   ((_ to_fp 11 53) a_ack!240)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!239)
                                   ((_ to_fp 11 53) a_ack!240))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!239)
            ((_ to_fp 11 53) b_ack!239))
    a!1)))

(check-sat)
(exit)

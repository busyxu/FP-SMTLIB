(declare-fun c_ack!486 () (_ BitVec 64))
(declare-fun a_ack!488 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!487 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!488) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!488)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!486))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!488)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!486))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!486))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!486)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!488)
                                   (CF_floor a_ack!488))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!488)
                                   a!1))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!487)
                                   ((_ to_fp 11 53) c_ack!486))))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!4
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3cb0000000000000))
    a!5)))))))

(check-sat)
(exit)

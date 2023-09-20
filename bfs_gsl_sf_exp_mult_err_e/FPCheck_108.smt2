(declare-fun c_ack!489 () (_ BitVec 64))
(declare-fun a_ack!490 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!489) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!490)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!489))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!490)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!489))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!489))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!489)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!490)
                                   (CF_floor a_ack!490))
                           a!2))))
  (FPCHECK_FMUL_OVERFLOW
    (CF_exp (fp.add roundNearestTiesToEven (CF_floor a_ack!490) a!1))
    a!3)))))

(check-sat)
(exit)

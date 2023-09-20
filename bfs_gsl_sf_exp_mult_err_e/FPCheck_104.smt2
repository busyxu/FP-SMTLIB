(declare-fun c_ack!466 () (_ BitVec 64))
(declare-fun a_ack!468 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!467 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!468)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!466))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!468)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!466))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!466))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!466)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!468)
                                   (CF_floor a_ack!468))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!468)
                                   a!1))
                   a!3)))
  (FPCHECK_FMUL_ACCURACY
    a!4
    (fp.abs (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) d_ack!467)
                    ((_ to_fp 11 53) c_ack!466)))))))))

(check-sat)
(exit)

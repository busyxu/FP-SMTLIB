(declare-fun limit_ack!4703 () (_ BitVec 64))
(declare-fun epsabs_ack!4708 () (_ BitVec 64))
(declare-fun a_ack!4709 () (_ BitVec 64))
(declare-fun x1_ack!4704 () (_ BitVec 64))
(declare-fun x2_ack!4705 () (_ BitVec 64))
(declare-fun x3_ack!4706 () (_ BitVec 64))
(declare-fun b_ack!4707 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4703)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4708)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4704) ((_ to_fp 11 53) a_ack!4709))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4705) ((_ to_fp 11 53) x1_ack!4704))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4706) ((_ to_fp 11 53) x2_ack!4705))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) x3_ack!4706))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4709)
                                   ((_ to_fp 11 53) x1_ack!4704))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4709)
                           ((_ to_fp 11 53) x1_ack!4704))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4704)
                                   ((_ to_fp 11 53) a_ack!4709)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3f87f35bdbca883f
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)

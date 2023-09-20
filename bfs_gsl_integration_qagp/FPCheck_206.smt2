(declare-fun limit_ack!3177 () (_ BitVec 64))
(declare-fun epsabs_ack!3182 () (_ BitVec 64))
(declare-fun a_ack!3183 () (_ BitVec 64))
(declare-fun x1_ack!3178 () (_ BitVec 64))
(declare-fun x2_ack!3179 () (_ BitVec 64))
(declare-fun x3_ack!3180 () (_ BitVec 64))
(declare-fun b_ack!3181 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3177)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3182)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3178) ((_ to_fp 11 53) a_ack!3183))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3179) ((_ to_fp 11 53) x1_ack!3178))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3180) ((_ to_fp 11 53) x2_ack!3179))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3181) ((_ to_fp 11 53) x3_ack!3180))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3183)
                                   ((_ to_fp 11 53) x1_ack!3178))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3178)
                                   ((_ to_fp 11 53) a_ack!3183)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3183)
                                   ((_ to_fp 11 53) x1_ack!3178)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)

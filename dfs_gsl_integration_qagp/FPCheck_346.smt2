(declare-fun limit_ack!5898 () (_ BitVec 64))
(declare-fun epsabs_ack!5903 () (_ BitVec 64))
(declare-fun epsrel_ack!5897 () (_ BitVec 64))
(declare-fun a_ack!5904 () (_ BitVec 64))
(declare-fun x1_ack!5899 () (_ BitVec 64))
(declare-fun x2_ack!5900 () (_ BitVec 64))
(declare-fun x3_ack!5901 () (_ BitVec 64))
(declare-fun b_ack!5902 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5898)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5903) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5897)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5897)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5899) ((_ to_fp 11 53) a_ack!5904))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5900) ((_ to_fp 11 53) x1_ack!5899))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5901) ((_ to_fp 11 53) x2_ack!5900))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5902) ((_ to_fp 11 53) x3_ack!5901))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5904)
                                   ((_ to_fp 11 53) x1_ack!5899))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5904)
                           ((_ to_fp 11 53) x1_ack!5899))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5899)
                                   ((_ to_fp 11 53) a_ack!5904)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
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
  (FPCHECK_FADD_ACCURACY (fp.abs a!3) (fp.abs a!4)))))

(check-sat)
(exit)

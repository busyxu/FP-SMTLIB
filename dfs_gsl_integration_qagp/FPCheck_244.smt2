(declare-fun limit_ack!4194 () (_ BitVec 64))
(declare-fun epsabs_ack!4199 () (_ BitVec 64))
(declare-fun epsrel_ack!4193 () (_ BitVec 64))
(declare-fun a_ack!4200 () (_ BitVec 64))
(declare-fun x1_ack!4195 () (_ BitVec 64))
(declare-fun x2_ack!4196 () (_ BitVec 64))
(declare-fun x3_ack!4197 () (_ BitVec 64))
(declare-fun b_ack!4198 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4194)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4199) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4193)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4193)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4195) ((_ to_fp 11 53) a_ack!4200))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4196) ((_ to_fp 11 53) x1_ack!4195))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4197) ((_ to_fp 11 53) x2_ack!4196))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4198) ((_ to_fp 11 53) x3_ack!4197))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4200)
                                   ((_ to_fp 11 53) x1_ack!4195))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4200)
                           ((_ to_fp 11 53) x1_ack!4195))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4195)
                                   ((_ to_fp 11 53) a_ack!4200)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
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
  (FPCHECK_FADD_UNDERFLOW a!3 a!4))))

(check-sat)
(exit)

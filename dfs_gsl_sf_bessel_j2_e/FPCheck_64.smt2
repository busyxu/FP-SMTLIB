(declare-fun a_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!130))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!130))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!130)
                                   ((_ to_fp 11 53) a_ack!130)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (CF_cos a_ack!130)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!130)
                                   ((_ to_fp 11 53) a_ack!130))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   (CF_sin a_ack!130))
                           ((_ to_fp 11 53) a_ack!130)))))
  (FPCHECK_FADD_UNDERFLOW
    a!2
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!3)))))

(check-sat)
(exit)

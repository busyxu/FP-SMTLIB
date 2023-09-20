(declare-fun b_ack!167 () (_ BitVec 64))
(declare-fun a_ack!168 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!168)
                       ((_ to_fp 11 53) b_ack!167)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!168)
                           ((_ to_fp 11 53) b_ack!167))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!168)
                           ((_ to_fp 11 53) b_ack!167))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!168)
                                   ((_ to_fp 11 53) b_ack!167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!168)
                                   ((_ to_fp 11 53) b_ack!167))
                           a!1)
                   a!1))
      (a!4 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!168)
                                   ((_ to_fp 11 53) b_ack!167)))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!168)
                           ((_ to_fp 11 53) b_ack!167))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!4))))
  (FPCHECK_FADD_OVERFLOW
    a!5
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cb0000000000000)
            (fp.abs a!6)))))))

(check-sat)
(exit)

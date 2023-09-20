(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!58 () (_ BitVec 64))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!59)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59)))
                   ((_ to_fp 11 53) #x4028000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.abs a!1)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_sin a_ack!59)
                                   ((_ to_fp 11 53) b_ack!58))))))
  (FPCHECK_FADD_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cb0000000000000)
            (fp.abs a!3))))))

(check-sat)
(exit)

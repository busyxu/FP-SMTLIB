(declare-fun b_ack!809 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!810 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!809))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!809))
            ((_ to_fp 11 53) #x3cc0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!809)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cc0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!810)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))))
      (a!2 (fp.abs (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!810)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
  (fp.lt a!1 a!2)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!810)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!810)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff1c10380775517))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c103807747d0))
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)))))
  (FPCHECK_FDIV_ZERO
    (fp.add roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!3 a!3)
                    ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
            ((_ to_fp 11 53) #x3ff1b558cab92946))
    (fp.add roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!3 a!3)
                    ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
            ((_ to_fp 11 53) #x3ff1ccb20cd06a7c)))))))

(check-sat)
(exit)

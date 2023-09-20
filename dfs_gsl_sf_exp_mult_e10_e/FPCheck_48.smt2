(declare-fun b_ack!157 () (_ BitVec 64))
(declare-fun a_ack!158 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!157))
            ((_ to_fp 11 53) #x5fe9999999999999))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!158))
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
  (fp.eq a!2 ((_ to_fp 11 53) a_ack!158)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x40026bb1bbb55516))
                          ((_ to_fp 11 53) #x40026bb1bbb55516))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
(let ((a!2 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x40026bb1bbb55516)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x40026bb1bbb55516)))
         ((_ to_fp 11 53) #x40026bb1bbb55516))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!158)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!157)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!157)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               a!2
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!158))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40026bb1bbb55516)
                           (fp.abs ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40026bb1bbb55516))
                           ((_ to_fp 11 53) roundNearestTiesToEven a!3))
                   ((_ to_fp 11 53) #x40026bb1bbb55516))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!4)
    (fp.abs (fp.mul roundNearestTiesToEven a!5 (CF_exp a!6))))))))

(check-sat)
(exit)

(declare-fun x_ack!158 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun e_ack!157 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!158)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!158))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!158))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)) #xfffffc03))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt #x000003fd ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.isNaN (fp.abs (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) x_ack!158)
                                     (CF_pow #x4000000000000000 a!2)))))
      (a!4 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!158)
                                  (CF_pow #x4000000000000000 a!2)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!3 a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!158)
                          (CF_pow #x4000000000000000 a!2)))
          ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!158)
                                   (CF_pow #x4000000000000000 a!2))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.geq a!3 ((_ to_fp 11 53) #x3ff0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!158)
                                   (CF_pow #x4000000000000000 a!2))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.gt a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!158)
                                   (CF_pow #x4000000000000000 a!2))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x3fe0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    e_ack!157
                    ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x4090000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!158)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    e_ack!157
                    ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!4 (CF_pow #x4000000000000000
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4090000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!158)
                    (CF_pow #x4000000000000000 a!2))
            ((_ to_fp 11 53) #x4000000000000000))
    a!4)))))

(check-sat)
(exit)

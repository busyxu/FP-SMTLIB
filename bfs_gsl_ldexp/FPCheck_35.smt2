(declare-fun x_ack!116 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun e_ack!115 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!116)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!116))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!116))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)) #xfffffc03))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt #x000003fd ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.isNaN (fp.abs (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) x_ack!116)
                                     (CF_pow #x4000000000000000 a!2)))))
      (a!4 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!116)
                                  (CF_pow #x4000000000000000 a!2)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!3 a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!116)
                                   (CF_pow #x4000000000000000 a!2)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!116)
                         (CF_pow #x4000000000000000 a!2)))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!116)
                                  (CF_pow #x4000000000000000 a!2)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd e_ack!115 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (not (fp.geq a!2 ((_ to_fp 11 53) #x4090000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd e_ack!115 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (not (fp.leq a!2 ((_ to_fp 11 53) #xc08fe80000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!116)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd e_ack!115 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) x_ack!116)
            (CF_pow #x4000000000000000 a!2))
    (CF_pow #x4000000000000000 a!3)))))

(check-sat)
(exit)

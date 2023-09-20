(declare-fun x_ack!324 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun e_ack!323 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!324)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!324))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!324))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!324))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe62e42fefa39ef)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)) #xfffffc03))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt #x000003fd ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.isNaN (fp.abs (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) x_ack!324)
                                     (CF_pow #x4000000000000000 a!2)))))
      (a!4 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!324)
                                  (CF_pow #x4000000000000000 a!2)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!3 a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!324)
                                   (CF_pow #x4000000000000000 a!2)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!324)
                         (CF_pow #x4000000000000000 a!2)))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!324)
                         (CF_pow #x4000000000000000 a!2)))
         ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!324)
                                   (CF_pow #x4000000000000000 a!2))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.gt a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!324)
                                   (CF_pow #x4000000000000000 a!2))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x3fe0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    e_ack!323
                    ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x4090000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!324)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    e_ack!323
                    ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (FPCHECK_FSUB_ACCURACY a!2 #x4090000000000000))))

(check-sat)
(exit)

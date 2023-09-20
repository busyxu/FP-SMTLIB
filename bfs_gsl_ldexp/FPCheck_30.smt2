(declare-fun x_ack!91 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun e_ack!90 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!91)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!91))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!91))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!91)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (bvslt ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)) #xfffffc03)))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) x_ack!91)
                                     ((_ to_fp 11 53) #x7fc0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!91)
                                  ((_ to_fp 11 53) #x7fc0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!91)
                                   ((_ to_fp 11 53) #x7fc0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!91)
                       ((_ to_fp 11 53) #x7fc0000000000000)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!91)
                       ((_ to_fp 11 53) #x7fc0000000000000)))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!91)
                                   ((_ to_fp 11 53) #x7fc0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!91)
                                   ((_ to_fp 11 53) #x7fc0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.geq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvadd #xfffffc02 e_ack!90))
             ((_ to_fp 11 53) #x4090000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xfffffc02 e_ack!90))
        ((_ to_fp 11 53) #xc08fe80000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xfffffc02 e_ack!90))
          ((_ to_fp 11 53) #xc08fe80000000000))
  #x3ff0000000000000))

(check-sat)
(exit)

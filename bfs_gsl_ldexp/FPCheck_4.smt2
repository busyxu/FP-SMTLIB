(declare-fun x_ack!10 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!10)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!10))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!10))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!10)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1)) #xfffffc03))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!10)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (bvslt #x000003fd ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!10)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvsub #x00000000 ((_ fp.to_sbv 32) roundTowardZero (CF_ceil a!1))))))
  (FPCHECK_FMUL_OVERFLOW x_ack!10 (CF_pow #x4000000000000000 a!2)))))

(check-sat)
(exit)

(declare-fun x_ack!425 () (_ BitVec 64))
(declare-fun e_ack!424 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!425)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!425))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!425))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!425))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!424)
             ((_ to_fp 11 53) #x4090000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!424)
        ((_ to_fp 11 53) #xc08fe80000000000)))
(assert (let ((a!1 (CF_pow #x4000000000000000
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     e_ack!424)
                                   ((_ to_fp 11 53) #xc08fe80000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW x_ack!425 a!1)))

(check-sat)
(exit)

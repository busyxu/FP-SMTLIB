(declare-fun x_ack!611 () (_ BitVec 64))
(declare-fun e_ack!610 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!611) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!611) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!611)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!611))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!610)
        ((_ to_fp 11 53) #x4090000000000000)))
(assert (let ((a!1 (CF_pow #x4000000000000000
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     e_ack!610)
                                   ((_ to_fp 11 53) #x4090000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) x_ack!611) a!1)
    #x7fe0000000000000)))

(check-sat)
(exit)

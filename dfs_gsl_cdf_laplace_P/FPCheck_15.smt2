(declare-fun a_ack!68 () (_ BitVec 64))
(declare-fun x_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!69)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!68)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!69)
               ((_ to_fp 11 53) a_ack!68))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!69)
                                   ((_ to_fp 11 53) a_ack!68))))))
  (FPCHECK_FMUL_ACCURACY
    #x3fe0000000000000
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)

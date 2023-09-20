(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun x_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!19)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!18)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!19)
                    ((_ to_fp 11 53) a_ack!18))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (CF_exp (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!19)
                  ((_ to_fp 11 53) a_ack!18)))))

(check-sat)
(exit)

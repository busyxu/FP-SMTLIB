(declare-fun mu_ack!18 () (_ BitVec 64))
(declare-fun x_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!19)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!18)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!19)
                     ((_ to_fp 11 53) mu_ack!18))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (CF_exp (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!19)
                  ((_ to_fp 11 53) mu_ack!18)))))

(check-sat)
(exit)

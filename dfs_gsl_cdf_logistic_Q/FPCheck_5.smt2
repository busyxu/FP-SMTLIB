(declare-fun mu_ack!22 () (_ BitVec 64))
(declare-fun x_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!23)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!22)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!23)
                     ((_ to_fp 11 53) mu_ack!22))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (CF_exp (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!23)
                  ((_ to_fp 11 53) mu_ack!22)))))

(check-sat)
(exit)

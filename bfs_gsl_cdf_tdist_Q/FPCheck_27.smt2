(declare-fun mu_ack!93 () (_ BitVec 64))
(declare-fun x_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!93) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!94)
                    ((_ to_fp 11 53) x_ack!94))
            ((_ to_fp 11 53) mu_ack!93))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!93)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!94)
                               ((_ to_fp 11 53) x_ack!94))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!93)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!94)
                  ((_ to_fp 11 53) x_ack!94)))))

(check-sat)
(exit)

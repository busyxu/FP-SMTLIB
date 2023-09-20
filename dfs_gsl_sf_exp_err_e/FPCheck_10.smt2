(declare-fun b_ack!44 () (_ BitVec 64))
(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!45)
                          (fp.abs ((_ to_fp 11 53) b_ack!44)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!45)
                          (fp.abs ((_ to_fp 11 53) b_ack!44)))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!44))))))
  (FPCHECK_FSUB_OVERFLOW (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!44))) a!1)))

(check-sat)
(exit)

(declare-fun b_ack!30 () (_ BitVec 64))
(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!31)
                          (fp.abs ((_ to_fp 11 53) b_ack!30)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!31)
                          (fp.abs ((_ to_fp 11 53) b_ack!30)))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!30)))))

(check-sat)
(exit)

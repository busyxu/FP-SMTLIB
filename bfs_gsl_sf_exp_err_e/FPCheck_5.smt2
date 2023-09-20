(declare-fun b_ack!16 () (_ BitVec 64))
(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!17)
                          (fp.abs ((_ to_fp 11 53) b_ack!16)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY a_ack!17 (fp.abs ((_ to_fp 11 53) b_ack!16))))

(check-sat)
(exit)

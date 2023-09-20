(declare-fun t_ack!21 () (_ BitVec 64))
(declare-fun t1_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!20)
                                  ((_ to_fp 11 53) t_ack!21)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_OVERFLOW t1_ack!20 t_ack!21))

(check-sat)
(exit)

(declare-fun mu_ack!71 () (_ BitVec 64))
(declare-fun x_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!71) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!72)
               ((_ to_fp 11 53) x_ack!72))
       ((_ to_fp 11 53) mu_ack!71)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!72)
          ((_ to_fp 11 53) x_ack!72))
  mu_ack!71))

(check-sat)
(exit)

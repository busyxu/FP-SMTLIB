(declare-fun mu_ack!34 () (_ BitVec 64))
(declare-fun x_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!34) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!35)
               ((_ to_fp 11 53) x_ack!35))
       ((_ to_fp 11 53) mu_ack!34)))
(assert (FPCHECK_FDIV_INVALID
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!35)
          ((_ to_fp 11 53) x_ack!35))
  mu_ack!34))

(check-sat)
(exit)

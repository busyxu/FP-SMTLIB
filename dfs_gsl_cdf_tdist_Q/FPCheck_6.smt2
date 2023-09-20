(declare-fun mu_ack!22 () (_ BitVec 64))
(declare-fun x_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!22) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!23)
               ((_ to_fp 11 53) x_ack!23))
       ((_ to_fp 11 53) mu_ack!22)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!23)
          ((_ to_fp 11 53) x_ack!23))
  mu_ack!22))

(check-sat)
(exit)

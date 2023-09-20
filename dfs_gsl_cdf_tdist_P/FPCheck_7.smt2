(declare-fun mu_ack!26 () (_ BitVec 64))
(declare-fun x_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!26) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!27)
               ((_ to_fp 11 53) x_ack!27))
       ((_ to_fp 11 53) mu_ack!26)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!27)
          ((_ to_fp 11 53) x_ack!27))
  mu_ack!26))

(check-sat)
(exit)

(declare-fun mu_ack!181 () (_ BitVec 64))
(declare-fun x_ack!182 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!181) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!182)
               ((_ to_fp 11 53) x_ack!182))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!181))))
(assert (FPCHECK_FDIV_INVALID
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!182)
          ((_ to_fp 11 53) x_ack!182))
  mu_ack!181))

(check-sat)
(exit)

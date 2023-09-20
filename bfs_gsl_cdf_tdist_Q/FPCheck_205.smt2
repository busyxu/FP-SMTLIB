(declare-fun mu_ack!499 () (_ BitVec 64))
(declare-fun x_ack!500 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!499) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!500)
               ((_ to_fp 11 53) x_ack!500))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!499))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) mu_ack!499)
                  ((_ to_fp 11 53) #x3fe0000000000000))
          ((_ to_fp 11 53) #x0000000000000000))
  #x4008000000000000))

(check-sat)
(exit)

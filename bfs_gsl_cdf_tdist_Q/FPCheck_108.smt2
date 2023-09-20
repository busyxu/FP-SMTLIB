(declare-fun mu_ack!305 () (_ BitVec 64))
(declare-fun x_ack!306 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!305) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!306)
               ((_ to_fp 11 53) x_ack!306))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!305))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fd18de5ab277f45
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) mu_ack!305)
                  ((_ to_fp 11 53) #x3fe0000000000000))
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)

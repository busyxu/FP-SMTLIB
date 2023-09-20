(declare-fun xx_ack!245 () (_ BitVec 64))
(declare-fun x0_ack!246 () (_ BitVec 64))
(declare-fun x1_ack!243 () (_ BitVec 64))
(declare-fun x2_ack!244 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!245) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!245) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!245) ((_ to_fp 11 53) x0_ack!246))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!245) ((_ to_fp 11 53) x1_ack!243)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!243) ((_ to_fp 11 53) xx_ack!245))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!244)
               ((_ to_fp 11 53) x1_ack!243))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!244)
                  ((_ to_fp 11 53) x1_ack!243)))))

(check-sat)
(exit)

(declare-fun xx_ack!694 () (_ BitVec 64))
(declare-fun x0_ack!695 () (_ BitVec 64))
(declare-fun x1_ack!693 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!694) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!694) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!694) ((_ to_fp 11 53) x0_ack!695))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!694) ((_ to_fp 11 53) x1_ack!693))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!693)
               ((_ to_fp 11 53) x0_ack!695))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!693)
          ((_ to_fp 11 53) x0_ack!695))))

(check-sat)
(exit)

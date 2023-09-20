(declare-fun xx_ack!168 () (_ BitVec 64))
(declare-fun x0_ack!169 () (_ BitVec 64))
(declare-fun x1_ack!166 () (_ BitVec 64))
(declare-fun x2_ack!167 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!168) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!168) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!168) ((_ to_fp 11 53) x0_ack!169))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!168) ((_ to_fp 11 53) x1_ack!166)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!166) ((_ to_fp 11 53) xx_ack!168))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!167)
               ((_ to_fp 11 53) x1_ack!166))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!167)
          ((_ to_fp 11 53) x1_ack!166))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)

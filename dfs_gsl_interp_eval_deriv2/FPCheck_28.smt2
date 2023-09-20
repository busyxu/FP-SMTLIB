(declare-fun xx_ack!237 () (_ BitVec 64))
(declare-fun x0_ack!238 () (_ BitVec 64))
(declare-fun x1_ack!235 () (_ BitVec 64))
(declare-fun x2_ack!236 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!237) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!237) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!237) ((_ to_fp 11 53) x0_ack!238))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!237) ((_ to_fp 11 53) x1_ack!235)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!235) ((_ to_fp 11 53) xx_ack!237))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!236)
               ((_ to_fp 11 53) x1_ack!235))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!236)
          ((_ to_fp 11 53) x1_ack!235))))

(check-sat)
(exit)

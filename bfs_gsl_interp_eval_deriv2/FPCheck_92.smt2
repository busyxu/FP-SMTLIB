(declare-fun xx_ack!637 () (_ BitVec 64))
(declare-fun x0_ack!638 () (_ BitVec 64))
(declare-fun x1_ack!636 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!637) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!637) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!637) ((_ to_fp 11 53) x0_ack!638)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!636)
               ((_ to_fp 11 53) x0_ack!638))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!637)
                       ((_ to_fp 11 53) x0_ack!638))
               ((_ to_fp 11 53) x0_ack!638))
       ((_ to_fp 11 53) xx_ack!637)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!637)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!637)
                       ((_ to_fp 11 53) x0_ack!638)))
       ((_ to_fp 11 53) x0_ack!638)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!636)
          ((_ to_fp 11 53) x0_ack!638))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)

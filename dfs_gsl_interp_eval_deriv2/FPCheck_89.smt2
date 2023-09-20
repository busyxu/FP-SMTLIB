(declare-fun xx_ack!606 () (_ BitVec 64))
(declare-fun x0_ack!607 () (_ BitVec 64))
(declare-fun x1_ack!603 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!604 () (_ BitVec 64))
(declare-fun y1_ack!605 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!606) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!606) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!606) ((_ to_fp 11 53) x0_ack!607))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!606) ((_ to_fp 11 53) x1_ack!603))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!603)
               ((_ to_fp 11 53) x0_ack!607))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!605)
          ((_ to_fp 11 53) y0_ack!604))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!603)
          ((_ to_fp 11 53) x0_ack!607))))

(check-sat)
(exit)

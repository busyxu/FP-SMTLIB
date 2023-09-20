(declare-fun xx_ack!621 () (_ BitVec 64))
(declare-fun x0_ack!622 () (_ BitVec 64))
(declare-fun x1_ack!618 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!619 () (_ BitVec 64))
(declare-fun y1_ack!620 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x0_ack!622))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x1_ack!618))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!618)
               ((_ to_fp 11 53) x0_ack!622))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!620)
          ((_ to_fp 11 53) y0_ack!619))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!618)
          ((_ to_fp 11 53) x0_ack!622))))

(check-sat)
(exit)

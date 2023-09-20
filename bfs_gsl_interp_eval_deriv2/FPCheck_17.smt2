(declare-fun xx_ack!134 () (_ BitVec 64))
(declare-fun x0_ack!135 () (_ BitVec 64))
(declare-fun x1_ack!130 () (_ BitVec 64))
(declare-fun x2_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!132 () (_ BitVec 64))
(declare-fun y2_ack!133 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!134) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!134) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!134) ((_ to_fp 11 53) x0_ack!135))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!134) ((_ to_fp 11 53) x1_ack!130)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!130) ((_ to_fp 11 53) xx_ack!134))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!131)
               ((_ to_fp 11 53) x1_ack!130))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!133)
          ((_ to_fp 11 53) y1_ack!132))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!131)
          ((_ to_fp 11 53) x1_ack!130))))

(check-sat)
(exit)

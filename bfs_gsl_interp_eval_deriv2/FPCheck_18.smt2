(declare-fun xx_ack!146 () (_ BitVec 64))
(declare-fun x0_ack!147 () (_ BitVec 64))
(declare-fun x1_ack!142 () (_ BitVec 64))
(declare-fun x2_ack!143 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!144 () (_ BitVec 64))
(declare-fun y2_ack!145 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!146) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!146) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!146) ((_ to_fp 11 53) x0_ack!147))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!146) ((_ to_fp 11 53) x1_ack!142)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!142) ((_ to_fp 11 53) xx_ack!146))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!143)
               ((_ to_fp 11 53) x1_ack!142))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!145)
          ((_ to_fp 11 53) y1_ack!144))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!143)
          ((_ to_fp 11 53) x1_ack!142))))

(check-sat)
(exit)

(declare-fun xx_ack!89 () (_ BitVec 64))
(declare-fun x0_ack!90 () (_ BitVec 64))
(declare-fun x1_ack!85 () (_ BitVec 64))
(declare-fun x2_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!87 () (_ BitVec 64))
(declare-fun y2_ack!88 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!89) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!89) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!89) ((_ to_fp 11 53) x0_ack!90))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!89) ((_ to_fp 11 53) x1_ack!85)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!85) ((_ to_fp 11 53) xx_ack!89))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!86)
               ((_ to_fp 11 53) x1_ack!85))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!88)
          ((_ to_fp 11 53) y1_ack!87))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!86)
          ((_ to_fp 11 53) x1_ack!85))))

(check-sat)
(exit)

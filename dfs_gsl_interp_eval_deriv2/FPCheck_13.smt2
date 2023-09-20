(declare-fun xx_ack!101 () (_ BitVec 64))
(declare-fun x0_ack!102 () (_ BitVec 64))
(declare-fun x1_ack!97 () (_ BitVec 64))
(declare-fun x2_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!99 () (_ BitVec 64))
(declare-fun y2_ack!100 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!101) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!101) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!101) ((_ to_fp 11 53) x0_ack!102))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!101) ((_ to_fp 11 53) x1_ack!97)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!97) ((_ to_fp 11 53) xx_ack!101))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!98)
               ((_ to_fp 11 53) x1_ack!97))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!100)
          ((_ to_fp 11 53) y1_ack!99))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!98)
          ((_ to_fp 11 53) x1_ack!97))))

(check-sat)
(exit)
